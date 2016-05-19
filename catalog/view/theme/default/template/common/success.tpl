<?php echo $header; ?>

<div class="container con-mod">
  <div class="edit-pages">
    <div class="edit-pages__inner account">
      <div class="edit-pages__title">Ваш заказ принят!</div>
      <div class="edit-pages__subtitle">Если у Вас возникли вопросы, пожалуйста, свяжитесь с нами.</div>
      <div class="edit-pages__buttons">
          <a href="/index.php?route=account/account" class="edit-pages__buttons__prev">Личный кабинет</a>
          <a href="<?php echo $continue; ?>" class="edit-pages__buttons__next"><?php echo $button_continue; ?></a>
      </div>
    </div>
  </div>
</div>

<?php if (false) { ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php } ?>
<?php echo $footer; ?>