<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设安全监督检查意见表</span><a class="tooladd back" href="javascript:;">返回</a><a class="tooladd" href="?m=Project&a=ProjectFlow10005&pid=<?php echo $pid; ?>">发送新检查意见表</a></div>
</div>
<div class="panel paneltool">
    <?php
    if(!empty($rl)){
        echo '<div>正在进行</div>';
        echo '<table class="tl">';
        echo '<tr>';
        echo '<th>编号</th>';
        echo '<th>发表时间</th>';
        echo '<th>阅读时间</th>';
        echo '</tr>';
        echo '<tr>';
        echo '<td><a href="?m=Project&a=ProjectFlow10005&pid=' . $pid . '">' . $rl['name'] . ' ' . $rl['time'] . '</a></td>';
        echo '<td class="ftim">' . $rl['time'] . '</td>';
        echo '<td class="ftim">' . $rl['last'] . '</td>';
        echo '</tr>';
        echo '</table>';
        echo '<br/>';
    }
    ?>

    <?php
    if(!empty($rs)){
        echo '<div>审批通过</div><table class="tl">';
        echo '<tr>';
        echo '<th>编号</th>';
        echo '<th>发表时间</th>';
        echo '<th>阅读时间</th>';
        echo '</tr>';
        foreach($rs as $k => $v){
            echo '<tr>';
            echo '<td><a href="?m=Project&a=ProjectFlow10005&pid=' . $pid . '&id=' . $v['id'] . '">' . $v['name'] . ' ' . $v['time'] . '</a></td>';
            echo '<td class="ftim">' . $v['time'] . '</td>';
            echo '<td class="ftim">' . $v['last'] . '</td>';
            echo '</tr>';
        }
        echo '</table>';
    }
    else{
        echo HTML::AlertInfo();
    }
    ?>
</div>
