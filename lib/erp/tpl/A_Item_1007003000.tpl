<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php echo '<a class="tooladd back" href="?m=Work&a=Reply&pass=backed&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核驳回</a><a class="tooladd back" href="?m=Work&a=Reply&pass=success&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核通过</a>'; ?><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <div class="a4-tbl-no">编号：<?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></div>
            <table class="a4-tbl-full">
                <tr><td class="k">单位工程名称</td><td colspan="2"><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">缺陷名称</td><td colspan="2"><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td></tr>
                <tr><td class="k">缺陷部位</td><td colspan="2"><?php echo From::Text($edit, 'f5', $datas['f5'], ''); ?></td><td class="k">备案日期</td><td colspan="2"><?php echo From::Date($edit, 'f4', $datas['f4'], ''); ?></td></tr>
                <tr>
                    <td colspan="6">
                        <p>1. 质量缺陷产生的部位与特征（具体部位、缺陷描述并附示意图）</p>
                        <p><?php echo From::TextArea($edit, 'f6', $datas['f6'], '', 5, 95); ?></p>
                        <br/>
                        <p>2. 质量缺陷产生的主要原因</p>
                        <p><?php echo From::TextArea($edit, 'f7', $datas['f7'], '', 5, 95); ?></p>
                        <br/>
                        <p>3. 对工程的安全、功能和运用影响分析</p>
                        <p><?php echo From::TextArea($edit, 'f8', $datas['f8'], '', 5, 95); ?></p>
                        <br/>
                        <p>4. 处理方案与或不处理原因</p>
                        <p><?php echo From::TextArea($edit, 'f9', $datas['f9'], '', 5, 95); ?></p>
                        <br/>
                        <p>5. 保留意见（保留意见应说明主要理由，或采用其他方案及主要理由）</p>
                        <p><?php echo From::TextArea($edit, 'f10', $datas['f10'], '', 5, 95); ?></p>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <div>施工单位名称：<?php echo From::Text($edit, 'f11', $datas['f11'], ''); ?> （盖公章）</div>
                        <br/>
                        <div><span>质检部门负责人（签字）：<?php echo From::Text($edit, 'f12', $datas['f12'], ''); ?></span><span class="right">技术负责人（签字）：<?php echo From::Text($edit, 'f13', $datas['f13'], ''); ?></span></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <div>设计单位名称：<?php echo From::Text($edit, 'f14', $datas['f14'], ''); ?> （盖公章）</div>
                        <br/>
                        <div><span>设计代表（签字）：<?php echo From::Text($edit, 'f15', $datas['f15'], ''); ?></span></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <div>监理单位名称：<?php echo From::Text($edit, 'f16', $datas['f16'], ''); ?> （盖公章）</div>
                        <br/>
                        <div><span>监理工程师（签字）：<?php echo From::Text($edit, 'f17', $datas['f17'], ''); ?></span><span class="right">总监理工程师（签字）：<?php echo From::Text($edit, 'f18', $datas['f18'], ''); ?></span></div>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        <div>项目法人名称：<?php echo From::Text($edit, 'f19', $datas['f19'], ''); ?> （盖公章）</div>
                        <br/>
                        <div><span>现场代表（签字）：<?php echo From::Text($edit, 'f20', $datas['f20'], ''); ?></span><span class="right">技术负责人（签字）：<?php echo From::Text($edit, 'f21', $datas['f21'], ''); ?></span></div>
                    </td>
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
                "f31": $("#f31").val(),

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