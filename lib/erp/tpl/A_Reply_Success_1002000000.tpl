<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area">
        <div class="a4-success-caption">通过意见</div>
        <div class="a4-success-options">
            <?php echo From::Checkbox($edit, 'f5', $datas['f5'], '质量评定表'); ?>　　
            <?php echo From::Checkbox($edit, 'f6', $datas['f6'], '质量监督检查意见表'); ?>　　
            <?php echo From::Checkbox($edit, 'f7', $datas['f7'], '工程核备资料'); ?>　　
            <?php echo From::Checkbox($edit, 'f8', $datas['f8'], '工程核定资料'); ?>　　
            <br/>
            <?php echo From::Checkbox($edit, 'f9', $datas['f9'], '工程备案资料'); ?>　　
            <?php echo From::Checkbox($edit, 'f10', $datas['f10'], '工程进度结点申报'); ?>　　
            <?php echo From::Checkbox($edit, 'f11', $datas['f11'], '工程验收'); ?>　　
        </div>
        <div class="a4-success-content" id="print_area">
            <div class="a4-red-caption"><?php echo From::Text(false, '', $work_org); ?></div>
            <div class="a4-red-no center">镇水质监<?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?>号</div>
            <div class="a4-red-line"></div>
            <div class="a4-red-title">关于对<?php echo From::Text(false, '', $work_name); ?><?php echo $node_name; ?>的批复</div>
            <div class="a4-red-org"><?php echo From::Text(false, '', $work_company); ?>：</div>
            <div class="a4-red-txt">
                <?php
                $txt = !empty($datas['f3']) ? $datas['f3'] : '　　你单位《关于' . $work_name . '工程项目划分的申请》（XXXX［XXXX］XX号）文收悉。依据相关规范、规程及施工图等资料，经研究，提出确认意见如下：';
                echo From::TextArea($edit, 'f3', $txt, 'pa4-textarea1', 30);
                ?>
            </div>
            <div class="a4-red-sign"><span class="right center"><?php echo From::Text(false, '', $work_org); ?>工程建设处<br/>日期：<?php echo From::Date($edit, 'f4', $datas['f4'], 'pae4-text1'); ?></span></div>
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

        $('.atts').on( 'click', '.upd', function(){
            var id=$(this).attr('did');
            layer.confirm('您确认需要删除吗?\n此操作不可恢复!', function(i){layer.close(i);$.post('?m=Project&a=OnUpFlowDelete', {id:id}, function(ret){if(ret.code==1)$('#atta'+id).remove();else layer.msg(ret.msg, 2, -1);}, 'json');});
        });

        SetWorkAttachment('<?php echo $attstr; ?>');

        $('.upfile').change(function(){
            let up_id = $(this).attr('up_id');
            let up_name = $(this).attr('up_name');
            UploadWork(2, up_id, up_name);
        });
    });
</script>
