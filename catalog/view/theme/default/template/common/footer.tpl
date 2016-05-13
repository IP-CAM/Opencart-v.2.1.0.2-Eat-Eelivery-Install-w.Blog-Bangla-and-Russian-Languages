<footer class="footer">
			<div class="container con-mod">
				<div class="footer__for-bg">
					<div class="footer__inner clearfix">
						<div class="footer__contacts">
							<div class="footer__contacts__subscribe">
								<span>Хотите получать информацию  о новых скидках? Подпишитесь!</span>
								<form id="footer-form" action="/mail.php" class="footer__contacts__form">
									<div class="footer__contacts__input-wrap">
										<input type="text" name="name" placeholder="Введите имя">
									</div>
									<div class="footer__contacts__input-wrap">
										<input type="text" name="mail" placeholder="Введите E-mail">
									</div>
									<div class="footer__contacts__submit-wrap">
										<input type="submit" value="ПОДПИСАТЬСЯ">
									</div>
								</form>
							</div>
							<div class="footer__contacts__bottom">
								<ul class="footer__contacts__menu">
									<!--<li><a href="#">ооо “Обед” Доставка вкусных и полезных обедов в офис для Вас</a></li>-->
									<li><a href="#">г. Днепропетровск<br/>пр. Гагарина 103 а</a></li>
									<li>
										<ul>
											<li><a href="#">(067) 568-35-35</a></li>
											<!--<li><a href="#">(093) 222-22-22</a></li>-->
										</ul>
									</li>
								</ul>
								<ul class="footer__contacts__menu">
									<li><a href="#">О нас</a></li>
									<li><a href="#">Меню</a></li>
									<li><a href="#">Как заказать</a></li>
									<li><a href="#">Акции и скидки</a></li>
									<li><a href="#">Лицензия</a></li>
								</ul>
								<ul class="footer__contacts__socials">
									<div>Мы в социальных сетях:</div>
									<li><a class="footer__contacts__socials-link vk" href="https://vk.com/club111766035"></a></li>
									<li><a class="footer__contacts__socials-link fb" href="https://www.facebook.com/%D0%9E%D0%B1%D0%B5%D0%B4-%D0%AD%D0%BA%D1%81%D0%BF%D1%80%D0%B5%D1%81%D1%81-1227776127245857/"></a></li>
									<li><a class="footer__contacts__socials-link inst" href="https://www.instagram.com/obedexpress/"></a></li>
									<!--<li><a class="footer__contacts__socials-link tw" href="#"></a></li>-->
								</ul>
							</div>
						</div>
						<div class="garnet">Дизайн и разработка <a href="#">Garnet Software</a></div>
					</div>
				</div>
			</div>
		</footer>
		<!-- footer end -->
	</div>
		
	<!-- popups and forms start -->
		<div class="callback for-magnific">
			<div class="callback__form-wrap">
				<form id="callback_form" class="callback__form" method="POST")>
					<div class="callback__form__close mfp-close">
						x
					</div>
					<div class="callback__form__title">
						Есть вопросы?<br> Свяжитесь с нами!
					</div>
					<div class="callback__form__input-wrap">
						<input type="text" placeholder="Введите имя" name="name">
					</div>
					<div class="callback__form__input-wrap">
						<input type="text" placeholder="Введите номер телефона" name="phone">
					</div>
					<div class="callback__form__res">
						
					</div>
					<div class="callback__form__submit-wrap">
						<input type="submit" value="Перезвоните мне">
					</div>
				</form>
			</div>	
		</div>


		<div class="callback popup-form3">
			<div class="callback__form-wrap">
				<h4>Успешно!</h4>
			</div>	
		</div>
	
		<!-- login form  start -->
		<div class="popup-form-wrap login-form mfp-hide">
            <div id="login-form">

                
            </div>
            <?php if($logged){ ?>
            <div class="popup-form__submit-wrap">
						<!--<input type="submit" value="Выйти">-->
                        <a href="/index.php?route=account/logout">Выйти</a>
					</div>
            
            <?php }else{ ?>
            <div class="popup-form__submit-wrap">
						<input type="submit" value="Войти" onclick="account.authentication()">
					</div>
            <div class="popup-form__submit-wrap">
				<a class="open-popup" href=".reg-form" onclick="account.register()">Регистрация</a>
			</div>
            <?php } ?>
		</div>
		<!-- login form  end -->
		<!-- registr form  start -->
		<div class="popup-form-wrap reg-form mfp-hide">
            <div id="reg-form">
			
            </div>
            <div class="popup-form__submit-wrap">
				<input type="submit" value="Регистрация" onclick="account.reg()">
			</div>
			<div class="popup-form__submit-wrap">
				<a class="open-popup" href=".login-form">Авторизация</a>
			</div>
		</div>
		<!-- registr form  end -->
		<!-- registr form  start -->
		<div class="popup-form-wrap mfp-hide">
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
		<!-- registr form  end -->

		<!-- registr form  start -->
		<div class="popup-form-wrap edit-acc mfp-hide">
			<form class="popup-form">
				<div class="popup-form__header">
					Личный кабинет
				</div>
				<div class="popup-form__body">
					<div class="popup-form__input-wrap popup-form__input-wrap--half">
						<input type="text" placeholder="( Имя )" required>
						<a href="#">Изменить</a>
					</div>
					<div class="popup-form__input-wrap popup-form__input-wrap--half">
						<input type="text" placeholder="( Номер телефона )" required>
						<a href="#">Изменить</a>
					</div>
					<div class="popup-form__input-wrap popup-form__input-wrap--half">
						<input type="text" placeholder="( Адрес )" required>
						<a href="#">Изменить</a>
					</div>
					<div class="popup-form__input-wrap popup-form__input-wrap--half">
						<input type="text" placeholder="( E-mail )" required>
						<a href="#">Изменить</a>
					</div>
					<div class="popup-form__input-wrap popup-form__input-wrap--half">
						<input type="text" placeholder="( Пароль )" required>
						<a href="#">Изменить</a>
					</div>
				</div>
			</form>
		</div>
		<!-- registr form  end -->
		




		<!-- cart forms start -->
		<div class="cart-form cart-form--ty mfp-hide">
			<div class="cart-form__line-top"></div>
			<div class="cart-form__ty-message">
				Спасибо! <br>
				Ваш заказ принят
			</div>
			<div class="cart-form__buttons">
				<a href="#"><img class="svg cart-form__buttons__ok" src="/image/pictures/ok.svg" alt="close"></a>
			</div>
		</div>

		<div class="cart-form cart-form--order-detail mfp-hide">
			<!--<div class="cart-form__line-top"></div>
			<h2 class="cart-form__title">
				Заказ товара
			</h2>
			<div class="cart-form__form-wr">
				<form action="" class="cart-form__form clearfix">
					<div class="cart-form__form__left col-md-6">
						<div class="cart-form__form__input-wrap ">
							<input type="text" placeholder="Введите адрес">
						</div>
						<div class="cart-form__form__input-wrap ">
							<input type="text" placeholder="Выбирите дату">
						</div>
						<div class="cart-form__form__input-wrap adr">
							<input type="text" placeholder="Введите номер телефона">
						</div>

					</div>
					<div class="cart-form__form__right col-md-6">
						<div class="cart-form__form__input-wrap house">
							<input type="text" placeholder="дом">
						</div>
						<div class="cart-form__form__input-wrap corp">
							<input type="text" placeholder="Корпус">
						</div>
						<div class="cart-form__form__input-wrap room">
							<input type="text" placeholder="Квартира">
						</div>
						<div class="cart-form__form__input-wrap adr">
							<input type="text" placeholder="Выбирите время">
						</div>
						<div class="cart-form__form__input-wrap adr">
							<input type="text" placeholder="Комментарии к заказу">
						</div>
					</div>
				</form>
			</div>
			<div class="cart-form__buttons">
				<a href="#"><img class="svg cart-form__buttons__ok" src="/image/pictures/ok.svg" alt="close"></a>
				<a href="#" class="close-order cart-menu "><img class="svg cart-form__buttons__close" src="/image/pictures/close.svg" alt="close"></a>
			</div>-->
		</div>
		<!-- cart forms start -->	
        
        <!-- popups and forms start -->

		<div class="callback callback--orange for-magnific--second">
			<div class="callback__form-wrap">
				<form id="callback_form9" class="callback__form" method="POST" action="javascript:void(null);")>
					<div class="callback__form__close mfp-close">
						x
					</div>
					<div class="callback__form__title">
						Есть вопросы?<br> Свяжитесь с нами!
					</div>
					<div class="callback__form__input-wrap">
						<input type="text" placeholder="Введите имя" name="name">
					</div>
					<div class="callback__form__input-wrap">
						<input type="text" placeholder="Введите номер телефона" name="phone">
					</div>
					<div class="callback__form__input-wrap">
						<textarea name="#" id="#" placeholder="Коментарий"></textarea>
					</div>

					<div class="callback__form__res">
						
					</div>
					<div class="callback__form__submit-wrap">
						<input type="submit" value="Перезвоните мне">
					</div>
				</form>
			</div>	
		</div>
	<!-- popups and forms end -->
        
        
        
	<!-- popups and forms end -->    
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/magnific-popup/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/owl-carousel2/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/validate/jquery.validate.min.js" type="text/javascript"></script>



<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.old.js" type="text/javascript"></script>

<script>
	$(document).ready(function() {
		var zalupa = "zalupa";

		$.magnificPopup.open({
		  items: {
		    src: '<div class="cart-form cart-form--ty">'+
			'<div class="cart-form__line-top"></div>'+
				'<div class="cart-form__ty-message">'+
					'Спасибо! <br>'+zalupa+
				'</div>'+
				'<div class="cart-form__buttons">'+
					'<a href="#"><img class="svg cart-form__buttons__ok" src="/image/pictures/ok.svg" alt="close"></a>'+
				'</div>'+
			'</div>', 
		    type: 'inline'
		  }
		});
	});
	$(document).on('click', '.cart-form__buttons__ok', function(event) {
		event.preventDefault();
		$.magnificPopup.close();
	});
</script>

</body></html>