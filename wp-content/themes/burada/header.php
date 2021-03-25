<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Burada
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" integrity="sha512-c42qTSw/wPZ3/5LBzD+Bw5f7bSF2oxou6wEb+I/lqeaKV5FDIfMvvRp772y4jcJLKuGUOpbJMdg/BTl50fJYAw==" crossorigin="anonymous" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<header class="header">
		<div class="container-fluid">
			<div class="logo">
<!-- 				<h1><a href="/"><img src="<?php echo get_template_directory_uri(); ?>/assets/img/base/logo-burada-white.svg" alt="Burada"></a></h1> -->
			</div>
			<!--/Logo-->

			<nav class="nav nav--header js-nav justify-content-end">
				<ul class="nav-items">
					<li class="nav-item"><a class="nav-link" href="#why">WHO WE ARE</a></li>
					<li class="nav-item"><a class="nav-link" href="#offer">OUR SERVICES</a></li>
					<li class="nav-item"><a class="nav-link" href="#partners">FLEET INVENTORY</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact">CONTACT US</a></li>
				</ul>
			</nav>
			<!--/Nav-->

			<button class="menuicon js-menuicon" type="button">
				<svg><use xlink:href="<?php echo get_template_directory_uri(); ?>/assets/img/icon/sprite.svg#menuicon"></use></svg>
			</button>
			<!--/Menuicon-->
		</div>
	</header>
	<!--/HEADER-->
