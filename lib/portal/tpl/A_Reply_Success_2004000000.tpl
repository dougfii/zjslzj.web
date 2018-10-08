<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area">
        <div class="a4-success-caption">通过意见</div>
        <div class="a4-success-content" id="print_area">
            <ul class="tabs">
                <li class="act"><a href="#tab_1" data-toggle="tab">水利工程建设安全评价意见书</a></li>
                <li><a href="#tab_2" data-toggle="tab">安全监督报告</a></li>
            </ul>
            <div class="tabp">
                <div id="tab_1" class="tabi act">
                    <div class="a4-tab-block">
                        <div class="a4-tbl-caption">水利工程建设安全评价意见书</div>
                        <table class="a4-tbl-top">
                            <tr><td class="k">项目及标段名称</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td></tr>
                            <tr><td class="k">建设地点</td><td class="v"><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">完工日期</td><td class="v" colspan="2"><?php echo From::Date($edit, 'f3', $datas['f3'], ''); ?></td></tr>
                            <tr><td class="k">项目法人</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f4', $datas['f4'], ''); ?></td></tr>
                            <tr><td class="k">监理单位</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f5', $datas['f5'], ''); ?></td></tr>
                            <tr><td class="k">施工单位</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f6', $datas['f6'], ''); ?></td></tr>
                        </table>
                        <table class="a4-tbl-middle">
                            <tr><th colspan="5">安监机构评价记录</th></tr>
                            <tr><th>序号</th><th>检查日期</th><th>形象进度</th><th>评价等级</th><th>备注</th></tr>
                            <tbody id="items">
                            <?php
                        if(!empty($datas['fa1']))
                        {
                            for($i = 0; $i<count($datas['fa1']); $i++)
                            {
                        ?>
                                    <tr class="delitem">
                                        <td class="item-no"></td>
                                        <td class="c"><?php echo From::Text($edit, '', $datas['fa1'][$i], 'fa1', 60); ?></td>
                                        <td class="c"><?php echo From::Text($edit, '', $datas['fa2'][$i], 'fa2', 5); ?></td>
                                        <td class="c"><?php echo From::Text($edit, '', $datas['fa3'][$i], 'fa3', 5); ?></td>
                                        <td class="c"><?php echo From::Text($edit, '', $datas['fa4'][$i], 'fa4', 10); ?></td>
                                    </tr>
                            <?php
                            }
                        }
                        ?>
                            </tbody>
                        </table>
                        <?php if($edit) echo '<div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div>'; ?>
                        <table class="a4-tbl-bottom">
                            <tr><td class="v">
                                    工程总体安全评价意见：<br/>
                                    <?php echo From::TextArea($edit, 'f7', $datas['f7'], '', 20, 95); ?>
                                    <br/><br/>
                                    <p class="text-right">安全评价等级：<?php echo From::Checkbox($edit, 'f8', $datas['f8'], '合格'); ?>　　<?php echo From::Checkbox($edit, 'f9', $datas['f9'], '基本合格'); ?>　　<?php echo From::Checkbox($edit, 'f10', $datas['f10'], '不合格'); ?>　　
                                        <br/><br/><br/><br/>
                                        安全监督机构（公章）：<?php echo From::Text($edit, 'f11', $datas['f11'], ''); ?>　　
                                        <br/><br/>
                                        日期：<?php echo From::Date($edit, 'f12', $datas['f12'], ''); ?> 　　</p>
                                    <br/><br/>
                                </td></tr>
                        </table>
                    </div>
                </div>
                <div id="tab_2" class="tabi">
                    <div class="a4-tab-block">
                        <br/><br/><br/><br/>
                        <div class="pa4-title1"><?php echo From::Text($edit, 'f13', $datas['f13'], 'pae4-text1'); ?> 工程</div>
                        <div class="pa4-title1"><?php echo From::Text($edit, 'f14', $datas['f14'], 'pae4-text1'); ?> 验收</div>
                        <div class="pa4-title1">安全监督报告</div>
                        <br/><br/><br/><br/>
                        <div style="margin-left:220px;">
                            <div>编制：<?php echo From::Text($edit, 'f15', $datas['f15'], 'pae4-text1'); ?></div>
                            <br/>
                            <div>审定：<?php echo From::Text($edit, 'f16', $datas['f16'], 'pae4-text1'); ?></div>
                            <br/>
                            <div>批准：<?php echo From::Text($edit, 'f17', $datas['f17'], 'pae4-text1'); ?></div>
                        </div>
                        <br/><br/><br/><br/><br/><br/>
                        <div class="center">
                            <div><?php echo $work_org; ?></div>
                            <br/><br/>
                            <div>日期：<?php echo From::Date($edit, 'f17', $datas['f17'], 'pae4-text1'); ?></div>
                        </div>
                        <br/><br/><br/><br/><br/><br/>
                        <div>
                            <?php
                $text = "
一、工程概况
    （一）工程建设位置

    （二）工程项目批复

    （三）工程主要建设内容及主要设计指标

    （四）工程主要参建单位

    （五）工程开完工时间


二、安全监督工作


三、安全生产管理体系检查
    （一）安全生产管理机构及人员

    （二）安全生产责任制

    （三）安全生产规章制度及操作规程

    （四）安全教育培训

    （五）危险性较大工程安全管理

    （六）隐患排查治理

    （七）生产安全事故应急预案


四、安全监督检查


五、生产安全事故处理


六、工程安全生产评价意见


七、建议


";
                            $txt = !empty($datas['f18']) ? $datas['f18'] : $text;
                            echo From::TextArea($edit, 'f18', $edit ? $txt : nl2br($txt), 'pa4-textarea1', 50, 95);
                        ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php echo $atts; ?>
        </div>
        <?php if($edit) echo '<div class="a4-success-buttons"><a href="javascript:;" class="btn" id="success">审核通过</a></div>'; ?>
    </div>
    <?php echo From::Hidden('work_id', $work_id); ?>
    <?php echo From::Hidden('node_id', $node_id); ?>
    <?php echo From::Hidden('item_id', $item_id); ?>
    <?php echo From::Hidden('reply_id', $reply_id); ?>
</div>
<script>
    $(function(){
        serials('.item-no');

        $('#additem').click(function(){
            $('#items').append('<tr class="delitem"><td class="item-no"></td><td><input type="text" class="fa1" size="60" /></td><td><input type="text" class="fa2" size="5" /></td><td><input type="text" class="fa3" size="5" /></td><td><input type="text" class="fa4" size="10" /></td></tr>');
            serials('.item-no');
        });

        $('#items').on('dblclick', '.delitem', function(){
            var obj = $(this);
            layer.confirm('您确认需要删除当前条目吗?', function (i){
                layer.close(i);
                obj.remove();
            });
            serials('.item-no');
        });

        $('#success').click(function(){
            $.post('?m=Work&a=OnReply&pass=success', SetDatas(), function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        SetWorkAttachment('<?php echo $attstr; ?>');

        $('.upfile').change(function(){
            let up_id = $(this).attr('up_id');
            let up_name = $(this).attr('up_name');
            UploadWork(2, up_id, up_name);
        });
    });
</script>
