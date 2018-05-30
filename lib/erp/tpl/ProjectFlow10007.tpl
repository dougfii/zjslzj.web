<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10007Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设安全评价意见书 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
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
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10007&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设安全评价意见书</div>
            <table class="tx1">
                <tr><td class="k">项目及标段名称</td><td class="v" colspan="3"><?php echo $rs['name']; ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v"><?php echo $rs['t1']; ?></td><td class="k">完工日期</td><td class="v" colspan="2"><?php echo $rs['t2']; ?></td></tr>
                <tr><td class="k">项目法人</td><td class="v" colspan="3"><?php echo $rs['t3']; ?></td></tr>
                <tr><td class="k">监理单位</td><td class="v" colspan="3"><?php echo $rs['t4']; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v" colspan="3"><?php echo $rs['t5']; ?></td></tr>
            </table>
            <?php
            $c = explode(',', $rs['t9']);
            $c = array_pad($c, 3, 0);
            ?>
            <table class="tx1">
                <thead>
                <tr><td colspan="5">安监机构评价记录</td></tr>
                <tr><td>序号</td><td>检查日期</td><td>形象进度</td><td>评价等级</td><td>备注</td></tr>
                </thead>
                <tbody id="items">
                <?php
                $items = Json::Decode($rs['t10']);
                 if(!empty($items))
                 {
                    foreach($items as $k=>$v){
                        echo '<tr class="delitem"><td class="c item0">' . ($k+1) . '</td><td class="c">';
                        echo $edit ? '<input type="text" class="item1" onclick="laydate();" size="6" value="' . $v[0] . '"/>' : $v[0];
                        echo '</td><td class="c">';
                        echo $edit ? '<input type="text" class="item2" value="' . $v[1] . '" />' : $v[1];
                        echo '</td><td class="c">';
                        echo $edit ? '<input type="text" class="item3" value="' . $v[2] . '"/>' : $v[2];
                        echo '</td><td class="c">';
                        echo $edit ? '<input type="text" class="item4" value="' . $v[3] . '"/>' : $v[3];
                        echo '</td></tr>';
                }
                }
                ?>
                </tbody>
            </table>
            <!-- <?php if($edit): ?><div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div><?php endif; ?> -->
            <table class="tx1">
                <tr><td class="v">工程总体安全评价意见：<br/><?php echo $rs['t6']; ?><br/><br/><div style="text-align:right">安全评价等级：合格 <?php echo $c[0] ? "√" : ""; ?>　　基本合格 <?php echo $c[1] ? "√" : ""; ?>　　不合格 <?php echo $c[2] ? "√" : ""; ?></div><br/><br/><div style="text-align:right;"><br/><p>安全监督机构（公章）：<?php echo $rs['t7']; ?></p><br/><br/><p>日期：<?php echo $rs['t8']; ?></p><br/></div></td></tr>
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
