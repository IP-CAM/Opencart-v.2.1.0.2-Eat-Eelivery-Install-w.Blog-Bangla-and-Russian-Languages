<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <!--<hr>
    <p><?php //echo $powered; ?></p>-->
  </div>
</footer>

</div>
		
	<!-- popups and forms start -->
		<div class="callback for-magnific">
			<div class="callback__form-wrap">
				<form id="callback_form" class="callback__form" method="POST" action="javascript:void(null);")>
					<div class="callback__form__close mfp-close">
						x
					</div>
					<div class="callback__form__title">
						Есть вопросы?<br> Свяжитесь с нами!
					</div>
					<div class="callback__form__input-wrap">
						<input type="text" placeholder="Введите имя" required>
					</div>
					<div class="callback__form__input-wrap">
						<input type="text" placeholder="Введите номер телефона" required>
					</div>
					<div class="callback__form__res">
						
					</div>
					<div class="callback__form__submit-wrap">
						<input type="submit" value="Перезвоните мне">
					</div>
				</form>
			</div>	
		</div>
	
		<!-- login form  start -->
		<div class="popup-form-wrap login-form mfp-hide">
			<form class="popup-form">
				<div class="popup-form__header">
					Войти в личный кабинет
				</div>
				<div class="popup-form__body">
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Введите имя" required>
					</div>
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Введите номер телефона" required>
					</div>
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Введите адрес" required>
					</div>
					<div class="popup-form__submit-wrap">
						<input type="submit" value="Войти" required>
					</div>
					<div class="popup-form__submit-wrap">
						<a class="open-popup" href=".reg-form">Регистрация</a>
					</div>
				
				</div>

			</form>
		</div>
		<!-- login form  end -->
		<!-- registr form  start -->
		<div class="popup-form-wrap reg-form mfp-hide">
			<form class="popup-form">
				<div class="popup-form__header">
					Заполните, пожалуйста, регистрационную форму
				</div>
				<div class="popup-form__body">
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Введите имя" required>
					</div>
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Введите E-mail" required>
					</div>
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Введите номер телефона" required>
					</div>
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Введите пароль" required>
					</div>
					<div class="popup-form__input-wrap">
						<input type="text" placeholder="Повторите пароль" required>
					</div>
					<div class="popup-form__submit-wrap">
						<input type="submit" value="Регистрация">
					</div>
					<div class="popup-form__submit-wrap">
						<a class="open-popup" href=".login-form">Авторизация</a>
					</div>
				
				</div>
			</form>
		</div>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/magnific-popup/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/owl-carousel2/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.old.js" type="text/javascript"></script>
</body></html>