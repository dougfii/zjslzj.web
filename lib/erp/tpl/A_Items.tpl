<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　{$node_status}"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($node_direction != 'true') echo '<a class="tooladd" href="?m=Work&a=Item&work_id=' . $work_id . '&node_id=' . $node_id . '">新建</a>'; ?></div>
</div>
<div class="panel paneltool">
<?php

if(!empty($rs_processing) || !empty($rs_backed) || !empty($rs_success))
{
    if(!empty($rs_processing))
    {
        echo '<div>' . ($node_direction ? '审批中' : '未读') . '</div>';
         echo '<table class="tl"><tr><th>编号</th><th>发表时间</th><th>状态</th></tr>';
         foreach($rs_processing as $k => $v)
         {
             echo '<tr><td><a href="?m=Work&a=Item&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '">' . $v['no'] . ' - ' . $v['time'] . '</a></td><td class="ftime">' . $v['time'] . '</td><td class="fsta">' . ($node_direction ? $v['status'] : '未读') . '</td></tr>';
         }
         echo '</table><br/>';
    }

    if(!empty($rs_backed))
    {
        echo '<div>审退</div>';
        echo '<table class="tl"><tr><th>编号</th><th>发表时间</th><th>批复者</th><th>批复时间</th><th>查看结果</th></tr>';
        foreach($rs_backed as $k => $v)
        {
            echo '<tr><td><a href="?m=Work&a=Item&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '">' . $v['no'] . ' - ' . $v['time'] . '</a></td><td class="ftime">' . $v['time'] . '</td><td class="fusr">' . $v['replier'] . '</td><td class="ftime">' . $v['reply_time'] . '</td><td class="fsta"><a href="?m=Work&a=Reply&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '&reply_id=' . $v['reply_id'] . '">' . $v['status'] . '</a></td></tr>';
        }
        echo '</table><br/>';
    }

    if(!empty($rs_success))
    {
        echo '<div>' . ($node_direction ? '审批通过' : '已读') . '</div>';
        echo '<table class="tl"><tr><th>编号</th><th>发表时间</th><th>批复者</th><th>批复时间</th><th>状态</th></tr>';
        foreach($rs_success as $k => $v)
        {
            echo '<tr><td><a href="?m=Work&a=Item&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '">' . $v['no'] . ' - ' . $v['time'] . '</a></td><td class="ftime">' . $v['time'] . '</td><td class="fusr">' . $v['replier'] . '</td><td class="ftime">' . $v['reply_time'] . '</td><td class="fsta">' . ($node_direction ? '<a href="?m=Work&a=Reply&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '&reply_id=' . $v['reply_id'] . '">' . $v['status'] . '</a>' : '已读') . '</td></tr>';
        }
        echo '</table><br/>';
    }
}
else
{
    echo HTML::AlertInfo();
}

?>
</div>