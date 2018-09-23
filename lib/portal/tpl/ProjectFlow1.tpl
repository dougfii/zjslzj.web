<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow1', {id:$('#id').val(),no:$('#no').val(),signer:$('#signer').val(),content:$('#content').val(),date:$('#date').val(),keywords:$('#keywords').val()}, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('#save').click(function(){
            $.post('?m=Project&a=OnProjectFlow1Save', {id:$('#id').val(),no:$('#no').val(),signer:$('#signer').val(),content:$('#content').val(),date:$('#date').val(),keywords:$('#keywords').val()}, function (ret){if(ret.code==1)layer.msg('保存成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 1;
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
<div class="toolbar">
    <div class="tool clear"><span class="cap">质量监督申报 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">

            <div class="pa4-caption1"><?php echo $company; ?>工程建设处文件</div>
            <div class="clear"><span><?php if($edit) echo '文件编号:<input type="text" class="pae4-text1" id="no" value="' . $no . '" />'; else echo $no; ?></span><span class="right">签发:<?php if($edit) echo '<input type="text" class="pae4-text1" id="signer" value="' . $signer . '" />'; else echo $signer; ?></span></div>
            <div class="pa4-redline"></div>
            <div class="pa4-title1">关于申请<?php echo $name; ?>质量监督的申请</div>
            <div class="pa4-company"><?php echo $gc; ?>:</div>
            <div class="pa4-content">
                <?php
                if($edit){
                    echo '<textarea rows="30" class="pa4-textarea1" id="content">';
                if(empty($content)) echo '    ' . $company . '工程初步设计及概算已经镇江市发展和改革委员会以《' . $company . '工程初步设计的批复》（镇发改审发[XXXX]XX号）批准。工程主要建设内容为：xxxxxxxxxxxxxxxxxxxxx。根据初步设计文件批复和基本建设程序要求，工程招标、法人委托检测及设计、监理、施工等单位合同签订工作已完成，各项准备工作已就绪，具备工程开工条件，现申请对该工程进行质量监督。 当否，请批示。';
                        echo $content . '</textarea>';
                }
                else echo $content;
                ?>
            </div>
            <?php echo $atts; ?>
            <div class="pa4-sign1 clear"><span class="pa4-signer1"><?php echo $company; ?>工程建设处<br/><?php if($edit) echo '日期:<input type="text" class="pae4-text1" id="date" value="' . $date . '" onclick="laydate();" readonly />'; else echo $date; ?></span></div>
            <!--
            <div class="pa4-attachment1">关键词:</div>
            <div class=""><?php if($edit) echo '<textarea rows="2" class="pa4-textarea1" id="keywords">' . $keywords . '</textarea>'; else echo $keywords; ?></div>
            -->
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
