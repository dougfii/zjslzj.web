<?php

class WorkMod extends BaseMod
{
    public function index()
    {
        $this->Quality();
    }

    public function Quality()
    {
        $this->Works(WorkClz::TypeQuality, WorkClz::TypeQualityName);
    }

    public function Security()
    {
        $this->Works(WorkClz::TypeSecurity, WorkClz::TypeSecurityName);
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

        $name = WorkClz::Instance()->getName($id);
        $act = WorkClz::Instance()->getAct($id);
        $nodes = WorkClz::Instance()->getNodes($id);
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

            NotifyClz::sendToMember($id, "开放 {$name}", "?m=Work&a=Nodes");
            NotifyClz::sendToAdmin("开放 {$name}", "?m=Work&a=Nodes&work_id={$id}");
        } else {
            NotifyClz::sendToMember($id, "关闭 {$name}", "?m=Work&a=Nodes");
            NotifyClz::sendToAdmin("关闭 {$name}", "?m=Work&a=Nodes&work_id={$id}");
        }

        Json::ReturnSuccess();
    }

    public function Nodes()
    {
        $work_id = $this->Req('work_id', 0, 'int');

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $this->Header();

        $view = View::Factory('A_Nodes');

        $view->work_id = $work_id;
        $view->work_name = !empty($rs_work) ? $rs_work['name'] : '';
        $view->work_company = !empty($rs_work) ? $rs_work['company'] : '';
        $view->work_act = !empty($rs_work) ? $rs_work['act'] : '';
        $view->work_type = !empty($rs_work) ? $rs_work['type'] : '';
        $view->work_nodes = !empty($rs_work) ? WorkClz::Instance()->getNodes($work_id) : array();

        echo $view->Render();

        $this->Footer();
    }

    public function Items()
    {
        $work_id = $this->Req('work_id', 0, 'int');
        $node_id = $this->Req('node_id', 0, 'int');

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $where = " AND work_id={$work_id} AND node_id={$node_id}";
//        list($count_new, $rs_new) = ItemClz::resultsNew($where);
        list($count_processing, $rs_processing) = ItemClz::resultsProcessing($where);
//        list($count_backed, $rs_backed) = ItemClz::resultsBacked($where);
        list($count_success, $rs_success) = ItemClz::resultsSuccess($where);

        $this->Header();

        $view = View::Factory('A_Items');

        $view->work_id = $work_id;
        $view->node_id = $node_id;
        $view->work_name = !empty($rs_work) ? $rs_work['name'] : '';
        $view->work_company = !empty($rs_work) ? $rs_work['company'] : '';
        $view->work_act = !empty($rs_work) ? $rs_work['act'] : '';
        $view->work_type = !empty($rs_work) ? $rs_work['type'] : '';
        $view->node_no = !empty($rs_work) ? WorkClz::Instance()->getNodeNo($work_id, $node_id) : '';
        $view->node_name = !empty($rs_work) ? WorkClz::Instance()->getNodeName($work_id, $node_id) : '';
        $view->node_status = !empty($rs_work) ? WorkClz::Instance()->getNodeStatus($work_id, $node_id) : '';
        $view->node_direction = !empty($rs_work) ? WorkClz::Instance()->getNodeDirection($work_id, $node_id) : false;

//        $view->count_new = $count_new;
//        $view->rs_new = $rs_new;
        $view->count_processing = $count_processing;
        $view->rs_processing = $rs_processing;
//        $view->count_backed = $count_backed;
//        $view->rs_backed = $rs_backed;
        $view->count_success = $count_success;
        $view->rs_success = $rs_success;

        echo $view->Render();

        $this->Footer();
    }

    public function Item()
    {
        $work_id = $this->Req('work_id', 0, 'int');
        $node_id = $this->Req('node_id', 0, 'int');
        $item_id = $this->Req('item_id', 0, 'int');

        $edit = false;
        $rs_work = WorkClz::Instance()->getItem($work_id);
        $rs_item = ItemClz::Instance()->getItem($item_id);

        if ($item_id > 0) {
            $status_id = ItemClz::Instance()->getStatusId($item_id);
            $edit = !($status_id == ItemClz::StatusProcessing || $status_id == ItemClz::StatusSuccess);
        } else {
            $edit = true;
        }

        $this->Header();

        $view = View::Factory('A_Item_' . $node_id);

        $view->edit = $edit;
        $view->work_id = $work_id;
        $view->node_id = $node_id;
        $view->item_id = $item_id;
        $view->work_name = !empty($rs_work) ? $rs_work['name'] : '';
        $view->work_company = !empty($rs_work) ? $rs_work['company'] : '';
        $view->work_org = !empty($rs_work) ? $rs_work['org'] : '';
        $view->work_act = !empty($rs_work) ? $rs_work['act'] : '';
        $view->work_type = !empty($rs_work) ? $rs_work['type'] : '';
        $view->node_no = !empty($rs_work) ? WorkClz::Instance()->getNodeNo($work_id, $node_id) : '';
        $view->node_name = !empty($rs_work) ? WorkClz::Instance()->getNodeName($work_id, $node_id) : '';
        $view->node_status = !empty($rs_work) ? WorkClz::Instance()->getNodeStatus($work_id, $node_id) : '';
        $view->node_direction = !empty($rs_work) ? WorkClz::Instance()->getNodeDirection($work_id, $node_id) : false;

        $view->item_status = !empty($rs_item) ? $rs_item['status'] : '';
        $view->datas = !empty($rs_item) ? ItemClz::Instance()->getDatas($item_id) : array();

        echo $view->Render();

        $this->Footer();
    }

    public function Reply()
    {
        $work_id = $this->Req('work_id', 0, 'int');
        $node_id = $this->Req('node_id', 0, 'int');
        $item_id = $this->Req('item_id', 0, 'int');
        $reply_id = $this->Req('reply_id', 0, 'int');

        $pass = $this->Req('pass', '', 'str');

        $edit = $pass == 'success' || $pass = 'backed';
        $tpl = 'General';
        if ($pass == 'success') {
            $pass = 'Success';
        } else {
            $pass = 'Backed';
        }

        $rs_work = WorkClz::Instance()->getItem($work_id);
        $rs_item = ItemClz::Instance()->getItem($item_id);

        if ($item_id > 0) {
            $status_id = ItemClz::Instance()->getStatusId($item_id);
            $edit = !($status_id == ItemClz::StatusProcessing || $status_id == ItemClz::StatusSuccess);
        } else {
            $edit = true;
        }

        $this->Header();

        $view = View::Factory('A_Reply_' . $pass . '_' . $tpl);

        $view->edit = $edit;
        $view->work_id = $work_id;
        $view->node_id = $node_id;
        $view->item_id = $item_id;
        $view->work_name = !empty($rs_work) ? $rs_work['name'] : '';
        $view->work_company = !empty($rs_work) ? $rs_work['company'] : '';
        $view->work_org = !empty($rs_work) ? $rs_work['org'] : '';
        $view->work_act = !empty($rs_work) ? $rs_work['act'] : '';
        $view->work_type = !empty($rs_work) ? $rs_work['type'] : '';
        $view->node_no = !empty($rs_work) ? WorkClz::Instance()->getNodeNo($work_id, $node_id) : '';
        $view->node_name = !empty($rs_work) ? WorkClz::Instance()->getNodeName($work_id, $node_id) : '';
        $view->node_status = !empty($rs_work) ? WorkClz::Instance()->getNodeStatus($work_id, $node_id) : '';
        $view->node_direction = !empty($rs_work) ? WorkClz::Instance()->getNodeDirection($work_id, $node_id) : false;

        $view->item_status = !empty($rs_item) ? $rs_item['status'] : '';
        $view->datas = !empty($rs_item) ? ItemClz::Instance()->getDatas($item_id) : array();

        echo $view->Render();

        $this->Footer();
    }
}