
<body>
<form action= "db_insertion.php" method="post">
Name: <input type="text" name="t1"><br><br>
Password: <input type="password" name="t2"><br><br>
<input type="submit">
</form>
</body>

<?php
$name=$_REQUEST['t1'];
$pw=$_REQUEST['t2'];

$host="127.0.0.1";
$user="root";
$pass="";
$db='test123';
$conn=new mysqli($host,$user,$pass,$db);

if(strlen($pw)>=8 && strlen($name)>0){
$sql="insert into user values('$name','$pw')";
if ($conn->query($sql) === TRUE) {
     echo  "User details Inserted Successfully";
} else {
  echo "Error creating table: " . $conn->error;
}
}


$conn->close();
?>