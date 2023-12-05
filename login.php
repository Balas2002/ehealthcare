<style>
<?php
include 'style1.css' ;
?>
</style>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Login</title>
</head>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<body>
 <div class="menu">
<a href="#" class="brand"><img src="pic/icn-nav-healthcare2.png"> </a>
<nav>
	<ul>
            <li><a href="Doctor/doctor_login.php">Doctor Login</a></li>
            <li><a href="Users/login.php">Users Login</a> </li>
    <li>
        <div style="padding: 9px">
<form action = "search.php" method = "POST">

Search Doctor Name: <input type = "text" name="f_name" placeholder="Search..." />
                   <input type="submit"name="search"  value="go" />
                       <?php
if(isset($error_msg)){echo $error_msg;}
?>
       </form>
       </div> 

             </li>
             </ul>
             </nav>

</div>

<section></section>  
       <?php
include 'translate.php';
?>

</body>
</html>
