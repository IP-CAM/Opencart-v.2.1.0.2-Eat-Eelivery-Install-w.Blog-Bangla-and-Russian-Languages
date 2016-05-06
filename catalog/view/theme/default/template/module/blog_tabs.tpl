        <section class="new-recipes">
			<div class="container con-mod">
				<div class="new-recipes__inner">
					<div class="new-recipes__title title">
						<h2>НОВЫЕ РЕЦЕПТЫ</h2>
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
                                $limited_content = words_limit($stripted_content, $limit_content, '...');
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








