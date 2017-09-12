<?php
	if ($_SERVER['REQUEST_METHOD'] == 'POST')
	{
		if(isset($_POST["submit1"])){
			$con = pg_connect("host=localhost user=postgres dbname=restuarant_find password=Rohith1998");
			$query1 = "select * from restuarant where name ilike '".$_POST['searchBar']."%' ";
			$result = pg_query($con,$query1);
 		}
 		if(isset($_POST['submit']))
 {
 		$con = pg_connect("host=localhost user=postgres dbname=restuarant_find password=Rohith1998");
 	//	insert the correct table name below
 		$query1 = "select * from restuarant where area like '".$_POST['selectArea']."%'";
 		$result = pg_query($con,$query1);
 	}

	}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
		<title>proSteak</title>

		<link rel="shortcut icon" type="image/png" href="/DBMS_FE/pictures/favicon.ico"/>
		<link rel="stylesheet" href="/DBMS_FE/PG2_SEARCH_REVIEWS/nbs-search.css" type="text/css"/>
		<style>
			.navbar-text > a{
				color: inherit;
				text-decoration:none;
			}
			#mainPic1{
				height: 610px;
				width: 100%;
			}
			#mainImage{
				padding: 0;
				margin: 0;
				position: relative;
				top: -10px;
			}
		</style>
  </head>
  <body >
<!-- HEADER -->

	<div class="navtop">
		<ul class="navmain">
			<li><a href="/DBMS_FE/PG1_HOMEPAGE/homepage.html" > <span style="font-size: 20px"><i>proSteak</i></span></a></li>
		</ul>
		<ul class="navlist">
			<li>About Us</a></li>
			<li>Contact Us</a></li>
		</ul>
	</div>


<!--END HEADER-->

	<form id="form1" action="search.php" method="POST" >

		<div id="formContainer">

			<div id="areaDiv" onmousedown="clearSearch()" onblur="putSearch()">

				<select id="selectArea" name="selectArea">
					<option value="0" selected="selected">Select Area</option>
					<!-- <option value="1">Vijayanagar</option>
					<option value="2">Yeshwantpur</option>
					<option value="3">Banashankari</option>
					<option value="4">Malleswaram</option>
					<option value="5">Jayanagar</option>
					<option value="6">J.P.Nagar</option>
					<option value="7">Indiranagar</option>
					<option value="8">C.V.Raman Nagar</option>
					<option value="9">Sarjapur Road</option>
					<option value="10">Basavanagudi</option>
					<option value="11">Rajajinagar</option>
					<option value="12">Kormangala</option>
					<option value="13">BTM Layout</option>
					<option value="14">Yelahanka</option> -->

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
				<input class="mainButton" type="submit" name="submit" id="goBtn" value="GO" onClick="checkArea()"/>
			</div>

			<div id="rangeDiv" style="display: none;position: relative;bottom: 10px;">
				<span id="textSpan">Select the range (in kilometres)</span>

				<select id="selectRange" name="selectRange">
					<option  value="0" selected="selected">0</option>
					<option value="1" >1</option>
					<option value="2" >2</option>
					<option value="3" >3</option>
					<option value="4" >4</option>
					<option value="5" >5</option>
					<option value="6" >6</option>
					<option value="7" >7</option>
					<option value="8" >8</option>
					<option value="9" >9</option>
				</select>
								<input class="mainButton" name="submit" type="submit" id="submitBtn" value="Submit!"/>
			</div>
			<div id="orTextDiv">
				OR
			</div>

			<div id="restaurantSearch">
				Search for a Restaurant Name:
				<input type="search" name="searchBar" onmousedown="clearArea()" onblur="putArea()" />
				<input class="mainButton" name="submit1" type="submit" id="submitBtn" value="Submit!"/>
			</div>
<!--
			<div id="cuisineSearch">
				Search a Cuisine:
				<input type="search" name="searchBar" onmousedown="clearArea()" onblur="putArea()" />
				<input class="mainButton" name="submit1" type="submit" id="submitBtn" value="Submit!"/>
			</div>

			<div id="cuisineSearch">
				Search a Cuisine:
				<input type="search" name="searchBar" onmousedown="clearArea()" onblur="putArea()" />
				<input class="mainButton" name="submit1" type="submit" id="submitBtn" value="Submit!"/>
			</div>
		</div>
	-->

		<!-- CHECk if the order by button is clicked (by using array_key_exists('orderBy',$_POST) and then sort the result.
			TO do so, first get the query ($query1) and append to it "order by " and the type of order by the customer wants, ie by ratings, veg/nonveg , name, area etc
			Eg: customer needs order by ratings (highest to lowest) we'll have:
			$newQuery = $query1+ "order by ratings DESC";
			do the query part and print it again using the PHP block below.  -->
	<!--	<input type="button" name="orderBy" value="orderBy">

		<br>
		<br>
		<br>
		<br>
		<br>
-->

	</form>

		<?php
			if(array_key_exists('submit1',$_POST) or array_key_exists('submit',$_POST)){ //to check if the search bar submit button was pressed OR the area dropdown button was pressed
					// $con = pg_connect("host=localhost user=postgres dbname=restuarant_find password=Rohith1998");
					// $query1 = "select * from reviews";
					// $result = pg_query($con,$query1);
					$i=0;
				while ($row = pg_fetch_row($result))
				{
					$query1="select review from restuarant_info where rid='$row[0]'";
					$reviews=pg_query($con,$query1);
					$reviewsRest=pg_fetch_row($reviews);

					$query2="select avg(rating) from restuarant_info where rid='$row[0]'";
					$ratings=pg_query($con,$query2);
					$ratingsRest=pg_fetch_row($ratings);
				//	echo $ratingsRest[0];
					//rid     Address 	Name 	    desc 	    type 	    contact 	area
					//$row[0] $row[1] 	$row[2] 	$row[3] 	$row[4]		$row[5]		$row[6]
					echo "</div><div class='dbResult'><span class='restName'>";
					echo "$row[2]";
					echo "</span><br><span class='restDetails'><span class='restRating'>$row[3]</span>";
					echo "<span class='restMob'>	$row[5]	</span>";
					echo "<span class='restArea'>$row[6]</span></span><br>";
					echo "<span class='restCuisine'>";
							if($row[4]=='0')
								echo "Type: VEGETARIAN";
							else
								echo "Type: NON VEGETARIAN";
					echo "</span>";
					echo "</br>";
					echo "Recent Reviews:";
//echo "<br><span id='restReviews'>Recent Reviews: $reviewsRest[1] </span>";
for ($i=0;$i<2;$i++){
					echo "<br><span id='restReviews'> $reviewsRest[0]</span>";
					$reviewsRest=pg_fetch_row($reviews);
}					//echo "<br><span id='restReviews'>Recent Reviews: $reviewsRest[] </span>";
					echo "<br><span id='restReviews'>Average Ratings (on 5): $ratingsRest[0] </span>";
					echo " </div>";
$i++;

				}

			}

		?>

	<br>
<!-- FOOTER -->
	<!-- <div class="footbottom" style="margin-top: 400px;">
			<span style="float:'left';">&nbsp;&nbsp;&nbsp;&copy;2016 Cook My Resume Inc.</span>
			<div class="footer-list">
				<a href="#"><img src="/WT_NEW/pictures/facebook.png" style="height:30px;width:30px;"/></a> &nbsp;&nbsp;&nbsp;
				<a href="#"><img src="/WT_NEW/pictures/twitter.jpg" style="height:30px;width:30px;"/></a>    &nbsp;&nbsp;&nbsp;
				<a href="#"><img src="/WT_NEW/pictures/instagram.png" style="height:30px;width:30px;"/></a>&nbsp;&nbsp;&nbsp;
			</div>
	</div> -->

<!-- END FOOTER -->


	<script type="text/javascript">
		function checkArea(){
			var selectArea=document.getElementById("selectArea");

			if(selectArea[selectArea.selectedIndex].text!="Select Area"){
				selectArea.remove(0);
				var rangeDiv=document.getElementById("rangeDiv");
				// rangeDiv.style.display="block";
				var goBtn=document.getElementById("goBtn");
				var submitBtn=document.getElementById("submitBtn");
				submitBtn.style.display="block";
				goBtn.style.display="none";
			}
			clearSearch();
		}

		function clearArea(){
			var area=document.getElementById("areaDiv");
			var orTextDiv=document.getElementById("orTextDiv");
			//area.style.display="none";
			//orTextDiv.style.display="none";
		}

		function putArea(){
			var area=document.getElementById("areaDiv");
			area.style.display="block";
			var orTextDiv=document.getElementById("orTextDiv");
			orTextDiv.style.display="inline";
		}

		function clearSearch(){
			var restaurantSearch=document.getElementById("restaurantSearch");
			var orTextDiv=document.getElementById("orTextDiv");
			//restaurantSearch.style.display="none";
			//orTextDiv.style.display="none";
		}

		function putSearch(){
			var restaurantSearch=document.getElementById("restaurantSearch");
			restaurantSearch.style.display="block";
			var orTextDiv=document.getElementById("orTextDiv");
			orTextDiv.style.display="inline";
		}

	</script>
	</body>
</html>
