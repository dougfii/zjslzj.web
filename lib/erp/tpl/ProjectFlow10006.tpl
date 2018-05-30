<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10006Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设参建单位安全评估表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
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
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10006&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设参建单位安全评估表</div>
            <table class="tx1">
                <tr><td class="k">项目及标段名称</td><td class="v" colspan="3"><?php echo $rs["name"]; ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v"><?php echo $rs["t1"]; ?></td><td class="k">完工日期</td><td class="v" colspan="2"><?php echo $rs["t2"]; ?></td></tr>
                <tr><td class="k">参建单位</td><td class="v" colspan="3"><?php echo $rs["t3"]; ?></td></tr>
                <tr><td class="k">主要工作内容</td><td class="v" colspan="3"><?php echo $rs["t4"]; ?></td></tr>
                <tr><td class="v" colspan="4">工程安全生产或安全行为自我总结：<br/><?php echo $rs["t5"]; ?><div style="text-align:right;"><br/><p>中标单位（公章）：<?php echo $rs["t6"]; ?></p><br/><br/><p>日期：<?php echo $rs["t7"]; ?></p><br/></div></td></tr>
                <tr><td class="v" colspan="4">项目法人评估意见：<br/><?php echo $rs["t8"]; ?><br/><p>项目法人（公章）：<?php echo $rs["t9"]; ?></p><br/><br/><p>日期：<?php echo $rs["t10"]; ?></p><br/></div></td></tr>
            </table>
            <br>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="pid" value="<?php echo $rs['pid']; ?>" />
    <input type="hidden" id="fid" value="<?php echo $rs['id']; ?>" />
    <?php
    else:
        echo HTML::AlertInfo('文档尚未创建');
    endif;
    ?>
</div>
