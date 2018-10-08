<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php echo '<a class="tooladd back" href="?m=Work&a=Reply&pass=backed&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核驳回</a><a class="tooladd back" href="?m=Work&a=Reply&pass=success&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核通过</a>'; ?><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-top">
                <tr><td class="k">单位工程名称</td><td><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">项目法人</td><td><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td></tr>
                <tr><td class="k">单位工程编号</td><td><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td><td class="k">核备时间</td><td><?php echo From::Date($edit, 'f4', $datas['f4'], ''); ?></td></tr>
            </table>
            <table class="a4-tbl-middle">
                <tr><th rowspan="2">序号</th><th rowspan="2">分部工程名称与编号</th><th colspan="2">核定等级</th></tr>
                <tr><th>优良</th><th>合格</th></tr>
                <tbody id="items">
                <?php
                if(!empty($datas['fa1']))
                {
                    for($i = 0; $i<count($datas['fa1']); $i++)
                    {
                ?>
                <tr class="delitem">
                    <td class="item-no"></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa1'][$i], 'fa1', 60); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa2'][$i], 'fa2', 10); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa3'][$i], 'fa3', 10); ?></td>
                </tr>
                <?php
                    }
                }
                ?>
                </tbody>
                <tr><td colspan="4">分部工程共<?php echo From::Text($edit, 'f14', $datas['f14'], '', 5); ?>个，其中优良<?php echo From::Text($edit, 'f15', $datas['f15'], '', 5); ?>个，优良率<?php echo From::Text($edit, 'f16', $datas['f16'], '', 5); ?>%，主要分部工程优良率<?php echo From::Text($edit, 'f17', $datas['f17'], '', 5); ?>%，外观工程质量得分<?php echo From::Text($edit, 'f18', $datas['f18'], '', 5); ?>，单位工程质量等级<?php echo From::Text($edit, 'f19', $datas['f197'], '', 5); ?> 。</td></tr>
            </table>
            <?php if($edit) echo '<div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div>'; ?>
            <table class="a4-tbl-bottom">
                <tr>
                    <td><p>监理单位意见：<br/><?php echo From::TextArea($edit, 'f5', $datas['f5'], '', 5, 45); ?></p><br/><br/><p class="text-right">总监理工程师（签字）：<?php echo From::Text($edit, 'f7', $datas['f7'], '', 8); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f9', $datas['f9'], '', 8); ?><br/><br/></p></td>
                    <td><p>项目法人意见：<br/><?php echo From::TextArea($edit, 'f6', $datas['f6'], '', 5, 45); ?></p><br/><br/><p class="text-right">技术负责人（签字）：<?php echo From::Text($edit, 'f8', $datas['f8'], '', 8); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f10', $datas['f10'], '', 8); ?><br/><br/></p></td></tr>
                <tr><td colspan="2"><p>质量监督机构核备意见：<br/><br/><?php echo From::TextArea($edit, 'f11', $datas['f11'], '', 5, 95); ?></p><br/><br/><p class="text-right">核备人（签字）：<?php echo From::Text($edit, 'f12', $datas['f12'], '', 8); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f13', $datas['f13'], '', 8); ?><br/><br/></p></td></tr>
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
            $('#items').append('<tr class="delitem"><td class="item-no"></td><td><input type="text" class="fa1" size="60" /></td><td><input type="text" class="fa2" size="10" /></td><td><input type="text" class="fa3" size="10" /></td></tr>');
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
            UploadWork(1, up_id, up_name);
        });
    });
</script>