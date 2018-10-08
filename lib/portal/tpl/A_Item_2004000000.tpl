<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <div><?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?>：</div>
            <br/><br/>
            <div>　　<?php echo From::Text($edit, 'f2', $datas['f2'], 'pae4-text1'); ?> 工程即将完工，按照《江苏省水利工程建设安全监督工作指导意见》的要求，对本工程参建单位安全行为的评估已经结束，现申请办理完工安全评价手续。</div>
            <br/><br/><br/><br/>
            <div>联 系 人：<?php echo From::Text($edit, 'f3', $datas['f3'], 'pae4-text1'); ?></div>
            <br/>
            <div>联系电话：<?php echo From::Text($edit, 'f4', $datas['f4'], 'pae4-text1'); ?></div>
            <br/>
            <div>传　　真：<?php echo From::Text($edit, 'f5', $datas['f5'], 'pae4-text1'); ?></div>
            <br/>
            <div>电子邮件：<?php echo From::Text($edit, 'f6', $datas['f6'], 'pae4-text1'); ?></div>
            <br/>
            <div>单位地址：<?php echo From::Text($edit, 'f7', $datas['f7'], 'pae4-text1'); ?></div>
            <br/>
            <div>邮政编码：<?php echo From::Text($edit, 'f8', $datas['f8'], 'pae4-text1'); ?></div>
            <br/><br/><br/><br/><br/><br/>
            <div class="text-right">
                <div>申请单位：<?php echo From::Text($edit, 'f9', $datas['f9'], 'pae4-text1'); ?>（盖章）</div>
                <br/><br/>
                <div>申请日期：<?php echo From::Text($edit, 'f10', $datas['f10'], 'pae4-text1'); ?>　　　　</div>
            </div>
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