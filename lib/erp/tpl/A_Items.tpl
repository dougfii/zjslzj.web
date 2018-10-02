<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　{$node_status}"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if(!$node_direction) echo '<a class="tooladd" href="?m=Project&a=ProjectFlow1">新建</a>'; ?></div>
</div>
<div class="panel paneltool">
<?php

if(!empty($rs_processing) || !empty($rs_success))
{
    if(!empty($rs_processing))
    {
       echo '<div>审批中</div>';
        echo '<table class="tl"><tr><th>编号</th><th>发表时间</th><th>状态</th></tr>';
        foreach($rs_processing as $k => $v)
        {
            echo '<tr><a href="?m=Project&a=ProjectFlow1">' . $rl['no'] . '</a></td><td class="ftim">' . $rl['time'] . '</td><td class="fsta">' . $state . '</td></tr>';
        }
        echo '</table><br/>';
    }

    if(!empty($rs_success))
    {
        echo '<div>审批通过</div>';
        echo '<table class="tl"><tr><th>编号</th><th>申报时间</th><th>批复者</th><th>批复时间</th><th>批复</th></tr>';
        foreach($rs_success as $k => $v)
        {
            echo '<tr><td><a href="?m=Project&a=ProjectFlow1&id=' . $v['id'] . '">' . $v['no'] . '</a></td><td class="ftim">' . $v['time'] . '</td><td class="fusr">' . $v['user'] . '</td><td class="ftim">' . $v['replytime'] . '</td><td class="fsta"><a href="?m=Project&a=ProjectReply1View&fid=' . $v['id'] . '">查看</a></td></tr>';
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