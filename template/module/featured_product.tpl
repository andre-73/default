<div class="mostly-ordered">
				<div class="container">
				<?php echo $heading_title; ?>
				
					
					
					<div class="servises-wrap clearfix">
					<?php foreach ($products as $product) { ?>
						<div class="item-servise col-lg-3 col-md-5 col-sm-5 col-xs-15">
							<div class="item-servise-inner">
								<div class="top-bar">
									<ul>
										<li><a href="#">Name Surname</a></li>
										
									</ul>
								</div>
								<span class="clearfix">
									<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a>
									<a href="<?php echo $product['href']; ?>"><p><?php echo $product['description']; ?></p></a>
									
								</span>
								<div class="item-servise-stuff">
									<ul>
										<li><a href="#" class="like"></a></li>
									
										
										<li class="name"><a href="#"><?php echo $product['name']; ?></a></li>
										<li class="price"><?php echo $text_tax; ?> <strong><?php echo $product['price']; ?></strong></li>
									</ul>
								</div>
							</div>
						</div>
			<?php } ?>
					</div>
				</div>
			</div>



