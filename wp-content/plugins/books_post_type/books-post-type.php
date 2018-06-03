<?php

/*
Plugin Name: Books Post Type
Plugin URI: http://URI_Of_Page_Describing_Plugin_and_Updates
Description: Add new post type Books.
Version: 1.0
Author: denis
Author URI: http://URI_Of_The_Plugin_Author
License: A "Slug" license name e.g. GPL2
*/


function bookspost_register_post_type(){
	register_post_type('books', array(
		'labels'             => array(
			'name'               => 'Books',
			'singular_name'      => 'Book',
			'add_new'            => 'Add new',
			'add_new_item'       => 'Add new book',
			'edit_item'          => 'Edit book',
			'new_item'           => 'New book',
			'view_item'          => 'View book',
			'search_items'       => 'Search books',
			'not_found'          => 'Books not found',
			'not_found_in_trash' => 'No books found in Trash',
			'parent_item_colon'  => '',
			'menu_name'          => 'Books'

		),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => true,
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array('title','editor','author','thumbnail','excerpt','comments')
	) );
}
add_action('init', 'bookspost_register_post_type');

function bookspost_register_taxonomy() {
	register_taxonomy( 'author', 'books',
		array(
			'labels' => array(
				'name'              => 'Authors',
				'singular_name'     => 'Author',
				'search_items'      => 'Search Authors',
				'all_items'         => 'All Authors',
				'edit_item'         => 'Edit Author',
				'update_item'       => 'Update Author',
				'add_new_item'      => 'Add New Author',
				'new_item_name'     => 'New Author Name',
				'menu_name'         => 'Author',
			),
			'hierarchical' => true,
			'sort' => true,
			'args' => array( 'orderby' => 'term_order' ),
			'rewrite' => array( 'slug' => 'books' ),
			'show_admin_column' => true
		)
	);
}
add_action( 'init', 'bookspost_register_taxonomy' );

function bookspost_activate() {

	bookspost_register_post_type();
	bookspost_register_taxonomy();

	flush_rewrite_rules();
}
register_activation_hook( __FILE__, 'bookspost_activate' );

function bookspost_deactivate() {

	flush_rewrite_rules();
}
register_deactivation_hook( __FILE__, 'bookspost_deactivate' );
