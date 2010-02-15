
<div class="<?php echo $this->class; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>

<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>



<div>
<?php foreach ($this->record as $col): ?>
<?php
$file = 'http://www.url.com/index.php?login=xxx&password=xxx&tourOp='. $col['plTourOperator'] .'&htlCode='. $col['hCode'] .'';
$xml = simplexml_load_file($file);

echo $xml->hotel;
echo '<br />';
echo '<image src="'. $xml->images->thumb .'" alt="'. $xml->hotel .'"/>';
?>
<?php foreach ($xml->images->pictures->picture as $field=>$data): ?>
	<?php echo $data; ?><br />
<?php endforeach; ?>
<?php endforeach; ?>
</div>

<div class="go_back"><a href="<?php echo $this->referer; ?>" title="<?php echo $this->back; ?>"><?php echo $this->back; ?></a></div>

</div>
