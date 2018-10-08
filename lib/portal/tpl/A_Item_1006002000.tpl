<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-top">
                <tr><td class="k">单位工程名称</td><td class="v"><?php echo From::Text($edit, 'f2', $datas['f2'], 'pae4-text1'); ?></td><td class="k">施工单位</td><td class="v"><?php echo From::Text($edit, 'f3', $datas['f3'], 'pae4-text1'); ?></td></tr>
                <tr><td class="k">单位工程编号</td><td class="v"><?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?></td><td class="k">评定日期</td><td class="v"><?php echo From::Date($edit, 'f4', $datas['f4'], 'pae4-text1'); ?></td></tr>
            </table>
            <table class="a4-tbl-middle" id="facade">
                <tr><th colspan="2">项次</th><th>项目</th><th>标准分</th><th>检查结论<br/>(检测点合格率)</th><th>等级</th><th>得分</th><th>备注</th></tr>
                <?php
                if(!empty($table_structs))
                {
                    for($i = 0; $i<count($table_structs); $i++)
                    {
                ?>
                <tr>
                    <td><?php echo From::Text(false, '', $table_structs[$i][0]); ?></td>
                    <td><?php echo From::Text(false, '', $table_structs[$i][1]); ?></td>
                    <td><?php echo From::Text(false, '', $table_structs[$i][2]); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa1'][$i], 'fa1', 5); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa2'][$i], 'fa2'); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa3'][$i], 'fa3', 5); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa4'][$i], 'fa4', 5); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa5'][$i], 'fa5', 5); ?></td>
                </tr>
                <?php
                    }
                }
                ?>
                <tr><td colspan="8">应得 <?php echo From::Text($edit, 'f26', $datas['f26'], '', 5); ?> 分, 实得 <?php echo From::Text($edit, 'f27', $datas['f27'], '', 5); ?> 分, 得分率 <?php echo From::Text($edit, 'f28', $datas['f28'], '', 5); ?> %, 外观质量为 <?php echo From::Text($edit, 'f29', $datas['f29'], '', 5); ?> 等级.</td></tr>
            </table>
            <table class="a4-tbl-bottom">
                <tr><td rowspan="7">评定组成员</td><td colspan="2">单位名称</td><td>职称</td><td>签名</td></tr>
                <tr><td>项目法人</td><td class="v"><?php echo From::Text($edit, 'f5', $datas['f5'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f6', $datas['f6'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f7', $datas['f7'], 'pae4-text1'); ?></td></tr>
                <tr><td>监理单位</td><td class="v"><?php echo From::Text($edit, 'f8', $datas['f8'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f9', $datas['f9'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f10', $datas['f10'], 'pae4-text1'); ?></td></tr>
                <tr><td>设计单位</td><td class="v"><?php echo From::Text($edit, 'f11', $datas['f11'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f12', $datas['f12'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f13', $datas['f13'], 'pae4-text1'); ?></td></tr>
                <tr><td>施工单位</td><td class="v"><?php echo From::Text($edit, 'f14', $datas['f14'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f15', $datas['f15'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f16', $datas['f16'], 'pae4-text1'); ?></td></tr>
                <tr><td>检测单位</td><td class="v"><?php echo From::Text($edit, 'f17', $datas['f17'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f18', $datas['f18'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f19', $datas['f19'], 'pae4-text1'); ?></td></tr>
                <tr><td>运行管理单位</td><td class="v"><?php echo From::Text($edit, 'f20', $datas['f20'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f21', $datas['f21'], 'pae4-text1'); ?></td><td><?php echo From::Text($edit, 'f22', $datas['f22'], 'pae4-text1'); ?></td></tr>
                <tr><td>质量监督机构</td><td colspan="4"><p>核定意见：<?php  echo From::TextArea($edit, 'f23', $datas['f23'], 'pa4-textarea1', 5); ?></p><br/><br/><p class="text-right">核定人（签字）：<?php echo From::Text($edit, 'f24', $datas['f24'], 'pae4-text1'); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f25', $datas['f25'], 'pae4-text1'); ?></p><br/><br/></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <?php echo From::Hidden('work_id', $work_id); ?>
    <?php echo From::Hidden('node_id', $node_id); ?>
    <?php echo From::Hidden('item_id', $item_id); ?>
</div>
<script>
    function MergeCell(){
        var cols = 3;
        var arr = new Array();
        for(var i=0;i<cols;i++) arr.push(i);
        $('#facade').mergeCell({cols: arr});
    }

    MergeCell();

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