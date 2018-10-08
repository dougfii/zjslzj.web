<div class="toolbar">
    <div class="tool clear"><span class="cap"><?php echo "{$work_type}： {$work_name} 工程　--　{$node_no}、{$node_name}　[{$item_status}]"; ?></span><a class="tooladd back" href="javascript:;">返回</a><?php if($edit) echo '<a class="tooladd" id="commit" href="javascript:;">提交</a><a class="tooladd" id="save" href="javascript:;">保存</a>'; ?><a class="tooladd" href="javascript:Printer();">直接打印</a><a class="tooladd" href="javascript:Printer(true);">打印预览</a></div>
</div>
<div class="panel paneltool">
    <div class="a4-area" id="print_area">
        <div class="a4-block">
            <br/><br/>
            <div class="a4-tbl-caption">江苏省水利工程建设安全监督</div>
            <div class="a4-tbl-caption">申 请 书</div>
            <br/><br/><br/><br/>
            <div style="margin-left:200px;">
                <div>编　　号：（<?php echo From::Text($edit, 'f1', $datas['f1'], 'pae4-text1', 5); ?>）申（<?php echo From::Text($edit, 'f2', $datas['f2'], 'pae4-text1', 5); ?>）第 <?php echo From::Text($edit, 'f3', $datas['f3'], 'pae4-text1', 5); ?> 号</div>
                <br/><br/>
                <div>申请单位：<?php echo From::Text($edit, 'f4', $datas['f4'], 'pae4-text1'); ?>（盖章）</div>
                <br/><br/>
                <div>申请日期：<?php echo From::Date($edit, 'f5', $datas['f5'], 'pae4-text1'); ?></div>
            </div>
            <br/><br/><br/><br/>
            <div class="center">江苏省水利厅印制</div>
            <br/><br/><br/><br/><br/><br/><br/><br/>
            <div class="center">填写说明</div>
            <div class="a4-readme">
                <p>一、本书由项目法人负责填报。</p>
                <p>二、本书须在水利工程开工前填报，填写时不得使用铅笔、圆珠笔，字迹应清晰、整洁，最好使用计算机打印。</p>
                <p>三、本书由水利工程建设安全监督机构统一编号。</p>
                <p>四、申请人须按本书要求逐项填报有关内容，各项内容如纸张不够，可加附页。</p>
                <p>五、本书填写一式二份，一份回执。</p>
            </div>
            <br/><br/><br/><br/>
            <table class="a4-tbl-full">
                <tr><td class="k">工程名称</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f6', $datas['f6'], ''); ?></td></tr>
                <tr><td class="k">建设地点</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f7', $datas['f7'], ''); ?></td></tr>
                <tr><td class="k">实施方案文号</td><td class="v"><?php echo From::Text($edit, 'f8', $datas['f8'], ''); ?></td><td class="k">工程总投资</td><td class="v"><?php echo From::Text($edit, 'f9', $datas['f9'], ''); ?> 万元</td></tr>
                <tr><td class="k">计划开工时间</td><td class="v"><?php echo From::Date($edit, 'f10', $datas['f10'], ''); ?></td><td class="k">计划完工时间</td><td class="v"><?php echo From::Date($edit, 'f11', $datas['f11'], ''); ?></td></tr>
                <tr><td class="k">建设单位名称</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f12', $datas['f12'], ''); ?></td></tr>
                <tr><td class="k">项目法人（建设单位）<br/>批准文号</td><td class="v" colspan="3"><?php echo From::Text($edit, 'f13', $datas['f13'], ''); ?></td></tr>
                <tr><td class="k" rowspan="4">项目法人<br/>（建设单位）</td><td class="k">联系人</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f14', $datas['f14'], ''); ?></td></tr>
                <tr><td class="k">联系电话</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f15', $datas['f15'], ''); ?></td></tr>
                <tr><td class="k">通讯地址</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f16', $datas['f16'], ''); ?></td></tr>
                <tr><td class="k">邮政编码</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f17', $datas['f17'], ''); ?></td></tr>
                <tr><td class="k">工程建设规模、内容及标准</td><td class="v" colspan="3"><?php  echo From::TextArea($edit, 'f18', $datas['f18'], '', 10, 70); ?></td></tr>
                <tr><td class="k">主要工程量</td><td class="v" colspan="3">
                        <?php
                    $txt = !empty($datas['f19']) ? $datas['f19'] : '土方__万方、砼__方、石方__万方、钢材__吨、其他：__吨';
                    echo From::TextArea($edit, 'f19', $txt, '', 5, 70);
                    ?></td></tr>
                <tr><td class="k" colspan="3">主要参建单位（全称）</td><td class="k">联系人及电话</td></tr>
                <tr><td class="k">施工单位</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f34', $datas['f34'], ''); ?></td><td class="v"><?php echo From::Text($edit, 'f20', $datas['f20'], ''); ?></td></tr>
                <tr><td class="k">监理单位</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f23', $datas['f23'], ''); ?></td><td class="v"><?php echo From::Text($edit, 'f24', $datas['f24'], ''); ?></td></tr>
                <tr><td class="k">勘测单位</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f25', $datas['f25'], ''); ?></td><td class="v"><?php echo From::Text($edit, 'f26', $datas['f26'], ''); ?></td></tr>
                <tr><td class="k">设计单位</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f26', $datas['f26'], ''); ?></td><td class="v"><?php echo From::Text($edit, 'f27', $datas['f27'], ''); ?></td></tr>
                <tr><td class="k">其他参建单位</td><td class="v" colspan="2"><?php echo From::Text($edit, 'f28', $datas['f28'], ''); ?></td><td class="v"><?php echo From::Text($edit, 'f29', $datas['f29'], ''); ?></td></tr>
                <tr><td colspan="4">
                        项目法人（建设单位）安全生产工作计划：<br/>
                        <?php echo From::TextArea($edit, 'f30', $datas['f30'], '', 10, 95); ?>
                        <br/><br/>
                        监理单位安全工作计划：<br/>
                        <?php echo From::TextArea($edit, 'f31', $datas['f31'], '', 10, 95); ?>
                        <br/><br/>
                        施工单位安全工作计划：<br/>
                        <?php echo From::TextArea($edit, 'f32', $datas['f32'], '', 10, 95); ?>
                        <br/><br/>
                        水利工程建设安全监督机构审查意见：<br/>
                        <?php echo From::TextArea($edit, 'f33', $datas['f33'], '', 10, 95); ?>
                    </td></tr>
            </table>
            <?php echo $atts; ?>
        </div>
    </div>
    <?php echo From::Hidden('work_id', $work_id); ?>
    <?php echo From::Hidden('node_id', $node_id); ?>
    <?php echo From::Hidden('item_id', $item_id); ?>
</div>
<script>
    function MergeCell(){
        var cols = 3;
        var arr = new Array();
        for(var i=0;i<cols;i++) arr.push(i);
        $('#facade').mergeCell({cols: arr});
    }

    MergeCell();

    $(function(){
        $('#save').click(function(){
            $.post('?m=Work&a=OnItem&event=save', SetDatas(), function (ret){if(ret.code==1)layer.msg('保存成功', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        $('#commit').click(function(){
            $.post('?m=Work&a=OnItem&event=commit', SetDatas(), function (ret){if(ret.code==1)layer.msg('提交成功', 1, function(){GoBack();});else layer.msg(ret.msg, 1);}, 'json');
        });

        SetWorkAttachment('<?php echo $attstr; ?>');

        $('.upfile').change(function(){
            let up_id = $(this).attr('up_id');
            let up_name = $(this).attr('up_name');
            UploadWork(1, up_id, up_name);
        });
    });
</script>