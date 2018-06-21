<div class="toolbar">
    <div class="tool clear"><span class="cap">安全监督申请书 - [批复]</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
<?php
if(!empty($rs)):
?>
        <div class="pagea4info clear">
            <div class="pa4-title1">水利工程建设安全监督通知书</div>
            <div><?php echo $rs["t1"]; ?>：</div>
            <br/><br/>
            <div>　　根据你单位的申请，按照《江苏省水利工程建设安全监督工作指导意见》对 <?php echo $rs["t2"]; ?> 工程进行安全监督。本项目监督负责人为 <?php echo $rs["t3"]; ?>。</div>
            <br/>
            <div>　　现将该工程安全监督计划发给你们，请按监督计划配合安全监督工作顺利进行。</div>
            <br/><br/>
            <div>　　特此通知。</div>
            <br/><br/><br/><br/><br/><br/>
            <div class="right">
                <div><?php echo $gc; ?></div>
                <br/><br/>
                <div>申请日期：<?php echo $rs["t6"]; ?></div>
            </div>
            <br/><br/><br/><br/>
        </div>
        <br/><br/><br/><br/>
        <?php echo $atts; ?>
        <br/><br/><br/><br/>
<?php
else:
    echo HTML::AlertError();
endif;
?>
    </div>
</div>
