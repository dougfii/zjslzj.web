<div class="toolbar">
    <div class="tool clear"><span class="cap">工程项目质量评定 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd back" href="javascript:;">提交</a>'; ?></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">工程项目质量评定</div>
            <table class="tx1">
                <tr><td class="k">工程项目名称</td><td><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">项目法人</td><td><input type="text"/></td></tr>
                <tr><td class="k">工程等级</td><td><input type="text"/></td><td class="k">设计单位</td><td><input type="text"/></td></tr>
                <tr><td class="k">建设地点</td><td><input type="text"/></td><td class="k">监理单位</td><td><input type="text"/></td></tr>
                <tr><td class="k">主要工程量</td><td><input type="text"/></td><td class="k">施工单位</td><td><input type="text"/></td></tr>
                <tr><td class="k">开工日期、竣工日期</td><td><input type="text" class="" id="" value="" onclick="laydate();" readonly size="7" />、<input type="text" class="" id="" value="" onclick="laydate();" readonly size="7" /></td><td class="k">评定日期</td><td><input type="text" class="" id="" value="" onclick="laydate();" readonly size="7" /></td></tr>
            </table>
            <table class="tx1">
                <thead>
                <tr><td rowspan="2">项次</td><td rowspan="2">单位工程名称</td><td colspan="3">单元工程质量统计</td><td colspan="3">分部工程质量统计</td><td rowspan="2">单位工程质量等级</td></tr>
                <tr><td>个数</td><td>其中优良数</td><td>优良率</td><td>个数</td><td>其中优良数</td><td>优良率</td></tr>
                </thead>
                <tbody id="items">
                </tbody>
            </table>
            <?php if($edit): ?><div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div><?php endif; ?>
            <table class="tx1">
                <tr><td colspan="2">单位工程共<input type="text" size="6"/>个，质量全部合格，其中优良单位工程<input type="text" size="6"/>个，优良率<input type="text" size="6"/>%，主要单位工程优良率<input type="text" size="6"/>%。</td></tr>
                <tr><td>工程施工期和初期运行阶段的试验、观测、运行、监测等分析成果</td><td><textarea rows="6" cols="80"></textarea></td></tr>
            </table>
            <table class="tx1">
                <tr><th width="50%">监理单位意见</th><th width="50%">项目法人意见</th></tr>
                <tr>
                    <td valign="top">工程项目质量等级：<br/><textarea rows="5" cols="45"></textarea><br/><br/>监理工程师（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
                    <td valign="top">工程项目质量等级：<br/><textarea rows="5" cols="45"></textarea><br/><br/>法定代表人（签字）：<input type="text" size="6"/><span class="right"><br/><br/>（盖公章）<br/><br/>日期：<input type="text" onclick="laydate();" readonly size="6" /></span></td>
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
                $('#items').append('<tr class="delitem"><td class="c item0"></td><td><input type="text" class="item1" size="19"/></td><td><input type="text" class="item1" size="4"/></td><td><input type="text" class="item1" size="4"/></td><td><input type="text" class="item1" size="4"/></td><td><input type="text" class="item1" size="4"/></td><td><input type="text" class="item1" size="4"/></td><td><input type="text" class="item1" size="4"/></td><td><input type="text" class="item1" size="4"/></td></tr>');
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