<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>connection</title>
</head>

<body>
<?php 

$db = mysqli_connect('localhost','root','','healthcare');
if (!$db){ 
       echo "connection failed";
}
error_reporting(0);

?>
</body>
</html>