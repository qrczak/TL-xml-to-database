
<div class="<?php echo $this->class; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>
<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>

<?php if ($this->searchable): ?>
<div class="list_search">
<form action="<?php echo $this->action; ?>" method="get">
<div class="formbody">
<input type="hidden" name="<?php echo $this->nsorderby; ?>" value="<?php echo $this->Input->get($this->nsorderby); ?>" />
<input type="hidden" name="<?php echo $this->nsdirsort; ?>" value="<?php echo $this->Input->get($this->nsdirsort); ?>" />
<input type="hidden" name="<?php echo $this->nsperpage; ?>" value="<?php echo $this->per_page; ?>" />
<select name="<?php echo $this->nssearch; ?>" class="select">
<?php echo $this->search_fields; ?>
</select>
<input type="text" name="<?php echo $this->nsfor; ?>" class="text" value="<?php echo $this->for; ?>" />
<input type="submit" class="submit" value="<?php echo $this->search_label; ?>" />
</div>
</form>
</div>
<?php endif; ?>
<?php if ($this->per_page): ?>

<div class="list_per_page">
<form action="<?php echo $this->action; ?>" method="get">
<div class="formbody">
<input type="hidden" name="<?php echo $this->nsorderby; ?>" value="<?php echo $this->Input->get($this->nsorderby); ?>" />
<input type="hidden" name="<?php echo $this->nsdirsort; ?>" value="<?php echo $this->Input->get($this->nsdirsort); ?>" />
<input type="hidden" name="<?php echo $this->nssearch; ?>" value="<?php echo $this->search; ?>" />
<input type="hidden" name="<?php echo $this->nsfor; ?>" value="<?php echo $this->for; ?>" />
<select name="<?php echo $this->nsperpage; ?>" class="select">
<?php echo $this->perPage_fields; ?>
</select>
<input type="submit" class="submit" value="<?php echo $this->per_page_label; ?>" />
</div>
</form>
</div>
<?php endif; ?>

<table cellpadding="0" cellspacing="0" class="all_records" summary="">
<thead>
  <tr>
<?php foreach ($this->thead as $col): ?>
    <th class="head<?php echo $col['class']; ?>"><a href="<?php echo $col['href']; ?>" title="<?php echo $col['title']; ?>"><?php echo $col['link']; ?></a></th>
<?php endforeach; ?>
<?php if ($this->details): ?>
    <th class="head col_last">&nbsp;</th>
<?php endif; ?>
  </tr>
</thead>
<tbody>
<?php foreach ($this->tbody as $class=>$row): ?>
  <tr class="<?php echo $class; ?>">
<?php foreach ($row as $col): ?>
    <?php if (is_string($col)) continue; ?>
    <td class="body <?php echo $col['class']; ?>"><?php echo $col['content']; ?></td>
<?php endforeach; ?>
<?php if ($this->details): ?>
    <td class="body col_last"><a href="<?php echo $row['details_href']; ?>"><img src="system/modules/zedseries_listing/media/images/details.gif" alt="" /></a></td>
<?php endif; ?>
  </tr>
<?php endforeach; ?>
</tbody>
</table>
<?php echo $this->pagination; ?>

</div>