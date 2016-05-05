            <div class="container con-mod">
				<div class="food-menu__categories">
					<div class="food-menu__categories__pick-date">Выберите день недели</div>
					<nav class="food-menu__categories__menu">
                        <?php foreach ($filter_groups as $filter_group) { ?>
                            <?php foreach ($filter_group['filter'] as $filter) { ?>
                            
                       
                            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                            <a class="active" href="<?php echo $action . '&filter=' . $filter['filter_id']; ?>"><?php echo $filter['name']; ?></a>
                            <?php } else { ?>
                            <a href="<?php echo $action . '&filter=' . $filter['filter_id']; ?>"><?php echo $filter['name']; ?></a>
                            <?php } ?>
                           
                            <?php } ?>
                        <?php } ?>
					</nav>
				</div>
			</div>






<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script>
