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
        $view->menu = $this->Menu();
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

    private function Menu()
    {
        $menus = array(
            array('?m=Home', '首页', R::MENU_CENTER),
            array('?m=Work&a=Quality', '质量管理', R::MENU_QUALITY),
            array('?m=Work&a=Security', '安全管理', R::MENU_SECURITY),
            array('?m=Article', '网站管理', R::MENU_WEBSITE),
            array('?m=System', '系统管理', R::MENU_SYSTEM),
        );

        $menu = '<span class="menu"><ul>';
        foreach ($menus as $v) {
            if (P::Instance($this->Uid())->isCanView($v [2])) $menu .= '<li><a href="' . $v [0] . '">' . $v [1] . '</a></li>';
        }
        $menu .= '</ul></span>';

        return $menu;
    }

    private function Side()
    {
        $mod = strtolower($this->Req('m', '', 'str'));
        $act = strtolower($this->Req('a', '', 'str'));

        $sides = array();

        if ($mod == strtolower('Home')) {
            $sides[] = array('?m=Home', '首页', R::MENU_CENTER);
        } elseif ($mod == strtolower('Work')) {
            if ($act == strtolower('Quality')) {
                $sides[] = array("?m=Work&a=Quality", "全部工程", R::PROJECT_QUALITY);
                for ($i = Date::Year(); $i >= YEAR_START; $i--) {
                    $sides[] = array("?m=Work&a=Quality&year={$i}", "工程 ({$i})", R::PROJECT_QUALITY);
                }
            } elseif ($act == strtolower('Security')) {
                $sides[] = array("?m=Work&a=Security", "全部工程", R::PROJECT_SECURITY);
                for ($i = Date::Year(); $i >= YEAR_START; $i--) {
                    $sides[] = array("?m=Work&a=Security&year={$i}", "工程 ({$i})", R::PROJECT_SECURITY);
                }
            }
        } elseif ($mod == strtolower('Article')) {
            $sides = array(
                array('?m=Article&a=ArticleList', '文章列表', R::WEBSITE_ARTICLE_LIST),
                array('?m=Article&a=ArticleTypeList', '文章分类', R::WEBSITE_ARTICLE_TYPE),
                array('?m=Article&a=FeedbackList', '质量投诉', R::WEBSITE_ADVERTISER),
                array('?m=Article&a=ArticleAdvertiser', '页首切图', R::WEBSITE_ADVERTISER),
                array('?m=Article&a=ArticleLinker', '友情链接', R::WEBSITE_LINKER),
                array('?m=Article&a=ArticleCopyright', '页尾版权', R::WEBSITE_COPYRIGHT),
            );
        } elseif ($mod == strtolower('System')) {
            $sides = array(
                array('?m=System&a=GroupList', '组织机构', R::SYSTEM_USER),
                array('?m=System&a=RoleList', '角色管理', R::SYSTEM_USER),
                array('?m=System&a=ApproveList', '审批流程', R::SYSTEM_USER),
                array('?m=System&a=FacadeTypeList', '外观评测项目', R::SYSTEM_USER),
                array('?m=System&a=CheckTypeList', '检验项目', R::SYSTEM_USER),
                array('?m=System&a=LogLogin', '登录日志', R::SYSTEM_LOG),
                array('?m=System&a=LogEvent', '事件日志', R::SYSTEM_LOG),
                array('?m=System&a=CacheClean', '清理缓冲区', R::SYSTEM_LOG),
            );
        }

        $side = '<div class="side"><ul>';
        foreach ($sides as $v) {
            if (P::Instance($this->Uid())->isCanView($v [2])) $side .= '<li><a href="' . $v [0] . '">' . $v [1] . '</a></li>';
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

    protected function IsAdmin()
    {
        return UserCls::Instance()->Admin($this->Uid());
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

?>