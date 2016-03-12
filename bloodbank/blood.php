<?php
$username=$_POST['username'];
$bloodgroup=$_POST['bloodgroup'];
$dbc = mysqli_connect('mysql.hostinger.in', 'u684030433_root', 'fastrack', 'u684030433_blood');

  // Retrieve the score data from MySQL
  $query = "SELECT lat,lng FROM user_info WHERE username='$username'";
  $data = mysqli_query($dbc, $query);
 
  while ($row = mysqli_fetch_array($data)) { 
    $lat1= $row['lat'];
   $lng1= $row['lng'];
  }
$query1 = "SELECT * FROM user_info WHERE bloodgroup='$bloodgroup'";
  $result = mysqli_query($dbc, $query1);
 $i=0;
$data1=array();
  while ($row = mysqli_fetch_array($result, MYSQL_ASSOC)) { 
    $lat2= $row['lat'];
   $lng2= $row['lng'];
$dist=distance($lat1, $lng1, $lat2, $lng2);
if((lat1 && lat2)!==0 && $dist<=10)
{
$data1[] = $row;
  $data1[$i]['km']=$dist;
$i++;
}
  }
echo json_encode($data1);

  mysqli_close($dbc);

function distance($lat1, $lng1, $lat2, $lng2) {
  $theta = $lng1 - $lng2;
  $dist = sin(deg2rad($lat1)) * sin(deg2rad($lat2)) +  cos(deg2rad($lat1)) * cos(deg2rad($lat2)) * cos(deg2rad($theta));
  $dist = acos($dist);
  $dist = rad2deg($dist);
  $miles = $dist * 60 * 1.1515;
    return ($miles * 1.609344);
}
?>
