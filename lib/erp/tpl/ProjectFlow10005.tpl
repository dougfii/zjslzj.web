<script>
    $(function(){
        $('#add').click(function(){
            var c = new Array();
            c[0] = $('#item0').is(':checked') ? 1 : 0;
            c[1] = $('#item1').is(':checked') ? 1 : 0;
            c[2] = $('#item2').is(':checked') ? 1 : 0;
            c[3] = $('#item3').is(':checked') ? 1 : 0;
            $.post('?m=Project&a=OnProjectFlow10005', {
                id:$('#id').val(),name:$('#name').val(),pid:$('#pid').val(),
                t1:$('#t1').val(),
                t2:$('#t2').val(),
                t3:$('#t3').val(),
                t4:$('#t4').val(),
                t5:$('#t5').val(),
                t6:$('#t6').val(),
                t7:$('#t7').val(),
                t8:$('#t8').val(),
                t9:$('#t9').val(),
                t10:c.join(),
            }, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

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
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设安全监督检查意见表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设安全监督检查意见表</div>
            <?php
            $c = explode(',', $t10);
            $c = array_pad($c, 3, 0);
            ?>
            <table class="tx1">
                <tr><td class="k">工程名称</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">项目法人</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t1" value="' . $t1 . '" />'; else echo $t1; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></td><td class="k">监理单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></td></tr>
                <tr><td class="k">工程形象进度</td><td class="v" colspan="4"><?php if($edit) echo '<textarea rows="4" style="width:550px;" id="t4">' . $t4 . '</textarea>'; else echo $t4; ?></td></tr>
                <tr><td class="k">安全监督检查意见</td><td class="v" colspan="4"><?php if($edit) echo '<textarea rows="20" style="width:550px;" id="t5">' . $t5 . '</textarea>'; else echo $t5; ?><br/><div style="text-align:right">安全评价等级：合格 <?php if($edit) echo '<input type="checkbox" id="item0" ' . ($c[0] ? 'checked' : '') . '/>'; else echo $c[0] ? "√" : ""; ?>　　基本合格 <?php if($edit) echo '<input type="checkbox" id="item1" ' . ($c[1] ? 'checked' : '') . '/>'; else echo $c[1] ? "√" : ""; ?>　　不合格 <?php if($edit) echo '<input type="checkbox" id="item2" ' . ($c[2] ? 'checked' : '') . '/>'; else echo $c[2] ? "√" : ""; ?></div></td></tr>
                <tr>
                    <td colspan="2"><br/><br/>填写人：<?php if($edit) echo '<input type="text" class="" id="t6" value="' . $t6 . '" />'; else echo $t6; ?><br/><br/><br/><br/>日　期：<?php if($edit) echo '<input type="text" class="" onclick="laydate();" id="t7" value="' . $t7 . '" />'; else echo $t7; ?><br/><br/></td>
                    <td colspan="2"><br/><br/>监督负责人：<?php if($edit) echo '<input type="text" class="" id="t8" value="' . $t8 . '" />'; else echo $t8; ?><br/><br/><br/><br/>日　期：<?php if($edit) echo '<input type="text" class="" onclick="laydate();" id="t9" value="' . $t9 . '" />'; else echo $t9; ?><br/><br/></td>
                </tr>
            </table>
            <br>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>