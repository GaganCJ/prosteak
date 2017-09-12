
<?php
	session_start();
  $con = pg_connect("host=localhost user=postgres dbname=restuarant_find password=Rohith1998");
//  $result = pg_query($con,$query1);
	// $q2="CREATE TABLE form1data(fn varchar(20), ln varchar(20), sa varchar(50), ci varchar(10), st varchar(10) ,pc varchar(6), land varchar(20) ,mp varchar(10) , email varchar(50)) PRIMARY KEY";
	// $k=mysqli_query($con, $q2);
	$fn=$_POST['fn'];
  $restName=$_POST["restSelected"];
  $restrate=$_POST["rateSelected"];
  $area=$_POST["areaSelected"];
  $ta=$_POST["ta"];
	// $ln=$_POST['ln'];
	$sa=$_POST['sa'];
	//$ci=$_POST['ci'];
	//$st=$_POST['st'];
	//$pc=$_POST['pc'];
	//$land=$_POST['land'];
	$mp=$_POST['mp'];
	$email=$_POST['email'];
	// $_SESSION['email'] = $email;
//$p="INSERT INTO test (id,fn,ln,sa,ci,st,pc,land,mp,email) VALUES ($id,$fn,$ln,$sa,$ci,$st,$pc,$land,$mp,$email)";
$query1 = "INSERT INTO customer VALUES('$fn','$mp','8','$email','$area','$sa',0,'2')";
$result = pg_query($con,$query1);

if ($result) {
}
else {
		die("CONNECTION LOST");
}

if (pg_query($con,"INSERT INTO restuarant_info VALUES ('$restrate','$ta','$email','$restName' )")) {
}
else {
		die("CONNECTION LOST");
}
 pg_close($con);
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

	<title>Work History</title>

	<link rel="shortcut icon" type="image/png" href="/DBMS_FE/pictures/favicon.ico"/>
	<style>
		  .navbar-text > a{
		  	color:inherit;
			  text-decoration:none;
		  }
	  </style>

  </head>
	<body>
<!-- HEADER -->

	<div class="navtop">
		<ul class="navmain">
			<li><a href="/WT_NEW/PG1_HOMEPAGE/homepage.html" > PROSTEAK </a> </li>
		</ul>
		<ul class="navlist">
			<li>About Us</a></li>
			<li>Contact Us</a></li>
			<li>Login</a></li>
		</ul>
	</div>


<!--END HEADER-->
	<br/>
	<br/>
	<br/>

	<br/>
	<br/>

	<div class="row">

		<div class="cols6">
			<p class="para"> Thank you for the reviews </p>
		</div>

		<div class="cols4">

		</div>

	</div>
	<div style="padding-top:30px;padding-bottom:135px;"></div>
<!-- FOOTER -->
	<div class="footbottom">
			<span style="float:'left';">&nbsp;&nbsp;&nbsp;&copy;2017 PROSTEAK Inc.</span>
			<div class="footer-list">
				<a href="#"><img src="/DBMS_FE/pictures/facebook.png" style="height:30px;width:30px;"/></a> &nbsp;&nbsp;&nbsp;
				<a href="#"><img src="/DBMS_FE/pictures/twitter.jpg" style="height:30px;width:30px;"/></a>    &nbsp;&nbsp;&nbsp;
				<a href="#"><img src="/DBMS_FE/pictures/instagram.png" style="height:30px;width:30px;"/></a>&nbsp;&nbsp;&nbsp;
			</div>
	</div>

<!-- END FOOTER -->
       </body>
</html>
