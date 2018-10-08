<?php

class AttachmentsClz
{
    public static $flow1 = array('申请文件', '质量监督申报表', '工程项目初步设计批复和项目法人单位文件批复', '项目法人与设计,监理,施工单位签订的合同', '项目法人第三方委托检测计划', '其他一', '其他二');
    public static $flow2 = array('申请文件', '编制说明', '项目划分表', '其他');
    public static $flow51 = array('重要隐蔽（关键部位）单元工程质量等级签证', '重要隐蔽（关键部位）单元工程质量评定表');
    public static $flow52 = array('重要隐蔽（关键部位）单元工程质量等级核备表', '分部工程质量评定表', '分部工程验收鉴定书');
    public static $flow61 = array('重要隐蔽（关键部位）单元工程质量等级核备表', '分部工程质量评定表', '分部工程验收鉴定书');
    public static $flow63 = array('单位工程验收鉴定书');
    public static $flow64 = array('项目法人质量核定申请', '质量核定申报书', '项目法人委托检测报告', '工程项目质量评定表');
    public static $flow71 = array();
    public static $flow72 = array();
    public static $flow73 = array();
    public static $flow74 = array();
    public static $flow75 = array();
    public static $flow8 = array();
    public static $flow91 = array();
    public static $flow921 = array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）');
    public static $flow922 = array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）');
    public static $flow923 = array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）');
    public static $flow924 = array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）');
    public static $flow925 = array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）');
    public static $flow9242 = array('工程项目质量监督人员情况表', '工程建设过程中质量监督检查意见汇总表');
    public static $flow9252 = array('工程项目质量监督人员情况表', '工程建设过程中质量监督检查意见汇总表');
    public static $flow10001 = array('水利工程建设施工现场安全生产条件检查表', '水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表', '水利工程建设项目施工单位安全责任人汇总表', '其他');
    public static $flow10009 = array('项目法人安全工作总结');
    public static $flow100012 = array('安全监督计划要点', '项目法人安全生产管理检查评分表', '监理单位安全生产管理检查评分表', '江苏省水利工程建设安全施工标准化工地考核表');

    private static $Templates = array(
        'item_1001000000' => array('申请文件', '质量监督申报表', '工程项目初步设计批复和项目法人单位文件批复', '项目法人与设计,监理,施工单位签订的合同', '项目法人第三方委托检测计划', '其他一', '其他二'),
        'item_1002000000' => array('申请文件', '编制说明', '项目划分表', '其他'),
        'item_1005001000' => array('重要隐蔽（关键部位）单元工程质量等级签证', '重要隐蔽（关键部位）单元工程质量评定表'),
        'item_1005002000' => array('重要隐蔽（关键部位）单元工程质量等级核备表', '分部工程质量评定表', '分部工程验收鉴定书'),
        'item_1006001000' => array('重要隐蔽（关键部位）单元工程质量等级核备表', '分部工程质量评定表', '分部工程验收鉴定书'),
        'item_1006003000' => array('单位工程验收鉴定书'),
        'item_1006004000' => array('项目法人质量核定申请', '质量核定申报书', '项目法人委托检测报告', '工程项目质量评定表'),
        'item_1009005001' => array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）'),
        'item_1009005002' => array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）'),
        'item_1009005003' => array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）'),
        'item_1009005004' => array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）'),
        'item_1009005005' => array('项目法人委托检测报告', '工程项目施工质量评定表（竣工验收阶段提供）'),
        'reply_1009005004' => array('工程项目质量监督人员情况表', '工程建设过程中质量监督检查意见汇总表'),
        'reply_1009005005' => array('工程项目质量监督人员情况表', '工程建设过程中质量监督检查意见汇总表'),
        'item_2001000000' => array('水利工程建设施工现场安全生产条件检查表', '水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表', '水利工程建设项目施工单位安全责任人汇总表', '其他'),
        'item_2004000000' => array('项目法人安全工作总结'),
        'reply_2001000000' => array('安全监督计划要点', '项目法人安全生产管理检查评分表', '监理单位安全生产管理检查评分表', '江苏省水利工程建设安全施工标准化工地考核表'),
    );

    const ModeFixed = 1;
    const ModeDynamic = 2;

    public static function StoreToStruct($arr)
    {
        $attachments = array();

        if (!empty($arr)) {
            foreach ($arr as $v) {
                if (!empty($v) && count($v) == 3) {
                    $att = self::Instance()->getItem($v[2]);
                    if (!empty($att)) $attachments[] = array('id' => $att['up_id'], 'name' => $att['up_name'], 'url' => $att['url'], 'ext' => $att['ext']);
                }
            }
        }

        return $attachments;
    }

    public static function StoreToPage($arr)
    {
        $str = '';
        $tmp = array();

        if (!empty($arr)) {
            foreach ($arr as $v) {
                if (!empty($v) && count($v) == 3) {
                    $tmp[] = implode(',', $v);
                }
            }
        }

        if (!empty($tmp)) $str = implode('|', $tmp);

        return $str;
    }

    public static function Panel($mode, $node_id, $attachments, $edit, $admin = false)
    {
        $key = $mode . '_' . $node_id;
        $fixed = array_key_exists($key, self::$Templates);
        $atts = array();

        if ($fixed) {
            foreach (self::$Templates[$key] as $k => $v) {
                $atts[$k + 1] = array('id' => $k + 1, 'name' => $v, 'url' => '', 'ext' => '');

                if (!empty($attachments)) {
                    foreach ($attachments as $m => $n) {
                        if ($v == $n['name']) {
                            $atts[$k + 1]['url'] = $n['url'];
                            $atts[$k + 1]['ext'] = $n['ext'];
                        }
                    }
                }
            }
        } else {
            $k = 0;
            if (!empty($attachments)) {
                foreach ($attachments as $m => $n) {
                    $atts[$k + 1]['id'] = $k + 1;
                    $atts[$k + 1]['name'] = $n['name'];
                    $atts[$k + 1]['url'] = $n['url'];
                    $atts[$k + 1]['ext'] = $n['ext'];
                    $k++;
                }
            }
        }

        $s = '<div><div class="att">附件:</div>';
        $s .= '<div class="atts">';
        $s .= '<ul>';

        foreach ($atts as $v) {
            $s .= '<li>' . $v['id'] . '. <span id="atta' . $v['id'] . '">';
            if (!empty($v['name']) && !empty($v['url'])) {
                $s .= '<a href="' . $v['url'] . '" target="_blank">' . $v['name'] . '</a>';
            } else {
                $s .= $v['name'];
            }
            $s .= '</span>';

            if ($fixed) {
                if ($edit) $s .= '　　<span class="up up' . $v['id'] . '">上传<input type="file" class="upfile" id="upfile' . $v['id'] . '" up_id="' . $v['id'] . '" up_name="' . $v['name'] . '" name="upfile' . $v['id'] . '" /></span>';
            } else {
                if ($edit) $s .= '　　<a href="javascript:;" class="upd" did="' . $v['id'] . '">删除</a>';
            }
            if ($admin && !empty($v['name']) && !empty($v['url'])) $s .= '　　<a href="javascript:;" class="delattr" did="' . $v['id'] . '">[管理删除]</a>';
            $s .= '</li>';
        }
        $s .= '</ul>';
        if (!$fixed && $edit) $s .= '<div id="attb"><span class="up">添加上传<input type="file" class="upfile" id="upfile0" name="upfile0" up_id="0" up_name="" /></span></div>';
        $s .= '</div></div>';

        return $s;
    }

    private static $table = 't_attachments';
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

    public function getUpId($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['up_id'] : 0;
    }

    public function getUpName($id)
    {
        $this->loadItem($id);
        return array_key_exists($id, self::$caches) ? self::$caches [$id] ['up_name'] : '';
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

    public static function add($up_id, $up_name, $filename, $url, $ext, $size)
    {
        $rs = DB::db()->Fetch("
                INSERT INTO " . self::$table . "(up_id, up_name, filename, url, ext, size)
				VALUES(?,?,?,?,?,?)
				RETURNING id
				", array($up_id, $up_name, $filename, $url, $ext, $size));

        return $rs ['id'];
    }

    public static function edit($id, $up_id, $up_name, $filename, $url, $ext, $size)
    {
        DB::db()->Query("
            UPDATE " . self::$table . "
            SET up_id=?, up_name=?, filename=?, url=?, ext=?, size=?, last=CURRENT_TIMESTAMP
            WHERE id=?
            ", array($up_id, $up_name, $filename, $url, $ext, $size, $id));
    }

    public static function delete($id)
    {
        DB::db()->Query("UPDATE " . self::$table . " SET del=true WHERE id=?", array($id));
    }
}