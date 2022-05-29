<?php 
 session_start();

 require_once './php/auth.php';
    http_response_code(303);
 if (checkAuth()) {
     header("Location: ./php/user_logged.php");
     exit;
 }else{
    header("Location: ./php/user.php");
     exit;
 };
