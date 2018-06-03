<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10009', {
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
            var tid = 10009;
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
    <div class="tool clear"><span class="cap">水利工程建设安全评价申请书 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info clear">
            <div><?php if($edit) echo '<input type="text" class="pae4-text1" id="t1" value="' . $t1 . '" />'; else echo $t1; ?>：</div>
            <br/><br/>
            <div>　　<?php if($edit) echo '<input type="text" class="pae4-text1" id="t2" value="' . $t2 . '" />'; else echo $t2; ?> 工程即将完工，按照《江苏省水利工程建设安全监督工作指导意见》的要求，对本工程参建单位安全行为的评估已经结束，现申请办理完工安全评价手续。</div>
            <br/><br/><br/><br/>
            <div>联 系 人：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></div>
            <br/>
            <div>联系电话：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t4" value="' . $t4 . '" />'; else echo $t4; ?></div>
            <br/>
            <div>传　　真：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t5" value="' . $t5 . '" />'; else echo $t5; ?></div>
            <br/>
            <div>电子邮件：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t6" value="' . $t6 . '" />'; else echo $t6; ?></div>
            <br/>
            <div>单位地址：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t7" value="' . $t7 . '" />'; else echo $t7; ?></div>
            <br/>
            <div>邮政编码：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t8" value="' . $t8 . '" />'; else echo $t8; ?></div>
            <br/><br/><br/><br/><br/><br/>
            <div class="right">
                <div>申请单位：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t9" value="' . $t9 . '" />'; else echo $t9; ?>（盖章）</div>
                <br/><br/>
                <div>申请日期：<?php if($edit) echo '<input type="text" onclick="laydate();" class="pae4-text1" id="t10" value="' . $t10 . '" />'; else echo $t10; ?>　　　　</div>
            </div>
            <br/><br/>
            <?php echo $atts; ?>
            <br/><br/><br/><br/>
        </div>
    </div>
    <?php echo $atts; ?>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
