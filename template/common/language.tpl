


								<ul class="lang">
								<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">
								 <?php foreach ($languages as $language) { ?>
    <?php if ($language['code'] == $code) { ?>
									<li><a href="<?php echo $language['code']; ?>" class="active_lang"><?=$language['name']; ?></a></li>
									 <?php } else {?>
									 <li><a href="<?php echo $language['code']; ?>" class=""><?=$language['name']; ?></a></li>
    <?php } ?>
	<?php } ?>
									 <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
								</ul>
						