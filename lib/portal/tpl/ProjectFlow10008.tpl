<script>
    $(function(){
        $('#add').click(function(){
            var c = new Array();
            c[0] = $('#item0').is(':checked') ? 1 : 0;
            c[1] = $('#item1').is(':checked') ? 1 : 0;
            c[2] = $('#item2').is(':checked') ? 1 : 0;
            c[3] = $('#item3').is(':checked') ? 1 : 0;
            var items1 = makearray('.item1');
            var items2 = makearray('.item2');
            var items3 = makearray('.item3');
            var items4 = makearray('.item4');
            $.post('?m=Project&a=OnProjectFlow10008', {
                id:$('#id').val(),name:$('#name').val(),
                t1:$('#t1').val(),
                t2:$('#t2').val(),
                t3:$('#t3').val(),
                t4:$('#t4').val(),
                t5:$('#t5').val(),
                t6:$('#t6').val(),
                t7:$('#t7').val(),
                t8:$('#t8').val(),
                t9:c.join(),
                'items1[]':items1,'items2[]':items2,'items3[]':items3,'items4[]':items4
            }, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

        function makearray(obj){
            var a = new Array();
            $.each($(obj), function(i, n){
                a.push($(this).val());
            });
            return a;
        };

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

        $('#additem').click(function(){
            $('#items').append('<tr class="delitem"><td class="c item0"></td><td class="c"><input type="text" class="item1" onclick="laydate();" size="6"/></td><td class="c"><input type="text" class="item2"/></td><td class="c"><input type="text" class="item3"/></td><td class="c"><input type="text" class="item4"/></td></tr>');
            serials();
        });

        function serials(){
            $.each($('.item0'), function(i, n){
                $(this).html(i+1);
            });
        }

        $('#items').on('dblclick', '.delitem', function(){
            var obj = $(this);
            layer.confirm('您确认需要删除当前条目吗?', function (i){
                layer.close(i);
                obj.remove();
                serials();
            });
        });
    });
</script>
<div class="toolbar">
    <div class="tool clear"><span class="cap">水利工程建设安全评价意见书</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info clear">
            <div class="pa4-title1">水利工程建设安全监督通知书</div>
            <div><?php echo $rs["t1"]; ?>：</div>
            <br/><br/>
            <div>　　根据你单位的申请，按照《江苏省水利工程建设安全监督工作指导意见》对 <?php echo $rs["t2"]; ?> 工程进行安全监督。本项目监督负责人为 <?php echo $rs["t3"]; ?>。</div>
            <br/>
            <div>　　现将该工程安全监督计划发给你们，请按监督计划配合安全监督工作顺利进行。</div>
            <br/><br/>
            <div>　　特此通知。</div>
            <br/><br/><br/><br/><br/><br/>
            <div class="right">
                <div><?php echo $gc; ?></div>
                <br/><br/>
                <div>申请日期：<?php echo $rs["t6"]; ?></div>
            </div>
            <br/><br/><br/><br/>
        </div>
        <br/><br/><br/><br/>
        <?php echo $atts; ?>
        <br/><br/><br/><br/>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
