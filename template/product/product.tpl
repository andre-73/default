<?php echo $header; ?>
	<main class="small-menu-page">
			<div class="item-page-wrap">
			
				<div class="item-top-info">
					<p class="item-category">
					
					</p>
					<p class="item-category">
					 <?php foreach ($breadcrumbs as $breadcrumb) { ?>
					    <?php if($breadcrumb == end($breadcrumbs)) {?>
						<span style="color:#9E9C9C;" ><?php echo $breadcrumb['text']; ?></span>
						 <?php  } else {?>
						 <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a> /
						 <?php } ?>
						 <?php } ?>
					</p>
					<div class="item-nav clearfix">
						<ul>
							<li><a href="<?php echo $url; ?>#">Обзор</a></li>
							<li><a href="<?php echo $url; ?>#opisan" >Описание</a></li>
							<li><a href="<?php echo $url; ?>#podrob" >Подробности</a></li>
							<li><a href="<?php echo $url; ?>#otziv">Отзывы</a></li>
						</ul>
						<ul>
							<li><a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i>Нравится</a></li>
							<li class="arrow_box"><?php echo $product_id; ?></li>
						</ul>
					</div>
				</div>
			
			<div class="main-item-info-wrap clearfix">
					<div class="main-info">
					<p class="title-item"><?php echo $heading_title; ?></p>
					<ul class="info-header">
							<li><img src="image/catalog/demo/star.png" alt=""></li>
							<li>(385)</li>
							<li>15 заявок в очереди</li>
						</ul>
					
									<div class="item-slider">
							<span class="pagingInfo"></span> 
							<div class="item-slider-body">
								<div class="slide">
									<img src="<?php echo $popup; ?>" itle="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>">
								</div>
							 <?php foreach ($images as $image) { ?>
								<div class="slide">
									<img src="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</div>
								   <?php } ?>
         
							</div>
							<div class="item-slider-nav">
								<div class="slide">
									<img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</div>
								 <?php foreach ($images as $image) { ?>
								<div class="slide">
									<img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
								</div>
								   <?php } ?>
							</div>
						</div>
						 <?php if ($products2) { ?>
						 
						 <div class="compare-pak">
							<p class="item-part-title">
								Сравнение пакетов
							</p>
							<table>
								<tbody>
									<tr class="table-head">
										<td> </td>
										<?php foreach ($products2 as $product2) { ?>
										<td> <span><?php echo $product2['price']; ?></span> <?php echo $product2['model']; ?></td>
										<?php } ?>
										
									</tr>
									<tr>
										<td> Описание</td>
										<?php foreach ($products2 as $product2) { ?>
										<td>
											<p><?php echo $product2['ean']; ?></p>
											<?php echo $product2['jan']; ?>
										</td>
										<?php } ?>
										
									</tr>
									<?php $j=0; foreach ($products2 as $product2) { $j++; ?>
									
									<?php foreach($product2['attribute_groups'] as $attribute_group) { ?>
									
									<?php $kam=-1; foreach ($attribute_group['attribute'] as $attribute) { $kam++; ?>
									<?php if($j==1) {?>
									<tr>
										<td><?php echo $attribute['name']; ?></td>
								
									
									
										<td><?php if (isset ($products2[0]['attribute_groups'][0]['attribute'][$kam]['text'])) {$atr = $products2[0]['attribute_groups'][0]['attribute'][$kam]['text'];  
											if($atr == '+') { echo '<span><i class="fa fa-check" aria-hidden="true"></i></span>';}
											elseif($atr == '-'){echo '<span class="minus">-</span>';}
											else { echo '<span>'.$atr.'</span>';}	}										

										?></td>
										<td><?php   if (isset ($products2[1]['attribute_groups'][0]['attribute'][$kam]['text'])) {$atr1 = $products2[1]['attribute_groups'][0]['attribute'][$kam]['text'];

if($atr1 == '+') { echo '<span><i class="fa fa-check" aria-hidden="true"></i></span>';}
											elseif($atr1 == '-'){echo '<span class="minus">-</span>';}
											else { echo '<span>'.$atr1.'</span>';}		}	

										?></td>
									
									
										
									
									
									
										<td><?php  if (isset ($products2[2]['attribute_groups'][0]['attribute'][$kam]['text'])) {$atr2 = $products2[2]['attribute_groups'][0]['attribute'][$kam]['text'];

if($atr2 == '+') { echo '<span><i class="fa fa-check" aria-hidden="true"></i></span>';}
											elseif($atr2 == '-'){echo '<span class="minus">-</span>';}
											else { echo '<span>'.$atr2.'</span>';} }	 ?></td>
										
									
								
									
										
									</tr>
									<?php } ?>
									<?php } ?>
									<?php } ?>
									<?php } ?>
									
													<tr>
										<td>Время дополнения</td>
										
										
										
										<td>
											<ul>
											<?php foreach ($products2[0]['options2'] as $option) { ?>
											 <?php foreach ($option['product_option_value'] as $option_value) { ?>
			   
                <li>
				 <input type="radio" price="<?php echo $option_value['price']*1; ?>" style="display:none;" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>"  id="<?php echo $option_value['product_option_value_id']; ?>"  />
                 <label for="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
				  <?php if ($option_value['price']*1<>'+0') { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']*1; ?>$)
                <?php } ?>
				 </label>
                </li>
				<?php } ?>
				<?php } ?>
											
												
											</ul>
										</td>
										<td>
											<ul>
												<?php foreach ($products2[1]['options2'] as $option) { ?>
											 <?php foreach ($option['product_option_value'] as $option_value) { ?>
			   
                <li>
				 <input type="radio" style="display:none;" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>"  id="<?php echo $option_value['product_option_value_id']; ?>" />
				 <label for="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
				  <?php if ($option_value['price']*1<>'+0') { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']*1; ?>$)
                <?php } ?></label>
                
                </li>
				<?php } ?>
				<?php } ?>
											</ul>
										</td>
										<td>
											<ul>
												<?php foreach ($products2[2]['options2'] as $option) { ?>
											 <?php foreach ($option['product_option_value'] as $option_value) { ?>
			   
                <li>
				 <input type="radio" style="display:none;" price3="<?php echo $option_value['price']*1; ?>" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>"  id="<?php echo $option_value['product_option_value_id']; ?>" />
				
				
				
				
				<label for="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
				 <?php if ($option_value['price']*1<>'+0') { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']*1; ?> $)
                <?php } ?>
				</label>
				
				
                </li>
				<?php } ?>
				<?php } ?>
											</ul>
										</td>
									</tr>
								
									<tr>
										<td></td>
										<?php $j=0; foreach ($products2 as $product2) { $j++; ?>
										<td><a onclick="cart.add('<?php echo $product2['product_id']; ?>')" >Заказать за <?php echo $product2['price']; ?> </a></td>
										 <?php } ?>
										
									</tr>
								</tbody>
							</table>
						</div>
						 
						
        <?php } ?>
						
						<p class="item-part-title"><a name="opisan"></a>
							Описание услуги
						</p>
						
						<?php echo $description; ?>
						<?php if ($options) { ?>
						<p class="item-part-title"><a name="podrob"></a>
							Подробности
						</p>
						
							<ul class="details-list" id="pp">
						<li class="clearfix">
								<span>Количество</span>
								<div class="price-op"><input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
			  </div>
			 
							</li>
					
							 <?php foreach ($options as $option) { ?>
							  <?php if ($option['type'] == 'checkbox') { ?>
							     <?php foreach ($option['product_option_value'] as $option_value) { ?>
							<li class="clearfix long" id="workpicass">
								<input  type="checkbox" id="<?php echo $option_value['product_option_value_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
								<label for="<?php echo $option_value['product_option_value_id']; ?>" class="longlab">  <?php echo $option_value['name']; ?></label>
								
									<div class="price-op"><?php echo $option_value['price']; ?></div>
									
								
							</li>
							         
           
                <?php } ?>
                <?php } ?>
             
            <?php } ?>
			 
							<li class="clearfix">
									<a style="cursor:pointer" id="button-cart-2" data-loading-text="<?php echo $text_loading; ?>" class="order-now">Заказать сейчас за <span>
            <span class="<?php echo $live_options['live_options_price_container']; ?>"><?php echo $price; ?></span>
            <script type="text/javascript" src="index.php?route=product/live_options/js&product_id=<?php echo $product_id; ?>"></script>
            </span></a>
									<a style="cursor:pointer" id="button-cart-2" data-loading-text="<?php echo $text_loading; ?>" class="add-to-cart"></a>
								</li>
						</ul>
					 <?php } ?><br />
					 <?php if($product_tabs) { ?>
					 <div class="faq-wrap">
					 
					 
							<p class="item-part-title">
								Часто задаваемые вопросы
							</p>
							<ul class="faq">
								 <?php foreach($product_tabs as $key => $tab){ ?>
							<li>
									<span><?php echo $tab['title']; ?></span>
									<p>
										<?php echo $tab['description']; ?>
									</p>
								</li>
							 <?php } ?>
					 </ul>
							
							
						</div>
					
					 <?php } ?>
					 
					<p class="item-part-title"><a name="otziv"></a>
							Видео отзывы
						</p>
						<?php if($sku) { ?>
					<iframe width="100%" height="360"  src="https://www.youtube.com/embed/<?php echo $sku; ?>" frameborder="0" allowfullscreen=""></iframe>
					 <?php } ?>
					 <?php echo $tab_review; ?>
					   <div id="review"></div>
					   
					   
					      <?php if ($tags) { ?>
     <ul class="small-breadcrumps">
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <li><a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a></li>
        <?php } else { ?>
       <li> <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
      <?php } ?>
	  
	  
	 
					 
					</div>
					
					 <?php if ($products2) { ?>
					  <div class="sub-info">
					 <?php foreach ($products2 as $product2) { ?>
					
						<div class="tarif inactive">
							<div class="tarif-title">
								<p><span><?php echo $product2['price']; ?></span> <?php echo $product2['model']; ?></p>
								<span></span>
							</div>
							<div class="tarif-body">
							<?php if($product2['upc']) { ?>
								<p class="f-li"><i><img src="image/catalog/demo/time.png" alt=""></i>Выполнение <strong>за <?php echo $product2['upc']; ?></strong></p>
								<?php } ?>
								<?php echo $product2['description']; ?>
								<p class="go-to-buy"><a onclick="cart.add('<?php echo $product2['product_id']; ?>', '<?php echo $product['minimum']; ?>');">Перейти к покупке</a></p>
							</div>
						</div>
						
						
						<?php } ?>
						
					 
					 
					 
					<?php }else{ ?>
					<div class="sub-info" id="workpicass">
						<div class="order">
							<p class="order-title">
								Описание заказа на <span>
            <span class="<?php echo $live_options['live_options_price_container']; ?>"><?php echo $price; ?></span>
            <script type="text/javascript" src="index.php?route=product/live_options/js&product_id=<?php echo $product_id; ?>"></script>
            </span>
							</p>
							<p class="f-li"><i><img src="image/catalog/demo/time.png" alt=""></i> Выполнение <strong>за <?php echo $upc; ?></strong></p>
							<ul>
								<li class="clearfix">
									<a style="cursor:pointer" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="order-now">Заказать сейчас за <span>
            <span class="<?php echo $live_options['live_options_price_container']; ?>"><?php echo $price; ?></span>
            <script type="text/javascript" src="index.php?route=product/live_options/js&product_id=<?php echo $product_id; ?>"></script>
            </span></a>
									<a style="cursor:pointer" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="add-to-cart"></a>
								</li>
								
								<li class="clearfix">
								
									<span>Количество</span>
									<div class="price-op"><input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
			  </div>
			 
								</li>
								
									 <?php foreach ($options as $option) { ?>
							  <?php if ($option['type'] == 'checkbox') { ?>
							  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
							     <?php foreach ($option['product_option_value'] as $option_value) { ?>
							<li class="clearfix long" >
							     
								<input  type="checkbox" id="1<?php echo $option_value['product_option_value_id']; ?>" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
								<label for="1<?php echo $option_value['product_option_value_id']; ?>" class="longlab">  <?php echo $option_value['name']; ?></label>
								
									<div class="price-op"><?php echo $option_value['price']; ?></div></li>
									 <?php } ?>
                <?php } ?>
             </div>
            <?php } ?>
			
				</ul>
						<button class="toggle-list"><i class="fa fa-angle-double-down" aria-hidden="true"></i></button>	
						</div>
						
							<?php } ?>
						<p class="please-share">Понравилась услуга? Расскажите о ней друзья в соцсетях</p>
						<ul class="share">
							<li class="vk"><a href="#"><i class="fa fa-vk" aria-hidden="true"></i></a></li>
							<li class="fb"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li class="tw"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li class="gg"><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
							<li class="in"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						</ul>
						
						
						
						<div class="profile">
							<div class="profile-main">
								<span>
									<img src="<?php echo ($manufacturers_img); ?>" alt="">
								</span>
								<ul>
									<li class="current-status">Онлайн</li>
									<li class="name"><?=$manufacturer; ?></li>
									<li class="current-position">ТОП-продавец</li>
									<li class="rating-title">Рейтинг</li>
									<li class="rating"><img src="image/catalog/demo/star.png" alt=""><span>4.5</span></li>
								</ul>
							</div>
							<div class="profile-skills">
								<ul>
									<li>
										<p>Выполнил проектов:</p>
										<p>289</p>
									</li>
									<li>
										<p>Страна:</p>
										<p><?php echo ($manufacturers_lend) ?></p>
									</li>
									<li>
										<p>Обычно отвечает в течении:</p>
										<p>8 часов</p>
									</li>
									<li>
										<p>Языки:</p>
										<p><?php echo ($manufacturers_count) ?></p>
									</li>
								</ul>
							</div>
							<div class="profile-description">
								<p><?php echo ($manufacturers_des) ?></p>
								<p><a href="<?php echo $manufacturers; ?>">Больше о продавце<i class="fa fa-angle-double-right" aria-hidden="true"></i></a></p>
								<a href="#" class="contact-me">Связаться со мной</a>
							</div>
						</div>
						
						
					</div>
				
					
					
					
			
			
			</div>
			 <?php if ($products) { ?>
			<div class="another-servises clearfix">
					<p class="item-part-title">Другие услуги <span><?php echo $manufacturer; ?></span></p>
					<div class="item-servise-wrap clearfix">
					<?php foreach ($products as $product) { ?>
						<div class="item-servise">
							<div class="item-servise-inner">
								<div class="top-bar">
									<ul>
										<li><a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
										<li><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span></li>
									</ul>
								</div>
								<span class="clearfix">
									<a href="<?php echo $product['href']; ?>" class="picture"><img src="<?php echo $product['thumb']; ?>" alt="" class="img-responsive"></a>
									<a href="<?php echo $product['href']; ?>"><p><?php echo $product['name']; ?></p></a>
									<p class="rating"><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span></p>
								</span>
								<div class="item-servise-stuff">
									<ul>
										<li><a href="#" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="like"></a></li>
										<li><a href="#" class="medal"></a></li>
										<li><a href="#" class="popular-tag">Популярное</a></li>
										<li class="name"><?php echo $product['manufacturer']; ?></li>
										<li class="price">от <strong><?php echo $product['price']; ?></strong></li>
									</ul>
								</div>
							</div>
						</div><?php } ?>
						
					</div>					
				</div>
				
				 <?php } ?>
				 <?php if ($products3) { ?>
				 <div class="recent clearfix">
					<p class="item-part-title">Рекомендуем в рубрике<span> SEO</span></p>
					<div class="recent-slider">
						<?php foreach ($products3 as $product) { ?>
						<div class="item-servise">
							<div class="item-servise-inner">
								<div class="top-bar">
									<ul>
										<li><a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
										<li><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span> </li>
									</ul>
								</div>
								<span class="clearfix">
									<a href="<?php echo $product['href']; ?>" class="picture"><img src="<?php echo $product['thumb']; ?>" alt="" class="img-responsive"></a>
									<a href="<?php echo $product['href']; ?>"><p><?php echo $product['name']; ?></p></a>
									<p class="rating"><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span></p>
								</span>
								<div class="item-servise-stuff">
									<ul>
										<li><a href="#" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" class="like"></a></li>
										 <li><a href="#" class="medal"></a></li>
										<li><a href="#" class="popular-tag">Популярное</a></li>
										<li class="name"><?php echo $product['manufacturer']; ?></li>
										<li class="price">от <strong><?php echo $product['price']; ?></strong></li>
									</ul>
								</div>
							</div>
						</div>
						<?php } ?>	 
						
					</div>
				</div>
					 <?php } ?>	 
					 
					 
					 
					 
					 
<div class="watched clearfix">
					<p class="item-part-title">Вы недавно просматривали</p>
					<div class="watched-items-wrap">
						<?php echo $content_top; ?>
						
					</div>
				</div>

	</main>


<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#workpicass input[type=\'text\'], #workpicass input[type=\'hidden\'], #workpicass input[type=\'radio\']:checked, #workpicass input[type=\'checkbox\']:checked, #workpicass select, #workpicass textarea'),
		dataType: 'json',
		
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

					
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
			$('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

					// Need to set timeout otherwise it wont update the total
					setTimeout(function () {
						$('#cart > a.kam').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
					}, 100);

					$('html, body').animate({ scrollTop: 0 }, 'slow');

					$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>

<script type="text/javascript"><!--
$('#button-cart-2').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#pp input[type=\'text\'], #pp input[type=\'hidden\'], #pp input[type=\'radio\']:checked, #pp input[type=\'checkbox\']:checked, #pp select, #pp textarea'),
		dataType: 'json',
		
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

					
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + ' <button type="button" class="close" data-dismiss="alert">&times;</button></div>');

					// Need to set timeout otherwise it wont update the total
					setTimeout(function () {
						$('#cart > a.kam').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');
					}, 100);

					$('html, body').animate({ scrollTop: 0 }, 'slow');

					$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
	});
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
	pickTime: false
});

$('.datetime').datetimepicker({
	pickDate: true,
	pickTime: true
});

$('.time').datetimepicker({
	pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
    e.preventDefault();

  $('#review').fadeOut('slow');

  $('#review').load(this.href);

  $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: $("#form-review").serialize(),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});

$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});

$('a[href^="#"]').click(function(){
//Сохраняем значение атрибута href в переменной:
var target = $(this).attr('href');
$('html, body').animate({scrollTop: $(target).offset().top}, 800);
return false;
});
//--></script>


<?php echo $footer; ?>
