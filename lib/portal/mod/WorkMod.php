<?php

class WorkMod extends BaseMod
{
    const MAX_DATAS_NUM = 50;

    public function index()
    {
        if (!isset ($_SESSION ['mtimes'])) {
            $_SESSION ['mtimes'] = time();
            $_SESSION ['mcomes'] = 8;
        }

        $view = View::Factory('Login');

        $view->org_id = HTML::CtlSelKVList(GroupBiz::Items()['data'], 'org_id', '');

        echo $view->Render();
    }

    public function Login()
    {
        $username = $this->Req('username', '', 'str');
        $password = $this->Req('password', '', 'str');

        if (!isset ($_SESSION ['mcomes']) || !$_SESSION ['mtimes']) Json::ReturnError(ALERT_ERROR);
        if ($_SESSION ['mcomes'] < 0 && time() - $_SESSION ['mtimes'] < 3600) Json::ReturnError('登录次数过多,账号暂时被禁用');
        if (empty($username) || !Util::IsPassword($password)) {
            $_SESSION ['mcomes'] -= 1;
            $_SESSION ['mtimes'] = time();
            Json::ReturnError('工程名称或登录密码错误');
        }

        $rs = WorkClz::login($username, $password);
        if (empty($rs)) Json::ReturnError('工程名称或登录密码错误');

        WorkClz::setLast($rs['id']);
        LogLoginCls::Add(1, $rs['id'], Inet::GetIP());


        $_SESSION ['mid'] = $rs['id'];
        $_SESSION ['mname'] = $rs['username'];

        Json::ReturnSuccess('?m=Work&a=Main');
    }

    public function Join()
    {
        $org_id = $this->Req('org_id', 0, 'int');
        $type_id = $this->Req('type_id', 0, 'int');
        $username = $this->Req('username', '', 'str');
        $company = $this->Req('company', '', 'str');
        $password = $this->Req('password', '', 'str');
        $repassword = $this->Req('repassword', '', 'str');
        $contacts = $this->Req('contacts', '', 'str');
        $phone = $this->Req('phone', '', 'str');
        $email = $this->Req('email', '', 'str');

        if ($type_id != WorkClz::TypeQuality && $type_id != WorkClz::TypeSecurity) Json::ReturnError('请选择质监类型');
        if ($org_id <= 0) Json::ReturnError('请选择所属区域');
        if (empty($username)) Json::ReturnError('请输入工程名称');
        if (!Util::IsMaxLen($username, 200)) Json::ReturnError('工程名称过长');
        if (empty($company)) Json::ReturnError('请输入申请单位');
        if (!Util::IsMaxLen($company, 200)) Json::ReturnError('申请单位过长');
        if (!Util::IsPassword($password)) Json::ReturnError('请设置有效的登录密码');
        if ($password != $repassword) Json::ReturnError('登录密码与重复密码不一致');
        if (empty($contacts)) Json::ReturnError('请输入联系人');
        if (!Util::IsMaxLen($contacts, 200)) Json::ReturnError('联系人过长');
        if (!Util::IsMobile($phone) && !Util::IsPhone($phone)) Json::ReturnError('请输入正确的联系人手机或电话号码');
        if (!empty($email) && !Util::IsEmail($email)) Json::ReturnError('请输入正确的联系人电子邮箱');
        if (WorkClz::existUsername($type_id, $username)) Json::ReturnError('工程名称已经存在');

        $id = WorkClz::add($username, $password, $org_id, $type_id, $username, $company, $contacts, $phone, $email, Json::Encode($type_id == WorkClz::TypeQuality ? NodeClz::getQualityNodes() : NodeClz::getSecurityNodes()));

        $_SESSION ['mid'] = $id;
        $_SESSION ['mname'] = $username;

        try {
            MsgCls::Add(1, MsgDirectCls::FROM_QUALITY, $id, 1, $username, '管理员', ProjectNodeCls::INIT, $id, '新注册');
        } catch (Exception $e) {
            Json::ReturnError($e->getMessage());
        }

        Json::ReturnSuccess('?m=Work&a=Main');
    }

    public function Logout()
    {
        session_unset();
        Url::RedirectUrl('/');
    }

    public function Password()
    {
        $this->MemberAuth();

        $this->MemberHeader();

        $view = View::factory('Password');
        echo $view->render();

        $this->MemberFooter();
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
            ProjectCls::EditPassword($this->Mid(), $npass);
        } catch (Exception $e) {
            Json::ReturnError(ALERT_ERROR);
        }

        Json::ReturnSuccess();
    }

    public function Main()
    {
        $rs = MsgCls::GetProjectUnread($this->Mid());

        $this->MemberAuth();

        $this->MemberHeader();

        $view = View::Factory('Main');

        $view->rs = $rs;

        echo $view->Render();

        $this->MemberFooter();
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
        $work_id = $this->Mid();

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $this->MemberAuth();
        $this->MemberHeader();

        $view = View::Factory('A_Nodes');

        $view->work_id = $work_id;
        $view->work_name = !empty($rs_work) ? $rs_work['name'] : '';
        $view->work_company = !empty($rs_work) ? $rs_work['company'] : '';
        $view->work_org = !empty($rs_work) ? $rs_work['org'] : '';
        $view->work_act = !empty($rs_work) ? $rs_work['act'] : '';
        $view->work_type = !empty($rs_work) ? $rs_work['type'] : '';
        $view->work_nodes = !empty($rs_work) ? WorkClz::Instance()->getNodes($work_id) : array();

        echo $view->Render();

        $this->MemberFooter();
    }

    public function Items()
    {
        $work_id = $this->Mid();
        $node_id = $this->Req('node_id', 0, 'int');

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $where = " AND work_id={$work_id} AND node_id={$node_id}";
        list($count_new, $rs_new) = ItemClz::resultsNew($where);
        list($count_processing, $rs_processing) = ItemClz::resultsProcessing($where);
        list($count_backed, $rs_backed) = ItemClz::resultsBacked($where);
        list($count_success, $rs_success) = ItemClz::resultsSuccess($where);

        $this->MemberAuth();
        $this->MemberHeader();

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

        $this->MemberFooter();
    }

    public function Item()
    {
        $work_id = $this->Mid();
        $node_id = $this->Req('node_id', 0, 'int');
        $item_id = $this->Req('item_id', 0, 'int');

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $edit = false;
        $rs_item = ItemClz::Instance()->getItem($item_id);

        if ($item_id > 0) {
            $status_id = ItemClz::Instance()->getStatusId($item_id);
            $edit = !($status_id == ItemClz::StatusProcessing || $status_id == ItemClz::StatusSuccess);
        } else {
            $edit = true;
        }

        $this->MemberAuth();
        $this->MemberHeader();

        $view = View::Factory('A_Item_' . $node_id);

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

        $view->edit = $edit;
        $view->item_id = $item_id;
        $view->item_status = !empty($rs_item) ? $rs_item['status'] : '';
        $view->datas = !empty($rs_item) ? ItemClz::Instance()->getDatas($item_id) : array();

        echo $view->Render();

        $this->MemberFooter();
    }

    public function OnItem()
    {
        $work_id = $this->Mid();
        $node_id = $this->Req('node_id', 0, 'int');
        $item_id = $this->Req('item_id', 0, 'int');

        $event = $this->Req('event', '', 'str');
        $status_id = $event == 'commit' ? ItemClz::StatusProcessing : ItemClz::StatusNew;

        $rs_work = WorkClz::Instance()->getItem($work_id);

        $datas = array();
        for ($i = 1; $i <= self::MAX_DATAS_NUM; $i++) {
            $datas['f' . $i] = $this->Req('f' . $i, '', 'str');
        }

        if ($item_id > 0) {
            ItemClz::edit($item_id, $rs_work['org_id'], $rs_work['type_id'], $work_id, $node_id, $datas['f1'], '', Json::Encode($datas), '', $status_id);
        } else {
            $item_id = ItemClz::add($rs_work['org_id'], $rs_work['type_id'], $work_id, $node_id, $datas['f1'], '', Json::Encode($datas), '', $status_id);
        }

        // node open ???
        if ($node_id == 1001000000) {
            // TODO: 节点改变 递推
        }

        Json::ReturnSuccess($item_id);
    }

}