<script>
    $(function(){
        $('.read').click(function(){
            var id=$(this).attr('rid');
            $.post('?m=Home&a=OnRead', {id:id}, function(ret){if(ret.code==1)layer.msg('已读', 1, function(){Refresh();});else layer.msg(ret.msg, 2, -1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">首页 - 消息通知（<?php echo $count; ?>）</span></div>
</div>
<div class="panel paneltool">
<?php
if(!empty($rs))
{
    echo '<table class="tl">';
    echo '<tr><th>序号</th><th>消息</th><th>时间</th><th>操作</th></tr>';
    foreach($rs as $v)
    {
        echo '<tr><td class="fid">' . $v['id'] . '</td><td class="">' . (!empty($v['url']) ? '<a href="' . $v['url'] . '">' . $v['content'] . '</a>' : $v['content']). '</td><td class="ftime">' . $v['time'] . '</td><td class="fsta"><a href="javascript:;" class="read" rid="' . $v['id'] . '">' . ($v['read'] ? '已读' : '未读') . '</a></td></tr>';
    }
    echo '</table>';
}
else
{
    echo HTML::AlertInfo();
}
?>
</div>