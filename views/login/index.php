<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login-Veterinaria</title>
    <link rel="stylesheet" href="<?php echo constant('URL') ?>public/css/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com"> <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin> <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100..900&family=Work+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="box">
            <div class="title">
                <h1>Ingreso al Sistema Veterinaria</h1>
            </div>
            <div class="content">
                <form action="<?php echo constant('URL') ?>login/user" method="POST" class="form-login">
                    <div class="box-input">
                        <label for="usuario">Usuario</label>
                        <input type="text" name="usuario" placeholder="uzer2132">
                    </div>
                    <div class="box-input">
                        <label for="password">Password</label>
                        <input type="password" name="password" placeholder="*****">
                    </div>
                    <div class="box-submit">
                        <button class="button" id="button" type="submit">Iniciar Sesion</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>