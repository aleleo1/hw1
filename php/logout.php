<?php 
session_start();
if(session_destroy()){
    http_response_code(303);
  
}
else{
    http_response_code(500);
};
