<?php echo $header; ?><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?><div id="mfilter-content-container">
 <?php if ($products) { ?>
 <main class="small-menu-page">
			<div class="catalog-top" >
				<div class="container">
					<p class="main-text"><?php echo $heading_title; ?></p>
					
					 <?php $j=0; foreach ($breadcrumbs as $breadcrumb) { $j++; ?>
					  <?php if ($j == 2) { ?>
					<p class="sub-text">в разделе «<?php echo $breadcrumb['text']; ?>»</p>
					<?php } ?>
					<?php } ?>
				</div>
			</div>
			
				<div class="categories-wrap">
				<div class="container" id="content">
					<div class="filters col-lg-3 col-md-4 hidden-sm hidden-xs" id="column-left">
					<?php echo $column_left; ?>
						</div>
						
						
						<div class="categories-items col-lg-12 col-md-11 col-sm-15" id="content">
						<div class="categories-sort clearfix col-lg-15 col-md-15">
							<div class="mob-list-cat hidden-lg hidden-md col-sm-15 col-xs-15">
								<select name="mob-list-cat" id="mob-list-cat">
									
								</select>
							</div>
					
							<ul class="sort-list  hidden-sm hidden-xs">
								<li>Сортировка:</li>
<?php foreach ($sorts as $sorts) { ?>
								<li><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
 <?php } ?>
								<!-- <li><a href="#">Рейтинг исполнителя</a></li> -->
								<!-- <li><a href="#">Популярное</a></li> -->
							</ul>
						</div>
						<?php foreach ($products as $product) { ?>
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
						</div>
					</div>
					
					
			</div>
			
</main>
 
       <?php } ?>
	   
	   
       </div>
<?php echo $footer; ?>