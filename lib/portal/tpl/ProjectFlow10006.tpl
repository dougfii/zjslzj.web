<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10006', {
                id:$('#id').val(),name:$('#name').val(),
                t1:$('#t1').val(),
                t2:$('#t2').val(),
                t3:$('#t3').val(),
                t4:$('#t4').val(),
                t5:$('#t5').val(),
                t6:$('#t6').val(),
                t7:$('#t7').val(),
                t8:$('#t8').val(),
                t9:$('#t9').val(),
                t10:$('#t10').val(),
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
    <div class="tool clear"><span class="cap">水利工程建设参建单位安全评估表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设参建单位安全评估表</div>
            <table class="tx1">
                <tr><td class="k">项目及标段名称</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t1" value="' . $t1 . '" />'; else echo $t1; ?></td><td class="k">完工日期</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" onclick="laydate();" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></td></tr>
                <tr><td class="k">参建单位</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></td></tr>
                <tr><td class="k">主要工作内容</td><td class="v" colspan="3"><?php if($edit) echo '<textarea rows="4" style="width:550px;" id="t4">' . $t4 . '</textarea>'; else echo $t4; ?></td></tr>
                <tr><td class="v" colspan="4">工程安全生产或安全行为自我总结：<br/><?php if($edit) echo '<textarea rows="20" style="width:650px;" id="t5">' . $t5 . '</textarea>'; else echo $t5; ?><div style="text-align:right;"><br/><p>中标单位（公章）：<?php if($edit) echo '<input type="text" class="" id="t6" value="' . $t6 . '" />'; else echo $t6 ?></p><br/><br/><p>日期：<?php if($edit) echo '<input type="text" class="" onclick="laydate();" id="t7" value="' . $t7 . '" />'; else echo $t7; ?></p><br/></div></td></tr>
                <tr><td class="v" colspan="4">项目法人评估意见：<br/><?php if($edit) echo '<textarea rows="20" style="width:650px;" id="t8">' . $t8 . '</textarea><div style="text-align:right;">'; else echo $t8; ?><br/><p>项目法人（公章）：<?php if($edit) echo '<input type="text" class="" id="t9" value="' . $t9 . '" />'; else echo $t9; ?></p><br/><br/><p>日期：<?php if($edit) echo '<input type="text" class="" onclick="laydate();" id="t10" value="' . $t10 . '" />'; else echo $t10; ?></p><br/></div></td></tr>
            </table>
            <br>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
