<?php

class NotifyClz
{
    const TypeUnknown = 0;
    const TypeToMember = 1;
    const TypeToAdmin = 2;

    private static $table = 't_notify';
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

    public function getRead($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['read'] : false;
    }

    // 成员所有
    public static function resultsMemberAll($uid)
    {
        $where = " AND type_id=" . self::TypeToMember . " AND uid={$uid}";
        return self::results($where, '', 0, 0);
    }

    // 管理所有
    public static function resultsAdminAll()
    {
        $where = ' AND type_id=' . self::TypeToAdmin;
        return self::results($where, '', 0, 0);
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
        $rs = DB::db()->Fetch("SELECT COUNT(id) AS count FROM " . self::$table . " {$where}", array());

        return $rs && count($rs) > 0 && $rs ['count'] > 0 ? $rs ['count'] : 0;
    }

    public static function items($where, $order, $start, $size)
    {
        $limit = DB::db()->Limit($start, $size);
        $rs = DB::db()->FetchAll("SELECT * FROM " . self::$table . " {$where} {$order} {$limit}");

        return $rs && count($rs) > 0 ? $rs : array();
    }

    public static function add($type_id, $uid, $content, $url)
    {
        $rs = DB::db()->Fetch("
                INSERT INTO " . self::$table . "(type_id, uid, content, url)
				VALUES(?,?,?,?)
				RETURNING id
				", array($type_id, $uid, $content, $url));

        return $rs ['id'];
    }

    public static function delete($id)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET del=true WHERE id=?", array($id));
    }

    public static function sendToMember($uid, $content, $url)
    {
        return self::add(self::TypeToMember, $uid, $content, $url);
    }

    public static function sendToAdmin($content, $url)
    {
        return self::add(self::TypeToAdmin, 0, $content, $url);
    }
}