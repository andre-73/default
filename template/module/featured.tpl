<div class="mostly-ordered">
    <div class="container">
        <?php echo $heading_title; ?>
        <div class="servises-wrap clearfix">
            <?php foreach ($products as $product) { ?>
            <div class="item-servise col-lg-3 col-md-5 col-sm-5 col-xs-15">
                <div class="item-servise-inner">
                    <div class="top-bar">
                        <ul>
                            <li>
                                <?php echo $product[ 'manufacturer']; ?>
                            </li>
                            <li><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span></li>
                        </ul>
                    </div><span class="clearfix"><a href="<?php echo $product['href']; ?>" class="picture"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a><a href="<?php echo $product['href']; ?>"><p><?php echo $product['name']; ?></p></a>
					<p class="rating"><img src="image/catalog/demo/star.png" alt=""><span>(<?php echo $product['product_id']; ?>)</span></p>
					</span>
                    <div class="item-servise-stuff">
                        <ul>
                            <li>
                                <a href="#" class="like"></a>
								
                            </li>
							<?php if($product[ 'isbn']) {?>
							<li><a href="#" class="medal"></a></li>
										<li><a class="popular-tag"><?php echo $product[ 'isbn']; ?></a></li>
							<?php } ?>
                            <li class="name">
                                <a href="#">
                                    <?php echo $product[ 'manufacturer']; ?>
                                </a>
                            </li>
                            <li class="price">
                                <?php echo $text_tax; ?><strong><?php echo $product['price']; ?></strong>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>