
  <?php
  session_start();
  include_once  'dbconfig.php';


  header('Content-Type: application/json');
  $GLOBALS['conn'] = mysqli_connect($dbconfig['host'], $dbconfig['user'], $dbconfig['password'], $dbconfig['name']);

  $data =  json_decode(file_get_contents('php://input'));
  if (empty($data)) {
    http_response_code(404);
  } else {

   

    $query = "SELECT DATA FROM SUMUPS WHERE ID = $data->id";

    $res = mysqli_query($GLOBALS['conn'], $query) or die(http_response_code(404));
    if ($res) {
      if ($res->num_rows > 0) {
        $row = mysqli_fetch_assoc($res);
        echo json_encode($row);
      };
    }
 
  }
