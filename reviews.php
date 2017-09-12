
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

	<title>Personal Details</title>

	<link rel="shortcut icon" type="image/png" href="/WT_NEW/pictures/favicon.ico"/>
	<link rel="stylesheet" href="/DBMS_FE/PG2_SEARCH_REVIEWS/nbs-form_page1.css" type="text/css"/>
	<!--<link href="/WT_NEW/test.css" rel="stylesheet">-->
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
			<li><a href="/WT_NEW/PG1_HOMEPAGE/homepage.html" > prosteak </a> </li>
		</ul>
		<ul class="navlist">
			<li><a href="">About Us</a></li>
			<li><a href="">Contact Us</a></li>
		</ul>
	</div>



  <!-- put a dropdoqn with restuarant names: -->



<!--END HEADER-->
	<div class="all_s">
		<p class="s1" style="color:#6600ff"> </p>
		<p class="s2" style="font-size:18px;text-align:left;font-family:'Trebuchet MS', Helvetica, sans-serif	;"><i>  </i></p>
	</div>


	<form id="form1" method="post" action="/DBMS_FE/PG2_SEARCH_REVIEWS/form1_page.php">

		<div class="row">

			  <div class="cols3">
			    NAME:<br><input type="text" class="form-control" name="fn" placeholder="" required>
			  </div>
			</div>


	  <div class="row">
			  <div class="cols3">
			    STREET ADDRESS:<br><input type="text" class="form-control" name="sa"  placeholder=""required>
			  </div>



		<div class="row">
      <div class="cols3">
       RESTAURANT:  </br><select name="restSelected">
            <option value="1">Szechuan Dragon</option>
            <option value="2">Gramin</option>
            <option value="3">Shree Sagar(CTR)</option>
            <option value="4">Dum Pure</option>
            <option value="5">Tayabbs</option>
            <option value="6">Vasudev Adigas</option>
            <option value="7">Kabab Magic</option>
            <option value="8">Shivaji Military Hotel</option>
            <option value="9">Hard Rock Cafe</option>
            <option value="10">Taaza Thindi</option>
            <option value="11">Smoke House Deli</option>
            <option value="12">Le Jardin</option>
            <option value="13">Absolute Barbecue</option>
            <option value="14">Sunny"s Restaurant</option>
            <option value="15">New Modern Hotel</option>
            <option value="16">Manjit ka Dhaba</option>
            <option value="17">China Pearl</option>
            <option value="18">Bangalore Mandarin</option>
            <option value="19">Xian restuarant</option>
            <option value="20">Vidyarthi Bhavan</option>
            <option value="21">Maiyas Restaurant</option>
            <option value="22">Asha Food Camp</option>
            <option value="23">South Kitchen</option>
            <option value="24">Gud Dhani</option>
            <option value="25">Halli Mane</option>
            <option value="26">Hotel Nalapaka</option>
            <option value="27">MTR</option>
            <option value="28">Vishwa Brahmin"s  Cafe</option>
            <option value="29">Priyadharshini Grand</option>
            <option value="30">The Higher Taste</option>
            <option value="31">New Sagar Fast Food</option>

          </select>
			  </div>
</div>






<div class="row">
  <div class="cols3">
   RATING:  </br><select name="rateSelected">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>

      </select>
    </div>
</div>
			  <div class="cols3">
			    MOBILE PHONE:<br><input type="text" class="form-control" name="mp"  placeholder=""required>
			  </div>
        <div class="row">

          <div class="cols3">
           AREA:  </br><select name="areaSelected">
                <option value="560001">560001</option>
                <option value="Vijayanagar">Vijayanagar</option>
                <option value="Indiranagar">Indiranagar</option>
                <option value="Basavanagudi">Basavanagudi</option>
                <option value="Infantry Road">Infantry Road</option>
                <option value="MG Road">MG Road</option>
                <option value="Ulsoor">Ulsoor</option>
                <option value="Kormangala">Kormangala</option>
                <option value="BTM Layout">BTM Layout</option>
                <option value="Rajajinagar">Rajajinagar</option>
                <option value="Frazer Town">Frazer Town</option>
                <option value="Malleshwaram">Malleshwaram</option>
                <option value="Marathahalli">Marathahalli</option>

              </select>
            </div>
        </div>



		</div>

		<div class="row">
      FEEDBACK:
        <textarea id="reviewBox" name = "ta"></textarea>
	   </div>

		</div>
		<div class="row">
			<div class="cols3">
				EMAIL ADDRESS:<br><input type="email" class="form-control" name="email"  placeholder=""required>
			</div>
		</div>

		<div class="button" style=" padding-bottom: 30px;">
			<input type="submit" value="Next" id="submit"/>
		</div>

	</form>

<!-- FOOTER -->
	<div class="footbottom">
			<span style="float:'left';">&nbsp;&nbsp;&nbsp;&copy;2017 Prosteak Inc.</span>
			<div class="footer-list">
				<a href="#"><img src="/WT_NEW/pictures/facebook.png" style="height:30px;width:30px;"/></a> &nbsp;&nbsp;&nbsp;
				<a href="#"><img src="/WT_NEW/pictures/twitter.jpg" style="height:30px;width:30px;"/></a>    &nbsp;&nbsp;&nbsp;
				<a href="#"><img src="/WT_NEW/pictures/instagram.png" style="height:30px;width:30px;"/></a>&nbsp;&nbsp;&nbsp;
			</div>
	</div>

<!-- END FOOTER -->
<!--
<script type="text/javascript">
	var yourSelect=document.getElementById("selector1");
	yourSelect.onclick=fun1;
	function fun1(event){
		var s1 = yourSelect.options[ yourSelect.selectedIndex ].value;
		var s2= document.getElementById("selector2");
		var myNode = document.getElementById("selector2");
		while (myNode.firstChild) {
    	myNode.removeChild(myNode.firstChild);
		}
		switch(s1){
			case "1":	var opt1=document.createElement('option'),opt2=document.createElement('option');
								opt1.value="1";
								opt1.innerHTML="Architects";
								opt2.value="2";
								opt2.innerHTML="Urban and Regional Planning";
								s2.appendChild(opt1);
								s2.appendChild(opt2);break;
			case "2": var opt1=document.createElement('option'),opt2=document.createElement('option'),opt3=document.createElement('option'),opt4=document.createElement('option');
								opt1.value="1";
								opt1.innerHTML="Civil Engineering";
								opt2.value="2";
								opt2.innerHTML="Electronics and Communications Engineering";
								opt3.value="3";
								opt3.innerHTML="Computer Science and Engineering";
								opt4.value="4";
								opt4.innerHTML="Mechanical Engineering";
								s2.appendChild(opt1);
								s2.appendChild(opt2);
								s2.appendChild(opt3);
								s2.appendChild(opt4);break;
			case "3": var opt1=document.createElement('option'),opt2=document.createElement('option');
								opt1.value="1";
								opt1.innerHTML="Policy Makers";
								opt2.value="2";
								opt2.innerHTML="Post Office";
								s2.appendChild(opt1);
								s2.appendChild(opt2);break;
			case "4": var opt1=document.createElement('option'),opt2=document.createElement('option'),opt3=document.createElement('option');
								opt1.value="1";
								opt1.innerHTML="Dentistry";
								opt2.value="2";
								opt2.innerHTML="Nursing";
								opt3.value="3";
								opt3.innerHTML="Therapists";
								s2.appendChild(opt1);
								s2.appendChild(opt2);
								s2.appendChild(opt3);break;
			default: 	break;
		}
	}

	var select2=document.getElementById("selector2");
	select2.onclick=fun2;
	function fun2(){
		var s2 = select2.options[ select2.selectedIndex ].text;
		sessionStorage.setItem("opt2", s2);
	}
</script> -->







       </body>
</html>
