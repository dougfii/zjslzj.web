<?php

class SecurityMod extends BaseMod
{
    public function index()
    {
        $this->ProjectList();
    }

    public function ProjectList()
    {
        $type = 2;
        $tid = $this->Req('tid', 0, 'int');

        $fname = $this->Req('fname', '', 'str');
        $fcompany = $this->Req('fcompany', '', 'str');
        $fdate0 = $this->Req('fdate0', '', 'str');
        $fdate1 = $this->Req('fdate1', '', 'str');
        $year = $this->Req('year', 0, 'int');

        $where = '';

        if ($year >= YEAR_START && $year <= Date::Year()) {
            $where .= ' AND EXTRACT(YEAR FROM time)=' . $year;
        }

        if ($this->Uid() == 1) {
        } else {
            $gids = GroupCls::Instance()->GetChildrenIds(UserCls::Instance()->Gid($this->Uid()), true);
            if (!empty($gids) && count($gids) > 0) {
                $gids = implode(',', $gids);
                $where .= ' AND gid IN (' . $gids . ')';
            } else {
                $where .= ' AND 1=2';
            }
        }

        $where .= ' AND type=' . $type;
        if (!empty ($fname)) $where .= ' AND LOWER(name) like \'%' . strtolower($fname) . '%\'';
        if (!empty($fcompany)) $where .= ' AND LOWER(company) like \'%' . strtolower($fcompany) . '%\'';
        if (!empty($fdate0) && empty($fdate1)) $where .= " AND DATE_TRUNC('day', time)='{$fdate0}'";
        if (empty($fdate0) && !empty($fdate1)) $where .= " AND DATE_TRUNC('day', time)='{$fdate1}'";
        if (!empty($fdate0) && !empty($fdate1)) $where .= " AND DATE_TRUNC('day', time)>='{$fdate0}' AND DATE_TRUNC('day', time)<='{$fdate1}'";

        $url = Url::QUERY_STRING_DELETE(array('page', 'fname'));

        $size = PAGE_SIZE_MEDIUM;
        list($count, $rs) = ProjectCls::Results($where, '', $this->Page(), $size);

        $this->Header();

        $view = View::Factory('SecurityList');

        $view->rs = $rs;
        $view->paged = HTML::PageJump($count, $this->Page(), $size, $url);

        $view->tid = $tid;

        $view->url = $url;
        $view->fname = $fname;
        $view->fcompany = $fcompany;
        $view->fdate0 = $fdate0;
        $view->fdate1 = $fdate1;

        $view->isAdmin = $this->IsAdmin();

        echo $view->Render();

        $this->Footer();
    }

    public function ProjectFlow()
    {
        $pid = $this->Req('pid', 0, 'int');

        $this->Header();

        $view = View::Factory('SecurityFlow');

        $view->rs = ProjectCls::Instance()->Item($pid);

        $view->pid = $pid;

        echo $view->Render();

        $this->Footer();
    }
}

?>