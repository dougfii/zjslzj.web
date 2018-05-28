<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10001', {id:$('#id').val(),no:$('#no').val(),signer:$('#signer').val(),content:$('#content').val(),date:$('#date').val(),keywords:$('#keywords').val()}, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
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
            <div style="text-align: right">编号：<?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?><br/><br/></div>
            <table class="tx1">
                <tr><td class="k">工程项目</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">施工标段</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="k">监理单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
            </table>
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
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">2</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产规章制度</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">3</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产管理机构设置及“三类人员”人员持证上岗情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">4</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全资金使用计划及办理保险情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">5</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全教育、培训工作计划及开展情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">6</td>
                    <td style="border: #000 solid 1px;padding:5px;">危险源识别、评估和监控防范</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">7</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工现场布置及安全警示牌、公告牌设置</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">8</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工组织计划中的安全保证措施</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">9</td>
                    <td style="border: #000 solid 1px;padding:5px;">劳动防护用品、安全设施配备与使用</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">10</td>
                    <td style="border: #000 solid 1px;padding:5px;">安全生产事故应急救援预案与救援人员、设备、器材的配备</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">11</td>
                    <td style="border: #000 solid 1px;padding:5px;">劳动防护用品检查、验收情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">12</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工机具检查、验收情况</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">13</td>
                    <td style="border: #000 solid 1px;padding:5px;">施工临时用电</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">14</td>
                    <td style="border: #000 solid 1px;padding:5px;">消防安全</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
                <tr style="border: #000 solid 1px;padding:5px;">
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;">15</td>
                    <td style="border: #000 solid 1px;padding:5px;">工区布置</td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="checkbox" name="item1"/></td>
                    <td style="text-align: center;border: #000 solid 1px;padding:5px;"><input type="text"/></td>
                </tr>
            </table>
            <table class="tx1">
                <tr><td>核验意见：<textarea rows="15" style="width:660px;padding:5px;"></textarea><div style="text-align:right;"><br/><br/><input type="text"/>（公章）<br/><br/><br/><br/><input type="text" readonly onclick="laydate();"/>（日期）<br/><br/><br/><br/></div></td></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
