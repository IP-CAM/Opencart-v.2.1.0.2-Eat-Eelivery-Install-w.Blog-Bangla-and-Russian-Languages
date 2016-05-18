<?php echo $header; ?>
<div class="container con-mod">
  <div class="edit-pages">
    <div class="edit-pages__inner account">
      <div class="edit-pages__title">Учетная запись</div>
      <div class="edit-pages__subtitle">Редактирование Ваших данных</div>
      <form action="#" class="edit-pages__form">
        <div class="edit-pages__input-wrap">
          <input type="text" placeholder="Введите имя">
        </div>
        <div class="edit-pages__input-wrap">
          <input type="text" placeholder="Введите номер телефона">
        </div>
        <div class="edit-pages__input-wrap">
          <input type="text" placeholder="Введите E-mail">
        </div>
        <div class="edit-pages__input-wrap">
          <input type="text" placeholder="Введите адрес">
        </div>
        <div class="edit-pages__buttons">
          <a href="#" class="edit-pages__buttons__prev">Назад</a>
          <a href="#" class="edit-pages__buttons__next">Сохранить</a>
        </div>
      </form>
    </div>
  </div>
  <div class="edit-pages">
    <div class="edit-pages__inner account">
      <div class="edit-pages__title">Редактировать адрес</div>
      <div class="edit-pages__subtitle">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</div>
      <form action="#" class="edit-pages__form">
        <div class="edit-pages__input-wrap">
          <input type="text" placeholder="Введите имя">
        </div>
        <div class="edit-pages__input-wrap">
          <input type="text" placeholder="3я улица строителей">
        </div>
        <div class="edit-pages__check-wrap">
          <input type="checkbox" id="lol">
          <label for="lol">Сделать основным адресом</label>
        </div>
        <div class="edit-pages__buttons">
          <a href="#" class="edit-pages__buttons__prev">Назад</a>
          <a href="#" class="edit-pages__buttons__next">Сохранить</a>
        </div>
      </form>
    </div>
  </div>
  <div class="edit-pages">
    <div class="edit-pages__inner adress">
      <div class="edit-pages__title">Список адресов доставки</div>
      <div class="edit-pages__subtitle">Редактирование Ваших данных</div>
      <div class="edit-pages__adress-wrap">
        <div class="edit-pages__adress">
          <div class="edit-pages__adress__name">
            3 улица строителей, Днепропетровск 
          </div>
          <div class="edit-pages__adress__buttons">
            <a href="#" class="edit-pages__adress__edit">Редактировать</a>
            <a href="#" class="edit-pages__adress__delete">Удалить</a>
          </div>
        </div>
        <div class="edit-pages__adress">
          <div class="edit-pages__adress__name">
            3 улица строителей, Днепропетровск 
          </div>
          <div class="edit-pages__adress__buttons">
            <a href="#" class="edit-pages__adress__edit">Редактировать</a>
            <a href="#" class="edit-pages__adress__delete">Удалить</a>
          </div>
        </div>
        <div class="edit-pages__adress">
          <div class="edit-pages__adress__name">
            3 улица строителей, Днепропетровск 
          </div>
          <div class="edit-pages__adress__buttons">
            <a href="#" class="edit-pages__adress__edit">Редактировать</a>
            <a href="#" class="edit-pages__adress__delete">Удалить</a>
          </div>
        </div>
        <div class="edit-pages__adress">
          <div class="edit-pages__adress__name">
            3 улица строителей, Днепропетровск 
          </div>
          <div class="edit-pages__adress__buttons">
            <a href="#" class="edit-pages__adress__edit">Редактировать</a>
            <a href="#" class="edit-pages__adress__delete">Удалить</a>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="edit-pages">
    <div class="edit-pages__inner account">
      <div class="edit-pages__title">Смена пароля</div>
      <div class="edit-pages__subtitle">Редактирование Ваших данных</div>
      <form action="#" class="edit-pages__form">
        <div class="edit-pages__input-wrap">
          <input  placeholder="Введите пароль" type="password">
        </div>
        <div class="edit-pages__input-wrap">
          <input  placeholder="Повторите пароль" type="password">
        </div>
        <div class="edit-pages__buttons">
          <a href="#" class="edit-pages__buttons__prev">Назад</a>
          <a href="#" class="edit-pages__buttons__next">Сохранить</a>
        </div>
      </form>
    </div>
  </div>
  <div class="edit-pages">
    <div class="edit-pages__inner account">
      <div class="edit-pages__title">Ваш заказ принят!</div>
      <div class="edit-pages__subtitle">Если у Вас возникли вопросы, пожалуйста, свяжитесь с нами.</div>
      <a href="#" class="edit-pages__buttons__next">Ок</a>
    </div>
  </div>
</div>






<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($products) { ?>
      <table class="table table-bordered table-hover">
        <thead>
          <tr>
            <td class="text-center"><?php echo $column_image; ?></td>
            <td class="text-left"><?php echo $column_name; ?></td>
            <td class="text-left"><?php echo $column_model; ?></td>
            <td class="text-right"><?php echo $column_stock; ?></td>
            <td class="text-right"><?php echo $column_price; ?></td>
            <td class="text-right"><?php echo $column_action; ?></td>
          </tr>
        </thead>
        <tbody>
          <?php foreach ($products as $product) { ?>
          <tr>
            <td class="text-center"><?php if ($product['thumb']) { ?>
              <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
              <?php } ?></td>
            <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
            <td class="text-left"><?php echo $product['model']; ?></td>
            <td class="text-right"><?php echo $product['stock']; ?></td>
            <td class="text-right"><?php if ($product['price']) { ?>
              <div class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <b><?php echo $product['special']; ?></b> <s><?php echo $product['price']; ?></s>
                <?php } ?>
              </div>
              <?php } ?></td>
            <td class="text-right"><button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></button>
              <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-times"></i></a></td>
          </tr>
          <?php } ?>
        </tbody>
      </table>
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>