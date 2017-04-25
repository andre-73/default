<!DOCTYPE html>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title><?php echo $title; ?></title>
<?php if ($robots) { ?>
<meta name="robots" content="<?php echo $robots; ?>" />
<?php } ?>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" /> 
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
	
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 
          <script src="http://code.jquery.com/jquery-migrate-1.1.1.js"></script>
	<script src="catalog/view/theme/default/js/common.js"></script>
          <script src="catalog/view/theme/default/js/libs.min.js"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic" rel="stylesheet">
	
	<style>
@import url('https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&subset=cyrillic');
</style>
 
 
	<link rel="stylesheet" href="catalog/view/theme/default/css/libs.min.css">
	<link rel="stylesheet" href="catalog/view/theme/default/css/style.css">

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
<script>
$(document).ready(function(){
var $menu = $("#menu");

        $(window).scroll(function(){
            if ( $(this).scrollTop() > 50 && $menu.hasClass("default") ){
                $menu.removeClass("default").addClass("fixed");
            } else if($(this).scrollTop() <= 50 && $menu.hasClass("fixed")) {
                $menu.removeClass("fixed").addClass("default");
            }
        });//scroll

});
</script>
</head>
<body>
	<div class="wrapper">
		<div class="aside-menu-close"></div>
		<div class="aside-menu-body">
			<div class="aside-menu-inner">
				<ul class="main">
					<li class="first-li"><a href="#" class="tostart-button">Начать продавать</a></li>
					<li class="logged-li personal">
						<div class="personal-bar">
							<img src="image/catalog/demo/ava.png" alt="">
							<ul>
								<li><a href="#">seoworker23</a></li>
								<li class="personal-money"><span>$15.00</span></li>
							</ul>
						</div>
					</li>
					<li class="mli cart-row"><a href="/index.php?route=checkout/simplecheckout"><i class="fa fa-shopping-cart" aria-hidden="true"></i>Моя корзина</a></li>
					<li class="mli"><a href="#"><i class="fa fa-home" aria-hidden="true"></i>Главная</a></li>

					<li class="logged-li mli"><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i>Сообщения</a></li>
					<li class="logged-li mli"><a href="#"><i class="fa fa-list-alt" aria-hidden="true"></i>Лента</a></li>
					<li class="logged-li mli"><a href="#"><i class="fa fa-heart" aria-hidden="true"></i>Избранное</a></li>

					<li id="login" class="mli"><a href="#"><i class="fa fa-gear" aria-hidden="true"></i>Войти</a></li>
					<li class="mli"><a href="#"><i class="fa fa-th-large" aria-hidden="true"></i>Категории</a></li>
					<li class="separator logged-li">Покупка</li>
					<li class="logged-li mli"><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Сделать заявку</a></li>
					<li class="separator logged-li">Продажа</li>
					<li class="logged-li mli"><a href="#"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Начать продавать</a></li>
					<li class="separator">Общее</li>
					<li class="mli">
						<i class="fa fa-globe" aria-hidden="true">
							<select name="lang" id="lang">
								<option value="none">Выберите язык</option>
								<option value="ru">ru</option>
								
								<option value="en">en</option>
							</select>
						</i>
					</li>
				<!-- 	<li>
						<i class="fa fa-money" aria-hidden="true"></i>
							<select name="cur" id="cur">
								<option value="none">Выберите валюту</option>
								<option value="ru">ru</option>
								<option value="ua">ua</option>
								<option value="en">en</option>
							</select>
						</i>
					</li> -->
				</ul>
				<ul class="sub">
			 <li><a href="/index.php?route=information/information&amp;information_id=4">О проекте</a></li>
                    <li><a href="/index.php?route=information/information&amp;information_id=6">Вопрос/ответ</a></li>
                    <li><a href="/index.php?route=information/information&amp;information_id=3">Партнерская программа</a></li>
                    <li><a href="/index.php?route=information/information&amp;information_id=5">Правила сервиса</a></li>
                    <li><a href="/index.php?route=information/information&amp;information_id=7">Продавцу</a></li>
          						
				</ul>
				<span class="aside-menu"><img src="image/catalog/demo/menu-arrow.png" alt=""></span>
			</div>
		</div>
<header>
			
			
			<div class="header-top catalog-head logged">  <!--  adding class logged -->
				<div class="container">
					<div class="logo catalog-head col-lg-2 col-md-2 col-sm-15 col-xs-15">
						<span class="aside-menu"><i class="fa fa-bars" aria-hidden="true"></i></span>
						<a href="#" class="login login-popup"><img src="image/catalog/demo/login.png" alt=""></a>
						<span class="back-arrow close-popup"><i class="fa fa-chevron-left" aria-hidden="true"></i></span>
						<a href="#" class="logo-link">
							<p>MarketPlace</p>
							<p>SmartExpert</p>
						</a>
					</div>
					<div class="search catalog-head col-lg-7 col-md-5 col-sm-15 col-xs-15">
						<form action="">
							<input type="text" placeholder="Найти услугу">
						</form>
					</div>
					<div class="enter col-lg-3 col-md-4 col-sm-3 col-xs-12">
						<ul>
							<li><a href="#" class="login-popup">Войти</a></li>
							<li><a href="#">Присоеденится</a></li>
						</ul>
					</div>
					<div class="userbar-menu col-lg-3 col-md-4 hidden-sm hidden-xs">
						<ul>
							<li>Сообщество
								<div>
									<ul>
										<li>
											<a href="#">Блог</a>
											<a href="#">Форум</a>
											<a href="#">Академия</a>
											<a href="#">Подкасты</a>
										</li>
									</ul>
								</div>
							</li>
							<li><a href="#"><img src="image/catalog/demo/alarm.png" alt=""></a><span>Отзывы</span></li>
							<li><a href="#"><img src="image/catalog/demo/news.png" alt=""></a><span>Лента</span></li>
							<li><a href="#"><img src="image/catalog/demo/msg.png" alt=""></a><span>Сообщения</span></li>
							<li><a href="/index.php?route=checkout/simplecheckout"><img src="image/catalog/demo/cart-icon.png" alt=""></a><span>Корзина</span></li>
						</ul>
					</div>
					<div class="userbar-personal col-lg-3 col-md-4 hidden-sm hidden-xs">
						<ul>
							<li>
								<a href="#"><img src="image/catalog/demo/ava.png" alt=""></a>
							</li>
							<li class="user-name"><a href="#">seoworker23</a>
								<div class="personal-menu">
									<ul>
										<li><a href="#">Пункт 1</a></li>
										<li><a href="#">Пункт 2</a></li>
										<li><a href="#">Пункт 3</a></li>
										<li><a href="#">Пункт 4</a></li>
									</ul>
								</div>
							</li>
							<li>
								<?=$language; ?>
							</li>
						</ul>
					</div>
					<div class="tostart col-lg-3 col-md-4 col-sm-5 col-xs-12">
						<ul>
							<li><a href="#" class="tostart-button">Начать продавать</a></li>
							<li>
								<ul class="lang">
									<li><a href="#" class="active_lang">Ru</a></li>
									<li><a href="#">En</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
			
			
				<div class="header-bottom default" id="menu">
				<div class="container">
					<span class="menu-toggle glyphicon glyphicon-menu-hamburger"></span>
					<ul class="main-nav">
			 <?php foreach ($categories as $category) { ?>
				  <?php if ($category['children']) { ?>
			 	<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
							<div>
							  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
								<ul>
								
									<li>
									<?php foreach ($children as $child) { ?>
										<a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
									<?php } ?>	
									</li>
								</ul>
								<?php } ?>
							</div>
						</li>
						
						<?php } else { ?>
			 	<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
				<?php } ?>
			<?php } ?>
				
				</ul>
				</div>
			</div>
		</header>


