<script>
    $(function(){
        $('#add').click(function(){
            var c = new Array();
            c[0] = $('#item0').is(':checked') ? 1 : 0;
            c[1] = $('#item1').is(':checked') ? 1 : 0;
            c[2] = $('#item2').is(':checked') ? 1 : 0;
            c[3] = $('#item3').is(':checked') ? 1 : 0;
            var items1 = makearray('.item1');
            var items2 = makearray('.item2');
            var items3 = makearray('.item3');
            var items4 = makearray('.item4');
            $.post('?m=Project&a=OnProjectFlow10007', {
                id:$('#id').val(),name:$('#name').val(),
                t1:$('#t1').val(),
                t2:$('#t2').val(),
                t3:$('#t3').val(),
                t4:$('#t4').val(),
                t5:$('#t5').val(),
                t6:$('#t6').val(),
                t7:$('#t7').val(),
                t8:$('#t8').val(),
                t9:c.join(),
                'items1[]':items1,'items2[]':items2,'items3[]':items3,'items4[]':items4
            }, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

        function makearray(obj){
            var a = new Array();
            $.each($(obj), function(i, n){
                a.push($(this).val());
            });
            return a;
        };

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 1;
            var no = $(this).attr('fid');
            var name = $(this).attr('fname');
            upload(pid, tid, no, name);
        });

        function upload(pid, tid, no, name){
            $.ajaxFileUpload({
                url:'?m=Upload&a=UpFlowFixed&no='+no,
                secureuri:false,
                fileElementId:'upfile'+no,
                dataType:'json',
                success: function(ret, status) {
                    if(ret.state=='SUCCESS') {
                        $.post('?m=Project&a=OnUpFlowFixed', {pid:pid,tid:tid,no:no,name:name,file:ret.name,url:ret.url,ext:ret.type,size:ret.size}, function (rt){
                            if(rt.code==1)layer.msg('上传完成', 1, function(){
                                $('#atta'+no).html('<a href="'+ret.url+'" target="_blank">'+name+'</a>');
                            });else layer.msg(rt.msg, 1);
                        }, 'json');
                    }
                    else layer.msg(ret.state, 2, -1);
                },
                error:function(ret, status, e){
                    layer.msg('上传失败 ' + e, 2, -1);
                }
            });
        };

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
    <div class="tool clear"><span class="cap">水利工程建设安全评价意见书 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
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
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
