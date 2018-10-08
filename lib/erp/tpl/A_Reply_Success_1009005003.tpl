<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area">
        <div class="a4-success-caption">通过意见</div>
        <div class="a4-success-content" id="print_area">
            <br/>
            <div class="text-right"><?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?> 工程 <?php echo From::Text($edit, 'f2', $datas['f2'], 'pae4-text1'); ?> 阶段（竣工）验收</div>
            <br/><br/><br/><br/>
            <div class="pa4-title1">质 量 评 价 意 见</div>
            <br/><br/><br/><br/>
            <div class="center">编　　制：<?php echo From::Text($edit, 'f3', $datas['f3'], 'pae4-text1'); ?>（签名）</div>
            <br/>
            <div class="center">　　　　　<?php echo From::Text($edit, 'f4', $datas['f4'], 'pae4-text1', '', '质量监督员证书号'); ?>　　　　</div>
            <br/><br/>
            <div class="center">审　　定：<?php echo From::Text($edit, 'f5', $datas['f5'], 'pae4-text1'); ?>（签名）</div>
            <br/>
            <div class="center">　　　　　<?php echo From::Text($edit, 'f6', $datas['f6'], 'pae4-text1', '', '质量监督员证书号'); ?>　　　　</div>
            <br/><br/><br/><br/>
            <div class="text-right">工程质量监督机构名称（盖公章）<br/><?php echo From::Text($edit, 'f7', $datas['f7'], 'pae4-text1'); ?></div>
            <br/><br/>
            <div class="text-right">日期：<?php echo From::Date($edit, 'f8', $datas['f8'], 'pae4-text1'); ?></div>
            <br/><br/><br/><br/><br/><br/>
            <div class="">一、工程概况</div>
            <div class=""><?php echo From::TextArea($edit, 'f9', $datas['f9'], 'pa4-textarea1', 5, 95, '（工程批复过程、批复文号、概算投资，批准的主要工程内容，验收范围及其完成情况）'); ?></div>
            <br/>
            <div class="">二、质量监督情况</div>
            <div class=""><?php echo From::TextArea($edit, 'f10', $datas['f10'], 'pa4-textarea1', 5, 95, '（质量监督的组织形式、工作方式、工作开展情况）'); ?></div>
            <br/>
            <div class="">三、项目划分情况</div>
            <div class=""><?php echo From::TextArea($edit, 'f11', $datas['f11'], 'pa4-textarea1', 5, 95, '（总体项目划分和具体项目划分及验收内容项目划分）'); ?></div>
            <br/>
            <div class="">四、质量数据分析</div>
            <div class=""><?php echo From::TextArea($edit, 'f12', $datas['f12'], 'pa4-textarea1', 5, 95, '（扼要说明施工单位自检，监理单位见证取样送检、平行检测和跟踪检测情况，详述项目法人委托检测单位检测情况，质量监督检测情况））'); ?></div>
            <br/>
            <div class="">五、质量事故和缺陷处理情况</div>
            <div class=""><?php echo From::TextArea($edit, 'f13', $datas['f13'], 'pa4-textarea1', 5, 95); ?></div>
            <br/>
            <div class="">六、遗留问题的说明</div>
            <div class=""><?php echo From::TextArea($edit, 'f14', $datas['f14'], 'pa4-textarea1', 5, 95); ?></div>
            <br/>
            <div class="">七、质量评价意见</div>
            <div class=""><?php echo From::TextArea($edit, 'f15', $datas['f15'], 'pa4-textarea1', 5, 95); ?></div>
            <br/>
            <div class="">八、建议</div>
            <div class=""><?php echo From::TextArea($edit, 'f16', $datas['f16'], 'pa4-textarea1', 5, 95); ?></div>
            <br/>
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
            UploadWork(2, up_id, up_name);
        });
    });
</script>
