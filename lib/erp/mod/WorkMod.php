<?php

class WorkMod extends BaseMod
{
    public function index()
    {
        $this->Quality();
    }

    public function Quality()
    {
        $this->Works(WorkClz::TypeQuality, '质量管理');
    }

    public function Security()
    {
        $this->Works(WorkClz::TypeSecurity, '安全管理');
    }

    private function Works($type_id, $caption)
    {
        $fname = $this->Req('fname', '', 'str');
        $fcompany = $this->Req('fcompany', '', 'str');
        $fdate0 = $this->Req('fdate0', '', 'str');
        $fdate1 = $this->Req('fdate1', '', 'str');
        $year = $this->Req('year', 0, 'int');

        $where = " AND type_id=${type_id}";

        if ($year >= YEAR_START && $year <= Date::Year()) $where .= " AND EXTRACT(YEAR FROM time)=${$year}";

        if ($this->Uid() > 1) {
            $gids = GroupCls::Instance()->GetChildrenIds(UserCls::Instance()->Gid($this->Uid()), true);
            if (!empty($gids) && count($gids) > 0) {
                $gids = implode(',', $gids);
                $where .= " AND org_id IN (${gids})";
            } else {
                $where .= " AND 1=2";
            }
        }

        if (!empty ($fname)) $where .= ' AND LOWER(name) like \'%' . strtolower($fname) . '%\'';
        if (!empty($fcompany)) $where .= ' AND LOWER(company) like \'%' . strtolower($fcompany) . '%\'';
        if (!empty($fdate0) && empty($fdate1)) $where .= " AND DATE_TRUNC('day', time)='{$fdate0}'";
        if (empty($fdate0) && !empty($fdate1)) $where .= " AND DATE_TRUNC('day', time)='{$fdate1}'";
        if (!empty($fdate0) && !empty($fdate1)) $where .= " AND DATE_TRUNC('day', time)>='{$fdate0}' AND DATE_TRUNC('day', time)<='{$fdate1}'";

        $url = Url::QUERY_STRING_DELETE(array('page', 'fname'));

        $size = PAGE_SIZE_MEDIUM;
        list($count, $rs) = WorkClz::results($where, '', $this->Page(), $size);

        $this->Header();

        $view = View::Factory('A_Works');

        $view->count = $count;
        $view->rs = $rs;
        $view->paged = HTML::PageJump($count, $this->Page(), $size, $url);

        $view->caption = $caption;

        $view->url = $url;
        $view->fname = $fname;
        $view->fcompany = $fcompany;
        $view->fdate0 = $fdate0;
        $view->fdate1 = $fdate1;

        $view->isAdmin = $this->IsAdmin();

        echo $view->Render();

        $this->Footer();
    }

    public function OnWorkDelete()
    {
        $id = $this->Req('id', 0, 'int');
        if ($id <= 0) Json::ReturnError(ALERT_ERROR);

        WorkClz::delete($id);

        Json::ReturnSuccess();
    }

    public function OnWorkAct()
    {
        $id = $this->Req('id', 0, 'int');
        if ($id <= 0) Json::ReturnError(ALERT_ERROR);

        WorkClz::setAct($id);

        $act = WorkClz::Instance()->getAct($id);
        $nodes = Json::Decode(WorkClz::Instance()->getNodes($id));
        $type_id = WorkClz::Instance()->getTypeId($id);

        if ($act) {

            if ($type_id == WorkClz::TypeQuality) {
                $nodes = NodeClz::setNodeAct($nodes, '1001000000');
            }
            if ($type_id == WorkClz::TypeSecurity) {
                $nodes = NodeClz::setNodeAct($nodes, '2001000000');
                $nodes = NodeClz::setNodeAct($nodes, '2002000000');
                $nodes = NodeClz::setNodeAct($nodes, '2003000000');
                $nodes = NodeClz::setNodeAct($nodes, '2004000000');
            }

            WorkClz::setNodes($id, Json::Encode($nodes));

            MsgCls::Add(1, MsgDirectCls::FROM_USER, $this->Uid(), $id, '管理员', ProjectCls::Instance()->Name($id), ProjectNodeCls::INIT, $id, '项目被管理员开放');
        } else {
            MsgCls::Add(1, MsgDirectCls::FROM_USER, $this->Uid(), $id, '管理员', ProjectCls::Instance()->Name($id), ProjectNodeCls::INIT, $id, '项目被管理员关闭');
        }

        Json::ReturnSuccess();
    }

    public function Nodes()
    {
        $work_id = $this->Req('work_id', 0, 'int');

        $rs = WorkClz::Instance()->getItem($work_id);

        $this->Header();

        $view = View::Factory('A_Nodes');

        $view->work_id = $work_id;
        $view->work_name = !empty($rs) ? $rs['name'] : '';
        $view->work_act = !empty($rs) ? $rs['act'] : '';
        $view->work_nodes = !empty($rs) ? Json::Decode($rs['nodes']) : array();
        $view->work_type = !empty($rs) ? $rs['type_id'] == WorkClz::TypeQuality ? WorkClz::TypeQualityName : WorkClz::TypeSecurityName : '';

        echo $view->Render();

        $this->Footer();
    }

    public function Items()
    {
        $work_id = $this->Req('work_id', 0, 'int');
        $node_id = $this->Req('node_id', 0, 'int');

        $this->Header();

        $view = View::Factory('A_Items');

        $new = true;
        $rr = array();
        $rl = Flow1Cls::GetLastItem($pid);
        if (!empty($rl) && count($rl) > 0) {
            $new = ProjectStateCls::IsNew(ProjectCls::Instance()->StateId($pid, ProjectNodeCls::APPLY));
            if ($rl['replyid'] > 0) $rr = Reply1Cls::GetLastItem($pid, $rl['replyid']);
        }
        $rs = Flow1Cls::GetApprovedItems($pid);

        $view->rl = $rl;
        $view->rr = $rr;
        $view->rs = $rs;
        $view->new = $new;
        $view->state = ProjectCls::Instance()->State($pid, ProjectNodeCls::APPLY);

        $view->pid = $pid;

        echo $view->Render();

        $this->Footer();
    }
}

?>