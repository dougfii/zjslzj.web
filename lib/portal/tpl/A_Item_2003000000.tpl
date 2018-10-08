<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-full">
                <tr><td class="k">项目及标段名称</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v"><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">完工日期</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td></tr>
                <tr><td class="k">参建单位</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f4', $datas['f4'], ''); ?></td></tr>
                <tr><td class="k">主要工作内容</td><td class="v" colspan="3"><?php  echo From::TextArea($edit, 'f5', $datas['f5'], '', 10, 80); ?></td></tr>
                <tr><td class="v" colspan="4">
                        工程安全生产或安全行为自我总结：<br/>
                        <?php  echo From::TextArea($edit, 'f6', $datas['f6'], '', 20, 95); ?>
                        <br/><br/>
                        <p class="text-right">中标单位（公章）：<?php echo From::Text($edit, 'f7', $datas['f7'], ''); ?><br/><br/>日期：<?php echo From::Date($edit, 'f8', $datas['f8'], ''); ?></p>
                        <br/><br/><br/><br/>
                        项目法人评估意见：<br/>
                        <?php  echo From::TextArea($edit, 'f9', $datas['f9'], '', 20, 95); ?>
                        <br/><br/>
                        <p class="text-right">项目法人（公章）：<?php echo From::Text($edit, 'f10', $datas['f10'], ''); ?><br/><br/>日期：<?php echo From::Date($edit, 'f11', $datas['f11'], ''); ?></p>
                        <br/><br/>
                    </td></tr>
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