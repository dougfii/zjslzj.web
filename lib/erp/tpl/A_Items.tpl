<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　{$node_status}"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if(!$node_direction) echo '<a class="tooladd" href="?m=Project&a=ProjectFlow1">新建</a>'; ?></div>
</div>
<div class="panel paneltool">
<?php

if(!empty($rs_processing) || !empty($rs_backed) || !empty($rs_success))
{
    if(!empty($rs_processing))
    {
        echo '<div>审批中</div>';
         echo '<table class="tl"><tr><th>编号</th><th>发表时间</th><th>状态</th></tr>';
         foreach($rs_processing as $k => $v)
         {
             echo '<tr><td><a href="?m=Work&a=Item&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '">' . $v['no'] . ' - ' . $v['time'] . '</a></td><td class="ftime">' . $v['time'] . '</td><td class="fsta">' . $v['status'] . '</td></tr>';
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
        echo '<div>审批通过</div>';
        echo '<table class="tl"><tr><th>编号</th><th>发表时间</th><th>批复者</th><th>批复时间</th><th>状态</th></tr>';
        foreach($rs_success as $k => $v)
        {
            echo '<tr><td><a href="?m=Work&a=Item&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '">' . $v['no'] . ' - ' . $v['time'] . '</a></td><td class="ftime">' . $v['time'] . '</td><td class="fusr">' . $v['replier'] . '</td><td class="ftime">' . $v['reply_time'] . '</td><td class="fsta"><a href="?m=Work&a=Reply&work_id=' . $v['work_id'] . '&node_id=' . $v['node_id'] . '&item_id=' . $v['id'] . '&reply_id=' . $v['reply_id'] . '">' . $v['status'] . '</a></td></tr>';
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