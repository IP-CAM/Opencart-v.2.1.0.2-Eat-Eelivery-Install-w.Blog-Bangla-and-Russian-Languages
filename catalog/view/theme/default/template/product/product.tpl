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
                    
                    
                        <div class="food-menu__content">
                            <div class="food-menu__single-product">
                                <div class="food-menu__single-product__header">
                                    <?php echo $heading_title; ?>
                                </div>
                                <div class="food-menu__single-product__inner">
                                    <div class="food-menu__single-product__img">
                                        <!--<img src="/image/pictures/single-eat.png" alt="single-eat.png">-->
                                        <?php if ($thumb) { ?>
                                        <ul class="thumbnails">
                                            <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                                        </ul>            
                                        <?php } ?>
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
                                            <a class="noclick" onclick="cart.add('<?php echo $product_id; ?>', $(this).prev().find('input').attr('value'));" href="#">Заказать</a>
                                        </div>
                                        <div class="food-menu__single-product__text">
                                            <?php echo $description; ?>
                                        </div>
                                        <div class="food-menu__single-product__total">
                                            <div class="food-menu__content__weight">
                                            <?php if ($weight_class_id==1) {
                                            echo round($weight, 3);
                                            echo "кг";
                                            } else if($weight_class_id==2) {
                                            echo round($weight);
                                            echo "г"; }?>
                                            </div>
                                            <div class="food-menu__content__price"><?php echo $price; ?></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			
     
        </section>




<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});
//--></script>
<?php echo $footer; ?>
