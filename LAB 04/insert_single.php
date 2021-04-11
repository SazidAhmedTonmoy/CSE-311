<?php

$link = mysqli_connect("localhost", "root", "sazid1498", "testwork");
// Check connection
if($link === false){
die("ERROR: Could not connect. " . mysqli_connect_error());
}
// Attempt insert query execution
$sql = "INSERT INTO student (First_Name, Last_Name, Semester, Cgpa) VALUES ('Peter', 'Parker', 3.5,4)";
if(mysqli_query($link, $sql)){
echo "Records inserted successfully.";
}
else{
echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
// Close connection
mysqli_close($link);
?>
