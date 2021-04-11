<?php
 /* Attempt MySQL server connection. Assuming you are running MySQL
 server with default setting (user 'root' with no password) */
 $link = mysqli_connect("localhost", "root", "sazid1498", "testwork");

 // Check connection
 if($link === false){
 die("ERROR: Could not connect. " . mysqli_connect_error());
 }

 // Attempt insert query execution
 $sql = "INSERT INTO student (First_Name, Last_Name, semester, Cgpa) VALUES
 ('John', 'Rambo',3.5,8),
 ('Clark', 'Kent',4,5),
 ('John', 'Carter',3.8,7),

 ('Harry', 'Potter',3,5)";
 if(mysqli_query($link, $sql)){
 echo "Records added successfully.";
 } else{
 echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
 }

 // Close connection
 mysqli_close($link);
 ?>
