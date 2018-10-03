<div class="toolbar">
    <div class="tool clear"><span class="cap">质量监督申报 - [批复]</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagedialog">
            <div class="pagedialog-caption">驳回意见</div>
            <div class=""><textarea id="content" class="pagedialog-textarea" rows="2"></textarea></div>
            <div class="pagedialog-buttons"><a href="javascript:;" class="btn" id="deny">审核驳回</a></div>
        </div>
    </div>
</div>
<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Work&a=OnReply', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>