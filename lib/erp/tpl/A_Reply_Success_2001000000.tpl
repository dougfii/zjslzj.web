<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area">
        <div class="a4-success-caption">通过意见</div>
        <div class="a4-success-content" id="print_area">
            <div class="a4-red-title">水利工程建设安全监督通知书</div>
            <div><?php echo From::Text(false, '', $work_company); ?>：</div>
            <br/><br/>
            <div>　　根据你单位的申请，按照《江苏省水利工程建设安全监督工作指导意见》对 <?php echo From::Text(false, '', $work_name); ?> 工程进行安全监督。本项目监督负责人为 <?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?>。</div>
            <br/>
            <div>　　现将该工程安全监督计划发给你们，请按监督计划配合安全监督工作顺利进行。</div>
            <br/><br/>
            <div>　　特此通知。</div>
            <br/><br/><br/><br/><br/><br/><br/><br/>
            <div class="text-right">
                <?php echo From::Text(false, '', $work_org); ?>
                <br/><br/><br/><br/>
                申请日期：<?php echo From::Date($edit, 'f2', $datas['f2'], 'pae4-text1'); ?>
            </div>
            <br/><br/><br/><br/>
            <?php echo $atts; ?>
        </div>
        <?php if($edit) echo '<div class="a4-success-buttons"><a href="javascript:;" class="btn" id="success">审核通过</a></div>'; ?>
    </div>
    <?php echo From::Hidden('work_id', $work_id); ?>
    <?php echo From::Hidden('node_id', $node_id); ?>
    <?php echo From::Hidden('item_id', $item_id); ?>
    <?php echo From::Hidden('reply_id', $reply_id); ?>
</div>
<script>
    $(function(){
        $('#success').click(function(){
            $.post('?m=Work&a=OnReply&pass=success', SetDatas(), function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        SetWorkAttachment('<?php echo $attstr; ?>');

        $('.upfile').change(function(){
            let up_id = $(this).attr('up_id');
            let up_name = $(this).attr('up_name');
            UploadWork(1, up_id, up_name);
        });
    });
</script>
