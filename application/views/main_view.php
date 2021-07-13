

<h1>Companies</h1>

	<?php foreach($data as $row): ?>
	<div class="row">
		<div class="cols text">
		<h2><?=$row['Name'];?></h2>
		<p><?=$row['Description'];?></p>
		<a href="/company/?action=index&id=<?=$row['ID'];?>&page=1">Detailed >></a>
		 </div>
		 <div class="cols">
		<p><img src="<?=$row['Logo'];?>"</p>
		</div>
		</div>
	<?php endforeach; ?>
	 
	 
	
	

	<div class="pagination"> 
	<?//php var_dump($count_pages);?>
	<?php for ($i=1; $i<=$count_pages; $i++): ?> 
	  <a href="?action=index&page=<?= strval($i)?>"><?=$i?></a>  
	  <?php endfor; ?>
	</div>
</div>

	
	
 