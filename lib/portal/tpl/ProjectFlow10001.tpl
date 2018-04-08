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
    <div class="tool clear"><span class="cap">安全监督申请书 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="center">江苏省水利工程建设安全监督申请书</div>
            <table class="tx1">
                <tr><td class="k">工程名称</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="name" value="' . $name . '" />'; else echo $name; ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">实施方案文号</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="k">工程总投资</td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">计划开工时间</td><td class="v"><?php if($edit) echo '<input type="text" class="" onclick="laydate()" readonly id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="k">计划完工时间</td><td class="v"><?php if($edit) echo '<input type="text" class="" onclick="laydate()" readonly id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">建设单位名称</td><td class="v" colspan="3"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" colspan="2">项目法人（建设单位）批准文号</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k" rowspan="4">项目法人<br/>（建设单位）</td><td class="k">联系人 </td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">联系电话 </td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">通讯地址</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">邮政编码</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">工程建设规模、内容及标准</td><td class="v" colspan="3"><textarea rows="10" style="width:500px;"></textarea></td></tr>
                <tr><td class="k">主要工程量</td><td class="v" colspan="3"><textarea rows="5" style="width:500px;">土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨 </textarea></td></tr>
                <tr><td class="k" colspan="3">主要参建单位（全称）</td><td class="k">联系人及电话</td></tr>
                <tr><td class="k" rowspan="2">施工单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">监理单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">勘测单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td class="k">设计单位</td><td class="v" colspan="2"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td><td class="v"><?php if($edit) echo '<input type="text" class="" id="no" value="' . $no . '" />'; else echo $no; ?></td></tr>
                <tr><td colspan="4"><textarea rows="15" style="width:700px;padding:5px;">建设单位安全生产工作计划：</textarea></td></tr>
                <tr><td colspan="4"><textarea rows="15" style="width:700px;padding:5px;">监理单位安全生产工作计划：</textarea></td></tr>
                <tr><td colspan="4"><textarea rows="15" style="width:700px;padding:5px;">施工单位安全生产工作计划：</textarea></td></tr>
                <tr><td colspan="4"><textarea rows="15" style="width:700px;padding:5px;">水利工程建设安全监督机构审查意见：</textarea><div style="text-align:right;"><br/><br/><input type="text"/>（公章）<br/><br/><br/><br/><input type="text" readonly onclick="laydate();"/>（日期）<br/><br/><br/><br/></div></td></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
