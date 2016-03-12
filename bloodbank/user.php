<?php
$username=$_POST['username'];
$lat=(double)$_POST['lat'];
$lng=(double)$_POST['lng'];
$dbc = mysqli_connect('mysql.hostinger.in', 'u684030433_root', 'fastrack', 'u684030433_blood')
or
die("error connecting database");
$query = "UPDATE user_info SET lat='$lat',lng='$lng' WHERE (username = '$username')";
  mysqli_query($dbc, $query)
    or die('Error querying database.');
   echo "success!!";
  mysqli_close($dbc);

?>