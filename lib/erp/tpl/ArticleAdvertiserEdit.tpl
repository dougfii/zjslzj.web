<script>
	$(function(){
		$('#ok').click(function(){
			$.post('?m=Article&a=OnArticleAdvertiserEdit', {id:$('#id').val(),sort:$('#sort').val()}, function (ret){if(ret.code==1)layer.msg('编辑成功', 1, function(){window.history.back();});else layer.msg(ret.msg, 1);}, 'json');
		});
	});
</script>
<div class="toolbar">
	<div class="tool clear"><span class="cap">编辑首页切图</span></div>
</div>
<div class="panel paneltool">
<?php
if(!empty($rs)){
	echo '<table class="ti">';
	echo '<tr><td class="k">排序</td><td class="v"><input type="text" id="sort" value="' . $rs['sort'] . '" size="1" class="center"/></td><td class="k"></td><td class="v"></td><td class="k"></td><td class="v"></td><td class="k"></td><td class="v"></td></tr>';
	echo '</table>';
	echo '<input type="hidden" id="id" value="' . $id . '"/>';
	echo '<div class="bpan"><input type="button" id="ok" class="bok" value="确定" /><input type="button" class="bback" value="返回" /></div>';
}
else{

}
?>
</div>