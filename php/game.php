<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Test della personalità</title>
  <link rel="stylesheet" href="../styles/header.css" />
  <link rel="stylesheet" href="../styles/provided-style.css" />
  <link rel="stylesheet" href="../styles/theGame.css" />

  <script src="../scripts/theGame.js" defer></script>
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
    echo '<article> <h1>Scopri la tua personalità interiore</h1>';
    $conn = mysqli_connect($dbconfig['host'], $dbconfig['user'], $dbconfig['password'], $dbconfig['name']);
    $q_names = ['Fumetto preferito?', 'Cane preferito?', 'Gatto preferito?'];

    for ($i = 1; $i <= 3; $i++) {
      $k = $i - 1;
      echo (' <section class="question-name">
        <h1>' . $q_names[$k] . '</h1>
      </section> ');
      $query = " SELECT * FROM GAME_IMAGES WHERE SECTION = $i ";
      $res = mysqli_query($conn, $query);
      echo '<section class="choice-grid">';
      if ($res) {
        while ($row = mysqli_fetch_assoc($res)) {

          echo '<div class="choice-section" data-choice-id="' . $row["CHOICE_ID"] . '" data-question-id="' . $row["SECTION"] . '">
        <img src=' . $row['URL'] . ' />
        <img class="checkbox" src="../images/theGame-images/unchecked.png" />
      </div>';
        }
        echo '</section>';
      } else {
        echo 'NO DATA';
      }
    }

    echo '</article>';
    ?>


    <div id="result" class="not-show">

      <h3 id="res-title"></h3>
      <p id="res-content"></p>
      <p id="num_interactions"></p>
      <button id="b">Ricomincia il quiz</button>
    </div>
    </article>
  </div>
</body>

</html>