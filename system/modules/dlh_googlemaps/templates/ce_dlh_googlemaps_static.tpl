<!-- indexer::stop -->

<div class="<?php echo $this->class; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>

<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>

<div class="map"><?php echo $this->link; ?><?php echo $this->map['staticMap']; ?></a></div>

</div>

<!-- indexer::continue -->