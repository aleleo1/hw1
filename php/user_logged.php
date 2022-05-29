<!DOCTYPE html>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1">
    <title>User Logged</title>
    <link rel="stylesheet" href="../styles/user_logged.css">
    <link rel="stylesheet" href="../styles/index.css" />
    <link rel="stylesheet" href="../styles/header.css">
    <script src='../scripts/user_logged.js' defer></script>
</head>

<body>
    <div id="allPage">

        <?php
        session_start();
        include('./auth.php');
        include('./header.php');
        if (!checkAuth()) {
            header('Location: user.php');
        } else {
          /*   echo json_encode($_SESSION); */
            echo '<main>
                <button id="logout">Logout</button>
                <div class="userform">
                <form>
                    <p>Username: ' . $_SESSION['username'] . '</p>
                    <p>Nome: ' . $_SESSION['name'] . '</p>
                    <p>Cognome: ' . $_SESSION['surname'] . '</p>
                    <p>Email: ' . $_SESSION['email'] . '</p>
                </form>
                </div>
        </main>';
        }
        ?>


    </div>
    </div>
</body>

</html>