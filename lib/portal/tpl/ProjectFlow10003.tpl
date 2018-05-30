<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10003', {
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
                t21:$('#t21').val(),
                t22:$('#t22').val(),
                t23:$('#t23').val(),
                t24:$('#t24').val(),
                t25:$('#t25').val(),
                t26:$('#t26').val(),
                t27:$('#t27').val(),
                t28:$('#t28').val(),
                t29:$('#t29').val(),
                t30:$('#t30').val(),
                t31:$('#t31').val(),
                t32:$('#t32').val(),
                t33:$('#t33').val(),
                t34:$('#t34').val(),
                t35:$('#t35').val(),
                t36:$('#t36').val(),
                t37:$('#t37').val(),
                t38:$('#t38').val(),
                t39:$('#t39').val(),
                t40:$('#t40').val(),
                t41:$('#t41').val(),
                t42:$('#t42').val(),
                t43:$('#t43').val(),
                t44:$('#t44').val(),
                t45:$('#t45').val(),
                t46:$('#t46').val(),
                t47:$('#t47').val(),
                t48:$('#t48').val(),
                t49:$('#t49').val(),
                t50:$('#t50').val(),
                t51:$('#t51').val(),
                t52:$('#t52').val(),
                t53:$('#t53').val(),
                t54:$('#t54').val(),
                t55:$('#t55').val(),
                t56:$('#t56').val(),
                t57:$('#t57').val(),
                t58:$('#t58').val(),
                t59:$('#t59').val(),
                t60:$('#t60').val(),
                t61:$('#t61').val(),
                t62:$('#t62').val(),
                t63:$('#t63').val(),
                t64:$('#t64').val(),
                t65:$('#t65').val(),
                t66:$('#t66').val(),
                t67:$('#t67').val(),
                t68:$('#t68').val(),
                t69:$('#t69').val(),
                t70:$('#t70').val(),

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
    <div class="tool clear"><span class="cap">水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表</div>
            <table class="tx1">
                <tr><td class="k">单位名称</td><td class="k">责任人</td><td class="k">姓名</td><td class="k">职务／职称</td><td class="k">身份证号码</td><td class="k">安全生产培训及证书情况</td><td class="k">责任范围</td></tr>
                <tr><td class="k" rowspan="3">项目法人<br/>（建设单位）</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t1" value="' . $t1 . '" />'; else echo $t1; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t4" value="' . $t4 . '" />'; else echo $t4; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t5" value="' . $t5 . '" />'; else echo $t5; ?></td></tr>
                <tr><td class="k">安全分管人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t6" value="' . $t6 . '" />'; else echo $t6; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t7" value="' . $t7 . '" />'; else echo $t7; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t8" value="' . $t8 . '" />'; else echo $t8; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t9" value="' . $t9 . '" />'; else echo $t9; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t10" value="' . $t10 . '" />'; else echo $t10; ?></td></tr>
                <tr><td class="k">专职安全员</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t11" value="' . $t11 . '" />'; else echo $t11; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t12" value="' . $t12 . '" />'; else echo $t12; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t13" value="' . $t13 . '" />'; else echo $t13; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t14" value="' . $t14 . '" />'; else echo $t14; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t15" value="' . $t15 . '" />'; else echo $t15; ?></td></tr>
                <tr><td class="k" rowspan="2">勘察单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t16" value="' . $t16 . '" />'; else echo $t16; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t17" value="' . $t17 . '" />'; else echo $t17; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t18" value="' . $t18 . '" />'; else echo $t18; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t19" value="' . $t19 . '" />'; else echo $t19; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t20" value="' . $t20 . '" />'; else echo $t20; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t21" value="' . $t21 . '" />'; else echo $t21; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t22" value="' . $t22 . '" />'; else echo $t22; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t23" value="' . $t23 . '" />'; else echo $t23; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t24" value="' . $t24 . '" />'; else echo $t24; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t25" value="' . $t25 . '" />'; else echo $t25; ?></td></tr>
                <tr><td class="k" rowspan="2">设计单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t26" value="' . $t26 . '" />'; else echo $t26; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t27" value="' . $t27 . '" />'; else echo $t27; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t28" value="' . $t28 . '" />'; else echo $t28; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t29" value="' . $t29 . '" />'; else echo $t29; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t30" value="' . $t30 . '" />'; else echo $t30; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t31" value="' . $t31 . '" />'; else echo $t31; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t32" value="' . $t32 . '" />'; else echo $t32; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t33" value="' . $t33 . '" />'; else echo $t33; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t34" value="' . $t34 . '" />'; else echo $t34; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t35" value="' . $t35 . '" />'; else echo $t35; ?></td></tr>
                <tr><td class="k" rowspan="3">监理单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t36" value="' . $t36 . '" />'; else echo $t36; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t37" value="' . $t37 . '" />'; else echo $t37; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t38" value="' . $t38 . '" />'; else echo $t38; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t39" value="' . $t39 . '" />'; else echo $t39; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t40" value="' . $t40 . '" />'; else echo $t40; ?></td></tr>
                <tr><td class="k">总监理工程师</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t41" value="' . $t41 . '" />'; else echo $t41; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t42" value="' . $t42 . '" />'; else echo $t42; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t43" value="' . $t43 . '" />'; else echo $t43; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t44" value="' . $t44 . '" />'; else echo $t44; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t45" value="' . $t45 . '" />'; else echo $t45; ?></td></tr>
                <tr><td class="k">安全分管人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t46" value="' . $t46 . '" />'; else echo $t46; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t47" value="' . $t47 . '" />'; else echo $t47; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t48" value="' . $t48 . '" />'; else echo $t48; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t49" value="' . $t49 . '" />'; else echo $t49; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t50" value="' . $t50 . '" />'; else echo $t50; ?></td></tr>
                <tr><td class="k" rowspan="2">试验检测单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t51" value="' . $t51 . '" />'; else echo $t51; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t52" value="' . $t52 . '" />'; else echo $t52; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t53" value="' . $t53 . '" />'; else echo $t53; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t54" value="' . $t54 . '" />'; else echo $t54; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t55" value="' . $t55 . '" />'; else echo $t55; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t56" value="' . $t56 . '" />'; else echo $t56; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t57" value="' . $t57 . '" />'; else echo $t57; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t58" value="' . $t58 . '" />'; else echo $t58; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t59" value="' . $t59 . '" />'; else echo $t59; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t60" value="' . $t60 . '" />'; else echo $t60; ?></td></tr>
                <tr><td class="k" rowspan="2">其他参建单位</td><td class="k">安全责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t61" value="' . $t61 . '" />'; else echo $t61; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t62" value="' . $t62 . '" />'; else echo $t62; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t63" value="' . $t63 . '" />'; else echo $t63; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t64" value="' . $t64 . '" />'; else echo $t64; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t65" value="' . $t65 . '" />'; else echo $t65; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t66" value="' . $t66 . '" />'; else echo $t66; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="t67" value="' . $t67 . '" />'; else echo $t67; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="t68" value="' . $t68 . '" />'; else echo $t68; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t69" value="' . $t69 . '" />'; else echo $t69; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="t70" value="' . $t70 . '" />'; else echo $t70; ?></td></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
