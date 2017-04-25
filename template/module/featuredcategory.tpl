


			<div class="popular">
				<div class="container">
					<?php echo $heading_title; ?>
					<div class="wrap-cat clearfix">
						<?php foreach ($categories as $category) { ?>
						<div class="item-cat">
							<a href="<?php echo $category['href']; ?>">
								<div class="item-cat-bar">
									<p><?php echo $category['name']; ?></p>
								</div>
								<img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" />
							</a>
						</div>
						<?php } ?>
						<p class="watch-more"><a href="/index.php?route=product/category&path=137">Смотреть все</a></p>
				</div>
				</div>
			</div>	
