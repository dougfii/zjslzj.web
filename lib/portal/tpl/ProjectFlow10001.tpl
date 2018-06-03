<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10001', {
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
    <div class="tool clear"><span class="cap">安全监督申请书 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <br/><br/>
            <div class="pa4-title1">江苏省水利工程建设安全监督</div>
            <div class="pa4-title1">申 请 书</div>
            <br/><br/><br/><br/>
            <div style="margin-left:200px;">
                <div>编　　号：（<?php if($edit) echo '<input type="text" size="5" class="pae4-text1" id="t32" value="' . $t32 . '" />'; else echo $t32; ?>）申（<?php if($edit) echo '<input type="text" size="5" class="pae4-text1" id="t33" value="' . $t33 . '" />'; else echo $t33; ?>）第<?php if($edit) echo '<input type="text" size="5" class="pae4-text1" id="t34" value="' . $t34 . '" />'; else echo $t34; ?>号</div>
                <br/><br/>
                <div>申请单位：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t35" value="' . $t35 . '" />'; else echo $t35; ?>（盖章）</div>
                <br/><br/>
                <div>申请日期：<?php if($edit) echo '<input type="text" onclick="laydate();" class="pae4-text1" id="t36" value="' . $t36 . '" />'; else echo $t36; ?>　　　　</div>
            </div>
            <br/><br/><br/><br/>
            <div class="center">江苏省水利厅印制</div>
            <br/><br/><br/><br/><br/><br/><br/><br/>
            <div class="center">填写说明</div>
            <div class="tx1" style="line-height:150%;padding:10px;">
                <p>一、本书由项目法人负责填报。</p>
                <p>二、本书须在水利工程开工前填报，填写时不得使用铅笔、圆珠笔，字迹应清晰、整洁，最好使用计算机打印。</p>
                <p>三、本书由水利工程建设安全监督机构统一编号。</p>
                <p>四、申请人须按本书要求逐项填报有关内容，各项内容如纸张不够，可加附页。</p>
                <p>五、本书填写一式二份，一份回执。</p>
            </div>
            <br/>
        </div>
        <div class="pagea4info">
            <table class="tx1">
                <tr><td class="k">工程名称</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t1" value="' . $t1 . '" />'; else echo $t1; ?></td></tr>
                <tr><td class="k">实施方案文号</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></td><td class="k">工程总投资</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t3" value="' . $t3 . '" />'; else echo $t3; ?> 万元</td></tr>
                <tr><td class="k">计划开工时间</td><td class="v"><?php if($edit) echo '<input type="text" class="" onclick="laydate()" readonly id="t4" value="' . $t4 . '" />'; else echo $t4; ?></td><td class="k">计划完工时间</td><td class="v"><?php if($edit) echo '<input type="text" class="" onclick="laydate()" readonly id="t5" value="' . $t5 . '" />'; else echo $t5; ?></td></tr>
                <tr><td class="k">建设单位名称</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t6" value="' . $t6 . '" />'; else echo $t6; ?></td></tr>
                <tr><td class="k">项目法人（建设单位）批准文号</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="t7" value="' . $t7 . '" />'; else echo $t7; ?></td></tr>
                <tr><td class="k" rowspan="4">项目法人<br/>（建设单位）</td><td class="k">联系人 </td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t8" value="' . $t8 . '" />'; else echo $t8; ?></td></tr>
                <tr><td class="k">联系电话 </td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t9" value="' . $t9 . '" />'; else echo $t9; ?></td></tr>
                <tr><td class="k">通讯地址</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t10" value="' . $t10 . '" />'; else echo $t10; ?></td></tr>
                <tr><td class="k">邮政编码</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t11" value="' . $t11 . '" />'; else echo $t11; ?></td></tr>
                <tr><td class="k">工程建设规模、内容及标准</td><td class="v" colspan="3"><?php if($edit) echo '<textarea rows="10" style="width:500px;" id="t12">' . $t12 . '</textarea>'; else echo $t12; ?></td></tr>
                <tr><td class="k">主要工程量</td><td class="v" colspan="3"><?php if($edit) echo '<textarea rows="5" id="t13" style="width:500px;">' . (empty($t13) ? '土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨' : $t13) . '</textarea>'; else echo $t13; ?></td></tr>
                <tr><td class="k" colspan="3">主要参建单位（全称）</td><td class="k">联系人及电话</td></tr>
                <tr><td class="k" rowspan="2">施工单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t14" value="' . $t14 . '" />'; else echo $t14; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t15" value="' . $t15 . '" />'; else echo $t15; ?></td></tr>
                <tr><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t16" value="' . $t16 . '" />'; else echo $t16; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t17" value="' . $t17 . '" />'; else echo $t17; ?></td></tr>
                <tr><td class="k">监理单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t18" value="' . $t18 . '" />'; else echo $t18; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t19" value="' . $t19 . '" />'; else echo $t19; ?></td></tr>
                <tr><td class="k">勘测单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t20" value="' . $t20 . '" />'; else echo $t20; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t21" value="' . $t21 . '" />'; else echo $t21; ?></td></tr>
                <tr><td class="k">设计单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t22" value="' . $t22 . '" />'; else echo $t22; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t23" value="' . $t23 . '" />'; else echo $t23; ?></td></tr>
                <tr><td class="k">其他参建单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="t24" value="' . $t24 . '" />'; else echo $t24; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t25" value="' . $t25 . '" />'; else echo $t25; ?></td></tr>
                <tr><td colspan="4">项目法人（建设单位）安全生产工作计划：<br/><?php if($edit) echo '<textarea rows="15" style="width:700px;padding:5px;" id="t26">' . $t26 . '</textarea>'; else echo $t26; ?></td></tr>
                <tr><td colspan="4">监理单位安全工作计划：<br/><?php if($edit) echo '<textarea rows="15" style="width:700px;padding:5px;" id="t27">' . $t27 . '</textarea>'; else echo $t27; ?></td></tr>
                <tr><td colspan="4">施工单位安全工作计划：<br/><?php if($edit) echo '<textarea rows="15" style="width:700px;padding:5px;" id="t28">' . $t28 . '</textarea>'; else echo $t28; ?></td></tr>
                <tr><td colspan="4">水利工程建设安全监督机构审查意见：<br/><?php if($edit) echo '<textarea rows="15" style="width:700px;padding:5px;">' . $t29 . '</textarea>'; else echo $t29; ?><div style="text-align:right;"><br/><br/><?php if($edit) echo '<input type="text" class="" id="t30" value="' . $t30 . '" />'; else echo $t30; ?>（公章）<br/><br/><br/><br/><?php if($edit) echo '<input type="text" class="" onclick="laydate()" id="t31" value="' . $t31 . '" />'; else echo $t31; ?>（日期）<br/><br/><br/><br/></div></td></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
