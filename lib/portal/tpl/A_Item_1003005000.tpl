<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-top">
                <tr><td class="k">单位工程名称</td><td><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td><td class="k">施工单位</td><td><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td></tr>
                <tr><td class="k">施工期</td><td><?php echo From::Date($edit, 'f3', $datas['f3'], '', 8); ?> 至 <?php echo From::Date($edit, 'f4', $datas['f4'], '', 8); ?></td><td class="k">监理单位</td><td><?php echo From::Text($edit, 'f5', $datas['f5'], ''); ?></td></tr>
            </table>
            <table class="a4-tbl-middle">
                <tr><th>项次</th><th>检验项目</th><th>结构部位</th><th>设计值</th><th>质量要求</th><th>质量评价</th></tr>
                <tbody id="items">
                <?php
                if(!empty($datas['fa1']))
                {
                    for($i = 0; $i<count($datas['fa1']); $i++)
                    {
                ?>
                <tr class="delitem">
                    <td class="item-no"></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa1'][$i], 'fa1', 20); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa2'][$i], 'fa2', 20); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa3'][$i], 'fa3', 5); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa4'][$i], 'fa4', 10); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa5'][$i], 'fa5', 10); ?></td>
                </tr>
                <?php
                    }
                }
                ?>
                </tbody>
            </table>
            <?php if($edit) echo '<div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div>'; ?>
            <table class="a4-tbl-bottom">
                <tr><td class="k" width="70">施工单位<br/>自评意见</td><td><p>检验项目<?php echo From::Text($edit, 'f6', $datas['f6'], '', 8); ?>设计和规范要求，耐久性资料<?php echo From::Text($edit, 'f7', $datas['f7'], '', 8); ?>，单位工程混凝土耐久性能<?php echo From::Text($edit, 'f8', $datas['f8'], '', 8); ?>设计和规范要求。</p><br/><p class="text-right">技术负责人（签字）：<?php echo From::Text($edit, 'f9', $datas['f9'], '', 8); ?>　　项目经理（签字）：<?php echo From::Text($edit, 'f10', $datas['f10'], '', 8); ?><br/><br/>　　　　　　　日期：<?php echo From::Date($edit, 'f11', $datas['f11'], '', 8); ?>　　　　　　　　日期：<?php echo From::Date($edit, 'f12', $datas['f12'], '', 8); ?></p></td></tr>
                <tr><td class="k">监理单位<br/>复核意见</td><td><p>经复核，检验项目<?php echo From::Text($edit, 'f13', $datas['f13'], '', 8); ?>设计和规范要求，耐久性资料<?php echo From::Text($edit, 'f14', $datas['f14'], '', 8); ?>，单位工程混凝土耐久性能<?php echo From::Text($edit, 'f15', $datas['f15'], '', 8); ?>设计和规范要求。</p><br/><p class="text-right">总监理工程师（签字）：<?php echo From::Text($edit, 'f16', $datas['f16'], '', 8); ?>　　　　　　　　日期：<?php echo From::Date($edit, 'f17', $datas['f17'], '', 8); ?></p></td></tr>
                <tr><td class="k">项目法人<br/>认定意见</td><td><p class="text-right">负责人（签字）：<?php echo From::Text($edit, 'f18', $datas['f18'], '', 8); ?>　　　　　　　　日期：<?php echo From::Date($edit, 'f19', $datas['f19'], '', 8); ?></p></td></tr>
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
            $('#items').append('<tr class="delitem"><td class="item-no"></td><td><input type="text" class="fa1" size="20" /></td><td><input type="text" class="fa2" size="20" /></td><td><input type="text" class="fa3" size="5" /></td><td><input type="text" class="fa4" size="10" /></td><td><input type="text" class="fa5" size="10" /></td></tr>');
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