<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/form.css">
    <title>Inscription</title>
</head>
<body>
    <header>
        <a href="index.html" class="logo">Logo</a>
        <nav class="navbar">
            <ul>
                <li><a href="index.html">Accueil</a></li>
                <li><a href="#">Inscription</a></li>
                <li><a href="#">Connexion</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <h1> Inscription </h1>
    <form action="new_lecteur.php" method="post" enctype="multipart/form-data">
        <div class="contain">
            <div class="input_email">
                <label for="email">Adresse Mail</label><br>
                <input type="text" name="email" id="email" placeholder="Veuillez saisir votre email" pattern='(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))' required>
            </div>
            <div class="input_pseudo">
                <label for="pseudo">Pseudo</label><br>
                <input type="text" name="pseudo" id="pseudo" placeholder="Veuillez saisir votre pseudo" >
            </div>
            <div class="input_mdp">
                <label for="mdp">Mot de passe</label><br>
                <input type="password" name="mdp" id="mdp" placeholder="Veuillez saisir votre mot de passe" >
            </div>
            <div id="input_confirm_mdp" >
                <label for="confirm_mdp">Confirmation du mot de passe</label><br>
                <input type="password" name="confirm_mdp" onchange="validate()" id="confirm_mdp" placeholder="Veuillez ressaisir votre mot de passe" required>
                <p>Pour que votre mot de passe soit accepté, il doit comporter au moins une lettre majuscule, une lettre minuscule, un chiffre et un caractère spécial. De plus, sa longueur doit être d'au moins 8 caractères.</p>
            </div>
            <br>
            <div id="bouton" >
                <input type="submit" id="valid"  value="Inscription">
            </div>
        </div>
    </form>
</body>
<script type="text/javascript">
          function validate() {
     
               var a = document.getElementById("mdp").value;
               var b = document.getElementById("confirm_mdp").value;
               document.getElementById("valid").disabled=false;
          
               if (a!=b) {
                    alert("Le mot de passe ne correspondent pas.");  
                    document.getElementById("valid").disabled=true; 
               }
          }
     </script>
</html>