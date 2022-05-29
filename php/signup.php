<?php
include_once  'dbconfig.php';

header('Content-Type: application/json');


$GLOBALS['conn'] = mysqli_connect($dbconfig['host'], $dbconfig['user'], $dbconfig['password'], $dbconfig['name']);
$data = json_decode(file_get_contents('php://input'));
$length_valid = true;
$pass_validity = false;
$email_valid = false;
$matricola_valid = false;
$user_cond = false;
$user_id = -1;

function buildUserId()
{
    $query = "SELECT * FROM USERS";
    $res = mysqli_query($GLOBALS['conn'], $query);
    $n = mysqli_num_rows($res);
    return is_int($n) ? $n + 1 : 1;
};

function checkEmail(string $elem)
{

    $email = mysqli_real_escape_string($GLOBALS['conn'], $elem);

    $query = "SELECT * FROM USERS WHERE EMAIL = '$email'";

    $res = mysqli_query($GLOBALS['conn'], $query);

    return mysqli_num_rows($res) > 0 ? false : true;
    mysqli_close($GLOBALS['conn']);
}

function checkUsername(string $elem)
{

    $name = mysqli_real_escape_string($GLOBALS['conn'], $elem);

    $query = "SELECT * FROM USERS WHERE NICKNAME = '$name'";

    $res = mysqli_query($GLOBALS['conn'], $query);

    return mysqli_num_rows($res) > 0 ? false : true;
    mysqli_close($GLOBALS['conn']);
}

function checkMatricola(int $elem)
{
    $query = "SELECT N_MATRICOLA FROM USERS WHERE N_MATRICOLA = $elem";
    $res = mysqli_query($GLOBALS['conn'], $query);
    return mysqli_num_rows($res) > 0 ? false : true;
    mysqli_close($GLOBALS['conn']);
}

function checkPassword(string $pass, string $conf)
{
    if (strlen($pass) != 0) {
        if (strlen($pass) > 7) {
            if (strcmp($pass, $conf) == 0) {
                return true;
            } else return false;
        } else return false;
    } else return false;
}



foreach ($data as $elem => $value) {
    if (strlen($value) == 0) {
        $length_valid = false;
    }
}
$matricola_valid = (checkMatricola($data->num_matricola));
$email_valid = (checkEmail($data->email));
$user_cond = checkUsername($data->username);
$pass_validity = checkPassword($data->password, $data->confirm_password);

if ($matricola_valid && $email_valid && $user_cond && $pass_validity && $length_valid) {
    $user_id = buildUserId();
    $querydata = array();
    foreach ($data as $key => $value) {
        $querydata[$key] = mysqli_real_escape_string($GLOBALS['conn'], $value);
    }
    $query = "INSERT INTO USERS(USER_ID, NAME, SURNAME, NICKNAME, EMAIL, PASSWORD, N_MATRICOLA) VALUES($user_id, " . "'" . $querydata['name'] . "'" . ',' . "'" . $querydata['surname'] . "'" . ',' . "'" . $querydata['username'] . "'" . ',' . "'" . $querydata['email'] . "'" . ',' . "'" . $querydata['password'] . "'" . ',' . $querydata['num_matricola'] . ')';
    /* echo $query; */
    if (mysqli_query($GLOBALS['conn'], $query)) {

        http_response_code(200);
    } else {


        http_response_code(500);
        echo json_encode(array('username' => $user_cond, 'n_matricola' => $matricola_valid, 'email' => $email_valid, 'len' => $length_valid, 'pass' => $pass_validity));
    }
    mysqli_close($GLOBALS['conn']);
} else {

    http_response_code(500);
    echo json_encode(array('username' => $user_cond, 'n_matricola' => $matricola_valid, 'email' => $email_valid, 'len' => $length_valid, 'pass' => $pass_validity));
}
