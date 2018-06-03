<?php
/**
 * The front page template file
 *
 * If the user has selected a static page for their homepage, this is what will
 * appear.
 * Learn more: https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

<div id="primary" class="content-area">
	<main id="main" class="site-main" role="main">

		<?php // Show all books authors
		$arg_cat = array(
			'orderby'      => 'name',
			'order'        => 'ASC',
			'hide_empty'   => 1,
			'include'      => '',
			'taxonomy'     => 'author',
		);
		$categories = get_categories( $arg_cat );
		?>
		<?php if( $categories ) : ?>
            <div class="panel-content">
                <div class="wrap">
	                <?php
                    $tax = get_taxonomy('author');
                    $labels = get_taxonomy_labels( $tax );

                    ?>
                    <h2 class="entry-title"><?php echo $labels->name; ?></h2>
                <ul class="authors_books">
				<?php foreach( $categories as $cat ) : ?>
                    <li><?php echo $cat->name; ?>
					<?php
					$arg_posts =  array(
						'orderby'      => 'name',
						'order'        => 'ASC',
						'post_type' => 'books',
						'tax_query' => array(
							array(
								'taxonomy' => 'author',
								'terms' => $cat->cat_ID
							)
						)
					);
					$query_books = new WP_Query($arg_posts);
					?>

					<?php if ($query_books->have_posts() ) : ?>
                        <ul>
                        <?php while ( $query_books->have_posts() ) : $query_books->the_post(); ?>
                            <li>
                                <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
                            </li>

                        <?php endwhile; wp_reset_postdata()?>
                        </ul>
					<?php endif; ?>
                    </li>
				<?php endforeach; ?>
                </ul>

                </div><!-- .wrap -->
            </div>
		<?php endif; ?>

		<?php // Show the selected frontpage content.
		if ( have_posts() ) :
			while ( have_posts() ) : the_post();
				get_template_part( 'template-parts/page/content', 'front-page' );
			endwhile;
		else :
			get_template_part( 'template-parts/post/content', 'none' );
		endif; ?>

		<?php
		// Get each of our panels and show the post data.
		if ( 0 !== twentyseventeen_panel_count() || is_customize_preview() ) : // If we have pages to show.

			/**
			 * Filter number of front page sections in Twenty Seventeen.
			 *
			 * @since Twenty Seventeen 1.0
			 *
			 * @param int $num_sections Number of front page sections.
			 */
			$num_sections = apply_filters( 'twentyseventeen_front_page_sections', 4 );
			global $twentyseventeencounter;

			// Create a setting and control for each of the sections available in the theme.
			for ( $i = 1; $i < ( 1 + $num_sections ); $i++ ) {
				$twentyseventeencounter = $i;
				twentyseventeen_front_page_section( null, $i );
			}

	endif; // The if ( 0 !== twentyseventeen_panel_count() ) ends here. ?>

	</main><!-- #main -->
</div><!-- #primary -->

<?php get_footer();
