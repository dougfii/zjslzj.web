<?php

class CheckTypeBiz
{
    public static function Item($id)
    {
        return CheckTypeCls::Instance()->Item($id);
    }

    public static function Name($id)
    {
        return CheckTypeCls::Instance()->Name($id);
    }

    public static function Pid($id)
    {
        return CheckTypeCls::Instance()->Pid($id);
    }

    public static function Score($id)
    {
        return CheckTypeCls::Instance()->Score($id);
    }

    public static function GetNextList($id, $self = false)
    {
        $ret = array();
        $rs = CheckTypeCls::GetNextIds($id, $self);
        if (!empty($rs)) {
            foreach ($rs as $k => $v) {
                $ret[$v] = CheckTypeCls::Instance()->Item($v);
            }
        }
        return array(count($ret), $ret);
    }

    public static function GetChildrenIds($id, $self = false)
    {
        $rs = CheckTypeCls::GetChildrenIds($id, $self);
        return array(count($rs), $rs);
    }

    public static function GetParentList($id, $self = true, $root = false)
    {
        $ret = array();
        $rs = CheckTypeCls::GetParents($id, $self, $root);
        if (!empty($rs)) {
            foreach ($rs as $k => $v) {
                $ret[$v] = CheckTypeCls::Instance()->Name($v);
            }
        }
        return array(count($ret), $ret);
    }

    public static function Add($pid, $name, $score)
    {
        if (Util::isBlank($name)) return Data::FormatError('请输入项目名称');
        if (!Util::IsMaxLen($name, 50)) return Data::FormatError('项目名称过长');
        if (CheckTypeCls::ExistName($pid, $name)) return Data::FormatError('项目名称已经存在');


        try {
            DB::db()->BeginTransaction();

            $id = CheckTypeCls::Add($pid, $name, $score);

            DB::db()->Commit();

            return Data::FormatSuccess($id);
        } catch (Exception $e) {
            DB::db()->RollBack();
        }

        return Data::FormatError(ALERT_ERROR);
    }

    public static function Edit($id, $pid, $name, $score)
    {
        if ($id <= 0) return Data::FormatError(ALERT_ERROR);
        if (Util::isBlank($name)) return Data::FormatError('请输入项目名称');
        if (!Util::IsMaxLen($name, 50)) return Data::FormatError('项目名称过长');
        if (CheckTypeCls::ExistName($pid, $name, $id)) return Data::FormatError('项目名称已经存在');

        try {
            DB::db()->BeginTransaction();

            $id = CheckTypeCls::Edit($id, $pid, $name, $score);

            DB::db()->Commit();

            return Data::FormatSuccess($id);
        } catch (Exception $e) {
            DB::db()->RollBack();
        }

        return Data::FormatError(ALERT_ERROR);
    }

    public static function Delete($id)
    {
        if ($id <= 0) return Data::FormatError(ALERT_ERROR);
        $orgs = CheckTypeCls::GetNextIds($id);
        if (!empty($orgs)) return Data::FormatError("当前项目存在下级项目，不能删除");

        try {
            DB::db()->BeginTransaction();

            $id = CheckTypeCls::Delete($id);

            DB::db()->Commit();

            return Data::FormatSuccess($id);
        } catch (Exception $e) {
            DB::db()->RollBack();
        }

        return Data::FormatError(ALERT_ERROR);
    }

    public static function Tree()
    {
        return CheckTypeCls::Tree();
    }
}

?>