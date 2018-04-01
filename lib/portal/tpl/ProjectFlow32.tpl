<div class="toolbar">
    <div class="tool clear"><span class="cap">单位工程（含子单位工程）质量评定 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd back" href="javascript:;">提交</a>'; ?></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">单位工程（含子单位工程）质量评定</div>
            <table class="tx1">
                <tr><td class="k">工程项目名称</td><td><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">施工单位</td><td><?php if($edit) echo '<input type="text" class="" id="comp" value="' . $comp . '" />'; else echo $comp; ?></td></tr>
                <tr><td class="k">单位工程名称</td><td><input type="text" class="" id="" value="" /></td><td class="k">施工期</td><td><input type="text" class="" id="" value="" onclick="laydate();" readonly size="7" />至<input type="text" class="" id="" value="" onclick="laydate();" readonly size="7" /></td></tr>
                <tr><td class="k">单位工程编号</td><td><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="k">评定日期</td><td><?php if($edit) echo '<input type="text" class="" id="date_ping" value="' . $date_ping . '" onclick="laydate();" readonly size="7" />'; else echo $date_ping; ?></td></tr>
            </table>
            <table class="tx1">
                <tr><th>序号</th><th>子单位工程名称</th><th>质量等级</th><th>序号</th><th>子单位工程名称</th><th>质量等级</tr>
                <tr><td class="k">1</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td><td class="k">2</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td></tr>
                <tr><td class="k">3</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td><td class="k">4</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td></tr>
                <tr><td class="k">5</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td><td class="k">6</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td></tr>
                <tr><td class="k">7</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td><td class="k">8</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td></tr>
                <tr><td class="k">9</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td><td class="k">10</td><td><input type="text" class="" id="" value="" /></td><td><input type="text" class="" id="" value="" size="6" /></td></tr>
                <tr><td colspan="6">子单位工程共<input type="text" class="" id="" value="" size="4" />个，全部合格，其中优良<input type="text" class="" id="" value="" size="4" />个，优良率<input type="text" class="" id="" value="" size="4" />%，主要子单位工程优良率<input type="text" class="" id="" value="" size="4" />%。</td></tr>
                <tr><td>外观质量</td><td colspan="5">应得<input type="text" class="" id="" value="" size="4" />分，实得<input type="text" class="" id="" value="" size="4" />分，得分率<input type="text" class="" id="" value="" size="4" />%，外观质量为<input type="text" class="" id="" value="" size="4" />等级。</td></tr>
            </table>
            <table class="tx1">
                <tbody id="items">
                </tbody>
            </table>
            <?php if($edit): ?><div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div><?php endif; ?>
            <table class="tx1">
                <tr><th>施工单位自评意见</th><th>监理单位复核意见</th><th>项目法人认定意见</th></tr>
                <tr>
                    <td>自评意见：<br/><textarea></textarea><br/>质量等级：<br/><textarea></textarea><br/>评定人（签字）：<input type="text" size="6"/><br/>项目经理（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
                    <td>复核意见：<br/><textarea></textarea><br/>质量等级：<br/><textarea></textarea><br/>复核人（签字）：<input type="text" size="6"/><br/>总监理工程师（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
                    <td>认定意见：<br/><textarea></textarea><br/>质量等级：<br/><textarea></textarea><br/>认定人（签字）：<input type="text" size="6"/><br/>单位负责人（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
                </tr>
            </table>
            <input type="hidden" id="id"/>
            <input type="hidden" id="rand"/>
            <input type="hidden" id="cols" value="0"/>
    </div>
</div>
    <script>
        $(function(){
            $('#additem').click(function(){
                $('#items').append('<tr class="delitem"><td><input type="text" class="item0" size="10"/></td><td><input type="text" class="item1" size="70"/></td></tr>');
            });

            $('#items').on('dblclick', '.delitem', function(){
                var obj = $(this);
                layer.confirm('您确认需要删除当前条目吗?', function (i){
                    layer.close(i);
                    obj.remove();
                });
            });
        });
    </script>