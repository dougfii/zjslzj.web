<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10004Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设项目施工单位安全责任人汇总表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
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
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10004&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设项目施工单位安全责任人汇总表</div>
            <table class="tx1">
                <tr><td class="k">合同名称</td><td class="v" colspan="4"><?php echo $rs["name"]; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php echo $rs["t1"]; ?></td><td class="k">签约合同价</td><td class="v" colspan="2"><?php echo $rs["t2"]; ?></td></tr>
                <tr><td class="k">资质等级</td><td class="v"><?php echo $rs["t3"]; ?></td><td class="k">安全生产许可证号</td><td class="v" colspan="2"><?php echo $rs["t4"]; ?></td></tr>
                <tr><td class="k">主要施工内容</td><td class="v" colspan="4"><?php echo $rs["t5"]; ?></td></tr>
                <tr><td class="k" rowspan="3">单位责任人</td><td colspan="k">姓名</td><td class="v"><?php echo $rs["t6"]; ?></td><td colspan="k">职称</td><td class="v"><?php echo $rs["t7"]; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php echo $rs["t8"]; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php echo $rs["t9"]; ?></td></tr>
                <tr><td class="k" rowspan="3">项目经理</td><td colspan="k">姓名</td><td class="v"><?php echo $rs["t10"]; ?></td><td colspan="k">职称</td><td class="v"><?php echo $rs["t11"]; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php echo $rs["t12"]; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php echo $rs["t13"]; ?></td></tr>
                <tr><td class="k" rowspan="3">专职安全员</td><td colspan="k">姓名</td><td class="v"><?php echo $rs["t14"]; ?></td><td colspan="k">职称</td><td class="v"><?php echo $rs["t15"]; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php echo $rs["t16"]; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php echo $rs["t17"]; ?></td></tr>
            </table>
            <br>
            <div style="font-size:12px;">填报单位：<?php echo $rs["t18"]; ?>　　　填报人：<?php echo $rs["t19"]; ?>　　　日期：<?php echo $rs["t20"]; ?></div>
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
