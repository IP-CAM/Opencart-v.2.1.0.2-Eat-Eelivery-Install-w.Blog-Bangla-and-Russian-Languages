<?php echo $header; ?>

<div class="recipe">
			<div class="container con-mod">
				<div class="recipe__inner">
					<div class="recipe__title title">
						<h2><?php echo ucfirst($post['title']); ?></h2>
					</div>
					<div class="recipe__container">
						<div class="recipe__box">
							<div class="recipe__box__image">
								<img src="<?php echo $post['post_thumbnail']; ?>" alt="<?php echo ucfirst($post['title']); ?>">
							</div>
							<div class="recipe__box__ingridients">
															
                                <?php echo html_entity_decode($post['excerpt']); ?>
							</div>
						</div>
						<div class="recipe__formula">
							
								<?php echo html_entity_decode($post['content']); ?>
							
						</div>
						<!--<div class="recipe__socials">
							<div class="recipe__socials__descr">Поделитсья</div>
							<a href="#" class="recipe__socials__link fb"></a>
							<a href="#" class="recipe__socials__link tw"></a>
							<a href="#" class="recipe__socials__link inst"></a>
							<a href="#" class="recipe__socials__link vk"></a>
						</div>-->
					</div>
				</div>
			</div>
		</div>

<script type="text/javascript"><!--
$(document).ready(function() {
  $('.imagepopups').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//--></script> 

<?php echo $footer; ?>