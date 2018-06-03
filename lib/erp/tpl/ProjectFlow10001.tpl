<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10001Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap"> 安全监督申请书 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
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
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10001&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info">
            <br/><br/>
            <div class="pa4-title1">江苏省水利工程建设安全监督</div>
            <div class="pa4-title1">申 请 书</div>
            <br/><br/><br/><br/>
            <div style="margin-left:200px;">
                <div>编　　号：（<?php echo $rs['t32']; ?>）申（<?php echo $rs['t33']; ?>）第<?php echo $rs['t34']; ?>号</div>
                <br/><br/>
                <div>申请单位：<?php echo $rs['t35']; ?>（盖章）</div>
                <br/><br/>
                <div>申请日期：<?php echo $rs['t36']; ?>　　　　</div>
            </div>
            <br/><br/><br/><br/>
            <div class="center">江苏省水利厅印制</div>
            <br/><br/><br/><br/><br/><br/><br/><br/>
            <div class="center">填写说明</div>
            <div class="tx1" style="line-height:150%;padding:10px;">
                <p>一、本书由项目法人负责填报。</p>
                <p>二、本书须在水利工程开工前填报，填写时不得使用铅笔、圆珠笔，字迹应清晰、整洁，最好使用计算机打印。</p>
                <p>三、本书由水利工程建设安全监督机构统一编号。</p>
                <p>四、申请人须按本书要求逐项填报有关内容，各项内容如纸张不够，可加附页。</p>
                <p>五、本书填写一式二份，一份回执。</p>
            </div>
            <br/>
        </div>
        <div class="pagea4info">
            <table class="tx1">
                <tr><td class="k">工程名称</td><td class="v" colspan="3"><?php echo $name; ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v" colspan="3"><?php echo $rs['t1']; ?></td></tr>
                <tr><td class="k">实施方案文号</td><td class="v"><?php echo $rs['t2']; ?></td><td class="k">工程总投资</td><td class="v"><?php echo $rs['t3']; ?> 万元</td></tr>
                <tr><td class="k">计划开工时间</td><td class="v"><?php echo $rs['t4']; ?></td><td class="k">计划完工时间</td><td class="v"><?php echo $rs['t5']; ?></td></tr>
                <tr><td class="k">建设单位名称</td><td class="v" colspan="3"><?php echo $rs['t6']; ?></td></tr>
                <tr><td class="k">项目法人（建设单位）批准文号</td><td class="v" colspan="3"><?php echo $rs['t7']; ?></td></tr>
                <tr><td class="k" rowspan="4">项目法人<br/>（建设单位）</td><td class="k">联系人 </td><td class="v" colspan="2"><?php echo $rs['t8']; ?></td></tr>
                <tr><td class="k">联系电话 </td><td class="v" colspan="2"><?php echo $rs['t9']; ?></td></tr>
                <tr><td class="k">通讯地址</td><td class="v" colspan="2"><?php echo $rs['t10']; ?></td></tr>
                <tr><td class="k">邮政编码</td><td class="v" colspan="2"><?php echo $rs['t11']; ?></td></tr>
                <tr><td class="k">工程建设规模、内容及标准</td><td class="v" colspan="3"><?php echo $rs['t12']; ?></td></tr>
                <tr><td class="k">主要工程量</td><td class="v" colspan="3"><?php echo $rs['t13']; ?></td></tr>
                <tr><td class="k" colspan="3">主要参建单位（全称）</td><td class="k">联系人及电话</td></tr>
                <tr><td class="k" rowspan="2">施工单位</td><td class="v" colspan="2"><?php echo $rs['t14']; ?></td><td class="v"><?php echo $rs['t15']; ?></td></tr>
                <tr><td class="v" colspan="2"><?php echo $rs['t16']; ?></td><td class="v"><?php echo $rs['t17']; ?></td></tr>
                <tr><td class="k">监理单位</td><td class="v" colspan="2"><?php echo $rs['t18']; ?></td><td class="v"><?php echo $rs['t19']; ?></td></tr>
                <tr><td class="k">勘测单位</td><td class="v" colspan="2"><?php echo $rs['t20']; ?></td><td class="v"><?php echo $rs['t21']; ?></td></tr>
                <tr><td class="k">设计单位</td><td class="v" colspan="2"><?php echo $rs['t22']; ?></td><td class="v"><?php echo $rs['t23']; ?></td></tr>
                <tr><td class="k">其他参建单位</td><td class="v" colspan="2"><?php echo $rs['t24']; ?></td><td class="v"><?php echo $rs['t25']; ?></td></tr>
                <tr><td colspan="4">项目法人（建设单位）安全生产工作计划：<br/><?php echo $rs['t26']; ?></td></tr>
                <tr><td colspan="4">监理单位安全工作计划：<br/><?php echo $rs['t27']; ?></td></tr>
                <tr><td colspan="4">施工单位安全工作计划：<br/><?php echo $rs['t28']; ?></td></tr>
                <tr><td colspan="4">水利工程建设安全监督机构审查意见：<br/><?php echo $rs['t29']; ?><div style="text-align:right;"><br/><br/><?php echo $rs['t30']; ?>（公章）<br/><br/><br/><br/><?php echo $rs['t31']; ?>（日期）<br/><br/><br/><br/></div></td></tr>
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
