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
    const StatusBackedName = '审核驳回';
    const StatusSuccessName = '审核通过';

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

    public static function getStatusName($status_id)
    {
        switch ($status_id) {
            case self::StatusNew:
                return self::StatusNewName;
            case self::StatusProcessing:
                return self::StatusProcessingName;
            case self::StatusBacked:
                return self::StatusBackedName;
            case self::StatusSuccess:
                return self::StatusSuccessName;
            default:
                return self::StatusUnknownName;
        }
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

    // 新建
    public static function resultsNew($where, $order = '')
    {
        $where .= ' AND status_id=' . self::StatusNew;
        return self::results($where, $order, 0, 0);
    }

    // 审核中
    public static function resultsProcessing($where, $order = '')
    {
        $where .= ' AND status_id=' . self::StatusProcessing;
        return self::results($where, $order, 0, 0);
    }

    // 审退
    public static function resultsBacked($where, $order = '')
    {
        $where .= ' AND status_id=' . self::StatusBacked;
        return self::results($where, $order, 0, 0);
    }

    // 审核成功
    public static function resultsSuccess($where, $order = '')
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
                $rs[$i]['status'] = self::getStatusName($rs[$i]['status_id']);
                $rs[$i]['replier'] = UserCls::Instance()->Name($rs[$i]['replier_id']);
            }
            return $rs;
        }

        return array();
    }

    public static function add($org_id, $type_id, $work_id, $node_id, $no, $templates, $datas, $attachments, $status_id)
    {
        $rs = DB::db()->Fetch("
                INSERT INTO " . self::$table . "(org_id, type_id, work_id, node_id, no, templates, datas, attachments, status_id)
				VALUES(?,?,?,?,?,?,?,?,?)
				RETURNING id
				", array($org_id, $type_id, $work_id, $node_id, $no, $templates, $datas, $attachments, $status_id));

        return $rs ['id'];
    }

    public static function edit($id, $org_id, $type_id, $work_id, $node_id, $no, $templates, $datas, $attachments, $status_id)
    {
        DB::db()->Query("
            UPDATE " . self::$table . "
            SET org_id=?, type_id=?, work_id=?, node_id=?, no=?, templates=?, datas=?, attachments=?, status_id=?, last=CURRENT_TIMESTAMP
            WHERE id=?
            ", array($org_id, $type_id, $work_id, $node_id, $no, $templates, $datas, $attachments, $status_id, $id));
    }

    public static function delete($id)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET del=true WHERE id=?", array($id));
    }

    public static function reply($id, $reply_id, $reply_pass, $reply_status_id, $replier_id, $work_status_id)
    {
        DB::db()->Query("
            UPDATE " . self::$table . "
            SET reply_id=?, reply_pass=?, reply_status_id=?, replier_id=?, reply_time=CURRENT_TIMESTAMP, status_id=?
            WHERE id=?
            ", array($reply_id, $reply_pass, $reply_status_id, $replier_id, $work_status_id, $id));
    }
}