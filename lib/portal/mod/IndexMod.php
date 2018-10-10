<?php

class IndexMod implements IMod
{
    private $_page = 1;

    public function __construct()
    {
        $this->Init();
    }

    protected function Init()
    {
        $this->_page = $this->Req('page', 1, 'int');
    }

    private function Head()
    {
        $view = View::Factory('A_WebHead');
        echo $view->Render();
    }

    private function Foot()
    {
        $v = View::Factory('A_WebFoot');
        echo $v->Render();
    }

    private function Header()
    {
        $this->Head();
        $view = View::Factory('A_WebHeader');
        $view->nav = $this->Nav();
        $view->advertiser = AdvertiserArchiveBiz::Get()['msg'];
        echo $view->Render();
    }

    private function Footer()
    {
        $view = View::Factory('A_WebFooter');
        $view->footer = CopyrightArchiveBiz::Get()['msg'];
        echo $view->Render();
        $this->Foot();
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

    private function Nav()
    {
        $rs = ArticleTypeCls::GetNextIds(0, false, true, true);
        $s = '<ul>';
        $s .= '<li><a href="/">首页</a></li>';
        if (!empty($rs)) {
            foreach ($rs as $k => $v) {
                $s .= '<li><a href="?a=articles&id=' . $v . '">' . ArticleTypeCls::Instance()->Name($v) . '</a></li>';
            }
        }
        //$s .= '<li><a href="/?a=feedback">质量投诉</a></li>';
        $s .= '<li><a href="/?a=contacts">联系我们</a></li>';
        $s .= '</ul>';
        return $s;
    }

    public function index()
    {
        $this->Header();

        $view = View::Factory('Index');

        $view->ra1 = ArticleBiz::GetExtItems(2, true, '', '', 1, 6)['data'];
        $view->ra2 = ArticleBiz::GetExtItems(4, true, '', '', 1, 6)['data'];
        $view->ra3 = ArticleBiz::GetExtItems(3, true, '', '', 1, 6)['data'];
        $view->ra4 = ArticleBiz::GetExtItems(6, true, '', '', 1, 6)['data'];
        $view->rb = ArticleBiz::Item(1)['data'];
        $view->rc = ArticleBiz::GetExtItems(-1, true, 'AND tid!=1 AND roll=true', '', 1, 10)['data'];

        $view->linker = LinkerArchiveBiz::Get()['msg'];

        echo $view->Render();

        $this->Footer();
    }

    public function article()
    {
        $id = $this->Req('id', 0, 'int');

        $rs = ArticleBiz::Item($id)['data'];
        if (!empty($rs)) $title = $rs['title'];
        else $title = APP_NAME;

        $this->Header();

        $view = View::Factory('Article');

        $view->rs = $rs;

        echo $view->Render();

        ArticleBiz::IncViews($id);

        $this->Footer();
    }

    public function articles()
    {
        $id = $this->Req('id', 0, 'int');

        $url = Url::QUERY_STRING_DELETE(array('page'));
        $size = PAGE_SIZE_MEDIUM;
        $ret = ArticleBiz::GetExtItems($id, true, '', '', $this->Page(), $size);
        $count = $ret['msg'];
        $rs = $ret['data'];
        $paged = HTML::PageGroup($count, $this->Page(), $url, $size);

        $title = ArticleTypeBiz::Name($id)['msg'];

        $this->Header();

        $view = View::Factory('Articles');

        $view->title = $title;
        $view->rs = $rs;
        $view->paged = $paged;
        $view->side = $this->articles_side();

        echo $view->Render();

        $this->Footer();
    }

    private function articles_side()
    {
        $rs = ArticleTypeCls::GetNextIds(0, false, true, true);
        $s = '<div class="articles_side"><div class="articles_caption">栏目分类</div><ul>';
        if (!empty($rs)) {
            foreach ($rs as $k => $v) {
                $s .= '<li><img src="/img/arrow.gif"/>　<a href="?a=articles&id=' . $v . '">' . ArticleTypeCls::Instance()->Name($v) . '</a></li>';
            }
        }

        $s .= '<li><img src="/img/arrow.gif"/>　<a href="/?a=feedback">质量投诉</a></li>';
        $s .= '<li><img src="/img/arrow.gif"/>　<a href="/?a=contacts">联系我们</a></li>';
        $s .= '</ul></div>';
        return $s;
    }

    public function contacts()
    {
        $id = 2;

        $rs = ArticleBiz::Item($id)['data'];

        $this->Header();

        $view = View::Factory('Contacts');

        $view->rs = $rs;

        $view->side = $this->articles_side();

        echo $view->Render();

        ArticleBiz::IncViews($id);

        $this->Footer();
    }

    public function feedback()
    {
        $fname = $this->Req('fname', '', 'str');

        $url = Url::QUERY_STRING_DELETE(array('page'));
        $size = PAGE_SIZE_MEDIUM;

        $where = 'WHERE del=false AND act=true ';
        if (!empty ($fname)) $where .= ' AND ((LOWER(project) like \'%' . strtolower($fname) . '%\') OR (LOWER(reply) like \'%' . strtolower($fname) . '%\') OR (LOWER(content) like \'%' . strtolower($fname) . '%\')) ';
        $order = empty($order) ? 'ORDER BY id DESC' : $order;
        $count = FeedbackCls::Count($where);
        $page = HTML::PageNum($count, $this->Page(), $size);
        $start = HTML::PagePos($count, $page, $size);
        $rs = FeedbackCls::Items($where, $order, $start, $size);
        $paged = HTML::PageGroup($count, $this->Page(), $url, $size);

        $this->Header();

        $view = View::Factory('Feedback');

        $view->rs = $rs;
        $view->paged = $paged;
        $view->url = $url;
        $view->fname = $fname;
        $view->side = $this->articles_side();

        echo $view->Render();

        $this->Footer();
    }

    public function onfeedback()
    {
        if (isset($_SESSION['feedbackexprie']) && (time() - $_SESSION['feedbackexprie']) < 36000) Json::ReturnError('您已提交过投诉，十分钟内请务重投');
        $project = $this->Req('project', '', 'str');
        $content = $this->Req('content', '', 'str');
        $contacts = $this->Req('contacts', '', 'str');
        $phone = $this->Req('phone', '', 'str');
        $email = $this->Req('email', '', 'str');

        if (empty($project)) Json::ReturnError('请输入投诉工程');
        if (!Util::IsMaxLen($project, 50)) Json::ReturnError('投诉工程名称过长');
        if (empty($content)) Json::ReturnError('请输入投诉内容');
        if (empty($contacts)) Json::ReturnError('请输入联系人');
        if (!Util::IsMaxLen($contacts, 50)) Json::ReturnError('联系人过长');
        if (empty($phone) && empty($email)) Json::ReturnError('联系电话和邮箱至少需要输入一个');
        if (!empty($phone) && !Util::IsMaxLen($project, 50)) Json::ReturnError('联系电话过长');
        if (!empty($email) && !Util::IsEmail($email)) Json::ReturnError('请输入正确的联系人电子邮箱');

        try {
            $id = FeedbackCls::Add($project, $contacts, $phone, $email, $content);
            $_SESSION['feedbackexprie'] = time();
        } catch (Exception $e) {
            Json::ReturnError(ALERT_ERROR);
        }

        Json::ReturnSuccess();
    }

    public function forget()
    {
        if (!isset ($_SESSION ['forgettimes'])) {
            $_SESSION ['forgettimes'] = time();
            $_SESSION ['forgetcomes'] = 5;
        }

        $view = View::Factory('Forget');

        echo $view->Render();
    }

    public function onForget()
    {
        $name = $this->Req('name', '', 'str');
        $email = $this->Req('email', '', 'str');

        if (!isset ($_SESSION ['forgetcomes']) || !$_SESSION ['forgettimes']) Json::ReturnError(ALERT_ERROR);
        if ($_SESSION ['forgetcomes'] < 0 && time() - $_SESSION ['forgettimes'] < 3600) Json::ReturnError('尝试次数过多,请十分钟后再试');
        if (empty($name) || !Util::IsEmail($email)) {
            $_SESSION ['forgetcomes'] -= 1;
            $_SESSION ['forgettimes'] = time();
            Json::ReturnError('工程名称或登录密码错误');
        }

        $rs = WorkClz::forget($name, $email);
        if (empty($rs)) {
            $_SESSION ['forgetcomes'] -= 1;
            $_SESSION ['forgettimes'] = time();
            Json::ReturnError('工程名称或电子邮箱错误');
        }

        $pid = $rs['id'];
        $email = $rs['email'];
        $code = UUID::Make();
        $valid = UUID::Make();

        $href = "?a=retrieve&pid={$pid}&code={$code}&valid={$valid}";

        if (!MailHelpCls::sendForget($email, '找回密码', $href)) Json::ReturnError('邮件发送错误');

        ForgetCls::Add($pid, $code);

        $_SESSION ['forgettimes'] = time();
        $_SESSION ['forgetcomes'] = 5;

        Json::ReturnSuccess();
    }

    public function Retrieve()
    {
        $pid = $this->Req('pid', 0, 'int');
        $code = $this->Req('code', '', 'str');

        $view = View::Factory('Retrieve');

        $view->pid = $pid;
        $view->code = $code;

        echo $view->Render();
    }

    public function OnRetrieve()
    {
        $pid = $this->Req('pid', 0, 'int');
        $code = $this->Req('code', '', 'str');
        $pass = $this->Req('pass', '', 'str');
        $repass = $this->Req('repass', '', 'str');

        if (!Util::IsPassword($pass)) Json::ReturnError('请设置有效的新设密码');
        if ($pass != $repass) Json::ReturnError('新设密码与重复密码不一致');

        if (!ForgetCls::Exist($pid, $code)) Json::ReturnError('功能过期或错误，请重新找回密码后再试');

        ProjectCls::SetPassword($pid, $pass);
        Json::ReturnSuccess();
    }

    // Member part
    public function Login()
    {
        if (!isset ($_SESSION ['mtimes'])) {
            $_SESSION ['mtimes'] = time();
            $_SESSION ['mcomes'] = 8;
        }

        $view = View::Factory('A_Login');

        $view->org_id = HTML::CtlSelKVList(GroupBiz::Items()['data'], 'org_id', '');

        echo $view->Render();
    }

    public function OnLogin()
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


        $_SESSION ['_uid'] = $rs['id'];
        $_SESSION ['_user'] = $rs['username'];

        Json::ReturnSuccess('?m=Work');
    }

    public function OnJoin()
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
        //if (WorkClz::existUsername($type_id, $username)) Json::ReturnError('工程名称已经存在');

        $id = WorkClz::add($username, $password, $org_id, $type_id, $username, $company, $contacts, $phone, $email, Json::Encode($type_id == WorkClz::TypeQuality ? NodeClz::getQualityNodes() : NodeClz::getSecurityNodes()));

        $_SESSION ['_uid'] = $id;
        $_SESSION ['_user'] = $username;


        NotifyClz::sendToMember($id, "欢迎 {$username} 新注册", "?m=Work&a=Nodes");
        NotifyClz::sendToAdmin("欢迎 {$username} 新注册", "?m=Work&a=Nodes&work_id={$id}");

        Json::ReturnSuccess('?m=Work');
    }
}