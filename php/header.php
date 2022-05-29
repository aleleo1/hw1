<?php
session_start();
$location0 = ' <header>
<div class="navbar">
    <form method="POST" action="banche.php">
        <button class="navbutton" type="submit">Banche</button>
    </form>
    <form method="POST" action="./user.php">
        <button class="navbutton" type="submit">User</button>
    </form>
    <form method="POST" action="./game.php">
        <button class="navbutton" type="submit">TheGame</button>
    </form>
    </div>
    <div class="big_header">

    </div>

    </header>';

    $location0_disabled = ' <header>
<div class="navbar">

        <button disabled class="navbutton" type="submit">Banche</button>

        <button class="navbutton" type="submit">User</button>
  

        <button disabled class="navbutton" type="submit">TheGame</button>

    </div>
    <div class="big_header">

    </div>
    
    </header>';

$location1 = '<div class="big_header">
<div class="infoHeader">' . $user_info . '
</div>
</div>

</header>';

$location2 = ' <header>
<div class="navbar">
    <form method="POST" action="banche.php">
        <button class="navbutton" type="submit">Banche</button>
    </form>
    <form method="POST" action="./user_logged.php">
        <button class="navbutton" type="submit">User</button>
    </form>
    <form method="POST" action="./game.php">
        <button class="navbutton" type="submit">TheGame</button>
    </form>
    </div>
    <div class="big_header">

    </div>

    </header>';

$user_info = '<img src="../images/home-images/pic.png" class="propic">
<h4>Alessandro Leontini</h4>
<p></p>';

$template = '
<div class="infoHeader">
<img src="../images/home-images/pic.png" class="propic">
<h4>'.$_SESSION['name'].' '.$_SESSION['surname'].'</h4>
<p>'.$_SESSION['matricola'].'</p>
</div>
';

if (isset($_SESSION["user_id"])) {
    echo $location2.$template
        /* "<p>LOGGED AS " . $_SESSION['user_name'] . "</p>"; */;
} else {
    echo $location0_disabled;
}
