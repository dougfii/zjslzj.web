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
    <div class="tool clear"><span class="cap">水利工程建设项目施工单位安全责任人汇总表 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">水利工程建设项目施工单位安全责任人汇总表</div>
            <table class="tx1">
                <tr><td class="k">合同名称</td><td class="v" colspan="4"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">施工单位</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td><td class="k">签约合同价</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">资质等级</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="k">安全生产许可证号</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">主要施工内容</td><td class="v" colspan="4"><textarea rows="10" style="width:550px;"></textarea></td></tr>
                <tr><td class="k" rowspan="3">单位责任人</td><td colspan="k">姓名</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td colspan="k">职称</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="3">项目经理</td><td colspan="k">姓名</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td colspan="k">职称</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="3">专职安全员</td><td colspan="k">姓名</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td colspan="k">职称</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td colspan="k">身份证号码</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td colspan="k">安全考核证书编号</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
            </table>
            <br>
            <div style="font-size:12px;">填报单位：<input type="text"/>　　　填报人：<input type="text" size="15"/>　　　日期：<input type="text" onclick="laydate()" size="15" readonly/></div>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
