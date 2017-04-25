<div id="ms-buyeraddress-dialog" title="<?php echo $ms_buyeraddress_title; ?>">
	<b><?php echo $ms_buyeraddress_name; ?>:</b> <?php echo $order_info['shipping_firstname'] . " " . $order_info['shipping_lastname']; ?> <br />
	<?php if (!empty($order_info['shipping_company']) && $order_info['shipping_company'] != "") { ?>
		<b><?php echo $ms_buyeraddress_company; ?>:</b> <?php echo $order_info['shipping_company']; ?> <br />
	<?php } ?>
	<b><?php echo $ms_buyeraddress_address; ?>:</b> <?php echo $order_info['shipping_address_1']; ?> <br />
	<?php if (!empty($order_info['shipping_address_2']) && $order_info['shipping_address_2'] != "") { ?>
		<?php echo $order_info['shipping_address_2']; ?> <br />
	<?php } ?>
	<b><?php echo $ms_buyeraddress_city; ?>:</b> <?php echo $order_info['shipping_city']; ?> <br />
	<b><?php echo $ms_buyeraddress_postcode; ?>:</b> <?php echo $order_info['shipping_postcode']; ?> <br />
	<b><?php echo $ms_buyeraddress_zone; ?>:</b> <?php echo $order_info['shipping_zone']; ?> <br />
	<b><?php echo $ms_buyeraddress_country; ?>:</b> <?php echo $order_info['shipping_country']; ?> <br />
</div>