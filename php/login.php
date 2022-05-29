<?php
session_start();

include_once 'dbconfig.php';
include('./auth.php');
header('Content-Type: application/json');


$GLOBALS['conn'] = mysqli_connect($dbconfig['host'], $dbconfig['user'], $dbconfig['password'], $dbconfig['name']);
$data = json_decode(file_get_contents('php://input'));




function checkPsw(string $s, int $n)
{
    /*     echo $s; */
    $psw = mysqli_real_escape_string($GLOBALS['conn'], $s);
    $query = "SELECT * FROM USERS WHERE PASSWORD = '$psw' AND N_MATRICOLA = $n";
    $res = mysqli_query($GLOBALS['conn'], $query) or die('ERROR ON QUERY PSW' . $query);
    /* echo json_encode($res); */
    if (mysqli_num_rows($res) > 0) {
        $row =  mysqli_fetch_assoc($res);
        echo json_encode($row);
        $_SESSION['user_id'] = $row['USER_ID'];
        $_SESSION['matricola'] = $row['N_MATRICOLA'];
        $_SESSION['username'] = $row['NICKNAME'];
        $_SESSION['name'] = $row['NAME'];
        $_SESSION['surname'] = $row['SURNAME'];
        $_SESSION['email'] = $row['EMAIL'];
        return true;
    } else return false;
};


$pass_valid = checkPsw($data->log_password, $data->n_matricola);
mysqli_close($GLOBALS['conn']);
if ($pass_valid) {
    /*   echo json_encode($data); */

    /*   $_SESSION['user_id'] = $user_id; */
    http_response_code(303);
    echo json_encode($_SESSION);
} else {

    echo http_response_code(404);
}
