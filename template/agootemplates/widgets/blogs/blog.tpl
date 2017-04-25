<div id="cmswidget-<?php echo $cmswidget; ?>" class="cmswidget">
<?php echo $box_begin; ?>
	  <div class="box-ul aaa">
		<?php
		$exit = 0;
		if (count($categories_blogs)>0) {
			foreach ($categories_blogs as $blogs) {
				
		?>
		<?php $exit++;  
			
						
				
		?>
				<ul class="exit exit<?php echo $exit; ?> nav nav-stacked padding_<?php  echo $blogs['level'];?> <?php if(!$blogs['display']) echo 'blogs-widget-display-none'; ?>">
					<li><a href="<?php if($blogs['act']) echo $blogs['href']."#"; else echo $blogs['href']; ?>" class="<?php if($blogs['act']) echo 'active'; if(!$blogs['act']) echo 'pass'; ?>">
						<?php if (isset($settings_widget['thumb_status']) && $settings_widget['thumb_status'] && $blogs['thumb']) { ?>
			            	<img src="<?php echo $blogs['thumb']; ?>" title="<?php echo $blogs['name']; ?>" alt="<?php echo $blogs['name']; ?>">
						<?php } ?>
					<?php echo $blogs['name']; if ($blogs['count']>0 && isset($settings_widget['counting']) && $settings_widget['counting']) echo  " (".$blogs['count'].")"; ?></a>
				<?php
					for ($m=0; $m<$blogs['flag_end']; $m++) {
				?> 	</li>
				</ul>
		<?php
					}
						if ($exit==3) {
						echo '<div class="records_more " >'.$language->get('more_cats').'<span>+</span></div>'; ?>
						<style>.exit{display: none;}.exit1,.exit2,.exit3{display: inline-block;}</style>
				<?php	}
			}
		}
		?>
		</div>
<?php if (isset($settings_widget['reserved']) && $settings_widget['reserved']!='') {
echo html_entity_decode($settings_widget['reserved'], ENT_QUOTES, 'UTF-8');
} ?>
<?php echo $box_end; ?>
</div>
<script>
	$( ".records_more" ).click(function() {
  $( ".exit" ).css("display","inline-block");
  $( ".records_more" ).css("display","none");
});
</script>
<?php if (isset($settings_widget['anchor']) && $settings_widget['anchor']!='') { ?>
<script>
	<?php if (isset($settings_widget['doc_ready']) && $settings_widget['doc_ready']) { ?>
	$(document).ready(function(){
	<?php  } ?>
	var prefix = '<?php echo $prefix;?>';
	var cmswidget = '<?php echo $cmswidget; ?>';
	var data = $('#cmswidget-<?php echo $cmswidget; ?>').clone();
	<?php echo $settings_widget['anchor']; ?>;
 	delete data;
	delete prefix;
	delete cmswidget;

	<?php if (isset($settings_widget['doc_ready']) && $settings_widget['doc_ready']) { ?>
	});
	<?php  } ?>
</script>
<?php  } ?>