<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <div class="a4-red-caption"><?php echo From::Text(false, '', $work_company); ?>工程建设处文件</div>
            <div class="a4-red-no"><span>文件编号：<?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1'); ?></span><span class="right">签发：<?php echo From::Text($edit, 'f2', $datas['f2'], 'pae4-text1'); ?></span></div>
            <div class="a4-red-line"></div>
            <div class="a4-red-title">关于申请<?php echo From::Text(false, '', $work_name); ?><?php echo $node_name; ?>质量等级核定的报告</div>
            <div class="a4-red-org"><?php echo From::Text(false, '', $work_org); ?>：</div>
            <div class="a4-red-txt"><?php echo From::TextArea($edit, 'f3', $datas['f3'], 'pa4-textarea1', 30); ?></div>
            <div class="a4-red-sign"><span class="right center"><?php echo From::Text(false, '', $work_company); ?>工程建设处<br/>日期：<?php echo From::Date($edit, 'f4', $datas['f4'], 'pae4-text1'); ?></span></div>
            <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
            <div class="c"><?php echo From::Text($edit, 'f5', $datas['f5'], 'pae4-text1'); ?> 工程 <?php echo From::Text($edit, 'f6', $datas['f6'], 'pae4-text1'); ?> <?php echo "{$node_name}"; ?></div>
            <br/><br/><br/><br/>
            <div class="pa4-title1">质 量 核 定 申 报 书</div>
            <br/><br/><br/><br/>
            <div class="center">编　　制：<?php echo From::Text($edit, 'f7', $datas['f7'], 'pae4-text1'); ?>（签名）</div>
            <br/><br/>
            <div class="center">项目法人：<?php echo From::Text($edit, 'f8', $datas['f8'], 'pae4-text1'); ?>（签名）</div>
            <br/><br/><br/><br/>
            <div class="text-right">工程建设项目法人名称（盖公章）<br/><br/><?php echo From::Text($edit, 'f9', $datas['f9'], 'pae4-text1'); ?></div>
            <br/><br/>
            <div class="text-right">日期：<?php echo From::Date($edit, 'f10', $datas['f10'], 'pae4-text1'); ?></div>
            <br/><br/><br/><br/><br/><br/>
            <div class="">一、工程概况</div>
            <div class=""><?php echo From::TextArea($edit, 'f11', $datas['f11'], 'pa4-textarea1', 5, 95, '（工程批复过程、批复文号、概算投资，批准的主要工程内容，验收范围及其完成情况）'); ?></div>
            <br/>
            <div class="">二、主要设计变更</div>
            <div class=""><?php echo From::TextArea($edit, 'f12', $datas['f12'], 'pa4-textarea1', 5, 95, '（主要设计变更及履行手续情况）'); ?></div>
            <br/>
            <div class="">三、质量管理工作</div>
            <div class=""><?php echo From::TextArea($edit, 'f13', $datas['f13'], 'pa4-textarea1', 5, 95, '（项目法人、监理单位、施工单位质量体系建立和落实情况）'); ?></div>
            <br/>
            <div class="">四、质量检测情况</div>
            <div class=""><?php echo From::TextArea($edit, 'f14', $datas['f14'], 'pa4-textarea1', 5, 95, '（施工单位自检，监理单位见证取样送检、平行检测和跟踪检测，项目法人委托检测情况和结果）'); ?></div>
            <br/>
            <div class="">五、存在问题及处理情况</div>
            <div class=""><?php echo From::TextArea($edit, 'f15', $datas['f15'], 'pa4-textarea1', 5, 95, '（质量缺陷备案和质量事故处理情况）'); ?></div>
            <br/>
            <div class="">六、遗留问题和尾工处理</div>
            <div class=""><?php echo From::TextArea($edit, 'f16', $datas['f16'], 'pa4-textarea1', 5, 95); ?></div>
            <br/>
            <div class="">七、工程质量的自评、复核、认定结果</div>
            <div class=""><?php echo From::TextArea($edit, 'f17', $datas['f17'], 'pa4-textarea1', 5, 95); ?></div>
            <br/>
        </div>
        <?php echo $atts; ?>
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