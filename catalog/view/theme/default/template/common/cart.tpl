<div class="cart">
<a class="header__buttons__btn cart">
	<img src="/image/pictures/cart.png" alt="cart">
    <?php if($text_items > 0){ ?>
    <div class="totprod"><?php echo $text_items; ?></div>
    <?php } ?>
</a>
</div>
</div>
	</div>
		</header>
      <div class="cart">
      <div class="cart-form cart-form--your-choose">
          
          
            <div class="cart-form--parent">
        
                <?php if ($products || $vouchers) { ?>
						<div class="cart-form__line-top"></div>
						<h2 class="cart-form__title">
							Ваш выбор
						</h2>
                         
						<div class="cart-form__eat-box-wrapper">
                           
                             <?php foreach ($products as $product) { ?>
                            
                            
							<div class="cart-form__eat-box">
                                
								<a onclick="cart.remove('<?php echo $product['cart_id']; ?>');" class="cart-form__delete"><span>x</span></a>
								<div class="cart-form__eat-box__img">
									<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
								</div>
								<div class="cart-form__eat-box__name">
									<?php echo $product['name']; ?>
								</div>
								<div class="cart-form__eat-box__info">
                                    <div class="cart-form__eat-box__price">
										<?php echo $product['total']; ?>
									</div>
									<div class="cart-form__eat-box__counter">
                                        <div onclick=" cart.update2('<?php echo $product['cart_id']; ?>', other.cartprev('<?php echo $product['quantity']; ?>'));" class="arrow arrow--inverse">
											<img src="/image/pictures/arrow.png" alt="arrow">
										</div>
										<div class="number">
                                            <input readonly type="text" value="<?php echo $product['quantity']; ?>">
										</div>
										<div onclick="cart.update2('<?php echo $product['cart_id']; ?>', other.cartnext('<?php echo $product['quantity']; ?>'))" class="arrow">
											<img src="/image/pictures/arrow.png" alt="arrow">
										</div>

									</div>
								</div>
							</div>
							
                             
                             
							
                            
                            <?php }?>
						</div>
                        
                        <div>
                            
                              <?php //var_dump($totals); ?>
                              <div class="cart-form__eat-box__total"><span>К оплате <strong><?php echo $totals[0]['text']; ?></strong></span></div>
                             
                              
                              
                                                       
                            <p class="text-right"><a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><strong><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p>
                        </div>
                        
						<div class="cart-form__buttons">
							<!--<a class="open cart-menu " onclick="other.cartformorderdetail();"><img class="cart-form__buttons__ok" src="/image/pictures/ok.png"  alt="close"></a>-->
                            <a class="open cart-menu " onclick="checkout.view();"><img class="cart-form__buttons__ok" src="/image/pictures/ok.png"  alt="close"></a>
							<a><img class="cart-form__buttons__close cart-menu" src="/image/pictures/close.png" alt="close"></a>
						</div>

                    <?php } else { ?>
                    <div class="cart-form__line-top"></div>
                            <h2 class="cart-form__title">
                                Корзина пуста
                            </h2>
                        
                    <?php } ?>
                    
                    
                    </div> 
                                        
					</div>
					<!-- end cart -->
      </div>
                    
      

