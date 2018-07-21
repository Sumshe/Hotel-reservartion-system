<?php
	include('header.php');
	error_reporting('0');
		$uid = $_SESSION['user'];
		$transactions = mysql_query("SELECT * FROM bookedhotel WHERE userid='$uid'");
	if(isset($transactions)) {
	
?>
	<div id="main">
		<br>
		<br>
			<div id="content-main">
				<p class="intro">Your hotel booking history:</p><br>
				<p>
								<table id="transactions" align="center" width="30%" border="0">
									<tr>
										<td>userid</td>
										<td>Hotel Id</td>
										<td>Hotel Name</td>
										<td>City</td>
										<td>Roomtype</td>
										<td>Price</td>
										
									</tr>
								<?php 
									while($t = mysql_fetch_assoc($transactions)) {
									
									?>
									<tr>
										<td><?php echo $_SESSION['user']; ?></td>	
										<td><?php echo $t['hotelid']; ?></td>
										<td><?php echo $t['hotelname']; ?></td>
										<td><?php echo $t['city']; ?></td>
										<td><?php echo $t['roomtype']; ?></td>
										<td><?php echo $t['price']; ?></td>
									</tr>
									<?php
									}
									?>
								</table>
		</div>
	</center>
				</p>
			</div>
		</div>
	<?php
	}
	else
		echo "No transactions found";
	
	include('footer.php');
	?>