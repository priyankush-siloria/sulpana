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
		<div class="container-fluid">
			<div class="footer-area">
				<div class="row align-items-baseline">
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-3">
								<ul class="quick-link">
									<li class="quick-link-item"><a class="" href="#why">Who we are</a></li>
									<li class="quick-link-item"><a class="" href="#offer">Our Services</a></li>
									<li class="quick-link-item"><a class="" href="#partners">Fleet Inventory</a></li>
								</ul>
							</div>
							<div class="col-md-3">
								<ul class="quick-link">
									<li class="quick-link-item"><a class="" href="#why">Contact Us</a></li>
									<li class="quick-link-item"><a class="" href="#offer">Privacy Policy</a></li>
									<li class="quick-link-item"><a class="" href="#partners">Terms of Use</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="address-area">
							<img class="sulpana-logo" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/Sulpana_Logo-1.svg">
							<p class="address-para">
								2770 Plymouth Drive<br/>
								Oakville, Ontario<br/>
								L6H 6Y4
							</p>
							<p class="ph-number pt-0">
								Phone: 416.319.6854
							</p>
						</div>
					</div>
				</div>
				
			<div class="pt-3">
				<div class="row align-items-center">
					<div class="col-md-6">
						<div class="follow_us">
							<h5 class="follow-on pr-3">
								Follow Us On:
							</h5>
							<img class="social_ic mr-2" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/icon-twitter-orange.svg">
							<img class="social_ic mr-2" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/icon-linkedin-orange.svg">
							<img class="social_ic mr-2" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/icon-facebook-orange.svg">
						</div>
					</div>
					<div class="col-md-6">
						<div class="goin-logo-part">
							<div class="goigoc">
								Sulpana is part of the <br/>GOIGoC Group of Companies
							</div>
							<div class="gg-logo">
								<img class="goin-logo" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/logo-GOIGoC-sm.svg">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="copyright-section">
			<div class="container-fluid">
				<p>
					Copyright©2021 Sulpana   •   Sulpana and GO ICoC are copyrights for GOIntegrated LLC. All right reserved. 
				</p>
			</div>
			
		</div>
	</footer>

	<!--/FOOTER-->

	<?php wp_footer(); ?>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js" integrity="sha512-Eak/29OTpb36LLo2r47IpVzPBLXnAMPAVypbSZiZ4Qkf8p/7S/XRG5xp7OKWPPYfJT6metI+IORkR5G8F900+g==" crossorigin="anonymous"></script>

</body>
</html>
