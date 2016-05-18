<?php if (!isset($redirect)) { ?>


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
                
                <?php foreach ($products as $product) { ?>
                <div class="cart-form__table__box">
                    <div class="cart-form__table__box-img">
                        <img src="<?php echo $product['image']; ?>" alt="">
                        <!--<img src="/image/pictures/product1_1-l.png" alt="">-->
                    </div>
                    <div class="cart-form__table__box-name">
                        <?php echo $product['name']; ?>
                    </div>
                    <div class="cart-form__table__box-num"><?php echo $product['quantity']; ?></div>
                    <div class="cart-form__table__box-price"><?php echo $product['price']; ?></div>
                    <div class="cart-form__table__box-total"><?php echo $product['total']; ?></div>
                </div>
                <?php } ?>
                
                
                
                
              
                
                
                <?php foreach ($totals as $total) { ?>
                
                <div class="cart-form__eat-box__total cart-form__table__box-bot">
                    <span><?php echo $total['title']; ?>: <strong><?php echo $total['text']; ?></strong></span>
                </div>
                
                <?php } ?>
                

            </div>
        </div>
    </form>

</div>


<?php if (false){ ?>

<div class="table-responsive">
  <table class="table table-bordered table-hover">
    <thead>
      <tr>
        <td class="text-left"><?php echo $column_name; ?></td>
        <td class="text-left"><?php echo $column_model; ?></td>
        <td class="text-right"><?php echo $column_quantity; ?></td>
        <td class="text-right"><?php echo $column_price; ?></td>
        <td class="text-right"><?php echo $column_total; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
      <tr>
        <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
          <?php } ?>
          <?php if($product['recurring']) { ?>
          <br />
          <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
          <?php } ?></td>
        <td class="text-left"><?php echo $product['model']; ?></td>
        <td class="text-right"><?php echo $product['quantity']; ?></td>
        <td class="text-right"><?php echo $product['price']; ?></td>
        <td class="text-right"><?php echo $product['total']; ?></td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td class="text-left"><?php echo $voucher['description']; ?></td>
        <td class="text-left"></td>
        <td class="text-right">1</td>
        <td class="text-right"><?php echo $voucher['amount']; ?></td>
        <td class="text-right"><?php echo $voucher['amount']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td colspan="4" class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
        <td class="text-right"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </tfoot>
  </table>
</div>

<?php } ?>


<?php echo $payment; ?>
<?php } else { ?>
<script type="text/javascript"><!--
location = '<?php echo $redirect; ?>';
//--></script>
<?php } ?>
