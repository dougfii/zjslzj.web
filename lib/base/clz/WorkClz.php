<?php

class WorkClz
{
    const TypeQuality = 1;
    const TypeSecurity = 2;
    const TypeQualityName = '质量监督检查';
    const TypeSecurityName = '安全监督检查';

    private static $table = 't_work';
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

    public function getNodes($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id]['nodes'] : '';
    }

    public function getTypeId($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id]['type_id'] : 0;
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
            for ($i = 0; $i < count($rs); $i++) {
//                $rs[$i]['project'] = ProjectCls::Instance()->Name($rs[$i]['pid']);
//                $rs[$i]['user'] = UserCls::Instance()->Name($rs[$i]['uid']);

                $rs[$i]['org'] = GroupCls::Instance()->Name($rs[$i]['org_id']);
            }
            return $rs;
        }

        return array();
    }

    public static function add($username, $password, $org_id, $type_id, $name, $company, $contacts, $phone, $email, $nodes)
    {
        $rs = DB::db()->Fetch("
                INSERT INTO " . self::$table . "(username, password, org_id, type_id, name, company, contacts, phone, email, nodes)
				VALUES(?,md5(?),?,?,?,?,?,?,?,?)
				RETURNING id
				", array($username, $password, $org_id, $type_id, $name, $company, $contacts, $phone, $email, $nodes));

        return $rs ['id'];
    }

    public static function delete($id)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET del=true WHERE id=?", array($id));
    }

    public static function existUsername($type_id, $username, $selfid = null)
    {
        $where = "WHERE del=false AND type_id={$type_id} AND LOWER(username)=LOWER('{$username}')";
        if ($selfid) $where .= " AND id!={$selfid}";
        return self::count($where);
    }

    public static function login($username, $password)
    {
        $rs = DB::db()->Fetch("
				SELECT *
				FROM " . self::$table . "
				WHERE LOWER(username)=LOWER(?) AND password=md5(?) AND del=false
				LIMIT 1
				", array($username, $password));
        return $rs;
    }

    public static function setLast($id)
    {
        DB::db()->Query("
				UPDATE " . self::$table . "
				SET last=CURRENT_TIMESTAMP
				WHERE id=?
				", array($id));
    }

    public static function setAct($id)
    {
        DB::db()->Query("
				UPDATE " . self::$table . "
				SET act=NOT act
				WHERE id=?
				", array($id));
    }

    public static function setNodes($id, $nodes)
    {
        DB::db()->Query("
				UPDATE " . self::$table . "
				SET nodes=?
				WHERE id=?
				", array($nodes, $id));
    }
//    public static function EditPassword($id, $pass)
//    {
//        self::SetPassword($id, $pass);
//    }
//
//    public static function SetPassword($id, $pass)
//    {
//        DB::db()->Query("
//				UPDATE " . self::TABLE . "
//				SET pass=md5(?)
//				WHERE id=?
//				", array($pass, $id));
//    }
//
//    public static function SetInfo($id, $name, $company)
//    {
//        DB::db()->Query("
//				UPDATE " . self::TABLE . "
//				SET name=?, company=?
//				WHERE id=?
//				", array($name, $company, $id));
//    }
//

//
//    public static function SetNode($id, $node, $nodeid, $stateid)
//    {
//        DB::db()->Query("
//				UPDATE " . self::TABLE . "
//				SET n{$node}=?, s{$node}=?
//				WHERE id=?
//				", array($nodeid, $stateid, $id));
//    }
//


//
//    public static function Forget($name, $email)
//    {
//        $rs = DB::db()->Fetch("
//				SELECT *
//				FROM " . self::TABLE . "
//				WHERE LOWER(name)=LOWER(?) AND LOWER(email)=LOWER(?) AND del=false
//				LIMIT 1
//				", array($name, $email));
//        return $rs;
//    }
//
//    //主管单位名称
//    public static function GetGroupCompany($mid)
//    {
//        return GroupCls::Instance()->Company(self::Instance()->Gid($mid));
//    }

//    public static function SetReply($id, $uid, $replyid, $act = 0)
//    {
//        DB::db()->Query("
//                UPDATE " . self::TABLE . "
//                SET uid=?, replyid=?, replytime=CURRENT_TIMESTAMP, act=?
//                WHERE id=?
//                ", array($uid, $replyid, $act, $id));
//    }
//
//    public static function SetAct($id)
//    {
//        DB::db()->Query("
//				UPDATE " . self::TABLE . "
//				SET act=NOT act
//				WHERE id=?
//				", array($id));
//    }
//
//
//    public static function ExistProjectId($pid)
//    {
//        return self::Count("WHERE del=false AND pid={$pid}");
//    }
//
//    public static function GetLastItem($pid)
//    {
//        $rs = self::Items("WHERE del=false AND pid={$pid}", 'ORDER BY id DESC', 0, 1);
//        return ($rs && count($rs) > 0 && !$rs[0]['act']) ? $rs[0] : array();
//    }
//
//    public static function GetApprovedItems($pid)
//    {
//        $rs = self::Items("WHERE del=false AND pid={$pid} AND act=true", 'ORDER BY id DESC', 0, 0);
//        return $rs;
//    }
}