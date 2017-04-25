<?php echo $header; ?><script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script><?php if( ! empty( $mfilter_json ) ) { echo '<div id="mfilter-json" style="display:none">' . base64_encode( $mfilter_json ) . '</div>'; } ?>
 <?php if ($categories) { ?>
<main>
			<div class="popular nograd">
				<div class="container">
				<p class="block-title mrgcs"><?php echo $heading_title; ?></p>
					<p class="sub-title">Выберите услугу в одной из самых трендовых категорий</p>
					
					<div class="wrap-cat list clearfix">
					<?php foreach ($categories as $category) { ?>
						<div class="item-cat">
						 
            
          
							<a href="<?php echo $category['href']; ?>">
								<div class="item-cat-bar">
									<p><?php echo $category['name']; ?></p>
								</div>
								<img src="<?php echo $category['image']; ?>" alt="pic1" class="img-responsive">
							</a>
						</div>
						  <?php } ?>
						  </div>
				</div>
			</div>
</main>

 <?php } else { ?>
 
  <?php if ($products) { ?>
 <main class="small-menu-page" >

			<div class="catalog-top"  >
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
				<div class="container">
					<div class="filters col-lg-3 col-md-4 hidden-sm hidden-xs ">
					<?php echo $column_left; ?>
						</div>
						
						<div id="mfilter-content-container">
						<div class="categories-items col-lg-12 col-md-11 col-sm-15" id="content" >
						<div class="categories-sort clearfix col-lg-15 col-md-15">
							<!-- <div class="mob-list-cat hidden-lg hidden-md col-sm-15 col-xs-15">
								<select name="mob-list-cat" id="mob-list-cat">
									
								</select>
							</div> -->
					<div class="servise-include hidden-sm hidden-xs">
								<p>Услуга включает</p>
								<ul>
									<li>Пункт 1</li>
									<li>Пункт 2</li>
									<li>Пункт 3</li>
									<li>Пункт 4</li>
								</ul>
							</div>
							<ul class="sort-list  hidden-sm hidden-xs">
								<li>Сортировка:</li>
								<?php foreach ($sorts as $sorts) { ?>
								<li><a href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a></li>
 <?php } ?>
							</ul>
						</div>
						<?php foreach ($products as $product) { ?>
							<div class="item-servise">
							<div class="item-servise-inner">
                    <div class="top-bar">
                        <ul>
                            <li>
                                <?php echo $product[ 'manufacturer']; ?>
                            </li>
                            <li><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span></li>
                        </ul>
                    </div><span class="clearfix"><a href="<?php echo $product['href']; ?>" class="picture"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a><a href="<?php echo $product['href']; ?>"><p><?php echo $product['name']; ?></p></a>
					<p class="rating"><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span></p>
					</span>
                    <div class="item-servise-stuff">
                        <ul>
                            <li>
                                <a href="#" class="like"></a>
								
                            </li>
							<?php if($product[ 'isbn']) {?>
							<li><a href="#" class="medal"></a></li>
										<li><a class="popular-tag"><?php echo $product[ 'isbn']; ?></a></li>
							<?php } ?>
                            <li class="name">
                                <a href="#">
                                    <?php echo $product[ 'manufacturer']; ?>
                                </a>
                            </li>
                            <li class="price">
                                от <strong><?php echo $product['price']; ?></strong>
                            </li>
                        </ul>
                    </div>
                </div>
						</div>
						 <?php } ?>
						 <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
						</div>
						</div>
						  
					</div>
					
					
			</div>
		
			
</main>
 
       <?php }  else { ?>
	  <main class="small-menu-page">  
	   <div class="catalog-top"  >
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
				<div class="container">
				<p class="main-text"><?php echo $text_empty; ?></p>
				</div>
				</div>
			
			
	   </main>
	   
       <?php } ?>
       <?php } ?>



<?php echo $footer; ?>
