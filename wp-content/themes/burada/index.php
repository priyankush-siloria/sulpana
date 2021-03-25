<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package Starter
 */

get_header();
?>

	<section class="hero" id="hero">
		<div class="container">
			<div class="hero-content wow animate__fadeIn" data-wow-duration="1.5s">
				<h2>YOUR GO-TO PARTNER For Fleet Leasing</h2>
				<h3>
						Enjoy full-service, fleet vehicle<br/>
						expertise on the go and on demand
				</h3>
				<p>
					A partner to the logistics industry,  Sulpana Automotive Leasing<br/> provides comprehensive fleet management, rental and last-<br/>minute vehicle delivery for your business. 
				</p>
			</div>
			<!--/Hero Content-->

<!-- 			<div class="hero-misc wow animate__fadeIn" data-wow-duration="2s">
				<p>
					If your company’s international expansion brings you to the borders of Guyana, Burada Logistics can expedite your plans with key partnership and critical execution.
				</p>
				<a class="btn btn--icon btn--outline btn--outline-white" href="#contact">
					<span class="btn-text">Contact Us</span>
					<img class="btn-icon" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/angles-right-white-md.png">
				</a>
			</div> -->
			<!--/Hero Misc-->
		</div>

		<!-- <img class="hero-decoration" src="<?php echo get_template_directory_uri(); ?>/assets/img/bg/cargo-ship-resized-v1.gif"> -->
		<!--/Hero Decoration-->
	</section>
	<!--/HERO-->

	<section class="why-section pt-0" id="why">
		<div class="container">
			<!--/WE UNDERSTAND DELIVERY SERVICES-->
			<div class="we-understand-section wow animate__fadeInUp" data-wow-duration="1s">
				<div class="we-understand-area">
					<h2 class="heading-title">WE UNDERSTAND <br/>DELIVERY SERVICES</h2>
					<h3 class="sub-heading">
						We help you manage<br/> the logistics of travel
					</h3>
					<p class="heading-description pt-3">
						If you are a delivery services company looking for vehicles<br/>
						to fulfill client commitments, we can help with all of your <br/>
						automotive needs. Unlike traditional rental companies, <br/>
						Sulpana is completely fleet-focused.  Managing Toronto’s logistics and vehicles, <br/>
						Sulpana has extensive experience handling the business of travel and vehicles. From fleet leasing to asset <br/>
						tracking and liquidation, we partner with companies of all sizes when it comes to all things automotive.
					</p>
				</div>
				<div class="cars-images">
					<img class="hero-cars" src="<?php echo get_template_directory_uri(); ?>/assets/img/bg/Bitmap.png">
				</div>
				
			</div>
			<!--/HEADING-->
			
				<div class="service-section">
						<div class="row">
							<div class="col-md-4">
								<div class="Service-tracking bdr-right">
									<img class="service-img" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/icon-service tracking.svg">
									<h4 class="card-heading-tittle my-2">
										ASSET MANAGEMENT <br/>& SERVICE TRACKING
									</h4>
									<p class="card-description">
										Sulpana simplifies the management 
										of your fleet as well as tracking service history and upcoming service requirements to save you time and 
										money - that helps you plan ahead.
									</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="Service-tracking bdr-right">
									<img class="service-img" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/icon-asset.svg">
									<h4 class="card-heading-tittle my-2">
										ASSET LIQUIDATION <br/>SERVICES
									</h4>
									<p class="card-description">
										Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
									</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="Service-tracking">
									<img class="service-img" src="<?php echo get_template_directory_uri(); ?>/assets/img/icon/licon-leasing.svg">
									<h4 class="card-heading-tittle my-2">
										FLEET LEASING <br/>& MANAGEMENT
									</h4>
									<p class="card-description">
										Seasonal demands can make capacity planning difficult, and unexpected maintenance can leave you with too few vehicles to meet demand. From rental to delivery, we will get you the vehicles you need, when and where you need them.
									</p>
								</div>
							</div>
						</div>
					</div>
	
			
		</div>
	</section>
	<!-- Let’s find the right vehicle for your needs  Book vehicles-->
			<section class="book-vehicles">
				<div class="text-center px-2">
					<h3 class="find-vehicle">
						Let’s find the right vehicle for your needs
					</h3>
					<div class="mt-4">
						<button class="book-vehicle-btn mr-3">
							Book Vehicles
						</button>
						<button class="inventory-btn">
							View Inventory
						</button>
					</div>
				</div>
			</section>
	
		<!-- 	OUR FLEET OF VEHICLES -->
		<section class="our-fleet">
			<div class="row">
				<div class="col-md-6  p-0">
					<div class="our-fleet-img">
						
					</div>
				</div>
				<div class="col-md-6 p-0">
					<div class="our-fleet-area">
						<h2 class="heading-title">OUR FLEET <br/>OF VEHICLES</h2>
						<h3 class="sub-heading">
							Our extensive fleet is ready and<br/>reliable, with a variety of options <br/>and packages to meet your<br/>business’ needs.
						</h3>
						<p class="heading-description pt-3 w-500">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud 					exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
						</p>
					</div>
				</div>
			</div>
		</section>

	
	

	


	<a class="scroll scroll-top js-scroll-top" href="#hero">
		<svg><use xlink:href="<?php echo get_template_directory_uri(); ?>/assets/img/icon/sprite.svg#angle-up"></use></svg>
	</a>
	<!--/SCROLL-->

<?php
get_footer();
