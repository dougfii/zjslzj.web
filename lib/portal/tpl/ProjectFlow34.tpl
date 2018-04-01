<div class="toolbar">
    <div class="tool clear"><span class="cap">单元工程质量评定表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd back" href="javascript:;">提交</a>'; ?></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">单元工程质量评定表</div>
            <table class="tx1">
                <tr><td class="k">单位工程名称</td><td><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">单位工程编号</td><td><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">分部工程名称</td><td><input type="text" /></td><td class="k">分部工程编号</td><td><input type="text" /></td></tr>
                <tr><td class="k">单元工程名称、部位</td><td><input type="text" /></td><td class="k">单元工程编号</td><td><input type="text" /></td></tr>
            </table>
            <div id="checkbox"><?php echo $tables; ?></div>
            <?php if($edit): ?><div><input type="button" id="edititems" value="编辑项目"/></div><?php endif; ?>
            <table class="tx1">
                <tr><td class="k" width="60">施工单位<br/>自评意见</td><td>检查项目全部符合质量要求，主控检测项目逐项检测点合格率为<input type="text" size="6" />%，一般检测项目检测点最低合格率为<input type="text" size="6" />%。<br/><br/>单元工程质量等级评定为：<br/><textarea rows="5" cols="80"></textarea><br/><br/><span class="right">专职质检员（签字）：<input type="text" size="4" />　　技术负责人（盖公章）：<input type="text" size="4" />　　项目经理（盖公章）：<input type="text" size="4" /><br/>　　　　　 日期：<input type="text" onclick="laydate();" readonly size="6" />　　　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" />　　　　　　　　日期：<input type="text" onclick="laydate();" readonly size="6" /></span></tr>
                <tr><td class="k">监理单位<br/>复核意见</td><td>经抽查并查验相关检验报告和检验资料，检查项目全部符合质量要求，主控检测项目逐项检测点合格率为<input type="text" size="6" />%，一般检测项目检测点最低合格率为<input type="text" size="6" />%。<br/><br/>单元工程质量等级评定为：<br/><textarea rows="5" cols="80"></textarea><br/><br/><span class="right">监理工程师（签字）：<input type="text" size="4" />　　　　日期：<input type="text" onclick="laydate();" readonly size="6" /></span></tr>
            </table>
            <input type="hidden" id="id"/>
            <input type="hidden" id="rand"/>
            <input type="hidden" id="cols" value="0"/>
    </div>
</div>

<script>
    $(function(){

        $('#edititems').click(function(){layer.pop('?m=Project&a=PopCheckItemsEdit&id=3','编辑项目');});

        var cols = <?php echo $cols; ?>;
        var arr = new Array();
        for(var i=0;i<cols;i++) arr.push(i);
        $('#check').mergeCell({cols: arr});
    });

    var rand = '';
    function checkchange(){
        if($('#rand').val() != rand){
            rand = $('#rand').val();
            var cols = parseInt($('#cols').val());
            var arr = new Array();
            for(var i=0;i<=cols;i++) arr.push(i);
            $('#checkbox table').mergeCell({cols: arr});
        }
    }
    setInterval('checkchange()',500);
</script>
