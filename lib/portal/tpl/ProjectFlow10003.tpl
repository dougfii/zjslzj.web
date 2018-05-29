<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10001', {id:$('#id').val(),no:$('#no').val(),signer:$('#signer').val(),content:$('#content').val(),date:$('#date').val(),keywords:$('#keywords').val()}, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
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
    <div class="tool clear"><span class="cap">水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设项目法人、勘察设计、监理、试验检测等单位安全责任人汇总表</div>
            <table class="tx1">
                <tr><td class="k">单位名称</td><td class="k">责任人</td><td class="k">姓名</td><td class="k">职务／职称</td><td class="k">身份证号码</td><td class="k">安全生产培训及证书情况</td><td class="k">责任范围</td></tr>
                <tr><td class="k" rowspan="3">项目法人<br/>（建设单位）</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">安全分管人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">专职安全员</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="2">勘察单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="2">设计单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="3">监理单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">总监理工程师</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">安全分管人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="2">试验检测单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">项目责任人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="2">试验检测单位</td><td class="k">单位负责人</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">其他参建单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="5" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="16" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" size="10" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
