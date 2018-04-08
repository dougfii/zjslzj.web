<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10002', {id:$('#id').val(),no:$('#no').val(),signer:$('#signer').val(),content:$('#content').val(),date:$('#date').val(),keywords:$('#keywords').val()}, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
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
    <div class="tool clear"><span class="cap">安全生产组织机构管理网络 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?><a class="tooladd" href="javascript:" onclick="Printer('?m=Project&a=ProjectFlow1Print&id=<?php echo $rs['id']; ?>');">打印</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="center"><br/><br/><?php echo $company; ?><br/><br/>安全生产组织机构管理网络<br/><br/><br/><br/></div>
        <div style="background:url('/img/security_2.png') no-repeat;height:600px;width:720px;">
            <input type="text" style="position: absolute;margin-left:268px;margin-top: 60px;"/>
            <input type="text" style="position: absolute;margin-left:268px;margin-top: 200px;"/>
            <input type="text" style="position: absolute;margin-left:26px;margin-top: 310px;"/>
            <input type="text" style="position: absolute;margin-left:26px;margin-top: 345px;"/>
            <input type="text" style="position: absolute;margin-left:268px;margin-top: 310px;"/>
            <input type="text" style="position: absolute;margin-left:268px;margin-top: 345px;"/>
            <input type="text" style="position: absolute;margin-left:512px;margin-top: 310px;"/>
            <input type="text" style="position: absolute;margin-left:512px;margin-top: 345px;"/>
            <input type="text" style="position: absolute;margin-left:100px;margin-top: 436px;width:80px;"/>
            <input type="text" style="position: absolute;margin-left:100px;margin-top: 475px;width:80px;"/>
            <input type="text" style="position: absolute;margin-left:340px;margin-top: 436px;width:80px;"/>
            <input type="text" style="position: absolute;margin-left:340px;margin-top: 475px;width:80px;"/>
            <input type="text" style="position: absolute;margin-left:585px;margin-top: 436px;width:80px;"/>
            <input type="text" style="position: absolute;margin-left:585px;margin-top: 475px;width:80px;"/>
        </div>
        <?php echo $atts; ?>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
