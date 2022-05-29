<?php
include './dbconfig.php';
$conn = mysqli_connect($dbconfig['host'], $dbconfig['user'], $dbconfig['password'], $dbconfig['name']) or die("Errore: " . mysqli_connect_error());

$data = json_decode(file_get_contents('php://input'));
/* echo json_encode($data); */
$name = mysqli_escape_string($conn, $data->choice);



$queryupdate = "UPDATE RESULTS SET NUM_INTERACTIONS = NUM_INTERACTIONS+1 WHERE NAME = '$name'";
$query = "SELECT * FROM RESULTS WHERE NAME = '$name'";
mysqli_query($conn, $queryupdate) or die("Errore: " . mysqli_error($conn));
$res = mysqli_query($conn, $query) or die("Errore: " . mysqli_error($conn));

echo json_encode(mysqli_fetch_assoc($res));
mysqli_close($conn);
