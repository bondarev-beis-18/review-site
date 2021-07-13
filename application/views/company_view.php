<div class="row">
		<div class="cols">
		<p><img src="<?=$data[0]['Logo'];?>"</p>
		</div>
		<div class="cols text">
		<p><?=$data[0]['Description'];?></p>
		</div>
	</div>


<h1>Reviews by <?=$data[0]['Name'];?></h1>
	<?php foreach($data as $row): ?>
	<div class="row">
		<div class="cols">
		<p><img src="<?=$row['Photo'];?>"</p>
		 </div>
		 <div class="cols text">
		<h2><?=$row['User_name'];?></h2>
		<p><?=mb_strimwidth($row['Review_text'], 0, 100, "...");?></p>
		<a href="/review/?action=index&id=<?=$row['ID'];?>">Подробнее >></a>
		</div>
	</div>
	<?php endforeach; ?>

	<div class="pagination"> 
	<?php for ($i=1; $i<=$count_pages; $i++): ?> 
	  <a href="/company/?action=index&id=<?=$_GET['id']?>&page=<?= strval($i)?>"><?=$i?></a>  
	  <?php endfor; ?>
	</div>
