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
            <?php
             if(!empty($items))
             {
                foreach($items as $k=>$v){
                        echo '<tr class="delitem"><td class="c">';
                        echo $v[0];
                        echo '</td><td class="c">';
                        echo $v[1];
                        echo '</td><td class="c">';
                        echo $v[2];
                        echo '</td><td class="c">';
                        echo $v[3];
                        echo '</td><td class="c">';
                        echo $v[4];
                        echo '</td><td class="c">';
                        echo $v[5];
                        echo '</td><td class="c">';
                        echo $v[6];
                        echo '</td></tr>';
                    }
                }
                ?>
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
