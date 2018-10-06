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
                "f5": $('#f5').val(),
                "f6": $('#f6').val(),
                "f7": $('#f7').val(),
                "f8": $('#f8').val(),
                "f9": $('#f9').val(),
                "f10": $('#f10').val(),
                "f11": $('#f11').val(),
                "f12": $('#f12').val(),
                "f13": $('#f13').val(),
                "f14": $('#f14').val(),
                "f15": $('#f15').val(),
                "f16": $('#f16').val(),
                "f17": $('#f17').val(),
                "f18": $('#f18').val(),
                "f19": $('#f19').val(),
                "f20": $('#f20').val(),
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
