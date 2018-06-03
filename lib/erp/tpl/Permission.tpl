<script type="text/javascript">
    $(function () {
        $('#sel').click(function () {
            $('[name=permission]').attr('checked', true);
        });
        $('#unsel').click(function () {
            $('[name=permission]').removeAttr('checked');
        });
    });
</script>
<div class="permission">
    <div class="permissioncap"><?php echo $name; ?> (权限设置)</div>
    <div class="permissionbar clear">
        <?php if($inherit): ?>
        <div class="permissionleft"><input type="checkbox" id="inherituser"/> 当前部门所有用户继承权限　　<input type="checkbox" id="inheritdept"/> 子部门继承权限　　<input type="checkbox" id="inheritallu"/> 子部门所有用户继承权限</div>
        <?php endif; ?>
        <div class="permissionright"><a href="javascript:void();" id="sel">全部选择</a> <a href="javascript:void();" id="unsel">全部取消</a></div>
    </div>
    <table class="tpermission">
        <tr>
            <td>
                <div><b>首页</b>　<input type="checkbox" name="permission" value="0_1" <?php echo $p['0_1']; ?>/> 显示菜单</div>
            </td>
        </tr>
        <tr>
            <td>
                <div><b>质量管理</b>　<input type="checkbox" name="permission" value="1_1" <?php echo $p['1_1']; ?>/> 显示菜单</div>
                <div>　　列表管理　　　　　<input type="checkbox" name="permission" value="11_1" <?php echo $p['11_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="11_2" <?php echo $p['11_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="11_3" <?php echo $p['11_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="11_4" <?php echo $p['11_4']; ?>/> 删除</div>
            </td>
        </tr>
        <tr>
            <td>
                <div><b>安全管理</b>　<input type="checkbox" name="permission" value="2_1" <?php echo $p['2_1']; ?>/> 显示菜单</div>
                <div>　　列表管理　　　　　<input type="checkbox" name="permission" value="21_1" <?php echo $p['21_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="21_2" <?php echo $p['21_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="21_3" <?php echo $p['21_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="21_4" <?php echo $p['21_4']; ?>/> 删除</div>
            </td>
        </tr>
        <tr>
            <td>
                <div><b>网站管理</b>　<input type="checkbox" name="permission" value="7_1" <?php echo $p['7_1']; ?>/> 显示菜单</div>
                <div>　　文章列表　　　　　<input type="checkbox" name="permission" value="71_1" <?php echo $p['71_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="71_2" <?php echo $p['71_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="71_3" <?php echo $p['71_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="71_4" <?php echo $p['71_4']; ?>/> 删除</div>
                <div>　　文章分类　　　　　<input type="checkbox" name="permission" value="72_1" <?php echo $p['72_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="72_2" <?php echo $p['72_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="72_3" <?php echo $p['72_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="72_4" <?php echo $p['72_4']; ?>/> 删除</div>
                <div>　　页首切图　　　　　<input type="checkbox" name="permission" value="73_1" <?php echo $p['73_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="73_2" <?php echo $p['73_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="73_3" <?php echo $p['73_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="73_4" <?php echo $p['73_4']; ?>/> 删除</div>
                <div>　　友情链接　　　　　<input type="checkbox" name="permission" value="74_1" <?php echo $p['74_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="74_2" <?php echo $p['74_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="74_3" <?php echo $p['74_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="74_4" <?php echo $p['74_4']; ?>/> 删除</div>
                <div>　　页尾版权　　　　　<input type="checkbox" name="permission" value="75_1" <?php echo $p['75_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="75_2" <?php echo $p['75_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="75_3" <?php echo $p['75_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="75_4" <?php echo $p['75_4']; ?>/> 删除</div>
            </td>
        </tr>
        <tr>
            <td>
                <div><b>系统管理</b>　<input type="checkbox" name="permission" value="9_1" <?php echo $p['9_1']; ?>/> 显示菜单</div>
                <div>　　组织管理　　　　　<input type="checkbox" name="permission" value="91_1" <?php echo $p['91_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="91_2" <?php echo $p['91_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="91_3" <?php echo $p['91_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="91_4" <?php echo $p['91_4']; ?>/> 删除</div>
                <div>　　日志管理　　　　　<input type="checkbox" name="permission" value="91_1" <?php echo $p['91_1']; ?>/> 浏览　　<input type="checkbox" name="permission" value="91_2" <?php echo $p['91_2']; ?>/> 增加　　<input type="checkbox" name="permission" value="91_3" <?php echo $p['91_3']; ?>/> 编辑　　<input type="checkbox" name="permission" value="91_4" <?php echo $p['91_4']; ?>/> 删除</div>
            </td>
        </tr>
    </table>
</div>
