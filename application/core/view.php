<?php

namespace application\core;

class View
{
	
	/* $content_file - виды отображающие контент страниц;
	$template_file - общий для всех страниц шаблон;
	$data - массив, содержащий элементы контента страницы.
	*/
	function generate($content_view, $template_view, $data = null, &$count_pages=0)
	{
		include 'application/views/'.$template_view;
	}
}
?>