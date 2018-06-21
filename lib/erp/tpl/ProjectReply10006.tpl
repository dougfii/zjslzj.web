<script>
    $(function(){
        $('.allow').click(function(){
            layer.msg('数据处理错误');
            return false;
            $.post('?m=Project&a=OnProjectReply10006', {fid:$('#fid').val(),no:$('#no').val(),content:$('#content').val(),date:$('#date').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){history.back();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('#additem').click(function(){
            $('#items').append('<tr class="delitem"><td class="c item0"></td><td class="c"><input type="text" class="item1" onclick="laydate();" size="6"/></td><td class="c"><input type="text" class="item2"/></td><td class="c"><input type="text" class="item3"/></td><td class="c"><input type="text" class="item4"/></td></tr>');
            serials();
        });

        function serials(){
            $.each($('.item0'), function(i, n){
                $(this).html(i+1);
            });
        }

        $('#items').on('dblclick', '.delitem', function(){
            var obj = $(this);
            layer.confirm('您确认需要删除当前条目吗?', function (i){
                layer.close(i);
                obj.remove();
                serials();
            });
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设参建单位安全评估表 - [批复]</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <ul class="tabs">
        <li class="act"><a href="#tab_1" data-toggle="tab">水利工程建设安全评价意见书</a></li>
        <li><a href="#tab_2" data-toggle="tab">安全监督报告</a></li>
    </ul>
    <div class="tabp">
        <div id="tab_1" class="tabi act">
            <div class="pagea4" style="border:0;">
                <div class="pagea4info">
                    <div class="center">水利工程建设安全评价意见书</div>
                    <table class="tx1">
                        <tr><td class="k">项目及标段名称</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td></tr>
                        <tr><td class="k">建设地点</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t1" value="' . $t1 . '" />'; else echo $t1; ?></td><td class="k">完工日期</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" onclick="laydate();" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></td></tr>
                        <tr><td class="k">项目法人</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></td></tr>
                        <tr><td class="k">监理单位</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t4" value="' . $t4 . '" />'; else echo $t4; ?></td></tr>
                        <tr><td class="k">施工单位</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t5" value="' . $t5 . '" />'; else echo $t5; ?></td></tr>
                    </table>
                    <?php
            $c = explode(',', $t9);
            $c = array_pad($c, 3, 0);
            ?>
                    <table class="tx1">
                        <thead>
                        <tr><td colspan="5">安监机构评价记录</td></tr>
                        <tr><td>序号</td><td>检查日期</td><td>形象进度</td><td>评价等级</td><td>备注</td></tr>
                        </thead>
                        <tbody id="items">
                        <?php
                 if(!empty($items))
                 {
                    foreach($items as $k=>$v){
                        echo '<tr class="delitem"><td class="c item0">' . ($k+1) . '</td><td class="c">';
                                echo $edit ? '<input type="text" class="item1" onclick="laydate();" size="6" value="' . $v[0] . '"/>' : $v[0];
                                echo '</td><td class="c">';
                                echo $edit ? '<input type="text" class="item2" value="' . $v[1] . '" />' : $v[1];
                                echo '</td><td class="c">';
                                echo $edit ? '<input type="text" class="item3" value="' . $v[2] . '"/>' : $v[2];
                                echo '</td><td class="c">';
                                echo $edit ? '<input type="text" class="item4" value="' . $v[3] . '"/>' : $v[3];
                                echo '</td></tr>';
                        }
                        }
                        ?>
                        </tbody>
                    </table>
                    <?php if($edit): ?><div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div><?php endif; ?>
                    <table class="tx1">
                        <tr><td class="v">工程总体安全评价意见：<br/><?php if($edit) echo '<textarea rows="20" style="width:650px;" id="t6">' . $t6 . '</textarea>'; else echo $t6; ?><br/><br/><div style="text-align:right">安全评价等级：合格 <?php if($edit) echo '<input type="checkbox" id="item0" ' . ($c[0] ? 'checked' : '') . '/>'; else echo $c[0] ? "√" : ""; ?>　　基本合格 <?php if($edit) echo '<input type="checkbox" id="item1" ' . ($c[1] ? 'checked' : '') . '/>'; else echo $c[1] ? "√" : ""; ?>　　不合格 <?php if($edit) echo '<input type="checkbox" id="item2" ' . ($c[2] ? 'checked' : '') . '/>'; else echo $c[2] ? "√" : ""; ?></div><br/><br/><div style="text-align:right;"><br/><p>安全监督机构（公章）：<?php if($edit) echo '<input type="text" class="" id="t7" value="' . $t7 . '" />'; else echo $t7; ?></p><br/><br/><p>日期：<?php if($edit) echo '<input type="text" class="" onclick="laydate();" id="t8" value="' . $t8 . '" />'; else echo $t8; ?></p><br/></div></td></tr>
                    </table>
                    <br>
                    <?php echo $atts; ?>
                    <br/><br/><br/><br/>
                    <div class="pagedialog-buttons"><a href="javascript:;" class="btn allow">同意</a></div>
                    <br/><br/>
                </div>
            </div>
        </div>
        <div id="tab_2" class="tabi">
            <div class="pagea4" style="border:0;">
                <div class="pagea4info clear">
                    <br/><br/><br/><br/>
                    <div class="pa4-title1"><?php if($edit) echo '<input type="text" class="pae4-text1" id="name" value="' . $name . '" />'; else echo $name; ?> 工程</div>
                    <div class="pa4-title1"><?php if($edit) echo '<input type="text" class="pae4-text1" id="t1" value="' . $t1 . '" />'; else echo $t1; ?> 验收</div>
                    <div class="pa4-title1">安全监督报告</div>
                    <br/><br/><br/><br/>
                    <div style="margin-left:220px;">
                        <div>编制：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></div>
                        <br/>
                        <div>审定：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></div>
                        <br/>
                        <div>批准：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t4" value="' . $t4 . '" />'; else echo $t4; ?></div>
                    </div>
                    <br/><br/><br/><br/><br/><br/>
                    <div class="center">
                        <div>镇江市水利工程质量安全监督站</div>
                        <br/><br/>
                        <div>日期：<?php if($edit) echo '<input type="text" onclick="laydate();" class="pae4-text1" id="t5" value="' . $t5 . '" />'; else echo $t5; ?></div>
                    </div>
                    <br/><br/><br/><br/><br/><br/>
                    <div>
                        <?php
                $txt = "
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
                if($edit) echo '<textarea style="padding:5px;" rows="50" cols="95" id="t6">' . (empty($t6) ? $txt : $t6)  . '</textarea>'; else echo nl2br($t6);
                        ?>
                    </div>
                    <br/><br/>
                    <?php echo $atts; ?>
                    <br/><br/><br/><br/>
                    <div class="pagedialog-buttons"><a href="javascript:;" class="btn allow">同意</a></div>
                    <br/><br/>
        </div>
    </div>
</div>
