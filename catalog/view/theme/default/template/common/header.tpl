<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>


<script src="catalog/view/javascript/jquery/jquery-2.1.3.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/magnific-popup/magnific-popup.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/owl-carousel2/owl.carousel.css" rel="stylesheet" media="screen" />
<link href="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/fonts.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/main.css" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/media.css" rel="stylesheet">
<script src="catalog/view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/datetimepicker/bootstrap-datetimepicker.min.js" type="text/javascript"></script>


<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>

<body class="<?php echo $class; ?>">
    <div id="chekout__form">
    <?php //echo $checkout_page; ?>
    </div>
    
    <div  id="preloader">
	    <div class="preloader-container">
	       <img src="/image/pictures/pizza.gif">
	    </div>
	</div>

	<a href=".for-magnific" class="button__contact-us">Есть вопросы?<br>Свяжитесь с нами!</a>
    <div class="main-wrapper">
<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>




        <div class="container con-mod">
			<div class="header-wrapper">
                <?php //echo $cart; ?>
                

                
				<header class="header">
					<div class="header__left-part">
						<div class="header__logo">
							<!--<img src="/image/pictures/logo.png" alt="logo">-->
                            <?php if ($logo) { ?>
                                <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                            <?php }?>
						</div>
						<div class="header__slogan">
							Самые вкусные и полезные<br>
		 					обеды в Днепропетровске
						</div>
					</div>
					<div class="header__right-part">
						<div class="header__phones">
							<span class="header__phones__phone">
								&nbsp;
							</span>
							<span class="header__phones__phone">
								(067) 568 35 35
							</span>
							<span class="header__phones__phone">
								&nbsp;
							</span>
						</div>
						<div class="header__buttons">
							<a href=".login-form" class="header__buttons__btn open-popup" onclick="account.login()">
                                
								<img src="/image/pictures/man.png" alt="man">
                                <?php if ($logged) { ?>
                                
                                    
                                
                                <img class="logged" src="/image/pictures/ok2.png">
                                
                                <?php } ?>
							</a>
							<a href=".for-magnific" class="header__buttons__btn open-popup">
								<img src="/image/pictures/phone.png" alt="phone">
							</a>
                            <?php echo $cart; ?>
                            
							<!--<a href="#" class="header__buttons__btn cart">
								<img src="/image/pictures/cart.png" alt="cart">
                                <div class="totprod">5</div></a>-->
						
				
				<!-- toggle-button start -->
					<div class="toggle-button">
						<div></div>
						<div></div>
						<div></div>
					</div>
				<!-- toggle-button end -->
				
                <?php if ($categories) { ?>
                    <div class="header-wrapper__nav-mob">
					<div class="header-wrapper__nav-mob__close">
						X
					</div>
                    
					<div class="header-wrapper__nav-mob__inner">
                        <?php foreach ($categories as $category) { ?>
                            
                            <a class="header-wrapper__nav-mob__link hvr-underline-from-center" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                        <?php } ?>
                    </div>
				</div>
                    <div class="header-wrapper__nav hidden-xsnav hidden-xs">
                        <div class="header-wrapper__nav__inner">
                          
                                    
                            <?php foreach ($categories as $category) { ?>
                                <?php $active_url= str_replace('&','&amp;',$_SERVER['REQUEST_URI']); ?>                                    
                                <?php if ($category['href']===$active_url){ ?>
                                    
                                        <a class="header-wrapper__nav__link active" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    <?php }else{ ?>
                                        <a class="header-wrapper__nav__link" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                                    <?php } ?>
                                
                            <?php } ?>
                        </div>
                    </div>
                <?php } ?>
                
                
                
			</div>
		</div>
        
    <div id="banner_head" class="slider-wrapper">
        <div class="container con-mod slider-wrapper__inside">
            <div class="slider owl-carousel">
            <?php foreach ($banners as $banner) { ?>	
                <div class="slider__item">
                    <?php if ($banner['link']) { ?>
                        <a href="<?php echo $banner['link']; ?>">
                            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                        </a>
                    <?php } else { ?>
                        <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                    <?php } ?>
                </div>
            <?php } ?>
            </div>
            <div class="slider__prev"></div>
            <div class="slider__next"></div>
            <a href="/index.php?route=information/information&information_id=9" class="slider__item__link">Cмотреть все акции</a>
        </div>
    </div>
