<?php
	include('header.php');
	include_once "dbconnect.php";
?>
<br>
<div style="width:70%;margin-left:15%">
<h2>Filters</h2>
<h3>Search by name</h3>
<form action="listings.php">
Name: <input type="text" name="hotelname"><br>
<h3>Search by City</h3>
City: <input type="text" name="city"><br>
<input type="submit" class="myButton" style="width:80px; height:40px;">
</form>
</div>
<?php	
	$cond="";
	if(isset($_REQUEST["hotelname"])&& $_REQUEST["hotelname"]!="")
		$cond = " name LIKE '%".$_REQUEST["hotelname"]."%'";
	if(isset($_REQUEST["city"])&& $_REQUEST["city"]!="" )
	{	$cond1 = " city LIKE '%".$_REQUEST["city"]."%'";
		if($cond=="")
			$cond = $cond1;
		else
			$cond = $cond . " AND " . $cond1;
	}
	if($cond=="")
		$cond = 1;
	$hotels = mysql_query("SELECT * FROM listings WHERE ".$cond);	
?>
	<div id="main">
		<br />
		<br />
			<div id="content-main" style="margin:auto; position:relative; left:400px;">
			<table align:"center";>
			<tr>
				<th>
				Name
				</th>
				<th>
				City
				</th>
				<th>
				Rating
				</th>
			</tr>
			<?php
				while($row = mysql_fetch_assoc($hotels))
				{	
			?>
			<tr>
			<td>
			<?php echo $row["name"]?>
			</td>
			<td>
			<?php echo $row["city"]?>
			</td>
			<td>
			<?php echo $row["rating"]?>
			</td>
			<td>
			<form action="details.php">
			<input type="hidden" name="hotelid" value="<?php echo $row['hotelid']?>">
			<input type="submit" class="myButton" value="Check Prices">
			</form>
			</td>
			</tr>
			<?php } ?>
			</table>
			</div>
	</div>
<?php

	include('footer.php');
?>