<script>
    $(function(){
        $('#allow').click(function(){
            $.post('?m=Project&a=OnProjectReply10001', {fid:$('#fid').val(),no:$('#no').val(),content:$('#content').val(),date:$('#date').val()}, function (ret){if(ret.code==1)layer.msg('批复完成', 1, function(){history.back();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('.upfile').change(function(){
            var pid = $('#pid').val();
            var tid = 100012;
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
    <div class="tool clear"><span class="cap">安全监督申请书 - [批复]</span><a class="tooladd back" href="javascript:;">返回</a></div>
</div>
<div class="panel paneltool">
    <div class="pagea4">
        <div class="pagea4info">
            <div class="pa4-caption1"><?php echo $gc; ?></div>
            <div class="center">镇水质监<input type="text" class="pae4-text1" id="no" />号</div>
            <div class="pa4-redline"></div>
            <div class="pa4-title1">关于对<?php echo $name; ?>安全监督的批复</div>
            <div class="pa4-company"><?php echo $company; ?>:</div>
            <div class=""><textarea rows="30" class="pa4-textarea1" id="content">
        建设管理处：

    你处《关于申请        安全监督的报告》（文号）收悉。根据省水利厅《江苏省水利工程建设安全监督工作指导意见》（苏水规〔2009〕4号）精神，经研究，接受你处安全监督申请，成立        安全监督项目组，负责该工程施工期安全监督工作。人员由    、     、组成，    为组长。

    现将《        安全监督计划要点》、《项目法人安全生产管理检查评分表》、《监理单位安全管理检查评分表》和《江苏省水利工程建设安全施工标准化工地考核表》印发给你们，请结合工程实际细化后遵照执行。

    请你处按照《安全生产法》、《建设工程安全生产管理条例》、《水利工程建设安全生产管理规定》、《江苏省水利工程建设安全生产管理规定》、《江苏省水利基本建设项目危险性较大工程安全专项施工方案编制实施办法》等有关规定，督促参建单位建立健全安全生产组织机构，制定并落实安全生产责任制，狠抓安全生产各项措施的落实，并按照安全监督计划要求，配合做好各阶段安全监督管理相关工作。


联 系 人：
联系电话：
E-mail:
</textarea></div>
            <div class="pa4-sign1 clear"><span class="pa4-signer1"><?php echo $gc; ?><br/>日期：<input type="text" class="pae4-text1" id="date" onclick="laydate();" readonly /></span></div>
            <input type="hidden" id="fid" value="<?php echo $fid; ?>" />
            <br/><br/>
            <?php echo $atts; ?>
        </div>
        <div class="pagedialog-buttons"><a href="javascript:;" class="btn" id="allow">同意</a></div>
        <br/>
    </div>
</div>
