<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10010Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">安全监督报告 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <?php
    if(!empty($rs)):
    ?>
    <?php if($approve): ?>
    <div class="pagea4">
        <div class="pagedialog">
            <div class="pagedialog-caption">批复意见</div>
            <div class=""><textarea id="content" class="pagedialog-textarea" rows="2"></textarea></div>
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10010&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info clear">
            <br/><br/><br/><br/>
            <div class="pa4-title1"><?php echo $rs["name"]; ?> 工程</div>
            <div class="pa4-title1"><?php echo $rs["t1"]; ?> 验收</div>
            <div class="pa4-title1">安全监督报告</div>
            <br/><br/><br/><br/>
            <div style="margin-left:220px;">
                <div>编制：<?php echo $rs["t2"]; ?></div>
                <br/>
                <div>审定：<?php echo $rs["t3"]; ?></div>
                <br/>
                <div>批准：<?php echo $rs["t4"]; ?></div>
            </div>
            <br/><br/><br/><br/><br/><br/>
            <div class="center">
                <div>镇江市水利工程质量安全监督站</div>
                <br/><br/>
                <div>日期：<?php echo $rs["t5"]; ?></div>
            </div>
            <br/><br/><br/><br/><br/><br/>
            <div><?php echo nl2br($rs["t6"]); ?></div>
            <br/><br/>
            <?php echo $atts; ?>
            <br/><br/><br/><br/>
    </div>
    <input type="hidden" id="pid" value="<?php echo $rs['pid']; ?>" />
    <input type="hidden" id="fid" value="<?php echo $rs['id']; ?>" />
    <?php
    else:
        echo HTML::AlertInfo('文档尚未创建');
    endif;
    ?>
</div>
