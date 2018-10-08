<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php echo '<a class="tooladd back" href="?m=Work&a=Reply&pass=backed&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核驳回</a><a class="tooladd back" href="?m=Work&a=Reply&pass=success&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核通过</a>'; ?><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-top">
                <tr><td class="k">单位工程名称</td><td><?php echo From::Text($edit, 'f6', $datas['f6'], ''); ?></td><td class="k">单位工程编号</td><td><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td></tr>
                <tr><td class="k">分部工程名称</td><td><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td><td class="k">分部工程编号</td><td><?php echo From::Text($edit, 'f4', $datas['f4'], ''); ?></td></tr>
                <tr><td class="k">单元工程名称、部位</td><td><?php echo From::Text($edit, 'f5', $datas['f5'], ''); ?></td><td class="k">单元工程编号</td><td><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td></tr>
            </table>
            <table class="a4-tbl-middle">
                <tr><th colspan="4">安监机构评价记录</th></tr>
                <tr><th>序号</th><th>工序名称</th><th>表号</th><th>工序质量等级</th></tr>
                <tbody id="items">
                <?php
                if(!empty($datas['fa1']))
                {
                    for($i = 0; $i<count($datas['fa1']); $i++)
                    {
                ?>
                <tr class="delitem">
                    <td class="item-no"></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa1'][$i], 'fa1', 50); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa2'][$i], 'fa2', 15); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa3'][$i], 'fa3', 15); ?></td>
                </tr>
                <?php
                    }
                }
                ?>
                </tbody>
            </table>
            <?php if($edit) echo '<div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div>'; ?>
            <table class="a4-tbl-bottom">
                <tr><td class="k" width="60">施工单位<br/>自评意见</td><td>各工序质量全部合格，工序优良率<?php echo From::Text($edit, 'f7', $datas['f7'], '', 5); ?>%，主要工序为<?php echo From::Text($edit, 'f8', $datas['f8'], '', 5); ?>等级。<br/><br/>单元工程质量等级评定为：<br/><?php echo From::TextArea($edit, 'f11', $datas['f11'], '', 5, 80); ?><br/><br/><p class="text-right">专职质检员（签字）：<?php echo From::Text($edit, 'f13', $datas['f13'], '', 8); ?>　　技术负责人（盖公章）：<?php echo From::Text($edit, 'f15', $datas['f15'], '', 5); ?>　　项目经理（盖公章）：<?php echo From::Text($edit, 'f16', $datas['f16'], '', 5); ?><br/><br/>　　　　　 日期：<?php echo From::Date($edit, 'f17', $datas['f17'], '', 7); ?>　　　　　　　　　日期：<?php echo From::Date($edit, 'f18', $datas['f18'], '', 7); ?>　　　　　　　　日期：<?php echo From::Date($edit, 'f19', $datas['f19'], '', 7); ?><br/><br/></p></tr>
                <tr><td class="k" width="60">监理单位<br/>复核意见</td><td>经抽查并查验相关检验报告和检验资料，各工序质量全部合格，工序优良率为<?php echo From::Text($edit, 'f9', $datas['f9'], '', 5); ?>%，主要工序为<?php echo From::Text($edit, 'f10', $datas['f10'], '', 5); ?>等级。<br/><br/>单元工程质量等级评定为：<br/><?php echo From::TextArea($edit, 'f12', $datas['f12'], '', 5, 80); ?><br/><br/><p class="text-right">监理工程师（签字）：<?php echo From::Text($edit, 'f14', $datas['f14'], '', 8); ?>　　　　日期：<?php echo From::Date($edit, 'f20', $datas['f20'], '', 7); ?><br/><br/></p></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <?php echo From::Hidden('work_id', $work_id); ?>
    <?php echo From::Hidden('node_id', $node_id); ?>
    <?php echo From::Hidden('item_id', $item_id); ?>
</div>
<script>
    $(function(){
        serials('.item-no');

        $('#additem').click(function(){
            $('#items').append('<tr class="delitem"><td class="item-no"></td><td><input type="text" class="fa1" size="50" /></td><td><input type="text" class="fa2" size="15" /></td><td><input type="text" class="fa3" size="15" /></td></tr>');
            serials('.item-no');
        });

        $('#items').on('dblclick', '.delitem', function(){
            var obj = $(this);
            layer.confirm('您确认需要删除当前条目吗?', function (i){
                layer.close(i);
                obj.remove();
            });
            serials('.item-no');
        });

        $('#save').click(function(){
            $.post('?m=Work&a=OnItem&event=save', SetDatas(), function (ret){if(ret.code==1)layer.msg('保存成功', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('#commit').click(function(){
            $.post('?m=Work&a=OnItem&event=commit', SetDatas(), function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        SetWorkAttachment('<?php echo $attstr; ?>');

        $('.upfile').change(function(){
            let up_id = $(this).attr('up_id');
            let up_name = $(this).attr('up_name');
            UploadWork(2, up_id, up_name);
        });
    });
</script>