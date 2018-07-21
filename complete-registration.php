
<?php include("header.php");
if(!isset($_SESSION['user']))
{ 
?>
<script>alert("Please log in first.");
setTimeout(function(){location.href="login.php"} , 500);</script>
<?php } ?>

<?php
    $s = "INSERT into BOOKEDHOTEL(userid,hotelid,hotelname,city,roomtype,price)VALUES(" ;
    $s = $s .'"'. $_SESSION["user"] .'","'. $_REQUEST["hotelid"] .'","'. $_REQUEST["hotelname"];
    $s = $s .'","'. $_REQUEST["city"] .'","'. $_REQUEST["roomtype"]; 
    $s = $s .'","'. $_REQUEST["price"] .'");';
    

    echo "<br>";
    
    
?>

<body>
<div id="container" style="width:100%;text-align:center">
<h1> Booking completed successfully </h1>
<h4>You will now be redirected to the homepage</h4>
</body>

<script>
setTimeout(function(){location.href="transactions.php"} , 1500);
</script><br><br><br><br><br><br><br>
<?php 
	include('footer.php');
    ?>