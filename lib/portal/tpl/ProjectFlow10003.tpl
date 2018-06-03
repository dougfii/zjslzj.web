<script>
    $(function(){
        $('#add').click(function(){
            var items0 = makearray('.item0');
            var items1 = makearray('.item1');
            var items2 = makearray('.item2');
            var items3 = makearray('.item3');
            var items4 = makearray('.item4');
            var items5 = makearray('.item5');
            var items6 = makearray('.item6');
            $.post('?m=Project&a=OnProjectFlow10003', {
                id:$('#id').val(),name:$('#name').val(),
                'items0[]':items0,'items1[]':items1,'items2[]':items2,'items3[]':items3,'items4[]':items4,'items5[]':items5,'items6[]':items6
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
            $('#items').append('<tr class="delitem"><td class="c"><input type="text" size="10" class="item0"/></td><td class="c"><input type="text" size="5" class="item1" value="单位负责人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>');
            $('#items').append('<tr class="delitem"><td class="c"><input type="text" size="10" class="item0"/></td><td class="c"><input type="text" size="5" class="item1" value="项目责任人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>');
        });

        $('#items').on('dblclick', '.delitem', function(){
            var obj = $(this);
            layer.confirm('您确认需要删除当前条目吗?', function (i){
                layer.close(i);
                obj.remove();
            });
        });
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
                <thead>
                    <tr><td class="k">单位名称</td><td class="k">责任人</td><td class="k">姓名</td><td class="k">职务／职称</td><td class="k">身份证号码</td><td class="k">安全生产培训及证书情况</td><td class="k">责任范围</td></tr>
                </thead>
                <tbody id="items">
                <?php
                 if(!empty($items))
                 {
                    foreach($items as $k=>$v){
                            echo '<tr class="delitem"><td class="c">';
                            echo $edit ? '<input type="text" size="5" class="item0" value="' . $v[0] . '"/>' : $v[0];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" size="5" class="item1" value="' . $v[1] . '"/>' : $v[1];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" size="5" class="item2" value="' . $v[2] . '"/>' : $v[2];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" size="5" class="item3" value="' . $v[3] . '" />' : $v[3];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" size="16" class="item4" value="' . $v[4] . '"/>' : $v[4];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" size="10" class="item5" value="' . $v[5] . '"/>' : $v[5];
                            echo '</td><td class="c">';
                            echo $edit ? '<input type="text" size="10" class="item6" value="' . $v[6] . '"/>' : $v[6];
                            echo '</td></tr>';
                        }
                    }
                    else{
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="项目法人（建设单位）"/></td><td class="c"><input type="text" size="5" class="item1" value="单位负责人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="项目法人（建设单位）"/></td><td class="c"><input type="text" size="5" class="item1" value="安全分管人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="项目法人（建设单位）"/></td><td class="c"><input type="text" size="5" class="item1" value="专职安全员"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';

                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="勘察单位"/></td><td class="c"><input type="text" size="5" class="item1" value="单位负责人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="勘察单位"/></td><td class="c"><input type="text" size="5" class="item1" value="项目责任人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';

                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="设计单位"/></td><td class="c"><input type="text" size="5" class="item1" value="单位负责人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="设计单位"/></td><td class="c"><input type="text" size="5" class="item1" value="项目责任人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';

                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="监理单位"/></td><td class="c"><input type="text" size="5" class="item1" value="单位负责人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="监理单位"/></td><td class="c"><input type="text" size="5" class="item1" value="总监理工程师"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="监理单位"/></td><td class="c"><input type="text" size="5" class="item1" value="安全分管人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';

                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="试验检测单位"/></td><td class="c"><input type="text" size="5" class="item1" value="单位负责人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="试验检测单位"/></td><td class="c"><input type="text" size="5" class="item1" value="项目责任人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';

                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="其他参建单位"/></td><td class="c"><input type="text" size="5" class="item1" value="安全责任人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                        echo '<tr class="delitem"><td class="c"><input type="text" size="10" class="item0" value="其他参建单位"/></td><td class="c"><input type="text" size="5" class="item1" value="项目责任人"/></td><td class="c"><input type="text" size="5" class="item2"/></td><td class="c"><input type="text" size="5" class="item3"/></td><td class="c"><input type="text" size="16" class="item4"/></td><td class="c"><input type="text" size="10" class="item5"/></td><td class="c"><input type="text" size="10" class="item6"/></td></tr>';
                    }
                ?>
                </tbody>
            </table>
            <?php if($edit): ?><div><input type="button" value="添加条目" id="additem" /> （双击序号删除条目）</div><?php endif; ?>
            <?php echo $atts; ?>
        </div>
    </div>
    <input type="hidden" id="id"/>
    <input type="hidden" id="pid" value="<?php echo $pid; ?>" />
</div>
