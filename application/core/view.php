<?php

namespace application\core;

class View
{
	
	/* $content_file - ���� ������������ ������� �������;
	$template_file - ����� ��� ���� ������� ������;
	$data - ������, ���������� �������� �������� ��������.
	*/
	function generate($content_view, $template_view, $data = null, &$count_pages=0)
	{
		include 'application/views/'.$template_view;
	}
}
?>