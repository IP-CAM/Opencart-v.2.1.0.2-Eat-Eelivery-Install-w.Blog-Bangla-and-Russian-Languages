<div id="chekout__buttons" class="cart-form__buttons">
            
    <a id="button-confirm">
        <img class="cart-form__buttons__ok" src="/image/pictures/ok.png" alt="close">
    </a>
    <a class="close-order cart-menu checkout__close">
        <img class="cart-form__buttons__close" src="/image/pictures/close.png" alt="close">
    </a>

</div>

<?php if (false) { ?>
<div class="buttons">
  <div class="pull-right">
    <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" data-loading-text="<?php echo $text_loading; ?>" />
  </div>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('#button-confirm').on('click', function() {
	$.ajax({
		type: 'get',
		url: 'index.php?route=payment/free_checkout/confirm',
		cache: false,
		beforeSend: function() {
			$('#button-confirm').button('loading');
		},
		complete: function() {
			$('#button-confirm').button('reset');
		},
		success: function() {
			location = '<?php echo $continue; ?>';
		}
	});
});
//--></script>
