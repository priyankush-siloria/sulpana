<?php

//
// Burada Setup
//
function burada_setup() {
	add_theme_support( "title-tag" );
}
add_action("after_setup_theme", "burada_setup");


//
// Burada Assets
//
function burada_assets() {
	wp_enqueue_style("style-css", get_theme_file_uri( "style.css"));
	// wp_enqueue_script("main-js", get_theme_file_uri("/assets/js/vendor.js"), array("jquery"), false, true );
	wp_enqueue_script("main-js", get_theme_file_uri("/assets/js/main.js"), array("jquery"), false, true );
}
add_action("wp_enqueue_scripts", "burada_assets");



add_filter( 'gform_confirmation_anchor', '__return_false' );


// add_filter("gform_submit_button", "form_submit_button");
// function form_submit_button($button){
//     return "<input type='submit' value='My new button' />";
// }
