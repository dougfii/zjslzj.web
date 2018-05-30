<script>
    $(function(){
        $('#deny').click(function(){
            $.post('?m=Project&a=OnProjectFlow10002Deny', {pid:$('#pid').val(),fid:$('#fid').val(),content:$('#content').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设施工现场安全生产条件检查表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a></div>
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
            <div class="pagedialog-buttons"><a href="?m=Project&a=ProjectReply10002&fid=<?php echo $rs['id'] ?>" class="btn">同意</a><a href="javascript:;" class="btn" id="deny">驳回</a></div>
        </div>
    </div>
    <br/>
    <?php endif; ?>
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设施工现场安全生产条件检查表</div>
            <div style="text-align: right">编号：<?php echo $rs['t1']; ?><br/><br/></div>
            <table class="tx1">
                <tr><td class="k">工程项目</td><td class="v"><?php echo $rs['name']; ?></td><td class="k">施工标段</td><td class="v"><?php echo $rs['t2']; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php echo $rs['t3']; ?></td><td class="k">监理单位</td><td class="v"><?php echo $rs['t4']; ?></td></tr>
            </table>
            <?php
            $c = explode(',', $rs['t23']);
            $c = array_pad($c, 45, 0);
            ?>
            <table style="border:#000 solid 1px;font-size:12px;border-top:0px;border-bottom:0px;">
                <tr>
                    <th>序号</th>
                    <th>核验内容</th>
                    <th>好</th>
                    <th>中</th>
                    <th>差</th>
                    <th>备注</th>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">1</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产保证体系与安全责任制</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[0] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[1] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[2] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t5']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">2</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产规章制度</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[3] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[4] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[5] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t6']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">3</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产管理机构设置及“三类人员”人员持证上岗情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[6] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[7] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[8] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t7']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">4</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全资金使用计划及办理保险情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[9] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[10] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[11] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t8']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">5</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全教育、培训工作计划及开展情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[12] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[13] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[14] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t9']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">6</td>
                    <td style="border: #000 solid 1px;padding:5px;">危险源识别、评估和监控防范</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[15] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[16] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[17] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t10']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">7</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工现场布置及安全警示牌、公告牌设置</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[18] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[19] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[20] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t11']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">8</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工组织计划中的安全保证措施</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[21] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[22] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[23] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t12']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">9</td>
                    <td style="border: #000 solid 1px;padding:5px;">劳动防护用品、安全设施配备与使用</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[24] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[25] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[26] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t13']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">10</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产事故应急救援预案与救援人员、设备、器材的配备</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[27] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[28] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[29] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t14']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">11</td>
                    <td style="border: #000 solid 1px;padding:5px;">劳动防护用品检查、验收情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[30] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[31] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[32] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t15']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">12</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工机具检查、验收情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[33] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[34] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[35] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t16']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">13</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工临时用电</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[36] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[37] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[38] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t17']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">14</td>
                    <td style="border: #000 solid 1px;padding:5px;">消防安全</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[39] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[40] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[41] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t18']; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">15</td>
                    <td style="border: #000 solid 1px;padding:5px;">工区布置</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[42] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[43] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $c[44] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php echo $rs['t19']; ?></td>
                </tr>
            </table>
            <table class="tx1">
                <tr><td>核验意见：<?php echo $rs['t20']; ?><div style="text-align:right;"><br/><br/><?php echo $rs['t21']; ?>（公章）<br/><br/><br/><br/><?php echo $rs['t22']; ?>（日期）<br/><br/><br/><br/></div></td></tr>
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
