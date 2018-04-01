<script>
    $(function(){
        $('#allow').click(function(){
            $.post('?m=Project&a=OnProjectReply1', {fid:$('#fid').val(),no:$('#no').val(),content:$('#content').val(),date:$('#date').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){history.back();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">质量监督申报 - [批复]</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="pa4-caption1"><?php echo $gc; ?></div>
            <div class="center">泰水质监<input type="text" class="pae4-text1" id="no" />号</div>
            <div class="pa4-redline"></div>
            <div class="pa4-title1">关于对<?php echo $name; ?>质量监督的批复</div>
            <div class="pa4-company"><?php echo $company; ?>:</div>
            <div class=""><textarea rows="30" class="pa4-textarea1" id="content">    你单位《关于<?php echo $name; ?>工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：</textarea></div>
            <div class="pa4-sign1 clear"><span class="pa4-signer1"><?php echo $gc; ?><br/>日期：<input type="text" class="pae4-text1" id="date" onclick="laydate();" readonly /></span></div>
            <input type="hidden" id="fid" value="<?php echo $fid; ?>" />
        </div>
        <div class="pagedialog-buttons"><a href="javascript:;" class="btn" id="allow">同意</a></div>
        <br/>
    </div>
</div>
