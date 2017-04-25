
						<?php foreach ($products as $product) { ?>
							<div class="watched-item clearfix">
								<div class="watched-item-inner">
									<a href="<?php echo $product['href']; ?>" class="picture">
										<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" >
										<p><?php echo $product['name']; ?></p>
									</a>
								</div>
							</div>
							 <?php } ?>
						
				