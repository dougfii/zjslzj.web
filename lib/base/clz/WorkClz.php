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

    public function getName($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id]['name'] : '';
    }

    public function getNodes($id)
    {
        $this->loadItem($id);
        return Json::Decode(array_key_exists($id, self::$caches) ? self::$caches [$id]['nodes'] : '');
    }

    public function getNodeNo($work_id, $node_id)
    {
        $nodes = $this->getNodes($work_id);
        return !empty($nodes) ? array_key_exists($node_id, $nodes) ? $nodes[$node_id]['no'] : '' : '';
    }

    public function getNodeName($work_id, $node_id)
    {
        $nodes = $this->getNodes($work_id);
        return !empty($nodes) ? array_key_exists($node_id, $nodes) ? $nodes[$node_id]['name'] : '' : '';
    }

    public function getNodeStatus($work_id, $node_id)
    {
        $nodes = $this->getNodes($work_id);
        return !empty($nodes) ? array_key_exists($node_id, $nodes) ? $nodes[$node_id]['status'] : '' : '';
    }

    public function getNodeDirection($work_id, $node_id)
    {
        $nodes = $this->getNodes($work_id);
        return !empty($nodes) ? array_key_exists($node_id, $nodes) ? $nodes[$node_id]['direction'] : false : false;
    }

    public function getTypeId($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id]['type_id'] : 0;
    }

    public function getType($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id]['type'] : '';
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
        DB::db()->Query("UPDATE " . self::$table . " SET last=CURRENT_TIMESTAMP WHERE id=?", array($id));
    }

    public static function setStatusId($id, $status_id)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET status_id=? WHERE id=?", array($status_id, $id));
    }

    public static function setAct($id)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET act=NOT act WHERE id=?", array($id));
    }

    public static function setNodes($id, $nodes)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET nodes=? WHERE id=?", array($nodes, $id));
    }

    public static function setNodeStatus($work_id, $node_id, $status)
    {
        $nodes = self::Instance()->getNodes($work_id);
        if (!empty($nodes) && array_key_exists($node_id, $nodes)) {
            $nodes[$node_id]['status'] = $status;
            self::setNodes($work_id, Json::Encode($nodes));
        }
    }

    public static function setNodeAct($work_id, $node_id, $act)
    {
        $nodes = self::Instance()->getNodes($work_id);
        if (!empty($nodes) && array_key_exists($node_id, $nodes)) {
            $nodes[$node_id]['act'] = $act;
            self::setNodes($work_id, Json::Encode($nodes));
        }
    }

    public static function setNodeActs($work_id, $node_id_acts)
    {
        $nodes = self::Instance()->getNodes($work_id);
        if (!empty($nodes)) {
            foreach ($node_id_acts as $k => $v) {
                if (array_key_exists($k, $nodes)) {
                    $nodes[$k]['act'] = $v;
                }
            }
            self::setNodes($work_id, Json::Encode($nodes));
        }
    }

    public static function setPassword($id, $password)
    {
        DB::db()->Query("
				UPDATE " . self::$table . "
				SET password=md5(?)
				WHERE id=?
				", array($password, $id));
    }

    public static function forget($username, $email)
    {
        $rs = DB::db()->Fetch("
				SELECT *
				FROM " . self::$table . "
				WHERE LOWER(username)=LOWER(?) AND LOWER(email)=LOWER(?) AND del=false
				LIMIT 1
				", array($username, $email));
        return $rs;
    }
}