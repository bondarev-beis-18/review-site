<h1>Review</h1>
	<?php foreach($data as $row): ?>
	<div class="row">
		<div class="cols">

		<p><img src="<?=$row['Photo'];?>"</p>

		</div>

		 <div class="cols text">

		<h2><?=$row['User_name'];?></h2>
		<p><?=$row['Review_text'];?></p>

		</div>
	</div>
	<?php endforeach; ?>
