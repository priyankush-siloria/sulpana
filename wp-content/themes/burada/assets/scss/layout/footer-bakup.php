<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Burada
 */

?>

	<footer class="footer">
		<div class="container">
			<nav class="nav nav--footer">
				<ul class="nav-items">
					<li class="nav-item"><a class="nav-link" href="#why">WHY BURADA?</a></li>
					<li class="nav-item"><a class="nav-link" href="#offer">WHAT WE OFFER</a></li>
					<li class="nav-item"><a class="nav-link" href="#partners">OUR PARTNERS</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact">CONTACT US</a></li>
					<!-- <li class="nav-item"><a class="nav-link" href="#">PRIVACY POLICY</a></li>
					<li class="nav-item"><a class="nav-link" href="#">TERMS OF USE</a></li> -->
				</ul>
			</nav>
			<!--/Nav-->

			<div class="helper">
				<address class="address">
					<img src="<?php echo get_template_directory_uri(); ?>/assets/img/base/logo-burada-black.svg" alt="Burada">
					<p>
						Lot A 87 Issano Place West, <br/>
						Bel Air Park Georgetown, Guyana <br/>
						<a href="tel:+1.416.319.6854">+1.416.319.6854</a>
					</p>
				</address>
				<!--/address-->

				<div class="copyright">
					<p class="first">
						BURADA Logistics is Subsidiary <br/>
						of the <a class="#">GOIntegrated</a> group of companies
					</p>
					<p class="last">&copy;<?php echo date('Y') ?> BURADA Logistics Guyana</p>
				</div>
				<!--/copyright-->
			</div>
			<!--/Helper-->
		</div>
	</footer>
	<!--/FOOTER-->

	<?php wp_footer(); ?>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js" integrity="sha512-Eak/29OTpb36LLo2r47IpVzPBLXnAMPAVypbSZiZ4Qkf8p/7S/XRG5xp7OKWPPYfJT6metI+IORkR5G8F900+g==" crossorigin="anonymous"></script>

</body>
</html>
