<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10009Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设安全评价申请书 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
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
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10009&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info clear">
            <div><?php echo $rs["t1"]; ?>：</div>
            <br/><br/>
            <div>　　<?php echo $rs["t2"]; ?> 工程即将完工，按照《江苏省水利工程建设安全监督工作指导意见》的要求，对本工程参建单位安全行为的评估已经结束，现申请办理完工安全评价手续。</div>
            <br/><br/><br/><br/>
            <div>联 系 人：<?php echo $rs["t3"]; ?></div>
            <br/>
            <div>联系电话：<?php echo $rs["t4"]; ?></div>
            <br/>
            <div>传　　真：<?php echo $rs["t5"]; ?></div>
            <br/>
            <div>电子邮件：<?php echo $rs["t6"]; ?></div>
            <br/>
            <div>单位地址：<?php echo $rs["t7"]; ?></div>
            <br/>
            <div>邮政编码：<?php echo $rs["t8"]; ?></div>
            <br/><br/><br/><br/><br/><br/>
            <div class="right">
                <div>申请单位：<?php echo $rs["t9"]; ?>（盖章）</div>
                <br/><br/>
                <div>申请日期：<?php echo $rs["t10"]; ?>　　　　</div>
            </div>
            <br/><br/>
            <?php echo $atts; ?>
            <br/><br/><br/><br/>
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
