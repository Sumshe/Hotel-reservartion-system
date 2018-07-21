<?php 
	include('header.php');
if(!isset($_SESSION['user']))
{ 
?>
<script>alert("Please log in first.");
setTimeout(function(){location.href="login.php"} , 500);</script>
<?php } ?>

<?php
$hotel = mysql_fetch_assoc(mysql_query("SELECT * from LISTINGS WHERE hotelid=". $_GET['hotelid']));
$room = mysql_fetch_assoc(mysql_query("SELECT * from ROOMS WHERE hotelid=".$_GET['hotelid']. " AND roomtype='".$_GET['roomtype']."'"));


?><br><br>
<h1>Confirm booking</h1>
<?php 
$users=mysql_query("SELECT * from users WHERE user_id=". $_SESSION['user']);
$names=mysql_fetch_assoc($users);
  ?>
<h2>HELLO  <?php echo $names['username']?> , YOUR DETAILS ARE</h2>

<table align="center" width="30%" border="0">
<tr>
<th>
Hotel Name
</th>
<td>
<?php
echo $hotel["name"];
?>
</td>
</tr>


<tr>
<th>
Room type
</th>
<td>
<?php
echo $room["roomtype"];
?>
</td>
</tr>

<tr>
<th>
City
</th>
<td>
<?php
echo $hotel["city"];
?>
</td>
</tr>

<tr>
<th>
Price
</th>
<td>
<?php
echo $room["price"];
?>
</td>
</tr>
</table>
<form action="complete-registration.php">
<input type="hidden" name="hotelid" value="<?php echo $hotel['hotelid']?>">
<input type="hidden" name="hotelname" value="<?php echo $hotel['name']?>">
<input type="hidden" name="price" value="<?php echo $room['price']?>">
<input type="hidden" name="roomtype" value="<?php echo $room['roomtype']?>">
<input type="hidden" name="city" value="<?php echo $hotel['city']?>">
<input type="submit" value="CONFIRM BOOKING" class="myButton" style="width:400px; height=80px;">
</form><br><br>
<?php 
	include('footer.php');

    ?>