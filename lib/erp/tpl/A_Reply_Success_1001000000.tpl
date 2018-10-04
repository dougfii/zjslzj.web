<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area">
        <div class="a4-success-caption">通过意见</div>
        <div class="a4-success-content" id="print_area">
            <div class="a4-red-caption"><?php echo From::Text(false, '', $work_org); ?></div>
            <div class="a4-red-no center">镇水质监<?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?>号</div>
            <div class="a4-red-line"></div>
            <div class="a4-red-title">关于对<?php echo From::Text(false, '', $work_name); ?><?php echo $node_name; ?>的批复</div>
            <div class="a4-red-org"><?php echo From::Text(false, '', $work_company); ?>：</div>
            <div class="a4-red-txt">
                <?php
                $txt = !empty($datas['f3']) ? $datas['f3'] : '　　你单位《关于' . $work_name . '工程初步设计及概算已经镇江市发展和改革委员会以《' . $work_company . '工程实施质量监督的申请》（XXXX［XXXX］XX号）文收悉。该工程已经批复，并列入年度计划，各项准备工作已就绪，已具备开工条件。我站同意对该工程实施质量监督。现将我站质量监督工作开展有关情况通知如下：';
                echo From::TextArea($edit, 'f3', $txt, 'pa4-textarea1', 30);
                ?>
            </div>
            <?php echo $atts; ?>
            <div class="a4-red-sign"><span class="right center"><?php echo From::Text(false, '', $work_org); ?>工程建设处<br/>日期：<?php echo From::Date($edit, 'f4', $datas['f4'], 'pae4-text1'); ?></span></div>
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
        function SetDatas() {

            return {
                "work_id": $("#work_id").val(),
                "node_id": $("#node_id").val(),
                "item_id": $("#item_id").val(),
                "reply_id": $("#reply_id").val(),

                "f1": $("#f1").val(),
                "f2": $("#f2").val(),
                "f3": $("#f3").val(),
                "f4": $("#f4").val(),
            };
        }

        $('#success').click(function(){
            $.post('?m=Work&a=OnReply&pass=success', SetDatas(), function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.atts').on( 'click', '.upd', function(){
            var id=$(this).attr('did');
            layer.confirm('您确认需要删除吗?\n此操作不可恢复!', function(i){layer.close(i);$.post('?m=Project&a=OnUpFlowDelete', {id:id}, function(ret){if(ret.code==1)$('#atta'+id).remove();else layer.msg(ret.msg, 2, -1);}, 'json');});
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 10000001;
            upload(pid, tid);
        });

        function upload(pid, tid){
            $.ajaxFileUpload({
                url:'?m=Upload&a=UpFlowDynamic',
                secureuri:false,
                fileElementId:'upfile',
                dataType:'json',
                success: function(ret, status) {
                    if(ret.state=='SUCCESS') {
                        $.post('?m=Project&a=OnUpFlowDynamic', {pid:pid,tid:tid,no:0,name:ret.originalName,file:ret.name,url:ret.url,ext:ret.type,size:ret.size}, function (rt){
                            if(rt.code==1&&rt.msg>0)layer.msg('上传完成', 1, function(){
                                $('.atts ul').append('<li id="atta'+rt.msg+'"><a href="'+ret.url+'" target="_blank">'+ret.originalName+'</a>　　<a href="javascript:;" class="upd" did="'+rt.msg+'">删除</a></li>');
                                $('#attb').html('<span class="up">添加上传<input type="file" id="upfile" class="upfile" name="upfile" /></span>');
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
