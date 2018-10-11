<?php

class HomeMod extends BaseMod
{
    public function index()
    {
        $this->Notify();
    }

    public function Notify()
    {
        list($count, $rs) = NotifyClz::resultsAdminAll();

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

        NotifyClz::setRead($id);

        Json::ReturnSuccess();
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
            UserCls::EditPassword($this->Uid(), $npass);
        } catch (Exception $e) {
            Json::ReturnError(ALERT_ERROR);
        }

        Json::ReturnSuccess();
    }
}

?>