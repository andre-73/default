<?php echo $header; ?>
<main>
<div class="main-top">
				<div class="container">
<?php echo $content_top; ?>

<div class="down-bar">
						<p><?=$picasso_1; ?> <?=$total_pro; ?> <?=$picasso_2; ?></p>

					</div>

</div>

			</div>

<?php echo $content_bottom; ?>

<div class="watched-wrap">
				<div class="container">
					<div class="watched clearfix">
					
						<p class="block-title">Вы недавно просматривали</p>
						<div class="watched-items-wrap">
						<?php echo $column_left; ?>
						
					</div>
					</div>
				</div>
			</div>


  </main>  

<?php echo $footer; ?>