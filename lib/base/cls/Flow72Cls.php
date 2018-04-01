<?php

class Flow72Cls
{
    const TABLE = 't_flow72';
    private static $list = array();
    private static $instance = null;

    public static function Instance()
    {
        if (self::$instance == null) {
            self::$instance = new self ();
        }
        return self::$instance;
    }

    private function __construct()
    {
    }

    public function Item($id)
    {
        $this->LoadItem($id);
        if (array_key_exists($id, self::$list))
            return self::$list [$id];
        return array();
    }

    public function Pid($id)
    {
        $this->LoadItem($id);
        if (array_key_exists($id, self::$list))
            return self::$list [$id] ['pid'];
        return 0;
    }

    private function LoadItem($id)
    {
        if (!array_key_exists($id, self::$list)) {
            $rs = self::Items("WHERE del=false AND id={$id}", '', 0, 1);
            if ($rs && count($rs) > 0)
                self::$list [$rs [0] ['id']] = $rs [0];
        }
    }

    public static function Count($where = '')
    {
        $rs = DB::db()->Fetch("
				SELECT COUNT(id) AS count
				FROM " . self::TABLE . "
				$where
				", array());
        if ($rs && count($rs) > 0 && $rs ['count'] > 0)
            return $rs ['count'];
        return 0;
    }

    public static function Items($where, $order, $start, $size)
    {
        $limit = DB::db()->Limit($start, $size);
        $rs = DB::db()->FetchAll("
				SELECT *
				FROM " . self::TABLE . "
				$where
				$order
				$limit
				");
        if ($rs && count($rs) > 0) {
            for ($i = 0; $i < count($rs); $i++) {
                $rs[$i]['project'] = ProjectCls::Instance()->Name($rs[$i]['pid']);
                $rs[$i]['user'] = UserCls::Instance()->Name($rs[$i]['uid']);
            }
            return $rs;
        }

        return array();
    }

    public static function Add($pid, $attachments, $no, $comp, $signer, $date, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $v1c, $v1n, $v1d, $v2c, $v2n, $v2d, $v3c, $v3n, $v3d, $v4c, $v4n, $v4d, $v5c, $v5n, $v5d)
    {
        $rs = DB::db()->Fetch("
                INSERT INTO " . self::TABLE . "(pid, attachments, no, comp, signer, date, c1, c2, c3, c4, c5, c6, c7, v1c, v1n, v1d, v2c, v2n, v2d, v3c, v3n, v3d, v4c, v4n, v4d, v5c, v5n, v5d)
				VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)
				RETURNING id
				", array($pid, $attachments, $no, $comp, $signer, $date, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $v1c, $v1n, $v1d, $v2c, $v2n, $v2d, $v3c, $v3n, $v3d, $v4c, $v4n, $v4d, $v5c, $v5n, $v5d));
        return $rs ['id'];
    }

    public static function Delete($id)
    {
        DB::db()->Query("
				UPDATE " . self::TABLE . "
				SET del=true
				WHERE id=?
				", array($id));
    }

    public static function SetReply($id, $uid, $replyid, $act = 0)
    {
        DB::db()->Query("
                UPDATE " . self::TABLE . "
                SET uid=?, replyid=?, replytime=CURRENT_TIMESTAMP, act=?
                WHERE id=?
                ", array($uid, $replyid, $act, $id));
    }

    public static function SetAct($id)
    {
        DB::db()->Query("
				UPDATE " . self::TABLE . "
				SET act=NOT act
				WHERE id=?
				", array($id));
    }


    public static function ExistProjectId($pid)
    {
        return self::Count("WHERE del=false AND pid={$pid}");
    }


    public static function GetLastItem($pid)
    {
        $rs = self::Items("WHERE del=false AND pid={$pid}", 'ORDER BY id DESC', 0, 1);
        return ($rs && count($rs) > 0 && !$rs[0]['act']) ? $rs[0] : array();
    }

    public static function GetApprovedItems($pid)
    {
        $rs = self::Items("WHERE del=false AND pid={$pid} AND act=true", 'ORDER BY id DESC', 0, 0);
        return $rs;
    }
}