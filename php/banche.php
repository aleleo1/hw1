<!DOCTYPE html>ù

<?php ?>


<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1">
    <title>Le 5 grandi banche</title>
    <link rel="stylesheet" href="../styles/index.css">
    <link rel="stylesheet" href="../styles/header.css">


    <!--     <script type="text/javascript" src="constants.js" defer="true"></script> -->
    <script type="text/javascript" src="../scripts/index.js" defer="true"></script>

</head>

<body>

    <div id="allPage">
        <?php

        include('./dbconfig.php');
        include('./auth.php');
        include('./header.php');
        if (!checkAuth()) {
            http_response_code(303);
            header('Location: user.php');
        }

        ?>

        <!--  <div class="infoHeader">
            <img src="images/pic.png" class="propic">
            <h4>Alessandro Leontini</h4>
            <p>1000001631</p>
        </div> -->
        <h1>Le 5 grandi banche</h1>
        <div class="article">

            <!-- <section>
                <div class="number">
                    <h1>1.</h1>
                </div>
                <div class="summButtons"><button class="summButton">Riassumi</button><button class="originalButton">Testo Originale</button></div>
                <div class="details">
                    <h1></h1>
                    <h3></h3>
                    <p></p>


                </div>
                <img class="img" src="images/bnp_paribas_logo.jpg">
                <button class="originalImage">Mostra immagine originale</button>
            </section> -->
            <?php
         

            $counter = 1;
            // Connessione al DB
            $conn = mysqli_connect($dbconfig['host'], $dbconfig['user'], $dbconfig['password'], $dbconfig['name']) or die("Errore: " . mysqli_connect_error());
            // Preparazione query

            $query = "SELECT * FROM SUMUPS";
            // Esecuzione query
            $res = mysqli_query($conn, $query) or die("Errore: " . mysqli_error($conn));
            // Lettura risultati
            if ($res->num_rows > 0) {
                while ($row = mysqli_fetch_assoc($res)) {
                    echo ("<section id='" . $row["ID"] . "'>
                    <div  class='number'><h1>" . $row["ID"] . ".</h1></div>
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
            } else {

                echo ("Errore: nessun risultato");
            }

            $conn->close();



            ?>
        </div>

        <footer>
            <div class="copyright">
                
            <?php
                echo  $_SESSION['username'] . ' ' . $_SESSION['matricola'];
                ?>
            </div>
        </footer>
    </div>
</body>

</html>