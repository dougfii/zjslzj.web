<?php

/*
 * node id: 节点号 x_xxx_xxx_xxx 首位区分项目类型，三层结构，每层三位
 *
 * status: 节点状态（文本显示最后状态）
 * type: 节点类型（0:节点 1:标题 2:链接）
 * url: 链接（备用）
 * sort: 排序
 * act: 开启（是否显示）
 * direction: 方向（true:用户发起管理审核 false:管理发起用户阅读）
 */

class NodeClz
{
    private static $quality = array(

        //'1000000000' => array('no' => '-', 'name' => '工程立项', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => true, 'direction' => true),

        '1001000000' => array('level' => 1, 'no' => '1', 'name' => '质量监督申报', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '1002000000' => array('level' => 1, 'no' => '2', 'name' => '单元工程质量项目划分', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        //-----
        '1003000000' => array('level' => 1, 'no' => '3', 'name' => '质量评定表', 'status' => '', 'type' => 1, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '1003001000' => array('level' => 2, 'no' => '3.1', 'name' => '外观质量检查与评定项目确认', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1003002000' => array('level' => 2, 'no' => '3.2', 'name' => '单位工程（含子单位工程）质量评定', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1003003000' => array('level' => 2, 'no' => '3.3', 'name' => '分部工程质量评定', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1003004000' => array('level' => 2, 'no' => '3.4', 'name' => '单元工程质量评定表', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1003005000' => array('level' => 2, 'no' => '3.5', 'name' => '单位工程检验评价', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1003006000' => array('level' => 2, 'no' => '3.6', 'name' => '工程项目质量评定', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1003007000' => array('level' => 2, 'no' => '3.7', 'name' => '工序单元工程质量评表', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        //-----

        '1004000000' => array('level' => 1, 'no' => '4', 'name' => '质量监督检查意见表', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => false),

        //-----
        '1005000000' => array('level' => 1, 'no' => '5', 'name' => '工程核备资料', 'status' => '', 'type' => 1, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '1005001000' => array('level' => 2, 'no' => '5.1', 'name' => '重要隐蔽（关键部位）单元工程核备', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1005002000' => array('level' => 2, 'no' => '5.2', 'name' => '阶段验收分部工程质量核备', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        //-----

        //-----
        '1006000000' => array('level' => 1, 'no' => '6', 'name' => '工程核定资料', 'status' => '', 'type' => 1, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '1006001000' => array('level' => 2, 'no' => '6.1', 'name' => '大型枢纽工程主要建筑物分部工程质量核定', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1006002000' => array('level' => 2, 'no' => '6.2', 'name' => '单位外观质量工程核定', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1006003000' => array('level' => 2, 'no' => '6.3', 'name' => '单位工程质量核定', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1006004000' => array('level' => 2, 'no' => '6.4', 'name' => '工程项目质量核定', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        //-----

        //-----
        '1007000000' => array('level' => 1, 'no' => '7', 'name' => '工程备案资料', 'status' => '', 'type' => 1, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '1007001000' => array('level' => 2, 'no' => '7.1', 'name' => '项目划分调整', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1007002000' => array('level' => 2, 'no' => '7.2', 'name' => '地基验槽签证', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1007003000' => array('level' => 2, 'no' => '7.3', 'name' => '质量缺陷备案', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1007004000' => array('level' => 2, 'no' => '7.4', 'name' => '工程质量事故处理结果', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => false),
        //-----

        '1008000000' => array('level' => 1, 'no' => '8', 'name' => '工程进度结点申报', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        //-----
        '1009000000' => array('level' => 1, 'no' => '9', 'name' => '工程验收', 'status' => '', 'type' => 1, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '1009001000' => array('level' => 2, 'no' => '9.1', 'name' => '合同工程完工鉴定书', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009002000' => array('level' => 2, 'no' => '9.2', 'name' => '单位工程验收鉴定书', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009003000' => array('level' => 2, 'no' => '9.3', 'name' => '分部工程验收鉴定书', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009004000' => array('level' => 2, 'no' => '9.4', 'name' => '法人验收', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009005000' => array('level' => 2, 'no' => '9.5', 'name' => '政府验收', 'status' => '', 'type' => 1, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '1009005001' => array('level' => 3, 'no' => '9.5.1', 'name' => '阶段验收（水下工程）', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009005002' => array('level' => 3, 'no' => '9.5.2', 'name' => '部分工程投入验收', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009005003' => array('level' => 3, 'no' => '9.5.3', 'name' => '泵站机组启动验收', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009005004' => array('level' => 3, 'no' => '9.5.4', 'name' => '竣工预验收', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        '1009005005' => array('level' => 3, 'no' => '9.5.5', 'name' => '竣工验收', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),
        //-----
    );

    private static $security = array(

        //'2000000000' => array('no' => '-', 'name' => '工程立项', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => true, 'direction' => true),

        '2001000000' => array('level' => 1, 'no' => '1', 'name' => '安全监督申请书', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '2002000000' => array('level' => 1, 'no' => '2', 'name' => '水利工程建设安全监督检查意见表', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => false),

        '2003000000' => array('level' => 1, 'no' => '3', 'name' => '水利工程建设参建单位安全评估表', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

        '2004000000' => array('level' => 1, 'no' => '4', 'name' => '水利工程建设安全评价申请书', 'status' => '', 'type' => 2, 'url' => '', 'sort' => 1, 'act' => false, 'direction' => true),

    );

    public static function getQualityNodes()
    {
        return self::$quality;
    }

    public static function getQualityNodeName($id)
    {
        return array_key_exists($id, self::$quality) ? self::$quality [$id]['name'] : '';
    }

    public static function getSecurityNodes()
    {
        return self::$security;
    }

    public static function getSecurityNodeName($id)
    {
        return array_key_exists($id, self::$security) ? self::$security [$id]['name'] : '';
    }

    public static function setNodeAct($nodes, $id, $act = true)
    {
        if (!empty($nodes) && array_key_exists($id, $nodes)) $nodes [$id]['act'] = $act;

        return $nodes;
    }

    public static function setNodeStatus($nodes, $id, $status = '')
    {
        if (!empty($nodes) && array_key_exists($id, $nodes)) $nodes [$id]['status'] = $status;

        return $nodes;
    }
}