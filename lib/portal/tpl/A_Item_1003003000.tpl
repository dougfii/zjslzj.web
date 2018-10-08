<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-top">
                <tr><td class="k">工程项目名称</td><td><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">施工单位</td><td><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td></tr>
                <tr><td class="k">单位工程名称</td><td><?php echo From::Text($edit, 'f4', $datas['f4'], ''); ?></td><td class="k">施工期</td><td><?php echo From::Date($edit, 'f5', $datas['f5'], '', 8); ?> 至 <?php echo From::Date($edit, 'f6', $datas['f6'], '', 8); ?></td></tr>
                <tr><td class="k">单位工程编号</td><td><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td></td><td class="k">评定日期</td><td><?php echo From::Date($edit, 'f7', $datas['f7'], '', 8); ?></td></tr>
            </table>
            <table class="a4-tbl-middle">
                <tr><th>序号</th><th>单元工程种类</th><th>单元工程数</th><th>合格数</th><th>其中优良数</th><th>优良率</th><th>备注</th></tr>
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
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa2'][$i], 'fa2', 5); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa3'][$i], 'fa3', 5); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa4'][$i], 'fa4', 5); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa5'][$i], 'fa5', 10); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa6'][$i], 'fa6', 10); ?></td>
                </tr>
                <?php
                    }
                }
                ?>
                </tbody>
            </table>
            <?php if($edit) echo '<div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div>'; ?>
            <table class="a4-tbl-bottom">
                <tr><th>施工单位自评意见</th><th>监理单位复核意见</th><th>项目法人认定意见</th></tr>
                <tr>
                    <td>自评意见：<br/>单元工程质量全部合格。单元工程优良率为<?php echo From::Text($edit, 'f8', $datas['f8'], '', 5); ?>%，重要隐蔽单元工程和关键部位单元工程优良率为<?php echo From::Text($edit, 'f23', $datas['f23'], '', 5); ?>%。原材料质量<?php echo From::Text($edit, 'f24', $datas['f24'], '', 5); ?>，中间产品质量<?php echo From::Text($edit, 'f25', $datas['f25'], '', 5); ?>，混凝土（砂浆）试件质量<?php echo From::Text($edit, 'f26', $datas['f26'], '', 5); ?>，金属结构及启闭机制造质量<?php echo From::Text($edit, 'f27', $datas['f27'], '', 5); ?>，水力机械质量<?php echo From::Text($edit, 'f28', $datas['f28'], '', 5); ?>，电气设备质量<?php echo From::Text($edit, 'f29', $datas['f29'], '', 5); ?>，自动化质量<?php echo From::Text($edit, 'f30', $datas['f30'], '', 5); ?>。质量缺陷处理、质量事故检查<?php echo From::Text($edit, 'f31', $datas['f31'], '', 5); ?>。<br/><br/>质量等级：<br/><?php  echo From::TextArea($edit, 'f11', $datas['f11'], '', 5, 30); ?><br/><br/><p class="text-right">评定人（签字）：<?php echo From::Text($edit, 'f14', $datas['f14'], '', 8); ?><br/><br/>项目经理（签字）：<?php echo From::Text($edit, 'f17', $datas['f17'], '', 8); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f20', $datas['f20'], '', 8); ?><br/><br/></p></td>
                    <td>复核意见：<br/><?php  echo From::TextArea($edit, 'f9', $datas['f9'], '', 5, 30); ?><br/><br/>质量等级：<br/><?php  echo From::TextArea($edit, 'f12', $datas['f12'], '', 5, 30); ?><br/><br/><p class="text-right">监理工程师（签字）：<?php echo From::Text($edit, 'f15', $datas['f15'], '', 8); ?><br/><br/>总监理工程师（签字）：<?php echo From::Text($edit, 'f18', $datas['f18'], '', 8); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f21', $datas['f21'], '', 8); ?><br/><br/></p></td>
                    <td>认定意见：<br/><?php  echo From::TextArea($edit, 'f10', $datas['f10'], '', 5, 30); ?><br/><br/>质量等级：<br/><?php  echo From::TextArea($edit, 'f13', $datas['f13'], '', 5, 30); ?><br/><br/><p class="text-right">现场代表（签字）：<?php echo From::Text($edit, 'f16', $datas['f16'], '', 8); ?><br/><br/>技术负责人（签字）：<?php echo From::Text($edit, 'f19', $datas['f19'], '', 8); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f22', $datas['f22'], '', 8); ?><br/><br/></p></td>
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
            $('#items').append('<tr class="delitem"><td class="item-no"></td><td><input type="text" class="fa1" size="20" /></td><td><input type="text" class="fa2" size="5" /></td><td><input type="text" class="fa3" size="5" /></td><td><input type="text" class="fa4" size="5" /></td><td><input type="text" class="fa5" size="10" /></td><td><input type="text" class="fa6" size="10" /></td></tr>');
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