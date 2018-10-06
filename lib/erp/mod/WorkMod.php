<?php

class WorkMod extends BaseMod
{
    const MAX_DATAS_NUM = 100;

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
        list($count_backed, $rs_backed) = ItemClz::resultsBacked($where);
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
        $view->count_backed = $count_backed;
        $view->rs_backed = $rs_backed;
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

        if ($node_id == 1004000000) {
            $edit = true;
        }

        $table_structs = array();
        if ($node_id == 1003001000 || $node_id == 1003004000 || $node_id == 1006002000) {
            $table_structs = FacadeTypeCls::Structs();
        }
        if ($node_id == 1004000000 || $node_id == 1007004000 || $node_id == 2002000000) {
            if ($item_id > 0) {
                $status_id = ItemClz::Instance()->getStatusId($item_id);
                $edit = !($status_id == ItemClz::StatusProcessing || $status_id == ItemClz::StatusSuccess);
            } else {
                $edit = true;
            }
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

        $view->table_structs = $table_structs;

        echo $view->Render();

        $this->Footer();
    }

    public function OnItem()
    {
        $work_id = $this->Req('work_id', 0, 'int');
        $node_id = $this->Req('node_id', 0, 'int');
        $item_id = $this->Req('item_id', 0, 'int');

        $event = $this->Req('event', '', 'str');
        $status_id = $event == 'commit' ? ItemClz::StatusProcessing : ItemClz::StatusNew;

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $datas = array();
        for ($i = 1; $i <= self::MAX_DATAS_NUM; $i++) {
            $datas['f' . $i] = $this->Req('f' . $i, '', 'str');
        }
        for ($i = 1; $i <= self::MAX_DATAS_NUM; $i++) {
            $datas['fa' . $i] = $this->Req('fa' . $i, array(), 'array');
        }

        if ($item_id > 0) {
            ItemClz::edit($item_id, $rs_work['org_id'], $rs_work['type_id'], $work_id, $node_id, $datas['f1'], '', Json::Encode($datas), '', $status_id);
        } else {
            $item_id = ItemClz::add($rs_work['org_id'], $rs_work['type_id'], $work_id, $node_id, $datas['f1'], '', Json::Encode($datas), '', $status_id);
        }

        if ($status_id == ItemClz::StatusProcessing) {
            WorkClz::setNodeStatus($work_id, $node_id, ItemClz::StatusProcessingName);

            NotifyClz::sendToMember($work_id, "{$rs_work['name']} - " . WorkClz::Instance()->getNodeName($work_id, $node_id) . " 有新通知", "?m=Work&a=Items&work_id={$work_id}&node_id={$node_id}");
        }

        Json::ReturnSuccess($item_id);
    }

    public function Reply()
    {
        $work_id = $this->Req('work_id', 0, 'int');
        $node_id = $this->Req('node_id', 0, 'int');
        $item_id = $this->Req('item_id', 0, 'int');
        $reply_id = $this->Req('reply_id', 0, 'int');

        $pass = $this->Req('pass', '', 'str');

        $rs_work = WorkClz::Instance()->getItem($work_id);
        $rs_item = ItemClz::Instance()->getItem($item_id);
        $rs_reply = ReplyClz::Instance()->getItem($reply_id);

        $edit = $pass == 'success' || $pass == 'backed';
        if ($reply_id > 0 && !empty($rs_reply)) {
            $pass = $rs_reply['pass'] ? 'success' : 'backed';
        }
        $tpl = 'General';
        if ($pass == 'success') {
            $pass = 'Success';
            if ($node_id == 1001000000 || $node_id == 1002000000 || $node_id == 1009005001 || $node_id == 1009005002 || $node_id == 1009005003 || $node_id == 1009005004 || $node_id == 1009005005 || $node_id == 2001000000 || $node_id == 2003000000 || $node_id == 2004000000) $tpl = $node_id;
        } else {
            $pass = 'Backed';
        }

        $this->Header();

        $view = View::Factory('A_Reply_' . $pass . '_' . $tpl);

        $view->edit = $edit;
        $view->work_id = $work_id;
        $view->node_id = $node_id;
        $view->item_id = $item_id;
        $view->replay_id = $reply_id;
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
        $view->datas = !empty($rs_reply) && !$edit ? ReplyClz::Instance()->getDatas($reply_id) : array();

        echo $view->Render();

        $this->Footer();
    }

    public function OnReply()
    {
        $work_id = $this->Req('work_id', 0, 'int');
        $node_id = $this->Req('node_id', 0, 'int');
        $item_id = $this->Req('item_id', 0, 'int');
        $reply_id = $this->Req('reply_id', 0, 'int');

        $pass = $this->Req('pass', '', 'str');

        $rs_work = WorkClz::Instance()->getItem($work_id);
        $rs_item = ItemClz::Instance()->getItem($item_id);

        if ($work_id <= 0 || $node_id <= 0 || $item_id <= 0 || empty($rs_work) || empty($rs_item) || !($pass == 'backed' || $pass = 'success')) Json::ReturnError(ALERT_ERROR);

        $datas = array();
        for ($i = 1; $i <= self::MAX_DATAS_NUM; $i++) {
            $datas['f' . $i] = $this->Req('f' . $i, '', 'str');
        }
        for ($i = 1; $i <= self::MAX_DATAS_NUM; $i++) {
            $datas['fa' . $i] = $this->Req('fa' . $i, array(), 'array');
        }

        if ($pass == 'backed') {
            $reply_id = ReplyClz::add($rs_work['org_id'], $rs_work['type_id'], $work_id, $node_id, $item_id, 0, $rs_item['no'] . ' - ' . $rs_item['time'], '', Json::Encode($datas), '', ItemClz::StatusBacked, $this->Uid());
            ItemClz::reply($item_id, $reply_id, 0, ItemClz::StatusBacked, $this->Uid(), ItemClz::StatusBacked);
            WorkClz::setNodeStatus($work_id, $node_id, ItemClz::StatusBackedName);

            NotifyClz::sendToMember($work_id, "{$rs_work['name']} - " . WorkClz::Instance()->getNodeName($work_id, $node_id) . " 审核被驳回", "?m=Work&a=Items&work_id={$work_id}&node_id={$node_id}");
            NotifyClz::sendToAdmin("{$rs_work['name']} - " . WorkClz::Instance()->getNodeName($work_id, $node_id) . " 审核驳回", "?m=Work&a=Items&work_id={$work_id}&node_id={$node_id}");

            Json::ReturnSuccess();
        } elseif ($pass == 'success') {
            $reply_id = ReplyClz::add($rs_work['org_id'], $rs_work['type_id'], $work_id, $node_id, $item_id, 1, $rs_item['no'] . ' - ' . $rs_item['time'], '', Json::Encode($datas), '', ItemClz::StatusSuccess, $this->Uid());
            ItemClz::reply($item_id, $reply_id, 1, ItemClz::StatusSuccess, $this->Uid(), ItemClz::StatusSuccess);
            WorkClz::setNodeStatus($work_id, $node_id, ItemClz::StatusSuccessName);

            NotifyClz::sendToMember($work_id, "{$rs_work['name']} - " . WorkClz::Instance()->getNodeName($work_id, $node_id) . " 审核通过", "?m=Work&a=Items&work_id={$work_id}&node_id={$node_id}");
            NotifyClz::sendToAdmin("{$rs_work['name']} - " . WorkClz::Instance()->getNodeName($work_id, $node_id) . " 审核通过", "?m=Work&a=Items&work_id={$work_id}&node_id={$node_id}");

            if ($node_id == 1001000000) {
                WorkClz::setNodeAct($work_id, 1002000000, true);
            } elseif ($node_id == 1002000000) {
                $node_id_acts = array(
                    //
                    1003000000 => $datas['f5'],
                    1003001000 => $datas['f5'],
                    1003002000 => $datas['f5'],
                    1003003000 => $datas['f5'],
                    1003004000 => $datas['f5'],
                    1003005000 => $datas['f5'],
                    1003006000 => $datas['f5'],
                    1003007000 => $datas['f5'],
                    //
                    1004000000 => $datas['f6'],
                    //
                    1005000000 => $datas['f7'],
                    1005001000 => $datas['f7'],
                    1005002000 => $datas['f7'],
                    //
                    1006000000 => $datas['f8'],
                    1006001000 => $datas['f8'],
                    1006002000 => $datas['f8'],
                    1006003000 => $datas['f8'],
                    1006004000 => $datas['f8'],
                    //
                    1007000000 => $datas['f9'],
                    1007001000 => $datas['f9'],
                    1007002000 => $datas['f9'],
                    1007003000 => $datas['f9'],
                    1007004000 => $datas['f9'],
                    //
                    1008000000 => $datas['f10'],
                    //
                    1009000000 => $datas['f11'],
                    1009001000 => $datas['f11'],
                    1009002000 => $datas['f11'],
                    1009003000 => $datas['f11'],
                    1009004000 => $datas['f11'],
                    1009005000 => $datas['f11'],
                    1009005001 => $datas['f11'],
                    1009005002 => $datas['f11'],
                    1009005003 => $datas['f11'],
                    1009005004 => $datas['f11'],
                    1009005005 => $datas['f11'],
                );
                WorkClz::setNodeActs($work_id, $node_id_acts);
            }

            Json::ReturnSuccess();
        }

        Json::ReturnError(ALERT_ERROR);
    }
}