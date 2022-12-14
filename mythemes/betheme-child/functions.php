<?php
/**
 * Betheme-child Theme functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package betheme-child
 */

add_action( 'wp_enqueue_scripts', 'betheme_parent_theme_enqueue_styles' );

/**
 * Enqueue scripts and styles.
 */
function betheme_parent_theme_enqueue_styles() {
	wp_enqueue_style( 'betheme-style', get_template_directory_uri() . '/style.css' );
	wp_enqueue_style( 'betheme-child-style',
		get_stylesheet_directory_uri() . '/style.css',
		[ 'betheme-style' ]
	);
}
