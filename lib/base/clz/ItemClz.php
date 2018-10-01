<?php

class ItemClz
{
    const StatusUnknown = 0;
    const StatusNew = 1;
    const StatusProcessing = 2;
    const StatusBacked = 3;
    const StatusSuccess = 4;

    const StatusUnknownName = '未知';
    const StatusNewName = '新文档';
    const StatusProcessingName = '审核中';
    const StatusBackedName = '审退';
    const StatusSuccessName = '审过';

    private static $table = 't_item';
    private static $caches = array();
    private static $instance = null;

    public static function Instance()
    {
        if (self::$instance == null) self::$instance = new self ();

        return self::$instance;
    }

    private function __construct()
    {
    }

    private function loadItem($id)
    {
        if (!array_key_exists($id, self::$caches)) {
            $rs = self::items("WHERE del=false AND id={$id}", '', 0, 1);
            if ($rs && count($rs) > 0) self::$caches [$rs [0] ['id']] = $rs [0];
        }
    }

    public function getItem($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] : array();
    }

    public function getAct($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['act'] : false;
    }

    // 未完成（用户列表用，包含 新建、审核中、审退）
    public static function resultsUnfinished($where, $order)
    {
        $where .= ' AND (status_id=' . self::StatusNew . ' OR status_id=' . self::StatusProcessing . ' OR status_id=' . self::StatusBacked . ')';
        return self::results($where, $order, 0, 0);
    }

    // 未完成（管理列表用，包含 审核中）
    public static function resultsProcessing($where, $order)
    {
        $where .= ' AND status_id=' . self::StatusProcessing;
        return self::results($where, $order, 0, 0);
    }

    // 审核成功（通用）
    public static function resultsSuccess($where, $order)
    {
        $where .= ' AND status_id=' . self::StatusSuccess;
        return self::results($where, $order, 0, 0);
    }

    public static function results($where, $order, $page, $size)
    {
        $where = 'WHERE del=false ' . $where;
        $order = empty($order) ? 'ORDER BY id DESC' : $order;

        $count = self::Count($where);
        $page = HTML::PageNum($count, $page, $size);
        $start = HTML::PagePos($count, $page, $size);
        $rs = self::Items($where, $order, $start, $size);

        return array($count, $rs);
    }

    public static function count($where = '')
    {
        $rs = DB::db()->Fetch("
				SELECT COUNT(id) AS count
				FROM " . self::$table . "
				{$where}
				", array());

        return $rs && count($rs) > 0 && $rs ['count'] > 0 ? $rs ['count'] : 0;
    }

    public static function items($where, $order, $start, $size)
    {
        $limit = DB::db()->Limit($start, $size);
        $rs = DB::db()->FetchAll("
				SELECT *
				FROM " . self::$table . "
				{$where}
				{$order}
				{$limit}
				");

        if ($rs && count($rs) > 0) {
//            for ($i = 0; $i < count($rs); $i++) {
////                $rs[$i]['project'] = ProjectCls::Instance()->Name($rs[$i]['pid']);
////                $rs[$i]['user'] = UserCls::Instance()->Name($rs[$i]['uid']);
//
//                $rs[$i]['org'] = GroupCls::Instance()->Name($rs[$i]['org_id']);
//            }
            return $rs;
        }

        return array();
    }
}