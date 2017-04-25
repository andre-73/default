<?php echo $header; ?>
 <?php if ($products) { ?>
 <main class="small-menu-page" id="mfilter-content-container">

			<div class="catalog-top"  >
				<div class="container">
					<p class="main-text"><?php echo $heading_title; ?></p>
					
					 <?php $j=0; foreach ($breadcrumbs as $breadcrumb) { $j++; ?>
					  <?php if ($j == 2) { ?>
					
					<?php } ?>
					<?php } ?>
				</div>
			</div>
			
				<div class="categories-wrap">
				<div class="container">
					<div class="filters col-lg-3 col-md-4 hidden-sm hidden-xs">
					<?php echo $column_left; ?>
						</div>
						
						
						<div class="categories-items col-lg-12 col-md-11 col-sm-15"  id="content" >
						<div class="categories-sort clearfix col-lg-15 col-md-15">
							<div class="mob-list-cat hidden-lg hidden-md col-sm-15 col-xs-15">
								<select name="mob-list-cat" id="mob-list-cat">
									<option value="Категория 1">Категория 1</option>
									<option value="Категория 2">Категория 2</option>
									<option value="Категория 3">Категория 3</option>
									<option value="Категория 4">Категория 4</option>
									<option value="Категория 5">Категория 5</option>
									<option value="Категория 6">Категория 6</option>
									<option value="Категория 7">Категория 7</option>
									<option value="Категория 8">Категория 8</option>
								</select>
							</div>
					
							<ul class="sort-list  hidden-sm hidden-xs">
								<li>Сортировка:</li>
								<li><a href="#">Новинки</a></li>
								<li><a href="#">Рейтинг исполнителя</a></li>
								<li><a href="#">Популярное</a></li>
							</ul>
						</div>
						<?php foreach ($products as $product) { ?>
						<?php if($product['subtract']==1) {?>
							<div class="item-servise">
							<div class="item-servise-inner">
								<div class="top-bar">
									<ul>
										<li><?php echo $product['manufacturer']; ?></li>
										<li></li>
									</ul>
								</div>
								<span class="clearfix">
									<a href="<?php echo $product['href']; ?>" class="picture"><img src="<?php echo $product['thumb']; ?>" alt="" class="img-responsive"></a>
									<a href="<?php echo $product['href']; ?>"><p><?php echo $product['name']; ?></p></a>
									<p class="rating"><img src="img/star.png" alt=""><span>(355)</span></p>
								</span>
								<div class="item-servise-stuff">
									<ul>
										<li><a href="#" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="like"></a></li>
										<!-- <li><a href="#" class="medal"></a></li>
										<li><a href="#" class="popular-tag">Популярное</a></li> -->
										<li class="name"><?php echo $product['manufacturer']; ?></li>
										<li class="price">от <strong><?php echo $product['price']; ?></strong></li>
									</ul>
								</div>
							</div>
						</div>
						 <?php } ?>
						 <?php } ?>
						</div>
					</div>
					
					
			</div>
		
			
</main>
 
       <?php } else { ?>
	   
	    <main class="small-menu-page" id="mfilter-content-container">

			<div class="catalog-top"  >
				<div class="container">
					<p class="main-text"><?php echo $heading_title; ?></p>
					
					 <?php $j=0; foreach ($breadcrumbs as $breadcrumb) { $j++; ?>
					  <?php if ($j == 2) { ?>
					
					<?php } ?>
					<?php } ?>
				</div>
			</div>
	   <div class="categories-wrap">
				<div class="container">
	    <p><?php echo $text_empty; ?></p>
		</div></div>
		</main>
		
		 <?php } ?>
<script type="text/javascript"><!--
$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '&search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
--></script>
<?php echo $footer; ?>