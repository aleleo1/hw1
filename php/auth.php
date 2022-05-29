<?php
 require_once 'dbconfig.php';
    /********************************************************
       Controlla che l'utente sia già autenticato, per non 
       dover chiedere il login ad ogni volta               
    *********************************************************/
  /*   require_once 'dbconfig.php'; $res = mysqli_query($GLOBALS['conn'], $query) or die("Errore: " . mysqli_error($conn));
echo json_encode($res);
if ($res->num_rows > 0) {
    while ($row = mysqli_fetch_assoc($res)) {
        echo ("<section>
        <div class='number'><h1>" . $row["ID"] . ".</h1></div>
        <div class='summButtons'><button class='summButton'>Riassumi</button><button class='originalButton'>Testo Originale</button></div>
        <div class='details'>
        <h1>" . $row["NAME"] . "</h1>
        <h3>" . $row["NATION"] . "</h3>
        <p>" . $row["DATA"] . "</p>
        </div>  
        <img class='img' src=" . $row["IMG_URL"] . ">
        </section>");
        $counter = $counter + 1;
    }
}*/
  session_start();

    function checkAuth() {
    /*   echo json_encode($_SESSION); */
      return isset($_SESSION['user_id']) ;
    }
