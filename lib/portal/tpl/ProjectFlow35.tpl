<div class="toolbar">
    <div class="tool clear"><span class="cap">单位工程检验评价 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd back" href="javascript:;">提交</a>'; ?></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">单位工程检验评价</div>
            <table class="tx1">
                <tr><td class="k">单位工程名称</td><td><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">施工单位</td><td><?php if($edit) echo '<input type="text" class="" id="comp" value="' . $comp . '" />'; else echo $comp; ?></td></tr>
                <tr><td class="k">施工期</td><td><input type="text" class="" id="" value="" onclick="laydate();" readonly size="7" />至<input type="text" class="" id="" value="" onclick="laydate();" readonly size="7" /></td><td class="k">监理单位</td><td><input type="text" class="" id="" value="" /></td></tr>
            </table>
            <table class="tx1">
                <thead>
                <tr><td rowspan="3">项次</td><td>检验项目</td><td>结构部位</td><td>设计值</td><td>质量要求</td><td>质量评价</td></tr>
                </thead>
                <tbody id="items">
                </tbody>
            </table>
            <?php if($edit): ?><div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div><?php endif; ?>
            <table class="tx1">
                <tr><th width="33.3%">施工单位自评意见</th><th width="33.3%">监理单位复核意见</th><th width="33.3%">项目法人认定意见</th></tr>
                <tr>
                    <td valign="top">单元工程质量全部合格。单元工程优良率为<input type="text" size="6">%，重要隐蔽单元工程和关键部位单元工程优良率为<input type="text" size="6">%。原材料质量<input type="text" size="6">，中间产品质量<input type="text" size="6">，混凝土（砂浆）试件质量<input type="text" size="6">，金属结构及启闭机制造质量<input type="text" size="6">，水力机械质量<input type="text" size="6">，电气设备质量<input type="text" size="6">，自动化质量<input type="text" size="6">。质量缺陷处理、质量事故检查<input type="text" size="6">。<br/><br/>质量等级：<br/><textarea></textarea><br/>评定人（签字）：<input type="text" size="6"/><br/>项目经理（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
                    <td valign="top">复核意见：<br/><textarea></textarea><br/>质量等级：<br/><textarea></textarea><br/>监理工程师（签字）：<input type="text" size="6"/><br/>总监理工程师（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
                    <td valign="top">认定意见：<br/><textarea></textarea><br/>质量等级：<br/><textarea></textarea><br/>现场代表（签字）：<input type="text" size="6"/><br/>技术负责人（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
                </tr>
            </table>
            <table class="tx1">
                <tr><td class="k" width="70">施工单位<br/>自评意见</td><td class="">检验项目<input type="text" size="6">设计和规范要求，耐久性资料<input type="text" size="6">，单位工程混凝土耐久性能<input type="text" size="6">设计和规范要求。<br/><br/><span class="right">技术负责人（签字）：<input type="text" size="6"/>　　项目经理（签字）：<input type="text" size="6"/><br/>　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" />　　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td></tr>
                <tr><td class="k">监理单位<br/>复核意见</td><td class="">经复核，检验项目<input type="text" size="6">设计和规范要求，耐久性资料<input type="text" size="6"> ，单位工程混凝土耐久性能<input type="text" size="6">设计和规范要求。<br/><br/><span class="right">总监理工程师（签字）：<input type="text" size="6"/>　　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" /></td></tr>
                <tr><td class="k">项目法人<br/>认定意见</td><td class=""><br/><br/><span class="right">负责人（签字）：<input type="text" size="6"/>　　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" /></td></tr>
            </table>
            <input type="hidden" id="id"/>
            <input type="hidden" id="rand"/>
            <input type="hidden" id="cols" value="0"/>
    </div>
</div>
    <script>
        $(function(){
            $('#additem').click(function(){
                $('#items').append('<tr class="delitem"><td class="c item0"></td><td><input type="text" class="item1" size="15"/></td><td><input type="text" class="item1" size="15"/></td><td><input type="text" class="item1" size="6"/></td><td><input type="text" class="item1" size="6"/></td><td><input type="text" class="item1" size="6"/></td></tr>');
                serials();
            });

            $('#items').on('dblclick', '.delitem', function(){
                var obj = $(this);
                layer.confirm('您确认需要删除当前条目吗?', function (i){
                    layer.close(i);
                    obj.remove();
                    serials();
                });
            });

            function serials(){
                $.each($('.item0'), function(i, n){
                    $(this).html(i+1);
                });
            }
        });
    </script>