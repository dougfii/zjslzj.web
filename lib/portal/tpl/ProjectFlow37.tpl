<div class="toolbar">
    <div class="tool clear"><span class="cap">工序单元工程质量评表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd back" href="javascript:;">提交</a>'; ?></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">工序单元工程质量评表</div>
            <table class="tx1">
                <tr><td class="k">单位工程名称</td><td><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">单位工程编号</td><td><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">分部工程名称</td><td><input type="text" /></td><td class="k">分部工程编号</td><td><input type="text" /></td></tr>
                <tr><td class="k">单元工程名称、部位</td><td><input type="text" /></td><td class="k">单元工程编号</td><td><input type="text" /></td></tr>
            </table>
            <table class="tx1">
                <thead>
                <tr><td colspan="5">安监机构评价记录</td></tr>
                <tr><td>序号</td><td>工序名称</td><td>表号</td><td>工序质量等级</td></tr>
                </thead>
                <tbody id="items">
                <?php
                 if(!empty($items))
                 {
                    foreach($items as $k=>$v){
                            echo '<tr class="delitem"><td class="c item0">' . ($k+1) . '</td><td class="c">';
                            echo $edit ? '<input type="text" class="item1" value="' . $v[0] . '"/>' : $v[0];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" class="item2" value="' . $v[1] . '" />' : $v[1];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" class="item3" value="' . $v[2] . '"/>' : $v[2];
                            echo '</td></tr>';
                        }
                    }
                ?>
                </tbody>
            </table>
            <?php if($edit): ?><div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div><?php endif; ?>
            <table class="tx1">
                <tr>
                    <td class="k" width="60">施工单位<br/>自评意见</td>
                    <td>各工序质量全部合格，工序优良率<input type="text" size="6" />%，主要工序为<input type="text" size="6" />等级。<br/><br/>单元工程质量等级评定为：<br/><textarea rows="5" cols="80"></textarea><br/><br/><span class="right">专职质检员（签字）：<input type="text" size="4" />　　技术负责人（盖公章）：<input type="text" size="4" />　　项目经理（盖公章）：<input type="text" size="4" /><br/>　　　　　 日期：<input type="text" onclick="laydate();" readonly size="6" />　　　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" />　　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" /></span>
                </tr>
                <tr>
                    <td class="k">监理单位<br/>复核意见</td>
                    <td>经抽查并查验相关检验报告和检验资料，各工序质量全部合格，工序优良率为<input type="text" size="6" />%，主要工序为<input type="text" size="6" />等级。<br/><br/>单元工程质量等级评定为：<br/><textarea rows="5" cols="80"></textarea><br/><br/><span class="right">监理工程师（签字）：<input type="text" size="4" />　　　　日期：<input type="text" onclick="laydate();" readonly size="6" /></span>
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
            $('#items').append('<tr class="delitem"><td class="c item0"></td><td class="c"><input type="text" class="item1" /></td><td class="c"><input type="text" class="item2"/></td><td class="c"><input type="text" class="item3"/></td></tr>');
            serials();
        });

        function serials(){
            $.each($('.item0'), function(i, n){
                $(this).html(i+1);
            });
        }

        $('#items').on('dblclick', '.delitem', function(){
            var obj = $(this);
            layer.confirm('您确认需要删除当前条目吗?', function (i){
                layer.close(i);
                obj.remove();
                serials();
            });
        });
    });
</script>
