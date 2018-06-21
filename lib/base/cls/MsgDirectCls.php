<?php

//momo
class MsgDirectCls
{
    const FROM_USER = 1;
    const FROM_QUALITY = 2;
    const FROM_SECURITY = 3;

    private static $map = array(//
        1 => '从用户',//
        2 => '从质量管理',//
        3 => '从安全管理',//
    );

    public static function Name($id)
    {
        if (array_key_exists($id, self::$map)) {
            return self::$map [$id];
        }
        return '';
    }

    public static function Count()
    {
        return count(self::$map);
    }

    public static function Items()
    {
        return self::$map;
    }
}

?>