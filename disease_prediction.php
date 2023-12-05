<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Disease Prediction</title>
</head>

<style>
h1{
font-size:50px;
text-align:center;
padding-top:30px;
color:#000066;
}
img 
{ float: left;
width: 77px;
}
li{
font-size:24px;
}
h3{
font-size:24px;
letter-spacing:4px;}
body {margin:0;
padding:0;
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
width:100%;
height:100vh;
background-image:url(pic/1.jpg);
background-size:cover;
}
</style>
<body class="container display-4">
<script>
var name1 = prompt('Are you experience any of these symptoms?\n\na) Fever, Cough, Headache, Abdominal pain, \n Yellow-eye, Vomiting, Constipation,\nLoose-motion,Burning chest, Itching, Skin-Lashion\n\n b) Chest pain, Breathlesness, Palpitation,\nVirtigo, Swelling leg, Senseless, Headache, Neck-pain\n\n c) Pregnency , P/V bleeding during pregnency,\nLess fatal movement, ecxcessive whitish discharge P/V, Severe lower abdominal pain puring menestrition, Lower abdominal pain\n \nd) Fractures, Dislocation, \nJoint pain, Swelling of joint, Bone Pain\n \ne) bleeding gum, gum-swelling,\n toothache, carries teeth');
//-------------If chose single option-----------------
if(name1=='a'){
 alert('Contact with our Medicine specialist...');
 }
		else if(name1=='b'){
		 alert('Contact with our Cardilogist...');
		 }
		else if(name1=='c'){
		 alert('Contact with our Gynocologist...');
		 }
		else if(name1=='d'){
	 alert('Contact with our Orthopedic ...');
 			}
				else if(name1=='e'){
	 alert('Contact with our Dentist...');
 			}
			//-------------If chose double options-----------------
						else if(name1=='ab'){
 			var name2= prompt('Are you experience any of these symptoms?\n\na) Fever, Cough, Abdominal pain, \n Yellow-eye, Vomiting, Constipation,\nLoose-motion,Burning chest, Itching, Skin-Lashion\n\n b) Chest pain, Breathlesness, Palpitation,\nVirtigo, Swelling leg, Senseless,  Neck-pain\n\n ');
		if(name2=='a'){
 alert('Contact with our Medicine specialist...');
			}
			else if(name2=='b')
 alert('Contact with our Cardilogist...');
			
			}
				else if(name1=='ac'){
	 alert('Contact with our Medicine specialist or  Gynocologist...');
 			}
			
				else if(name1=='ad'){
	 alert('Contact with our Medicine specialist or Orthopedic ...');
 			}
			
				else if(name1=='ae'){
	 alert('Contact with our Medicine specialist or  Dentist...');
 			}
							else if(name1=='bc'){
	 alert('Contact with our Cardilogist or  Gynocologist...');
 			}
			
				else if(name1=='bd'){
	 alert('Contact with our Cardilogist or Orthopedic ...');
 			}
			
				else if(name1=='be'){
	 alert('Contact with our Cardilogist or  Dentist...');
	
 			}
	else if(name1=='cd'){
	 alert('Contact with our Gynocologist or Orthopedic specialist ...');
 			}
			
				else if(name1=='ce'){
	 alert('Contact with our Gynocologist or  Dentist...');
	 }
				else if(name1=='de'){
	 alert('Contact with our Orthopedic specialist or  Dentist...');	
	 }
///------- finish c----------------

</script>
<div id="google_translate_element"></div>

<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script>

<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<table class="table table-hover table-dark">
  <thead>
    <tr>
      
      <th scope="col" class="text-center text-warning">Specialist Name</th>

    </tr>
  </thead>

<tr><th class="text-center"><a href=Display_doctor_list_on_users_home_page/medicine.php>Medicine</a></th></tr>
<tr><th class="text-center"><a href=Display_doctor_list_on_users_home_page/bone.php>Orthopedic</a></th></tr>
<tr><th class="text-center"><a href=Display_doctor_list_on_users_home_page/dentist.php>Dentist</a></th></tr>
<tr><th class="text-center"><a href=Display_doctor_list_on_users_home_page/cardiac_electrophysiologist.php>Cardiac electrophysiologist</a></th></tr>
<tr><th class="text-center"><a href=Display_doctor_list_on_users_home_page/cardiologist.php>Cardiologist</a></th></tr>
<tr><th class="text-center"><a href=Display_doctor_list_on_users_home_page/surgeon.php>Surgeon</a></th></tr>
<tr><th class="text-center"><a href="Display_doctor_list_on_users_home_page/gynecologist.php">Gynecologist</a></th></tr>
<br><br>
<h2><div class="container ">
<ul class="pager font-weight-bold text-monospace">
  <li class="previous "><a href="index.php">Previous Page</a></li>
  <li class="next"><a href="../doctor_list.php">Next Page</a></li>
</ul></div></h2></table>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</body>
</html>