<?php echo $header; ?>
    <?php 
    
        //var_dump($column_left);
    
        $i=0;
        $str = stripos($column_left, "a href=");
        while ($str !== false){
            
            $column_left = substr($column_left, $str + 8);
            $str = stripos($column_left, "class=");
            $categor[$i]['href'] = substr($column_left, 0, $str - 2);
            $str = stripos($column_left, ">");
            
            if (stripos(substr($column_left,0, $str),"active")){
                $categor[$i]['active'] = 'active';
            } else {
                $categor[$i]['active'] = '';
            }
            //var_dump(stripos(substr($column_left,0, $str),"active"));
            
            
            $column_left = substr($column_left, $str + 1);
            $str = stripos($column_left, "</a>");
            $categor[$i]['name'] = substr($column_left, 0, $str);
            if (stripos($categor[$i]['name'], "&nbsp") !== false){
                $categor[$i]['name'] = substr($categor[$i]['name'], 20);
            }
            $str = stripos($column_left, "a href=");
            $i++;
        }
        
        //var_dump($categor);
     ?>
     
        <section class="food-menu">
        <?php echo $content_top; ?>

			<div class="container con-mod">
				<div class="food-menu__for-bg food-menu__for-bg--padding food-menu__menu">
					<!-- food-menu__sidebar start -->
					<div class="food-menu__sidebar-wrapper">
						<div class="food-menu__sidebar">
							<div class="food-menu__sidebar__header">
                                <?php echo $categor[0]['name'] ?>
                                <!--<a href="<?php echo $categor[0]['href']; ?>" ><?php echo $categor[0]['name']; ?></a>-->
							</div>
							<div class="food-menu__button-down--menu visible-xs">
								Открыть / Скрыть меню
							</div>
							<div class="food-menu__sidebar__body">
                                <?php unset($categor[0]);?>
                                <?php foreach ($categor as $ctg){ ?>
                                <a href="<?php echo $ctg['href']; ?>" class="food-menu__sidebar__link <?php echo $ctg['active']; ?>"><?php echo $ctg['name']; ?></a>
                                <?php } ?>
							</div>
                            <a href=".for-magnific--second" class="food-menu__sidebar__individual open-popup">ИНДИВИДУАЛЬНЫЙ ЗАКАЗ</a>
						</div>
					</div>
					<!-- food-menu__sidebar end -->
					<!-- food-menu__content start -->
						<div class="food-menu__content">
							<!-- start product-box -->
                            <div class="cart-form cart-form--order-detail">
                                <div class="cart-form__line-top"></div>
                                <h2 class="cart-form__title">
                                    Подтверждение заказа
                                </h2>
                                <h4 class="cart-form__sub-title">
                                    Проверьте, пожалуйста, правильность заказа
                                </h4>
                                <div class="cart-form__form-wr">
                                    <form action="" class="cart-form__form clearfix">
                                        <div class="cart-form__table">
                                            <div class="cart-form__table__header">
                                                <div class="cart-form__table__header-img">
                                                    
                                                </div>
                                                <div class="cart-form__table__header-name">Позиция</div>
                                                <div class="cart-form__table__header-num">Кол-во</div>
                                                <div class="cart-form__table__header-price">Цена</div>
                                                <div class="cart-form__table__header-total">Итого</div>
                                            </div>
                                            <div class="cart-form__table__body">
                                                <div class="cart-form__table__box">
                                                    <div class="cart-form__table__box-img">
                                                        <img src="/image/pictures/product1_1-l.png" alt="">
                                                    </div>
                                                    <div class="cart-form__table__box-name">
                                                        Название блюда
                                                    </div>
                                                    <div class="cart-form__table__box-num">1</div>
                                                    <div class="cart-form__table__box-price">50 грн</div>
                                                    <div class="cart-form__table__box-total">50 грн</div>
                                                </div>
                                                <div class="cart-form__table__box">
                                                    <div class="cart-form__table__box-img">
                                                        <img src="/image/pictures/product1_1-l.png" alt="">
                                                    </div>
                                                    <div class="cart-form__table__box-name">
                                                        Название блюда
                                                    </div>
                                                    <div class="cart-form__table__box-num">1</div>
                                                    <div class="cart-form__table__box-price">50 грн</div>
                                                    <div class="cart-form__table__box-total">50 грн</div>
                                                </div>
                                                <div class="cart-form__table__box">
                                                    <div class="cart-form__table__box-img">
                                                        <img src="/image/pictures/product1_1-l.png" alt="">
                                                    </div>
                                                    <div class="cart-form__table__box-name">
                                                        Название блюда
                                                    </div>
                                                    <div class="cart-form__table__box-num">1</div>
                                                    <div class="cart-form__table__box-price">50 грн</div>
                                                    <div class="cart-form__table__box-total">50 грн</div>
                                                </div>
                                                <div class="cart-form__table__box">
                                                    <div class="cart-form__table__box-img">
                                                        <img src="/image/pictures/product1_1-l.png" alt="">
                                                    </div>
                                                    <div class="cart-form__table__box-name">
                                                        Название блюда
                                                    </div>
                                                    <div class="cart-form__table__box-num">1</div>
                                                    <div class="cart-form__table__box-price">50 грн</div>
                                                    <div class="cart-form__table__box-total">50 грн</div>
                                                </div>
                                                <div class="cart-form__eat-box__total cart-form__table__box-bot">
                                                    <span>Сумма: <strong>90грн</strong></span>
                                                </div>
                                                <div class="cart-form__eat-box__total cart-form__table__box-bot">
                                                    <span>Доставка: <strong>90грн</strong></span>
                                                </div>
                                                <div class="cart-form__eat-box__total cart-form__table__box-bot">
                                                    <span>К оплате <strong>90грн</strong></span>
                                                </div>

                                            </div>
                                        </div>
                                    </form>
                                    <div id="chekout__buttons" class="cart-form__buttons">
                                        <a class="open cart-menu "><img class="cart-form__buttons__ok" src="/image/pictures/ok.png" alt="close"></a>
                                        <a><img class="cart-form__buttons__close cart-menu" src="/image/pictures/close.png" alt="close"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="cart-form cart-form--order-detail">
                                <div class="cart-form__line-top"></div>
                                <h2 class="cart-form__title">
                                    Заказ товара
                                </h2>
                                <div class="cart-form__form-wr">
                                    <form action="" class="cart-form__form clearfix">
                                        <div class="cart-form__form__left col-md-6">
                                            <label>Заполните, пожалуйста, форму</label>
                                            <div class="cart-form__form__input-wrap">
                                                <input type="text" placeholder="Введите имя">
                                            </div>
                                            <div class="cart-form__form__input-wrap">
                                                <input type="text" placeholder="Введите имя">
                                            </div>
                                            <div class="cart-form__form__input-wrap">
                                                <input type="text" placeholder="Введите имя">
                                            </div>
                                            <div class="cart-form__form__input-wrap">
                                                <input type="radio" id="r1" name="group1">
                                                <label for="r1">Использовать существующий адрес</label>
                                            </div>
                                        </div>
                                        <div class="cart-form__form__right col-md-6">
                                            <label>Выберите способ доставки</label>
                                            <div class="cart-form__form__input-wrap">
                                                <select name="" id="">
                                                    <option value="1">Способ доставки</option>
                                                </select>
                                            </div>
                                            <div class="cart-form__form__input-wrap">
                                                <textarea name="#" id=""></textarea>
                                            </div>
                                            <div class="cart-form__form__input-wrap">
                                                <input type="radio" id="r2" name="group1">
                                                <label for="r2">Использовать существующий адрес</label>
                                            </div>
                                        </div>
                                    </form>
                                    <div id="chekout__buttons" class="cart-form__buttons">
                                        <a class="open cart-menu "><img class="cart-form__buttons__ok" src="/image/pictures/ok.png" alt="close"></a>
                                        <a><img class="cart-form__buttons__close cart-menu" src="/image/pictures/close.png" alt="close"></a>
                                    </div>
                                </div>
                            </div>
                            <div class="food-menu__single-product">
                                <div class="food-menu__single-product__header">
                                    Комплексный обед №2
                                </div>
                                <div class="food-menu__single-product__inner">
                                    <div class="food-menu__single-product__img">
                                        <img src="/image/pictures/single-eat.png" alt="single-eat.png">
                                    </div>
                                    <div class="food-menu__single-product__descr">
                                        <div class="food-menu__single-product__order">
                                            <div class="cart-form__eat-box__counter food-menu__single-product__counter">
                                                <div class="arrow arrow--inverse">
                                                    <img src="/image/pictures/arrow.png" alt="arrow">
                                                </div>
                                                <div class="number">
                                                    <input readonly="" value="1" type="text">
                                                </div>
                                                <div class="arrow arrow--straight">
                                                    <img src="/image/pictures/arrow.png" alt="arrow">
                                                </div>
                                            </div>
                                            <a href="#">Заказать</a>
                                        </div>
                                        <div class="food-menu__single-product__text">
                                            <p>1. Суп гороховый с копчёностями</p>
                                            <p>2. Отбивная из куриного филе</p>
                                            <p>3. Каша пшеничная с маслом</p>
                                            <p>4. Салат из крабовых палочек</p>
                                        </div>
                                        <div class="food-menu__single-product__total">
                                            <div class="food-menu__content__weight">250г</div>
                                            <div class="food-menu__content__price">45грн</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                             
                            <div class="food-menu__content__header">
								<h5>ОБРАТИТЕ ВНИМАНИЕ!</h5>
								<p>Доставка обедов в офис происходит следующим образом: Накануне, до 17:00, Вы делаете заявку на следующий рабочий день. В назначенное время свежие, горячие обеды будут у Вас в офисе.</p>
							</div>
                            
                            <div class="food-menu__content__product-box-wrap">
                            <?php foreach ($products as $product) { ?>
                            
                          
							<div class="food-menu__content__product-box">
								<div class="food-menu__content__image">
									<!--<img src="/image/pictures/product3_1.png" alt="product">-->
                                    <a href="<?php echo $product['href']; ?>">
                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                                    </a>
								</div>
								<div class="food-menu__content__description">
                                    <!--<a style="color: #333" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>-->
                                    <a href="<?php echo $product['href']; ?>"><h4><?php echo $product['name']; ?></h4></a>
                                    <?php echo $product['description']; ?>
								</div>
								<div class="food-menu__content__weight">
                                    <?php if ($product['weight_class_id']==1) {
                                    echo round($product['weight'], 3);
                                    echo "rг";
                                    } else if($product['weight_class_id']==2) {
                                    echo round($product['weight']);
                                    echo "г"; }?>
								</div>
								<div class="food-menu__content__price">
                                    <?php echo $product['price']; ?>
                                    <?php //if ($product['special']) echo $product['special']; ?>
                                    
									
								</div>
								<div class="food-menu__content__add-to-cart">
										<!--<a href="#"><img src="/image/pictures/cart2.png" alt="cart2"></a>-->
                                        <a onclick="cart.add('<?php echo $product['product_id']; ?>', $(this).next().find('input').attr('value'));"><img src="/image/pictures/cart2.png" alt="cart2"></a>
                                        <!--<a href="#" onclick='add("php", $(this).next().find("input").attr("value");'><img src="/img/cart2.png" alt="cart2"></a>-->
										<div class="cart-form__eat-box__counter">
											<div class="arrow arrow--inverse">
												<img src="/image/pictures/arrow.png" alt="arrow">
											</div>
											<div class="number">
                                                <input readonly value="<?php echo $product['minimum']; ?>" type="text">
											</div>
											<div class="arrow arrow--straight">
												<img src="/image/pictures/arrow.png" alt="arrow">
											</div>
										
								</div>
                                    
                                
                                <!--<button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>-->
                
                                <!--<a onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><img src="/image/pictures/cart.png" alt="cart"></a>-->
								
                                    </div>
                                </div>
                            <?php } ?>
                            
                            </div>
                            <div class="food-menu__total">
                                <div class="food-menu__total__order-price">
                                    <!-- <div class="food-menu__total__header">Сумма заказа</div> -->
                                    <div class="food-menu__total__price tot">0 грн</div>
                                </div>
                                <div class="food-menu__total__delivery-price">
                                    <div class="food-menu__total__header">Количество товара</div>
                                    <div class="food-menu__total__price num">0</div>
                                </div>
                                <div class="food-menu__total__delivery-price">
                                    <a class="header-wrapper__nav__link open" onclick="checkout.view();" href="javascript:void">Оформить заказ</a>
                                </div>
                                
                            </div>

							<!-- end product-box -->
							<?php echo $pagination; ?>
                            <?php echo $results; ?>
						
                
					<!-- food-menu__content end -->
				</div>
        
        
			</div>
        </div>
		</section>
<?php echo $footer; ?>
