<?php //echo $status_user ?>
<?php if(($status_user=="login")||($status_user=="register")||($status_user=="logout")) { ?>
<script>
window.location = "/index.php?route=common/home&st=<?php echo $status_user ?>";

	
</script>
<?php } else if($status_user=="logged") { ?>
        <p><a style="color:#373737" href="http://obed2.com.ua/index.php?route=account/edit">Изменить контактную информацию</a></p>
        <p><a style="color:#373737" href="http://obed2.com.ua/index.php?route=account/password">Изменить свой пароль</a></p>
        <p><a style="color:#373737" href="http://obed2.com.ua/index.php?route=account/address">Изменить мои адреса</a></p>
<?php } ?>