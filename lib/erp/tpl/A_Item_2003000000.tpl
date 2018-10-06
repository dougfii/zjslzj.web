<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php echo '<a class="tooladd back" href="?m=Work&a=Reply&pass=backed&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核驳回</a><a class="tooladd back" href="?m=Work&a=Reply&pass=success&work_id=' . $work_id . '&node_id=' . $node_id . '&item_id=' . $item_id . '">审核通过</a>'; ?><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-tbl-caption"><?php echo "{$node_name}"; ?></div>
            <table class="a4-tbl-full">
                <tr><td class="k">项目及标段名称</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f1', $datas['f1'], ''); ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v"><?php echo From::Text($edit, 'f2', $datas['f2'], ''); ?></td><td class="k">完工日期</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f3', $datas['f3'], ''); ?></td></tr>
                <tr><td class="k">参建单位</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f4', $datas['f4'], ''); ?></td></tr>
                <tr><td class="k">主要工作内容</td><td class="v" colspan="3"><?php  echo From::TextArea($edit, 'f5', $datas['f5'], '', 10, 80); ?></td></tr>
                <tr><td class="v" colspan="4">
                        工程安全生产或安全行为自我总结：<br/>
                        <?php  echo From::TextArea($edit, 'f6', $datas['f6'], '', 20, 95); ?>
                        <br/><br/>
                        <p class="text-right">中标单位（公章）：<?php echo From::Text($edit, 'f7', $datas['f7'], ''); ?><br/><br/>日期：<?php echo From::Date($edit, 'f8', $datas['f8'], ''); ?></p>
                        <br/><br/><br/><br/>
                        项目法人评估意见：<br/>
                        <?php  echo From::TextArea($edit, 'f9', $datas['f9'], '', 20, 95); ?>
                        <br/><br/>
                        <p class="text-right">项目法人（公章）：<?php echo From::Text($edit, 'f10', $datas['f10'], ''); ?><br/><br/>日期：<?php echo From::Date($edit, 'f11', $datas['f11'], ''); ?></p>
                        <br/><br/>
                    </td></tr>
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
                "f32": $("#f32").val(),
                "f33": $("#f33").val(),
                "f34": $("#f34").val(),
                "f35": $("#f35").val(),
                "f36": $("#f36").val(),
                "f37": $("#f37").val(),
                "f38": $("#f38").val(),
                "f39": $("#f39").val(),
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