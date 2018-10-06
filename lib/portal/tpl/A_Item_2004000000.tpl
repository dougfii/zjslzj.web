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