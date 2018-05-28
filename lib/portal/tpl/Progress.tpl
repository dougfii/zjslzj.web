<div class="panel">
<?php
if(!empty($rs))
{
    echo '<div class="plbox">';
    echo '<div class="start"><a href="?m=Project&a=ProjectFlow0List&pid=' . $pid . '">工程立项</a><span class="state">' . ProjectStateCls::Name($rs["s0"]) . '</span></div>';

    if($rs["type"]==1){

        if($rs["n0"]>0){
            echo '<div class="title">质量监督检查</div>';
            // echo '<div class="item"><a href="?m=Project&a=ProjectFlow4List&pid=' . $pid . '">质量监督检查意见表</a><span class="state">&nbsp;</span></div>';
            foreach(ProjectNodeCls::Items() as $k=>$v)
            {
                if($k>0 && $rs["n{$k}"]>0)
                {
                    if($k==3 || $k==5 || $k==6 || $k==7 || $k==9)
                    {
                        echo '<div class="item">' . $k . '. ' . $v . '</div>';

                        if($k==3)
                        {
                            foreach(ProjectNodeCls::ConfirmItems() as $m=>$n)
                            {
                                echo '<div class="item">　● <a href="?m=Project&a=ProjectFlow' . $m . 'List">' . $n . '</a><span class="state">' . ProjectStateCls::Name($rs["s{$m}"]) . '</span></div>';
                            }
                        }

                        if($k==5)
                        {
                            foreach(ProjectNodeCls::MaterialItems() as $m=>$n)
                            {
                                echo '<div class="item">　● <a href="?m=Project&a=ProjectFlow' . $m . 'List">' . $n . '</a><span class="state">' . ProjectStateCls::Name($rs["s{$m}"]) . '</span></div>';
                            }
                        }

                        if($k==6)
                        {
                            foreach(ProjectNodeCls::CheckItems() as $m=>$n)
                            {
                                echo '<div class="item">　● <a href="?m=Project&a=ProjectFlow' . $m . 'List">' . $n . '</a><span class="state">' . ProjectStateCls::Name($rs["s{$m}"]) . '</span></div>';
                            }
                        }

                        if($k==7)
                        {
                            foreach(ProjectNodeCls::RecordItems() as $m=>$n)
                            {
                                echo '<div class="item">　● <a href="?m=Project&a=ProjectFlow' . $m . 'List">' . $n . '</a><span class="state">' . ProjectStateCls::Name($rs["s{$m}"]) . '</span></div>';
                            }
                        }

                        if($k==9)
                        {
                            $m = 91;
                            echo '<div class="item">　● <a href="?m=Project&a=ProjectFlow' . $m . 'List">' . ProjectNodeCls::AcceptName($m) . '</a><span class="state">' . ProjectStateCls::Name($rs["s{$m}"]) . '</span></div>';
                            $m = 92;
                            echo '<div class="item">　● ' . ProjectNodeCls::AcceptName($m) . '</div>';
                            foreach(ProjectNodeCls::Accept2Items() as $m=>$n)
                            {
                                echo '<div class="item">　　◆ <a href="?m=Project&a=ProjectFlow' . $m . 'List">' . $n . '</a><span class="state">' . ProjectStateCls::Name($rs["s{$m}"]) . '</span></div>';
                            }
                        }
                    }
                    else
                    {
                        echo '<div class="item">' . $k . '. <a href="?m=Project&a=ProjectFlow' . $k . 'List">' . $v . '</a><span class="state">' . ProjectStateCls::Name($rs["s{$k}"]) . '</span></div>';
                    }
                }
            }

        }
    }
    else{
        echo '<div class="title">安全监督检查</div>';
        echo '<div class="item">1. <a href="?m=Project&a=ProjectFlow10001List">安全监督申请书</a><span class="state">' . ProjectStateCls::Name($rs["s10001"]) . '</span></div>';
        echo '<div class="item">2. <a href="?m=Project&a=ProjectFlow10002List">水利工程建设施工现场安全生产条件检查表</a><span class="state">' . ProjectStateCls::Name($rs["s10002"]) . '</span></div>';
        echo '<div class="item">3. <a href="?m=Project&a=ProjectFlow10003List">水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表</a><span class="state">' . ProjectStateCls::Name($rs["s10003"]) . '</span></div>';
        echo '<div class="item">4. <a href="?m=Project&a=ProjectFlow10004List">施工单位安全责任人汇总表</a><span class="state">' . ProjectStateCls::Name($rs["s10004"]) . '</span></div>';
    }

    echo '</div>';
}
?>
</div>
