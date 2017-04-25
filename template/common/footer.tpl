

<footer>
			<div class="container">
				<div class="footer-left col-lg-11 col-md-10 col-sm-15 col-xs-15">
					<ul class="footer-menu col-lg-15 col-md-15 hidden-sm hidden-xs">
					 <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
						
					</ul>
					<div class="btn-group dropup col-lg-15 co-md-15 col-sm-15 col-xs-15">
				<!-- 	  <button type="button" class="btn btn-default dropdown-toggle hidden-sm hidden-xs" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    USD <span class="caret"></span>
					  </button>
					  <ul class="dropdown-menu hidden-sm hidden-xs">
					    <li><a href="#">RUB</a></li>
					    <li><a href="#">UA</a></li>
					    <li><a href="#">EU</a></li>
					  </ul>
					  <ul class="lang hidden-sm hidden-xs">
					  	<li><a href="#" class="active_lang">Ru</a></li>
					  	<li><a href="#">En</a></li>
					  </ul> -->
					   <?php echo $language; ?>
					  <ul class="socials">
					  	<li><a href="#"><i class="fa fa-vk" aria-hidden="true"></i></a></li>
					  	<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					  	<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					  	<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
					  	<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
					  	<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					  </ul>
					</div>
				</div>
				<div class="footer-right col-lg-4 col-md-5 hidden-sm hidden-xs">
					<p><strong>SmartExpert</strong> - маркетинговая платформа по привлечению клиентов</p>
				</div>
			</div>
		</footer>
</div>
</body></html>