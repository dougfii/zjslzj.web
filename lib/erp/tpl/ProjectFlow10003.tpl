<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10003Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
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
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10003&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表</div>
            <table class="tx1">
                <tr><td class="k">单位名称</td><td class="k">责任人</td><td class="k">姓名</td><td class="k">职务／职称</td><td class="k">身份证号码</td><td class="k">安全生产培训及证书情况</td><td class="k">责任范围</td></tr>
                <tr><td class="k" rowspan="3">项目法人<br/>（建设单位）</td><td class="k">单位负责人</td><td class="v"><?php echo $rs["t1"]; ?></td><td class="v"><?php echo $rs["t2"]; ?></td><td class="v"><?php echo $rs["t3"]; ?></td><td class="v"><?php echo $rs["t4"]; ?></td><td class="v"><?php echo $rs["t5"]; ?></td></tr>
                <tr><td class="k">安全分管人</td><td class="v"><?php echo $rs["t6"]; ?></td><td class="v"><?php echo $rs["t7"]; ?></td><td class="v"><?php echo $rs["t8"]; ?></td><td class="v"><?php echo $rs["t9"]; ?></td><td class="v"><?php echo $rs["t10"]; ?></td></tr>
                <tr><td class="k">专职安全员</td><td class="v"><?php echo $rs["t11"]; ?></td><td class="v"><?php echo $rs["t12"]; ?></td><td class="v"><?php echo $rs["t13"]; ?></td><td class="v"><?php echo $rs["t14"]; ?></td><td class="v"><?php echo $rs["t15"]; ?></td></tr>
                <tr><td class="k" rowspan="2">勘察单位</td><td class="k">单位负责人</td><td class="v"><?php echo $rs["t16"]; ?></td><td class="v"><?php echo $rs["t17"]; ?></td><td class="v"><?php echo $rs["t18"]; ?></td><td class="v"><?php echo $rs["t19"]; ?></td><td class="v"><?php echo $rs["t20"]; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php echo $rs["t21"]; ?></td><td class="v"><?php echo $rs["t22"]; ?></td><td class="v"><?php echo $rs["t23"]; ?></td><td class="v"><?php echo $rs["t24"]; ?></td><td class="v"><?php echo $rs["t25"]; ?></td></tr>
                <tr><td class="k" rowspan="2">设计单位</td><td class="k">单位负责人</td><td class="v"><?php echo $rs["t26"]; ?></td><td class="v"><?php echo $rs["t27"]; ?></td><td class="v"><?php echo $rs["t28"]; ?></td><td class="v"><?php echo $rs["t29"]; ?></td><td class="v"><?php echo $rs["t30"]; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php echo $rs["t31"]; ?></td><td class="v"><?php echo $rs["t32"]; ?></td><td class="v"><?php echo $rs["t33"]; ?></td><td class="v"><?php echo $rs["t34"]; ?></td><td class="v"><?php echo $rs["t35"]; ?></td></tr>
                <tr><td class="k" rowspan="3">监理单位</td><td class="k">单位负责人</td><td class="v"><?php echo $rs["t36"]; ?></td><td class="v"><?php echo $rs["t37"]; ?></td><td class="v"><?php echo $rs["t38"]; ?></td><td class="v"><?php echo $rs["t39"]; ?></td><td class="v"><?php echo $rs["t40"]; ?></td></tr>
                <tr><td class="k">总监理工程师</td><td class="v"><?php echo $rs["t41"]; ?></td><td class="v"><?php echo $rs["t42"]; ?></td><td class="v"><?php echo $rs["t43"]; ?></td><td class="v"><?php echo $rs["t44"]; ?></td><td class="v"><?php echo $rs["t45"]; ?></td></tr>
                <tr><td class="k">安全分管人</td><td class="v"><?php echo $rs["t46"]; ?></td><td class="v"><?php echo $rs["t47"]; ?></td><td class="v"><?php echo $rs["t48"]; ?></td><td class="v"><?php echo $rs["t49"]; ?></td><td class="v"><?php echo $rs["t50"]; ?></td></tr>
                <tr><td class="k" rowspan="2">试验检测单位</td><td class="k">单位负责人</td><td class="v"><?php echo $rs["t51"]; ?></td><td class="v"><?php echo $rs["t52"]; ?></td><td class="v"><?php echo $rs["t53"]; ?></td><td class="v"><?php echo $rs["t54"]; ?></td><td class="v"><?php echo $rs["t55"]; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php echo $rs["t56"]; ?></td><td class="v"><?php echo $rs["t57"]; ?></td><td class="v"><?php echo $rs["t58"]; ?></td><td class="v"><?php echo $rs["t59"]; ?></td><td class="v"><?php echo $rs["t60"]; ?></td></tr>
                <tr><td class="k" rowspan="2">其他参建单位</td><td class="k">安全责任人</td><td class="v"><?php echo $rs["t61"]; ?></td><td class="v"><?php echo $rs["t62"]; ?></td><td class="v"><?php echo $rs["t63"]; ?></td><td class="v"><?php echo $rs["t64"]; ?></td><td class="v"><?php echo $rs["t65"]; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php echo $rs["t66"]; ?></td><td class="v"><?php echo $rs["t67"]; ?></td><td class="v"><?php echo $rs["t68"]; ?></td><td class="v"><?php echo $rs["t69"]; ?></td><td class="v"><?php echo $rs["t70"]; ?></td></tr>
            </table>
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
