<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/form.css"> 
        <title>Connexion</title>
    </head>
    <body>
        <header>
            <a href="index.html" class="logo">Logo</a>
            <nav class="navbar">
                <ul>
                    <li><a href="index.html">Accueil</a></li>
                    <li><a href="inscription.php">Inscription</a></li>
                    <li><a href="#">Connexion</a></li>
                </ul>
            </nav>
        </header>
        <br>
        <h1>Connexion</h1>
        <form action="connect_lecteur.php" method="post" enctype="multipart/form-data">
            <div class="contain">
            <div class="input_email">
                <label for="email">Adresse Mail</label><br>
                <input type="text" name="email" id="email" placeholder="Veuillez saisir votre email" pattern='(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))' required>
            </div>
                <div class="input_mdp">
                    <label for="mdp">Mot de passe</label><br>
                    <input type="password" name="mdp" id="mdp" placeholder="Veuillez saisir votre mot de passe" pattern='^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{12,}$' require>                
                </div>
                <div id="bouton" >
                    <input type="submit" id="valid" value="Connexion">
                </div>
                </div>
            </div>
        </form>
    </body>
</html>