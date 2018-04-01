<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow71', {id:$('#id').val(),no:$('#no').val(),signer:$('#signer').val(),content:$('#content').val(),date:$('#date').val()}, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.atts').on( 'click', '.upd', function(){
            var id=$(this).attr('did');
            layer.confirm('您确认需要删除吗?\n此操作不可恢复!', function(i){layer.close(i);$.post('?m=Project&a=OnUpFlowDelete', {id:id}, function(ret){if(ret.code==1)$('#atta'+id).remove();else layer.msg(ret.msg, 2, -1);}, 'json');});
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 71;
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
    <div class="tool clear"><span class="cap">项目划分调整 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">

            <div class="pa4-caption1"><?php echo $company; ?>文件</div>
            <div class="clear"><span><?php if($edit) echo '文件编号:<input type="text" class="pae4-text1" id="no" value="' . $no . '" />'; else echo $no; ?></span><span class="right">签发:<?php if($edit) echo '<input type="text" class="pae4-text1" id="signer" value="' . $signer . '" />'; else echo $signer; ?></span></div>
            <div class="pa4-redline"></div>
            <div class="pa4-title1">关于<?php echo $name; ?>项目划分调整的请示</div>
            <div class="pa4-company"><?php echo $gc; ?>:</div>
            <div class=""><?php if($edit) echo '<textarea rows="30" class="pa4-textarea1" id="content">' . $content . '</textarea>'; else echo $content; ?></div>
            <?php echo $atts; ?>
            <div class="pa4-sign1 clear"><span class="pa4-signer1"><?php echo $company; ?><br/><?php if($edit) echo '日期:<input type="text" class="pae4-text1" id="date" value="' . $date . '" onclick="laydate();" readonly />'; else echo $date; ?></span></div>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
