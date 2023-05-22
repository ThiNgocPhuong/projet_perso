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
                <li><a href="connexion.php">Connexion</a></li>
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
                <input type="password" name="mdp" id="mdp" placeholder="Veuillez saisir votre mot de passe" pattern='^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{12,}$' >
                <p>Votre mot de passe doit contenir au moin 12 caractères, une majuscule, une minuscule, un chiffre et un caractère spéciale</p>
            </div>
            <div id="checkCons">
                <input type="checkbox" onchange="isChecked()" id="cons" name="cons" onchange="isValid()">
                <label for="cons">En soumettant ce formulaire, j'accepte que les informations saisies soient exploitées dans le cadre de cette application web. Ces données ne pourront être exploiter que par la gérente de cette application.</label>
            </div>
            <br>
            <div id="bouton" >
                <input type="submit" disabled id="valid"  value="Inscription">
            </div>
        </div>
    </form>
</body>
<script type="text/javascript">
    function isChecked() {
        var checkbox = document.getElementById("cons");
        if (checkbox.checked) {
        return true;
        } else {
        alert("Vous devez accepter la collecte de donnée.");
        return false;
        }
    }

    function isValid() {
        var isValid = isChecked();
        document.getElementById("valid").disabled = !isValid;
    }

    document.getElementById("cons").onchange = function() {
        isValid();
    };
    </script>
</html>