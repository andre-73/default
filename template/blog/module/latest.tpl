<div class="news-articles">
				<div class="container">
					<?php echo $heading_title; ?>
					<p class="watch-more"><a href="/index.php?route=blog/latest">Смотреть больше статей</a></p>
					<div class="main-slider">
						 <?php foreach ($articles as $article) { ?>
						<div class="slide-item">
							<div class="slide-item-inner">
								<img src="<?php echo $article['thumb']; ?>" alt="<?php echo $article['name']; ?>" title="<?php echo $article['name']; ?>" class="img-responsive" />
								<p class="question"><?php echo $article['name']; ?></p>
								<p class="answer">
									<?php echo $article['description']; ?>
								</p>
								<p class="link"><a href="<?php echo $article['href']; ?>"><?php echo $button_more; ?></a></p>
							</div>
						</div>
						<?php } ?>
					</div>
				</div>
			</div>
