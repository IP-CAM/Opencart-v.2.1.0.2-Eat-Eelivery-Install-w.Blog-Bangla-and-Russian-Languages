



<div id="banner<?php echo $module; ?>" class="slider-wrapper">
    <div class="container con-mod slider-wrapper__inside">
        <div class="slider owl-carousel">
        <?php foreach ($banners as $banner) { ?>	
			<div class="slider__item">
				<?php if ($banner['link']) { ?>
                    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" /></a>
                <?php } else { ?>
                    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
                <?php } ?>
            </div>
        <?php } ?>
		</div>
		<div class="slider__prev"></div>
		<div class="slider__next"></div>
		<a href="#" class="slider__item__link">Cмотреть все акции</a>
	</div>
</div>


