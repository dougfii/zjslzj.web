<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php echo '<a class="tooladd back" href="?m=Work&a=Reply&pass=backed&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核驳回</a><a class="tooladd back" href="?m=Work&a=Reply&pass=success&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核通过</a>'; ?><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-top">
                <tr><td class="k">工程项目名称</td><td><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">施工单位</td><td><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td></tr>
                <tr><td class="k">单位工程名称</td><td><?php echo From::Text($edit, 'f4', $datas['f4'], ''); ?></td><td class="k">施工期</td><td><?php echo From::Date($edit, 'f5', $datas['f5'], '', 8)); ?> 至 <?php echo From::Date($edit, 'f6', $datas['f6'], '', 8)); ?></td></tr>
                <tr><td class="k">单位工程编号</td><td><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td></td><td class="k">评定日期</td><td><?php echo From::Date($edit, 'f7', $datas['f7'], '', 8)); ?></td></tr>
            </table>
            <table class="a4-tbl-middle">
                <tr><th>序号</th><th>子单位（分部）工程名称</th><th>质量等级</th></tr>
                <tbody id="items">
                <?php
                if(!empty($datas['fa1']))
                {
                    for($i = 0; $i<count($datas['fa1']); $i++)
                    {
                ?>
                <tr class="delitem">
                    <td class="item-no"></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa1'][$i], 'fa1', 60); ?></td>
                    <td class="c"><?php echo From::Text($edit, '', $datas['fa2'][$i], 'fa2', 10); ?></td>
                </tr>
                <?php
                    }
                }
                ?>
                </tbody>
                <tr><td colspan="6">子单位（分部）工程共<?php echo From::Text($edit, 'f23', $datas['f23'], '', 5); ?>个，全部合格，其中优良<?php echo From::Text($edit, 'f24', $datas['f24'], '', 5); ?>个，优良率<?php echo From::Text($edit, 'f25', $datas['f25'], '', 5); ?>%，主要子单位（分部）工程优良率<?php echo From::Text($edit, 'f26', $datas['f26'], '', 5); ?>%。</td></tr>
                <tr><td>外观质量</td><td colspan="5">应得<?php echo From::Text($edit, 'f27', $datas['f27'], '', 5); ?>分，实得<?php echo From::Text($edit, 'f28', $datas['f28'], '', 5); ?>分，得分率<?php echo From::Text($edit, 'f29', $datas['f29'], '', 5); ?>%，外观质量为<?php echo From::Text($edit, 'f30', $datas['f30'], '', 5); ?>等级。</td></tr>
            </table>
            <?php if($edit) echo '<div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div>'; ?>
            <table class="a4-tbl-bottom">
                <tr><th>施工单位自评意见</th><th>监理单位复核意见</th><th>项目法人认定意见</th></tr>
                <tr>
                    <td>自评意见：<br/><?php  echo From::TextArea($edit, 'f8', $datas['f8'], '', 5, 30); ?><br/><br/>质量等级：<br/><?php  echo From::TextArea($edit, 'f11', $datas['f11'], '', 5, 30); ?><br/><br/><p class="text-right">评定人（签字）：<?php echo From::Text($edit, 'f14', $datas['f14'], '', 8)); ?><br/><br/>项目经理（签字）：<?php echo From::Text($edit, 'f17', $datas['f17'], '', 8)); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f20', $datas['f20'], '', 8)); ?><br/><br/></p></td>
                    <td>复核意见：<br/><?php  echo From::TextArea($edit, 'f9', $datas['f9'], '', 5, 30); ?><br/><br/>质量等级：<br/><?php  echo From::TextArea($edit, 'f12', $datas['f12'], '', 5, 30); ?><br/><br/><p class="text-right">复核人（签字）：<?php echo From::Text($edit, 'f15', $datas['f15'], '', 8)); ?><br/><br/>总监理工程师（签字）：<?php echo From::Text($edit, 'f18', $datas['f18'], '', 8)); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f21', $datas['f21'], '', 8)); ?><br/><br/></p></td>
                    <td>认定意见：<br/><?php  echo From::TextArea($edit, 'f10', $datas['f10'], '', 5, 30); ?><br/><br/>质量等级：<br/><?php  echo From::TextArea($edit, 'f13', $datas['f13'], '', 5, 30); ?><br/><br/><p class="text-right">认定人（签字）：<?php echo From::Text($edit, 'f16', $datas['f16'], '', 8)); ?><br/><br/>单位负责人（签字）：<?php echo From::Text($edit, 'f19', $datas['f19'], '', 8)); ?><br/><br/>（盖公章）<br/><br/>日期：<?php echo From::Date($edit, 'f22', $datas['f22'], '', 8)); ?><br/><br/></p></td>
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
            $('#items').append('<tr class="delitem"><td class="item-no"></td><td><input type="text" class="fa1" size="60" /></td><td><input type="text" class="fa2" size="10" /></td></tr>');
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

        function SetDatas() {

            return {
                "work_id": $("#work_id").val(),
                "node_id": $("#node_id").val(),
                "item_id": $("#item_id").val(),

                "f1": $("#f1").val(),
                "f2": $("#f2").val(),
                "f3": $("#f3").val(),
                "f4": $("#f4").val(),
                "f5": $("#f5").val(),
                "f6": $("#f6").val(),
                "f7": $("#f7").val(),
                "f8": $("#f8").val(),
                "f9": $("#f9").val(),
                "f10": $("#f10").val(),
                "f11": $("#f11").val(),
                "f12": $("#f12").val(),
                "f13": $("#f13").val(),
                "f14": $("#f14").val(),
                "f15": $("#f15").val(),
                "f16": $("#f16").val(),
                "f17": $("#f17").val(),
                "f18": $("#f18").val(),
                "f19": $("#f19").val(),
                "f20": $("#f20").val(),
                "f21": $("#f21").val(),
                "f22": $("#f22").val(),
                "f23": $("#f23").val(),
                "f24": $("#f24").val(),
                "f25": $("#f25").val(),
                "f26": $("#f26").val(),
                "f27": $("#f27").val(),
                "f28": $("#f28").val(),
                "f29": $("#f29").val(),
                "f30": $("#f30").val(),

                "fa1[]" : makearray('.fa1'),
                "fa2[]" : makearray('.fa2'),
            };
        }

        $('#save').click(function(){
            $.post('?m=Work&a=OnItem&event=save', SetDatas(), function (ret){if(ret.code==1)layer.msg('保存成功', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('#commit').click(function(){
            $.post('?m=Work&a=OnItem&event=commit', SetDatas(), function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 2;
            var no = $(this).attr('fid');
            var name = $(this).attr('fname');
            upload(pid, tid, no, name);
        });

        function upload(pid, tid, no, name){
            $.ajaxFileUpload({
                url:'?m=Upload&a=UpFlowFixed&no='+no,
                secureuri:false,
                fileElementId:'upfile'+no,
                dataType:'json',
                success: function(ret, status) {
                    if(ret.state=='SUCCESS') {
                        $.post('?m=Project&a=OnUpFlowFixed', {pid:pid,tid:tid,no:no,name:name,file:ret.name,url:ret.url,ext:ret.type,size:ret.size}, function (rt){
                            if(rt.code==1)layer.msg('上传完成', 1, function(){
                                $('#atta'+no).html('<a href="'+ret.url+'" target="_blank">'+name+'</a>');
                            });else layer.msg(rt.msg, 1);
                        }, 'json');
                    }
                    else layer.msg(ret.state, 2, -1);
                },
                error:function(ret, status, e){
                    layer.msg('上传失败 ' + e, 2, -1);
                }
            });
        };
    });
</script>