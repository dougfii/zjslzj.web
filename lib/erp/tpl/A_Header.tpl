<div class="head">
    <div class="nav">
        <a class="logo"><?php echo APP_NAME ?></a>
        <?php echo $menu; ?>
        <span class="exit"><a><?php echo $user ?></a>|<a href="?m=Home&a=Password">修改密码</a>|<a href="?a=Logout">退出</a></span>
    </div>
</div>
<div class="body">
<?php echo $side; ?>