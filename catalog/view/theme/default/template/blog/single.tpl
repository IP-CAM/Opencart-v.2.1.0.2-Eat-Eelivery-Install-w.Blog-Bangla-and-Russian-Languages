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





        <section class="new-recipes">
			<div class="container con-mod">
				<div class="new-recipes__inner">
					<div class="new-recipes__title title">
						<h2>ДРУГИЕ РЕЦЕПТЫ</h2>
					</div>
					<div class="new-recipes__container">
                    <?php if( count ($recent_posts) > 0 ) : ?>

                        <?php 
                        $inc = 0;
                        foreach ($recent_posts as $post) : ?>

                        <div class="new-recipes__box">
							<div class="new-recipes__box__img">
								<img src="<?php echo $thumbnail_recent[$inc]; ?>" alt="<?php echo $post['title']; ?>">
							</div>
							<div class="new-recipes__box__description">
								<h5><?php echo $post['title']; ?></h5>
                                
                                
                                <?php 
                                $decoded_content = html_entity_decode($post['content']);
                                $stripted_content = strip_tags($decoded_content);
                                $limited_content = words_limit($stripted_content, 35, '...');
                                //var_dump($stripted_content);
                                //var_dump($limit_content);
                                ?>
                                
                                
								<p><?php echo $limited_content; ?></p>
								<div class="new-recipes__box__info">
									<div class="new-recipes__box__data"><?php echo str_replace("-",".",substr($post["date_modified"],0,10)) ?></div>
									<a href="/index.php?route=blog/single&amp;pid=<?php echo $post['ID']; ?>" class="new-recipes__box__read">Читать</a>
								</div>
							</div>
						</div>
                        
                        
                        <?php 
                        $inc++;
                        endforeach; ?>

                    <?php else: ?>
                        <div class="alert alert-warning"><?php echo $not_found_recent; ?></div>
                    <?php endif; ?>    
                        
						
					</div>
				</div>
			</div>
		</section>




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