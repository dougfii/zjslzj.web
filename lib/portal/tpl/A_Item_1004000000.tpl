<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-full">
                <tr><td class="k">工程名称</td><td class="v"><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">检查表编号</td><td class="v"><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td></tr>
                <tr><td>质量监督人员和证号</td><td><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td><td class="k">检查时间</td><td class="v"><?php echo From::Date($edit, 'f4', $datas['f4'], ''); ?></td></tr>
                <tr><td>参建单位人员</td><td colspan="3"><?php echo From::Text($edit, 'f5', $datas['f5'], ''); ?></td></tr>
                <tr><td>工程形象进度</td><td colspan="3"><?php echo From::Text($edit, 'f6', $datas['f6'], ''); ?></td></tr>
                <tr><td colspan="4">监督检查意见：<br/><?php echo From::TextArea($edit, 'f7', $datas['f7'], '', 10, 95); ?></td></tr>
                <tr>
                    <td colspan="2" class="text-right"><br/><br/>被检查单位签收人：<?php echo From::Text($edit, 'f8', $datas['f8'], ''); ?><br/><br/>日期：<?php echo From::Date($edit, 'f9', $datas['f9'], ''); ?><br/><br/></td>
                    <td colspan="2" class="text-right"><br/><br/>填写人：<?php echo From::Text($edit, 'f10', $datas['f10'], ''); ?><br/><br/>日期：<?php echo From::Date($edit, 'f11', $datas['f11'], ''); ?><br/><br/></td>
                </tr>
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
            $('#items').append('<tr class="delitem"><td class="item-no"></td><td><input type="text" class="fa1" size="60" /></td><td><input type="text" class="fa2" size="5" /></td><td><input type="text" class="fa3" size="5" /></td></td></tr>');
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