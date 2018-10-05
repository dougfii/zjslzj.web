<?php

class WorkMod extends BaseMod
{
    const MAX_DATAS_NUM = 100;

    public function Logout()
    {
        session_unset();
        Url::RedirectUrl('/');
    }

    public function Password()
    {
        $this->Header();

        $view = View::factory('Password');
        echo $view->render();

        $this->Footer();
    }

    public function OnPassword()
    {
        $opass = $this->Req('opass', '', 'str');
        $npass = $this->Req('npass', '', 'str');
        $rpass = $this->Req('rpass', '', 'str');

        if (!Util::isPassword($opass)) Json::ReturnError('原始密码错误');
        if (!Util::isPassword($npass)) Json::ReturnError('新设密码错误');
        if ($npass != $rpass) Json::ReturnError('重复密码应与新设密码相同');

        try {
            ProjectCls::EditPassword($this->Uid(), $npass);
        } catch (Exception $e) {
            Json::ReturnError(ALERT_ERROR);
        }

        Json::ReturnSuccess();
    }

    public function index()
    {
        $this->Home();
    }

    public function Home()
    {
        $this->Notify();
    }

    public function Notify()
    {
        list($count, $rs) = NotifyClz::resultsMemberAll($this->Uid());

        $this->Header();

        $view = View::Factory('A_Notify');

        $view->count = $count;
        $view->rs = $rs;

        echo $view->Render();

        $this->Footer();
    }

    public function OnRead()
    {
        $id = $this->Req('id', 0, 'int');

        if ($id <= 0) Json::ReturnError(ALERT_ERROR);

        try {
            MsgCls::SetRead($id);
        } catch (Exception $e) {
            Json::ReturnError($e->getMessage());
        }

        Json::ReturnSuccess();
    }

    public function Nodes()
    {
        $work_id = $this->Uid();

        $rs_work = WorkClz::Instance()->getItem($work_id);


        $this->Header();

        $view = View::Factory('A_Nodes');

        $view->work_id = $work_id;
        $view->work_name = !empty($rs_work) ? $rs_work['name'] : '';
        $view->work_company = !empty($rs_work) ? $rs_work['company'] : '';
        $view->work_org = !empty($rs_work) ? $rs_work['org'] : '';
        $view->work_act = !empty($rs_work) ? $rs_work['act'] : '';
        $view->work_type = !empty($rs_work) ? $rs_work['type'] : '';
        $view->work_nodes = !empty($rs_work) ? WorkClz::Instance()->getNodes($work_id) : array();

        echo $view->Render();

        $this->Footer();
    }

    public function Items()
    {
        $work_id = $this->Uid();
        $node_id = $this->Req('node_id', 0, 'int');

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $where = " AND work_id={$work_id} AND node_id={$node_id}";
        list($count_new, $rs_new) = ItemClz::resultsNew($where);
        list($count_processing, $rs_processing) = ItemClz::resultsProcessing($where);
        list($count_backed, $rs_backed) = ItemClz::resultsBacked($where);
        list($count_success, $rs_success) = ItemClz::resultsSuccess($where);


        $this->Header();

        $view = View::Factory('A_Items');

        $view->work_id = $work_id;
        $view->node_id = $node_id;
        $view->work_name = !empty($rs_work) ? $rs_work['name'] : '';
        $view->work_company = !empty($rs_work) ? $rs_work['company'] : '';
        $view->work_org = !empty($rs_work) ? $rs_work['org'] : '';
        $view->work_act = !empty($rs_work) ? $rs_work['act'] : '';
        $view->work_type = !empty($rs_work) ? $rs_work['type'] : '';
        $view->node_no = !empty($rs_work) ? WorkClz::Instance()->getNodeNo($work_id, $node_id) : '';
        $view->node_name = !empty($rs_work) ? WorkClz::Instance()->getNodeName($work_id, $node_id) : '';
        $view->node_status = !empty($rs_work) ? WorkClz::Instance()->getNodeStatus($work_id, $node_id) : '';
        $view->node_direction = !empty($rs_work) ? WorkClz::Instance()->getNodeDirection($work_id, $node_id) : false;

        $view->count_new = $count_new;
        $view->rs_new = $rs_new;
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
        $work_id = $this->Uid();
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

        $table_structs = array();
        if ($node_id == 1003001000 || $node_id == 1003004000 || $node_id == 1006002000) {
            $table_structs = FacadeTypeCls::Structs();
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
        $work_id = $this->Uid();
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

            NotifyClz::sendToAdmin("{$rs_work['name']} - " . WorkClz::Instance()->getNodeName($work_id, $node_id) . " 需要审核", "?m=Work&a=Items&work_id={$work_id}&node_id={$node_id}");
        }

        Json::ReturnSuccess($item_id);
    }

    public function Reply()
    {
        $work_id = $this->Uid();
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
            if ($node_id == 1001000000) $tpl = $node_id;
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
}