<?php
	/*compileIgnore*/
	$confFile="";
	if (count($_GET) == 1 && current($_GET) == "") {
		$confFile = key($_GET) . '.php.conf'; 
	}
	
	if (file_exists($confFile)) {
		require('libs/Smarty.class.php');
		require('libs/Smarty.config.php');
		require($confFile);
		
		$location = 'https://github.com/downloads/' . $theSite->get_template_vars('url_base') . '/' . $theSite->get_template_vars('url_dl');
	} else {
		$location = 'http://www.gpgtools.org/';
	}
	
	header('HTTP/1.1 303 See Other');
	header('Location: ' . $location);
?>

<html>
<head>
<?php
	echo '<meta http-equiv="refresh" content="0; URL=' . $location . '">'
?>
</head>
</html>

