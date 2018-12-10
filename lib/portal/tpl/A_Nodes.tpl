<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程"; ?></span></div>
</div>
<div class="panel paneltool">
<?php

echo '<div class="plbox">';
echo '<div class="item">工程立项　　<span class="state">' . ($work_act ? '开放中' : '关闭中') . '</span></div>';

if($work_act && !empty($work_nodes))
{
     foreach($work_nodes as $k => $v)
     {
         if($v['act'] == 'true' || $v['act'] == 'on')
         {
             echo '<div class="item">' . str_repeat('　', $v['level'] - 1) . $v['no'] . '、 ';
             if($v['type'] == 2) echo '<a href="?m=Work&a=Items&work_id=' . $work_id . '&node_id=' . $k . '">';
             echo $v['name'];
             if($v['type'] == 2) echo '</a>';
             echo '　　<span class="state">' . $v['status'] . '</span>';
             echo '</div>';
         }
     }
}

echo '</div>';

?>
</div>