<!DOCTYPE html>




<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1">
    <title>Login or Register</title>
    <link rel="stylesheet" href="../styles/user_styles.css">
    <!--  <link rel="stylesheet" href="../styles/index.css" /> -->
    <link rel="stylesheet" href="../styles/header.css">

    <script src='../scripts/user.js' defer></script>
</head>

<body>
    <div id="allPage">

        <?php
        session_start();
        include('./auth.php');
        include('./header.php');
        if (checkAuth()) {       
            header('Location: user_logged.php');
        }

    
        ?>



        <main>
            <div class="forms">
                <form name='signup' method='post' id="signup" autocomplete="off">
                    <h1>SIGN UP</h1>

                    <div class="name">
                        <div><label for='name'>Nome</label></div>

                        <div><input type='text' name='name'></div>

                        <p class="sign_error no_error">Il campo non può essere vuoto</p>
                    </div>
                    <div class="surname">
                        <div><label for='surname'>Cognome</label></div>
                        <div><input type='text' name='surname'></div>

                        <p class="sign_error no_error">Il campo non può essere vuoto</p>
                    </div>

                    <div class="username">
                        <div><label for='username'>Nome utente</label></div>
                        <div><input type='text' name='username'></div>
                        <p class="sign_error no_error" id="username_error">Il campo non è valido (utente già presente)</p>
                        <p class="sign_error no_error">Il campo non può essere vuoto</p>
                    </div>
                    <div class="num_matricola">
                        <div><label for='num_matricola'>Numero matricola</label></div>
                        <div><input type='number' name='num_matricola'></div>

                        <p class="sign_error no_error">Il campo non può essere vuoto</p>
                        <p class="int_error no_error">Il campo deve contenere un numero </p>
                        <p class="sign_error no_error" id="matricola_error">Il campo non è valido (matricola già presente)</p>
                    </div>
                    <div class="email">
                        <div><label for='email'>Email</label></div>
                        <div><input type='text' name='email'></div>
                        <p class="sign_error no_error">Il campo non può essere vuoto</p>
                        <p class="sign_error no_error" id="sign_email_error">Email già presente</p>
                    </div>
                    <div class="password">
                        <div><label for='password'>Password</label></div>
                        <div><input type='password' name='password' id="password_input"></div>

                        <p class="sign_error no_error" id="p_error">Il campo non può essere vuoto</p>
                        <p class="sign_error no_error" id="p_error_valid">La password deve essere di almeno 8 caratteri</p>

                    </div>
                    <div class="confirm_password">
                        <div><label for='confirm_password'>Conferma Password</label></div>
                        <div><input type='password' name='confirm_password' id="confirm_password_input"></div>
                        <p class="sign_error no_error">Il campo non può essere vuoto</p>
                        <p class="sign_error  no_error" id="pc_error">Le password non coincidono</p>
                    </div>


                    <div class="submit">
                        <input type='submit' disabled value="Registrati" id="sign_submit">
                    </div>

                    <div class="server_error">
                        <p class="sign_error no_error" id="sign_error_p">Qualcosa è andato storto, riprovare</p>
                    </div>
                </form>

                <form name='login' method='post'>
                    <h1>LOGIN</h1>
                    <div class="log_num">
                        <div><label for='n_matricola'>Numero Matricola</label></div>
                        <div><input type='text' name='n_matricola'></div>

                        <p class="log_error no_error">Il campo non può essere vuoto</p>
                        <p class="int_error no_error">Il campo deve contenere un numero </p>
                    </div>
                    <div class="log_pass">
                        <div><label for='log_password'>Password</label></div>
                        <div><input type='password' name='log_password'></div>

                        <p class="log_error no_error">Il campo non può essere vuoto</p>
                    </div>
                    <p>
                        <label>&nbsp;<input id="log_submit" disabled type='submit'></label>

                    <div class="login_error">
                        <p class="log_error no_error" id="log_error_p">Qualcosa è andato storto, riprovare</p>
                    </div>
                </form>


        </main>
    </div>
    </div>
</body>

</html>