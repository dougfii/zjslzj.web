<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php echo '<a class="tooladd back" href="?m=Work&a=Reply&pass=backed&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核驳回</a><a class="tooladd back" href="?m=Work&a=Reply&pass=success&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核通过</a>'; ?><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-red-caption"><?php echo From::Text(false, '', $work_company); ?>工程建设处文件</div>
            <div class="a4-red-no"><span>文件编号：<?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?></span><span class="right">签发：<?php echo From::Text($edit, 'f2', $datas['f2'], 'pae4-text1'); ?></span></div>
            <div class="a4-red-line"></div>
            <div class="a4-red-title">关于<?php echo From::Text(false, '', $work_name); ?><?php echo $node_name; ?>的申请</div>
            <div class="a4-red-org"><?php echo From::Text(false, '', $work_org); ?>：</div>
            <div class="a4-red-txt">
                <?php
                $txt = !empty($datas['f3']) ? $datas['f3'] : '　　' . $work_company . '工程初步设计及概算已经镇江市发展和改革委员会以《' . $work_company . '工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。';
                echo From::TextArea($edit, 'f3', $txt, 'pa4-textarea1', 30);
                ?>
            </div>
            <div class="a4-red-sign"><span class="right center"><?php echo From::Text(false, '', $work_company); ?>工程建设处<br/>日期：<?php echo From::Date($edit, 'f4', $datas['f4'], 'pae4-text1'); ?></span></div>
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
            UploadWork(1, up_id, up_name);
        });
    });
</script>