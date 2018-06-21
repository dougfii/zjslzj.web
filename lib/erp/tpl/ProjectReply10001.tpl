<script>
    $(function(){
        $('#allow').click(function(){
            $.post('?m=Project&a=OnProjectReply10001', {
                fid:$('#fid').val(),
                t1:$('#t1').val(),
                t2:$('#t2').val(),
                t3:$('#t3').val(),
                t4:$('#t4').val(),
                t5:$('#t5').val(),
                t6:$('#t6').val(),
            }, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){history.back();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 100012;
            upload(pid, tid);
        });

        function upload(pid, tid){
            $.ajaxFileUpload({
                url:'?m=Upload&a=UpFlowDynamic',
                secureuri:false,
                fileElementId:'upfile',
                dataType:'json',
                success: function(ret, status) {
                    if(ret.state=='SUCCESS') {
                        $.post('?m=Project&a=OnUpFlowDynamic', {pid:pid,tid:tid,no:0,name:ret.originalName,file:ret.name,url:ret.url,ext:ret.type,size:ret.size}, function (rt){
                            if(rt.code==1&&rt.msg>0)layer.msg('上传完成', 1, function(){
                                $('.atts ul').append('<li id="atta'+rt.msg+'"><a href="'+ret.url+'" target="_blank">'+ret.originalName+'</a>　　<a href="javascript:;" class="upd" did="'+rt.msg+'">删除</a></li>');
                                $('#attb').html('<span class="up">添加上传<input type="file" id="upfile" class="upfile" name="upfile" /></span>');
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
    <div class="tool clear"><span class="cap">安全监督申请书 - [批复]</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info clear">
            <div class="pa4-title1">水利工程建设安全监督通知书</div>
            <div><?php if($edit) echo '<input type="text" class="pae4-text1" id="t1" value="' . $t1 . '" />'; else echo $t1; ?>：</div>
            <br/><br/>
            <div>　　根据你单位的申请，按照《江苏省水利工程建设安全监督工作指导意见》对 <?php if($edit) echo '<input type="text" class="pae4-text1" id="t2" value="' . $t2 . '" />'; else echo $t2; ?> 工程进行安全监督。本项目监督负责人为 <?php if($edit) echo '<input type="text" class="pae4-text1" id="t3" value="' . $t3 . '" />'; else echo $t3; ?>。</div>
            <br/>
            <div>　　现将该工程安全监督计划发给你们，请按监督计划配合安全监督工作顺利进行。</div>
            <br/><br/>
            <div>　　特此通知。</div>
            <br/><br/><br/><br/><br/><br/>
            <div class="right">
                <div><?php echo $gc; ?></div>
                <br/><br/>
                <div>申请日期：<?php if($edit) echo '<input type="text" onclick="laydate();" class="pae4-text1" id="t6" value="' . $t6 . '" />'; else echo $t6; ?></div>
            </div>
            <br/><br/><br/><br/>
        </div>
        <br/><br/><br/><br/>
        <?php echo $atts; ?>
        <br/><br/><br/><br/>
        <div class="pagedialog-buttons"><a href="javascript:;" class="btn" id="allow">同意</a></div>
        <br/>
        <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
        <input type="hidden" id="fid" value="<?php echo $fid; ?>" />
    </div>
</div>
