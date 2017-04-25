<div class="simplecheckout-block" id="simplecheckout_cart" <?php echo $hide ? 'data-hide="true"' : '' ?> <?php echo $display_error && $has_error ? 'data-error="true"' : '' ?>>
<?php if ($display_header) { ?>
    <div class="checkout-heading panel-heading"><?php echo $text_cart ?></div>
<?php } ?>
<?php if ($attention) { ?>
    <div class="simplecheckout-warning-block"><?php echo $attention; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
    <div class="simplecheckout-warning-block"><?php echo $error_warning; ?></div>
<?php } ?>
    <div class="table-responsive">

<div class="main-info">
	<p class="title-item">Ваша корзина</p>
						<div class="cart-body">

 <?php foreach ($products as $product) { ?>
<ul>
								<li class="cart-item clearfix">
									<img src="<?php echo $product['thumb']; ?>" alt="">
									<p><?php echo $product['name']; ?></p>
						<span data-onclick="removeProduct" data-product-key="<?php echo !empty($product['cart_id']) ? $product['cart_id'] : $product['key'] ?>" data-toggle="tooltip" type="button"  class="delete-item"></span>
								</li>
								<li class="count clearfix quantity">
									<p>Количество</p>
									<span class="price"><?php echo $product['total']; ?></span>
									<div class="counter clearfix">		
										<input type="text" data-onchange="changeProductQuantity" name="quantity[<?php echo !empty($product['cart_id']) ? $product['cart_id'] : $product['key']; ?>]" value="<?php echo $product['quantity']; ?>"  disabled />
										<span class="plus"><i class="fa fa-caret-up" data-onclick="increaseProductQuantity" data-toggle="tooltip" aria-hidden="true"></i></span>
										<span class="minus"><i class="fa fa-caret-down" data-onclick="decreaseProductQuantity" data-toggle="tooltip" aria-hidden="true"></i></span>
									</div>
								</li>
								
								
							</ul>



<?php } ?>

		</div>				
		</div>	
<div class="sub-info">
						<p class="continue-buy"><a href="/">Продолжить покупки</a></p>
						<div class="cart">
							<p class="cart-title">
								Сумма заказа
							</p>

<?php foreach ($totals as $total) { ?>

							<p class="summ" id="total_<?php echo $total['code']; ?>"><?php echo $total['title']; ?> <span><?php echo $total['text']; ?></span></p>

<?php } ?>
							<form action="" class="promo">
								<p>
<input class="form-control" placeholder="Ввести промо-код" type="text" data-onchange="reloadAll" name="coupon" value="<?php echo $coupon; ?>" />

<span></span></p>
							</form>
							
							<p class="continue">
								<a id="simplecheckout_button_cart" data-onclick="reloadAll" >Продолжить</a>
							</p>
						</div>
						<div class="types-of-payment">
							<img src="image/catalog/demo/types.png" alt="">
						</div>
					</div>
<input type="hidden" name="remove" value="" id="simplecheckout_remove">

		



					




