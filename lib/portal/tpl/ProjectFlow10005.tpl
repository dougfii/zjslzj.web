<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10005Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设安全监督检查意见表</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <?php
    if(!empty($rs)):
    ?>
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设安全监督检查意见表</div>
            <?php
            $c = explode(',', $rs["t10"]);
            $c = array_pad($c, 3, 0);
            ?>
            <table class="tx1">
                <tr><td class="k">工程名称</td><td class="v"><?php echo $rs["name"]; ?></td><td class="k">项目法人</td><td class="v" colspan="2"><?php echo $rs["t1"]; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php echo $rs["t2"]; ?></td><td class="k">监理单位</td><td class="v" colspan="2"><?php echo $rs["t3"]; ?></td></tr>
                <tr><td class="k">工程形象进度</td><td class="v" colspan="4"><?php echo $rs["t4"]; ?></td></tr>
                <tr><td class="k">安全监督检查意见</td><td class="v" colspan="4"><?php echo $rs["t5"]; ?><br/><div style="text-align:right">安全评价等级：合格 <?php if($edit) echo '<input type="checkbox" id="item0" ' . ($c[0] ? 'checked' : '') . '/>'; else echo $c[0] ? "√" : ""; ?>　　基本合格 <?php if($edit) echo '<input type="checkbox" id="item1" ' . ($c[1] ? 'checked' : '') . '/>'; else echo $c[1] ? "√" : ""; ?>　　不合格 <?php if($edit) echo '<input type="checkbox" id="item2" ' . ($c[2] ? 'checked' : '') . '/>'; else echo $c[2] ? "√" : ""; ?></div></td></tr>
                <tr>
                    <td colspan="2"><br/><br/>填写人：<?php echo $rs["t6"]; ?><br/><br/><br/><br/>日　期：<?php echo $rs["t7"]; ?><br/><br/></td>
                    <td colspan="2"><br/><br/>监督负责人：<?php echo $rs["t8"]; ?><br/><br/><br/><br/>日　期：<?php echo $rs["t9"]; ?><br/><br/></td>
                </tr>
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
