<?php global $option_setting; ?>
<?php if ($option_setting['facebook']) : ?>
<a title='Facebook' href="<?php echo esc_url( $option_setting['facebook'] ); ?>"><i class="fa fa-facebook"></i></a>
<?php endif; ?>
<?php if ($option_setting['google']) : ?>
<a title='Google Plus' href="<?php echo esc_url( $option_setting['google'] ); ?>"><i class="fa fa-google-plus"></i></a>
<?php endif; ?>
<?php if ($option_setting['twitter']) : ?>
<a title='Twitter' href="<?php echo esc_url( $option_setting['twitter'] ); ?>"><i class="fa fa-twitter"></i></a>
<?php endif; ?>
<?php if ($option_setting['rss-feed']) : ?>
<a title='Subscribe to RSS Feeds' href="<?php echo esc_url( $option_setting['rss-feed'] ); ?>"><i class="fa fa-rss"></i></a>
<?php endif; ?>
<?php if ($option_setting['instagram']) : ?>
<a title='Instagram' href="<?php echo esc_url( $option_setting['instagram'] ); ?>"><i class="fa fa-instagram"></i></a>
<?php endif; ?>
<?php if ($option_setting['flickr']) : ?>
<a title='Flickr' href="<?php echo esc_url( $option_setting['flickr'] ); ?>"><i class="fa fa-flickr"></i></a>
<?php endif; ?>