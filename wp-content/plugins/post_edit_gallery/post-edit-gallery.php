<?php

/*
Plugin Name: Post Edit Gallery
Plugin URI: http://URI_Of_Page_Describing_Plugin_and_Updates
Description: Add gallery of pictures to insert picture into post
Version: 1.0
Author: denis
Author URI: http://URI_Of_The_Plugin_Author
License: A "Slug" license name e.g. GPL2
*/

/**
 * Include script for upload img button in post
 */
function include_upload_post_img_script() {
	if ( ! did_action( 'wp_enqueue_media' ) ) {
		wp_enqueue_media();
	}

	wp_enqueue_script( 'upload_post_img_script', plugin_dir_url(__FILE__) . 'img_upload_btn.js', array('jquery'), null, true );
}

add_action( 'admin_enqueue_scripts', 'include_upload_post_img_script' );

/**
 * Add upload img button
 *
 * @param $string
 */
function add_upload_img_media_button( $string ){

	echo '<a href="#" id="my-gallery-btn" class="button">My gallery</a>';
}
add_action('media_buttons', 'add_upload_img_media_button', 11);


/**
 * Add template field to media uploader
 *
 * @param $form_fields array, fields to include in attachment form
 * @param $post object, attachment record in database
 * @return $form_field, modified form field
 *
function my_attachment_field_template( $form_fields, $post ) {
	$field = 'img_template';
	$meta = get_post_meta( $post->ID, '_' . $field, true );

	$selected = ' selected="selected"';

	$select_html = '<select id="attachments[' . $post->ID . '][' . $field . ']" name="attachments[' . $post->ID . '][' . $field . ']">';

	$select_html .= '<option' . ($meta=='template_1'?$selected:'') . ' value="template_1">Template 1</option>';
	$select_html .= '<option' . ($meta=='template_2'?$selected:'') . ' value="template_2">Template 2</option>';

	$select_html .= '</select>';

	$form_fields[$field] = array(
		'label' => 'Template',
		'input' => 'html',
		'value' => get_post_meta( $post->ID, 'be_photographer_name', true ),
		'html' => $select_html,
	);

	return $form_fields;
}

add_filter( 'attachment_fields_to_edit', 'my_attachment_field_template', 10, 2 );*/

/**
 * Save values of template field in media uploader
 *
 * @param $post array, the post data
 * @param $attachment array, attachment fields from $_POST form
 * @return $post array, modified post data
 *
function my_attachment_field_template_save( $post, $attachment ) {
	$field = 'img_template';
	if( isset( $attachment[$field] ) )
		update_post_meta( $post['ID'], $field, $attachment[$field] );
	return $post;
}

add_filter( 'attachment_fields_to_save', 'my_attachment_field_template_save', 10, 2 );*/


function myshortcode_gallery_data( $atts ) {
	$params = shortcode_atts( array(
		'ids' => '0',
		'template' => 'template_1',
	), $atts );

	$html = "";
	$ids = explode(",", $params['ids']);
	foreach ($ids as $id) {
		$url = wp_get_attachment_image_url($id);
		$html .= "<img src='{$url}' class='my_gallery_img'>";
	}

	if ($params['template']=='template_1') {
		$html = "<div class='first_template'>". $html ."</div>";
	} elseif ($params['template']=='template_2') {
		$html = "<div class='second_template'>". $html ."</div>";
	}
	return $html;
}
add_shortcode( 'gallery', 'myshortcode_gallery_data' );

add_action('print_media_templates', function(){
	?>
	<script type="text/html" id="tmpl-custom-gallery-setting">
		<h3>Custom Settings</h3>

		<label class="setting">
			<span><?php _e('Gallery template'); ?></span>
			<select data-setting="img_template" name="img_template" id="img_template">
				<option value="template_1"> 'Template 1' </option>
				<option value="template_2"> 'Template 2' </option>
			</select>
		</label>

	</script>

	<?php
});

// define the media_view_settings callback
function filter_media_view_settings( $settings, $post ) {
	$imageIdsArray = json_decode(get_post_meta($post->ID, “_gallery_medias_ids”, true));

	if( !empty( $imageIdsArray ) ) {
		$imageIds = implode(',', $imageIdsArray);
		$shortcode = '[gallery ids="'. $imageIds .'" template="'. $settings['img_template'] .'"]';
		$settings['myGallery'] = array(‘shortcode’ => $shortcode);
	}

	return $settings;
};

add_filter( 'media_view_settings', 'filter_media_view_settings', 10, 2 );

function wp_ajax_my_gallery_update(){

}
add_action( 'wp_ajax_my-gallery-update', 'wp_ajax_my_gallery_update', 1);