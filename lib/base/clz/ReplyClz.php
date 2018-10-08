<?php

class ReplyClz
{
    const PassBacked = false;
    const PassSuccess = true;

    const PassBackedName = '审批驳回';
    const PassSuccessName = '审批通过';

    private static $table = 't_reply';
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

    public function getStatusId($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['status_id'] : 0;
    }

    public function getStatus($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['status'] : '';
    }

    public function getReplierId($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['replier_id'] : 0;
    }

    public function getReplier($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['replier'] : '';
    }

    public function getAct($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['act'] : false;
    }

    public function getDatas($id)
    {
        $this->loadItem($id);
        return Json::Decode(array_key_exists($id, self::$caches) ? self::$caches [$id]['datas'] : '');
    }

    public function getAttachments($id)
    {
        $this->loadItem($id);
        return Json::Decode(array_key_exists($id, self::$caches) ? self::$caches [$id]['attachments'] : '');
    }

    // 驳回
    public static function resultsBacked($where, $order = '')
    {
        $where .= ' AND pass=' . self::PassBacked;
        return self::results($where, $order, 0, 0);
    }

    // 通过
    public static function resultsSuccess($where, $order = '')
    {
        $where .= ' AND pass=' . self::PassSuccess;
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
        $rs = DB::db()->Fetch("SELECT COUNT(id) AS count FROM " . self::$table . " {$where}", array());

        return $rs && count($rs) > 0 && $rs ['count'] > 0 ? $rs ['count'] : 0;
    }

    public static function items($where, $order, $start, $size)
    {
        $limit = DB::db()->Limit($start, $size);
        $rs = DB::db()->FetchAll("SELECT * FROM " . self::$table . " {$where} {$order} {$limit}");

        if ($rs && count($rs) > 0) {
            for ($i = 0; $i < count($rs); $i++) {
                $rs[$i]['org'] = GroupCls::Instance()->Name($rs[$i]['org_id']);
                $rs[$i]['type'] = $rs[$i]['type_id'] == WorkClz::TypeQuality ? WorkClz::TypeQualityName : WorkClz::TypeSecurityName;
                $rs[$i]['replier'] = UserCls::Instance()->Name($rs[$i]['replier_id']);
            }
            return $rs;
        }

        return array();
    }

    public static function add($org_id, $type_id, $work_id, $node_id, $item_id, $pass, $no, $templates, $datas, $attachments, $status_id, $replier_id)
    {
        $rs = DB::db()->Fetch("
                INSERT INTO " . self::$table . "(org_id, type_id, work_id, node_id, item_id, pass, no, templates, datas, attachments, status_id, replier_id)
				VALUES(?,?,?,?,?,?,?,?,?,?,?,?)
				RETURNING id
				", array($org_id, $type_id, $work_id, $node_id, $item_id, $pass, $no, $templates, $datas, $attachments, $status_id, $replier_id));

        return $rs ['id'];
    }

    public static function delete($id)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET del=true WHERE id=?", array($id));
    }
}