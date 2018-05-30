<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10004', {
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
                t11:$('#t11').val(),
                t12:$('#t12').val(),
                t13:$('#t13').val(),
                t14:$('#t14').val(),
                t15:$('#t15').val(),
                t16:$('#t16').val(),
                t17:$('#t17').val(),
                t18:$('#t18').val(),
                t19:$('#t19').val(),
                t20:$('#t20').val(),
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
    <div class="tool clear"><span class="cap">水利工程建设项目施工单位安全责任人汇总表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设项目施工单位安全责任人汇总表</div>
            <table class="tx1">
                <tr><td class="k">合同名称</td><td class="v" colspan="4"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t1" value="' . $t1 . '" />'; else echo $t1; ?></td><td class="k">签约合同价</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></td></tr>
                <tr><td class="k">资质等级</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></td><td class="k">安全生产许可证号</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t4" value="' . $t4 . '" />'; else echo $t4; ?></td></tr>
                <tr><td class="k">主要施工内容</td><td class="v" colspan="4"><?php if($edit) echo '<textarea rows="10" style="width:550px;" id="t5">' . $t5 . '</textarea>'; else echo $t5; ?></td></tr>
                <tr><td class="k" rowspan="3">单位责任人</td><td colspan="k">姓名</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t6" value="' . $t6 . '" />'; else echo $t6; ?></td><td colspan="k">职称</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t7" value="' . $t7 . '" />'; else echo $t7; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t8" value="' . $t8 . '" />'; else echo $t8; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t9" value="' . $t9 . '" />'; else echo $t9; ?></td></tr>
                <tr><td class="k" rowspan="3">项目经理</td><td colspan="k">姓名</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t10" value="' . $t10 . '" />'; else echo $t10; ?></td><td colspan="k">职称</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t11" value="' . $t11 . '" />'; else echo $t11; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t12" value="' . $t12 . '" />'; else echo $t12; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t13" value="' . $t13 . '" />'; else echo $t13; ?></td></tr>
                <tr><td class="k" rowspan="3">专职安全员</td><td colspan="k">姓名</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t14" value="' . $t14 . '" />'; else echo $t14; ?></td><td colspan="k">职称</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t15" value="' . $t15 . '" />'; else echo $t15; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t16" value="' . $t16 . '" />'; else echo $t16; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t17" value="' . $t17 . '" />'; else echo $t17; ?></td></tr>
            </table>
            <br>
            <div style="font-size:12px;">填报单位：<?php if($edit) echo '<input type="text" class="" size="15" id="t18" value="' . $t18 . '" />'; else echo $t18; ?>　　　填报人：<?php if($edit) echo '<input type="text" class="" size="15" id="t19" value="' . $t19 . '" />'; else echo $t19; ?>　　　日期：<?php if($edit) echo '<input type="text" class="" size="15" onclick="laydate();" id="t20" value="' . $t20 . '" />'; else echo $t20; ?></div>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
