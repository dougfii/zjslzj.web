<div class="toolbar">
    <div class="tool clear"><span class="cap">工程</span></div>
</div>
<div class="panel paneltool">
<?php
if(!empty($rs))
{
    echo '<div class="plbox">';
    echo '<div class="start"><a href="?m=Project&a=ProjectFlow0List&pid=' . $pid . '">工程立项</a><span class="state">' . ProjectStateCls::Name($rs["s0"]) . '</span></div>';
    if($rs["n0"]>0){
        echo '<div class="title">安全监督检查</div>';
        echo '<div class="item">1. <a href="?m=Project&a=ProjectFlow10001List&pid=' . $pid . '">安全监督申请书</a><span class="state">' . ProjectStateCls::Name($rs["s10001"]) . '</span></div>';
        echo '<div class="item">2. <a href="?m=Project&a=ProjectFlow10002List&pid=' . $pid . '">水利工程建设施工现场安全生产条件检查表</a><span class="state">' . ProjectStateCls::Name($rs["s10002"]) . '</span></div>';
        echo '<div class="item">3. <a href="?m=Project&a=ProjectFlow10003List&pid=' . $pid . '">安全生产条件检查表</a><span class="state">' . ProjectStateCls::Name($rs["s10003"]) . '</span></div>';
        echo '<div class="item">4. <a href="?m=Project&a=ProjectFlow10004List&pid=' . $pid . '">施工单位安全责任人汇总表</a><span class="state">' . ProjectStateCls::Name($rs["s10004"]) . '</span></div>';
    }
    echo '</div>';
}
?>
</div>