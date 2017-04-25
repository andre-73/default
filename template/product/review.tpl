<?php if ($reviews) { ?>
	
						<div class="testimonials-body">
<ul>
<?php foreach ($reviews as $review) { ?>
								<li>
									<span class="img">
										<img src="/image/catalog/demo/test.png" alt="">
									</span>
									<p class="name-rating">
										<?php echo $review['author']; ?>
										<span>
											 <?php for ($i = 1; $i <= 5; $i++) { ?>
      <?php if ($review['rating'] < $i) { ?>
     <i class="fa fa-star-half-o"></i><i class="fa fa-star-o fa-stack-2x"></i>
      <?php } else { ?>
   
	 <i class="fa fa-star"></i>
      <?php } ?>
      <?php } ?>
										</span>
									</p>
									<div class="msg">
										<?php echo $review['text']; ?>
									</div>
									<span class="rating-date"><?php echo $review['date_added']; ?></span>
								</li>
								    <?php } ?>
								</ul>

</div>
 <?php } ?>