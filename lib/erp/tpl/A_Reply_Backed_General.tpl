<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area">
        <div class="a4-backed-caption">驳回意见</div>
        <div id="print_area">
            <div class="a4-backed-title"><?php echo "关于对{$node_name}的批复"; ?></div>
            <div class="a4-backed-content"><?php echo From::TextArea($edit, 'f1', $datas['f1'], 'pa4-textarea1', 10); ?></div>
        </div>
        <?php if($edit) echo '<div class="a4-backed-buttons"><a href="javascript:;" class="btn" id="backed">审核驳回</a></div>'; ?>
    </div>
    <?php echo From::Hidden('work_id', $work_id); ?>
    <?php echo From::Hidden('node_id', $node_id); ?>
    <?php echo From::Hidden('item_id', $item_id); ?>
    <?php echo From::Hidden('reply_id', $reply_id); ?>
</div>
<script>
    $(function(){
        $('#backed').click(function(){
            $.post('?m=Work&a=OnReply&pass=backed', SetDatas(), function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });
    });
</script>