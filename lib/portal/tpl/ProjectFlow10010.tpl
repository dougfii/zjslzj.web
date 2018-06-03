<script>
    $(function(){
        $('#add').click(function(){
            $.post('?m=Project&a=OnProjectFlow10010', {
                id:$('#id').val(),name:$('#name').val(),
                t1:$('#t1').val(),
                t2:$('#t2').val(),
                t3:$('#t3').val(),
                t4:$('#t4').val(),
                t5:$('#t5').val(),
                t6:$('#t6').val(),
            }, function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){location.reload();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 10010;
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
    <div class="tool clear"><span class="cap">安全监督报告 - [<?php echo $state; ?>]</span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="add" href="javascript:;">提交</a>'; ?></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info clear">
            <br/><br/><br/><br/>
            <div class="pa4-title1"><?php if($edit) echo '<input type="text" class="pae4-text1" id="name" value="' . $name . '" />'; else echo $name; ?> 工程</div>
            <div class="pa4-title1"><?php if($edit) echo '<input type="text" class="pae4-text1" id="t1" value="' . $t1 . '" />'; else echo $t1; ?> 验收</div>
            <div class="pa4-title1">安全监督报告</div>
            <br/><br/><br/><br/>
            <div style="margin-left:220px;">
                <div>编制：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t2" value="' . $t2 . '" />'; else echo $t2; ?></div>
                <br/>
                <div>审定：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t3" value="' . $t3 . '" />'; else echo $t3; ?></div>
                <br/>
                <div>批准：<?php if($edit) echo '<input type="text" class="pae4-text1" id="t4" value="' . $t4 . '" />'; else echo $t4; ?></div>
            </div>
            <br/><br/><br/><br/><br/><br/>
            <div class="center">
                <div>镇江市水利工程质量安全监督站</div>
                <br/><br/>
                <div>日期：<?php if($edit) echo '<input type="text" onclick="laydate();" class="pae4-text1" id="t5" value="' . $t5 . '" />'; else echo $t5; ?></div>
            </div>
            <br/><br/><br/><br/><br/><br/>
            <div>
                <?php
                $txt = "
一、工程概况
    （一）工程建设位置

    （二）工程项目批复

    （三）工程主要建设内容及主要设计指标

    （四）工程主要参建单位

    （五）工程开完工时间


二、安全监督工作


三、安全生产管理体系检查
    （一）安全生产管理机构及人员

    （二）安全生产责任制

    （三）安全生产规章制度及操作规程

    （四）安全教育培训

    （五）危险性较大工程安全管理

    （六）隐患排查治理

    （七）生产安全事故应急预案


四、安全监督检查


五、生产安全事故处理


六、工程安全生产评价意见


七、建议


";
                if($edit) echo '<textarea style="padding:5px;" rows="50" cols="95" id="t6">' . (empty($t6) ? $txt : $t6)  . '</textarea>'; else echo nl2br($t6);
                ?>
            </div>
            <br/><br/>
            <?php echo $atts; ?>
            <br/><br/><br/><br/>
        </div>
    </div>
    <?php echo $atts; ?>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
