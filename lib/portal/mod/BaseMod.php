<?php

abstract class BaseMod implements IMod
{
    private $_uid = 0;
    private $_user = '';
    private $_login = false;
    private $_page = 1;

    public function __construct()
    {
        $this->Init();
    }

    protected function Init()
    {
        $this->_page = $this->Req('page', 1, 'int');

        if (isset ($_SESSION ['_uid']) && !empty ($_SESSION ['_uid']) && isset ($_SESSION ['_user']) && !empty ($_SESSION ['_user'])) {
            $this->_uid = $_SESSION ['_uid'];
            $this->_user = $_SESSION ['_user'];
            $this->_login = true;
        } else {
            $this->_uid = 0;
            $this->_user = '';
            $this->_login = false;
        }

        if (!$this->IsLogin()) Url::RedirectUrl('/');
    }

    protected function Head()
    {
        $view = View::Factory('A_Head');
        echo $view->Render();
    }

    protected function Foot()
    {
        $v = View::Factory('A_Foot');
        echo $v->Render();
    }

    protected function Header()
    {
        $this->Head();
        $view = View::Factory('A_Header');
        $view->menu = '';
        $view->side = $this->Side();
        $view->user = $this->User();
        echo $view->Render();
    }

    protected function Footer()
    {
        $view = View::Factory('A_Footer');
        echo $view->Render();
        $this->Foot();
    }

    private function Side()
    {
        $sides = array(
            array('?m=Work&a=Notify', '消息通知'),
            array('?m=Work&a=Nodes', '项目管理'),
        );

        $side = '<div class="side"><ul>';
        foreach ($sides as $v) {
            $side .= '<li><a href="' . $v [0] . '">' . $v [1] . '</a></li>';
        }
        $side .= '</ul></div>';

        return $side;
    }

    protected function User()
    {
        return $this->_user;
    }

    protected function Uid()
    {
        return $this->_uid;
    }

    protected function IsLogin()
    {
        return $this->_login && $this->_uid > 0;
    }

    protected function Page()
    {
        return $this->_page;
    }

    protected function Req($name, $def = null, $type = null)
    {
        return Url::Req($name, $def, $type);
    }

    protected function Order()
    {
        $ok = $this->Req('ok', '', 'str');
        $ov = $this->Req('ov', 0, 'int');

        return empty ($ok) ? 'ORDER BY id DESC' : 'ORDER BY ' . $ok . (empty ($ov) ? ' DESC' : ' ASC');
    }
}