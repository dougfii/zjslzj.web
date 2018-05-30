<script>
    $(function(){
        $('#add').click(function(){
            var c = new Array();
            c[0] = $('#item0').is(':checked') ? 1 : 0;
            c[1] = $('#item1').is(':checked') ? 1 : 0;
            c[2] = $('#item2').is(':checked') ? 1 : 0;
            c[3] = $('#item3').is(':checked') ? 1 : 0;
            c[4] = $('#item4').is(':checked') ? 1 : 0;
            c[5] = $('#item5').is(':checked') ? 1 : 0;
            c[6] = $('#item6').is(':checked') ? 1 : 0;
            c[7] = $('#item7').is(':checked') ? 1 : 0;
            c[8] = $('#item8').is(':checked') ? 1 : 0;
            c[9] = $('#item9').is(':checked') ? 1 : 0;
            c[10] = $('#item10').is(':checked') ? 1 : 0;
            c[11] = $('#item11').is(':checked') ? 1 : 0;
            c[12] = $('#item12').is(':checked') ? 1 : 0;
            c[13] = $('#item13').is(':checked') ? 1 : 0;
            c[14] = $('#item14').is(':checked') ? 1 : 0;
            c[15] = $('#item15').is(':checked') ? 1 : 0;
            c[16] = $('#item16').is(':checked') ? 1 : 0;
            c[17] = $('#item17').is(':checked') ? 1 : 0;
            c[18] = $('#item18').is(':checked') ? 1 : 0;
            c[19] = $('#item19').is(':checked') ? 1 : 0;
            c[20] = $('#item20').is(':checked') ? 1 : 0;
            c[21] = $('#item21').is(':checked') ? 1 : 0;
            c[22] = $('#item22').is(':checked') ? 1 : 0;
            c[23] = $('#item23').is(':checked') ? 1 : 0;
            c[24] = $('#item24').is(':checked') ? 1 : 0;
            c[25] = $('#item25').is(':checked') ? 1 : 0;
            c[26] = $('#item26').is(':checked') ? 1 : 0;
            c[27] = $('#item27').is(':checked') ? 1 : 0;
            c[28] = $('#item28').is(':checked') ? 1 : 0;
            c[29] = $('#item29').is(':checked') ? 1 : 0;
            c[30] = $('#item30').is(':checked') ? 1 : 0;
            c[31] = $('#item31').is(':checked') ? 1 : 0;
            c[32] = $('#item32').is(':checked') ? 1 : 0;
            c[33] = $('#item33').is(':checked') ? 1 : 0;
            c[34] = $('#item34').is(':checked') ? 1 : 0;
            c[35] = $('#item35').is(':checked') ? 1 : 0;
            c[36] = $('#item36').is(':checked') ? 1 : 0;
            c[37] = $('#item37').is(':checked') ? 1 : 0;
            c[38] = $('#item38').is(':checked') ? 1 : 0;
            c[39] = $('#item39').is(':checked') ? 1 : 0;
            c[40] = $('#item40').is(':checked') ? 1 : 0;
            c[41] = $('#item41').is(':checked') ? 1 : 0;
            c[42] = $('#item42').is(':checked') ? 1 : 0;
            c[43] = $('#item43').is(':checked') ? 1 : 0;
            c[44] = $('#item44').is(':checked') ? 1 : 0;

            $.post('?m=Project&a=OnProjectFlow10002', {
                id:$('#id').val(),name:$('#name').val(),
                t1:$('#t1').val(),
                t2:$('#t2').val(),
                t3:$('#t3').val(),
                t4:$('#t4').val(),
                t5:$('#t5').val(),
                t6:$('#t6').val(),
                t7:$('#t7').val(),
                t8:$('#t8').val(),
                t9:$('#t9').val(),
                t10:$('#t10').val(),
                t11:$('#t11').val(),
                t12:$('#t12').val(),
                t13:$('#t13').val(),
                t14:$('#t14').val(),
                t15:$('#t15').val(),
                t16:$('#t16').val(),
                t17:$('#t17').val(),
                t18:$('#t18').val(),
                t19:$('#t19').val(),
                t20:$('#t20').val(),
                t21:$('#t21').val(),
                t22:$('#t22').val(),
                t23:c.join(),
            }, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 1;
            var no = $(this).attr('fid');
            var name = $(this).attr('fname');
            upload(pid, tid, no, name);
        });

        function upload(pid, tid, no, name){
            $.ajaxFileUpload({
                url:'?m=Upload&a=UpFlowFixed&no='+no,
                secureuri:false,
                fileElementId:'upfile'+no,
                dataType:'json',
                success: function(ret, status) {
                    if(ret.state=='SUCCESS') {
                        $.post('?m=Project&a=OnUpFlowFixed', {pid:pid,tid:tid,no:no,name:name,file:ret.name,url:ret.url,ext:ret.type,size:ret.size}, function (rt){
                            if(rt.code==1)layer.msg('上传完成', 1, function(){
                                $('#atta'+no).html('<a href="'+ret.url+'" target="_blank">'+name+'</a>');
                            });else layer.msg(rt.msg, 1);
                        }, 'json');
                    }
                    else layer.msg(ret.state, 2, -1);
                },
                error:function(ret, status, e){
                    layer.msg('上传失败 ' + e, 2, -1);
                }
            });
        };
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设施工现场安全生产条件检查表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设施工现场安全生产条件检查表</div>
            <div style="text-align: right">编号：<?php if($edit) echo '<input type="text" class="" id="t1" value="' . $t1 . '" />'; else echo $t1; ?><br/><br/></div>
            <table class="tx1">
                <tr><td class="k">工程项目</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">施工标段</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></td><td class="k">监理单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="t4" value="' . $t4 . '" />'; else echo $t4; ?></td></tr>
            </table>
            <?php
            $c = explode(',', $t23);
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
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item0" ' . ($c[0] ? 'checked' : '') . '/>'; else echo $c[0] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item1" ' . ($c[1] ? 'checked' : '') . '/>'; else echo $c[1] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item2" ' . ($c[2] ? 'checked' : '') . '/>'; else echo $c[2] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t5" value="' . $t5 . '" />'; else echo $t5; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">2</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产规章制度</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item3" ' . ($c[3] ? 'checked' : '') . '/>'; else echo $c[3] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item4" ' . ($c[4] ? 'checked' : '') . '/>'; else echo $c[4] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item5" ' . ($c[5] ? 'checked' : '') . '/>'; else echo $c[5] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t6" value="' . $t6 . '" />'; else echo $t6; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">3</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产管理机构设置及“三类人员”人员持证上岗情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item6" ' . ($c[6] ? 'checked' : '') . '/>'; else echo $c[6] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item7" ' . ($c[7] ? 'checked' : '') . '/>'; else echo $c[7] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item8" ' . ($c[8] ? 'checked' : '') . '/>'; else echo $c[8] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t7" value="' . $t7 . '" />'; else echo $t7; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">4</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全资金使用计划及办理保险情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item9" ' . ($c[9] ? 'checked' : '') . '/>'; else echo $c[9] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item10" ' . ($c[10] ? 'checked' : '') . '/>'; else echo $c[10] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item11" ' . ($c[11] ? 'checked' : '') . '/>'; else echo $c[11] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t8" value="' . $t8 . '" />'; else echo $t8; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">5</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全教育、培训工作计划及开展情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item12" ' . ($c[12] ? 'checked' : '') . '/>'; else echo $c[12] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item13" ' . ($c[13] ? 'checked' : '') . '/>'; else echo $c[13] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item14" ' . ($c[14] ? 'checked' : '') . '/>'; else echo $c[14] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t9" value="' . $t9 . '" />'; else echo $t9; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">6</td>
                    <td style="border: #000 solid 1px;padding:5px;">危险源识别、评估和监控防范</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item15" ' . ($c[15] ? 'checked' : '') . '/>'; else echo $c[15] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item16" ' . ($c[16] ? 'checked' : '') . '/>'; else echo $c[16] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item17" ' . ($c[17] ? 'checked' : '') . '/>'; else echo $c[17] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t10" value="' . $t10 . '" />'; else echo $t10; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">7</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工现场布置及安全警示牌、公告牌设置</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item18" ' . ($c[18] ? 'checked' : '') . '/>'; else echo $c[18] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item19" ' . ($c[19] ? 'checked' : '') . '/>'; else echo $c[19] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item20" ' . ($c[20] ? 'checked' : '') . '/>'; else echo $c[20] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t11" value="' . $t11 . '" />'; else echo $t11; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">8</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工组织计划中的安全保证措施</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item21" ' . ($c[21] ? 'checked' : '') . '/>'; else echo $c[21] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item22" ' . ($c[22] ? 'checked' : '') . '/>'; else echo $c[22] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item23" ' . ($c[23] ? 'checked' : '') . '/>'; else echo $c[23] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t12" value="' . $t12 . '" />'; else echo $t12; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">9</td>
                    <td style="border: #000 solid 1px;padding:5px;">劳动防护用品、安全设施配备与使用</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item24" ' . ($c[24] ? 'checked' : '') . '/>'; else echo $c[24] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item25" ' . ($c[25] ? 'checked' : '') . '/>'; else echo $c[25] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item26" ' . ($c[26] ? 'checked' : '') . '/>'; else echo $c[26] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t13" value="' . $t13 . '" />'; else echo $t13; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">10</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产事故应急救援预案与救援人员、设备、器材的配备</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item27" ' . ($c[27] ? 'checked' : '') . '/>'; else echo $c[27] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item28" ' . ($c[28] ? 'checked' : '') . '/>'; else echo $c[28] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item29" ' . ($c[29] ? 'checked' : '') . '/>'; else echo $c[29] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t14" value="' . $t14 . '" />'; else echo $t14; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">11</td>
                    <td style="border: #000 solid 1px;padding:5px;">劳动防护用品检查、验收情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item30" ' . ($c[30] ? 'checked' : '') . '/>'; else echo $c[30] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item31" ' . ($c[31] ? 'checked' : '') . '/>'; else echo $c[31] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item32" ' . ($c[32] ? 'checked' : '') . '/>'; else echo $c[32] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t15" value="' . $t15 . '" />'; else echo $t15; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">12</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工机具检查、验收情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item33" ' . ($c[33] ? 'checked' : '') . '/>'; else echo $c[33] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item34" ' . ($c[34] ? 'checked' : '') . '/>'; else echo $c[34] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item35" ' . ($c[35] ? 'checked' : '') . '/>'; else echo $c[35] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t16" value="' . $t16 . '" />'; else echo $t16; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">13</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工临时用电</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item36" ' . ($c[36] ? 'checked' : '') . '/>'; else echo $c[36] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item37" ' . ($c[37] ? 'checked' : '') . '/>'; else echo $c[37] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item38" ' . ($c[38] ? 'checked' : '') . '/>'; else echo $c[38] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t17" value="' . $t17 . '" />'; else echo $t17; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">14</td>
                    <td style="border: #000 solid 1px;padding:5px;">消防安全</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item39" ' . ($c[39] ? 'checked' : '') . '/>'; else echo $c[39] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item40" ' . ($c[40] ? 'checked' : '') . '/>'; else echo $c[40] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item41" ' . ($c[41] ? 'checked' : '') . '/>'; else echo $c[41] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t18" value="' . $t18 . '" />'; else echo $t18; ?></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">15</td>
                    <td style="border: #000 solid 1px;padding:5px;">工区布置</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item42" ' . ($c[42] ? 'checked' : '') . '/>'; else echo $c[42] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item43" ' . ($c[43] ? 'checked' : '') . '/>'; else echo $c[43] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="checkbox" id="item44" ' . ($c[44] ? 'checked' : '') . '/>'; else echo $c[44] ? "√" : ""; ?></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><?php if($edit) echo '<input type="text" class="" id="t19" value="' . $t19 . '" />'; else echo $t19; ?></td>
                </tr>
            </table>
            <table class="tx1">
                <tr><td>核验意见：<?php if($edit) echo '<textarea rows="15" style="width:660px;padding:5px;" id="t20">' . $t20 . '</textarea>'; else echo $t20; ?><div style="text-align:right;"><br/><br/><?php if($edit) echo '<input type="text" class="" id="t21" value="' . $t21 . '" />'; else echo $t21; ?>（公章）<br/><br/><br/><br/><?php if($edit) echo '<input type="text" class="" id="t22" value="' . $t22 . '" />'; else echo $t22; ?>（日期）<br/><br/><br/><br/></div></td></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
