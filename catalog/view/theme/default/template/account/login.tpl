    <form class="popup-form" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <div class="popup-form__header">
					Войти в личный кабинет
				</div>


  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>




				<div class="popup-form__body">
					<div class="popup-form__input-wrap">
						<!--<input type="text" placeholder="Введите имя" required>-->
                        <input type="text" placeholder="Введите email" name="email" value="<?php echo $email; ?>" id="input-email" />
					</div>
					<div class="popup-form__input-wrap">
						<!--<input type="text" placeholder="Введите номер телефона" required>-->
                        <input type="password" placeholder="Введите пароль" name="password" value="<?php echo $password; ?>" id="input-password" />
                        <a style='color:#373737' href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
					</div>
				
					
					
				
				</div>
    </form>
                    

            