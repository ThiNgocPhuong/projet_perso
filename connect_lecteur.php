<?php
    //connexion à la database
    include 'db.inc.php';

    try{  
        $objetPDO = new PDO('mysql:dbname='.BDD.';host='.HOST.';port='.PORT,LOGIN,PASSW);

        if (!$objetPDO) {
            die("Echec de connexion à la base de données : " . mysqli_connect_error());
        }

        if(isset($_POST['email']) && isset($_POST['mdp'])){
            $email=$_POST['email'];
            $mdp=password_hash(':mdp',PASSWORD_DEFAULT);

            $request->prepare("SELECT email, mdp FROM lecteur WHERE email='$email' AND mdp='$mdp'");

            $insertValid= $request->execute();

            if($insertValid){
                $mes="Connexion réussie !";
            }else{
                $mes="Echec de connexion !";
            }
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/form.css">
        <title>Connexion</title>
    </head>
    <body>
    <div id="contain">
        <!-- Affiche le message de reussite ou echec -->
        <h1>Confirmation de la connexion</h1>
        <!-- Affichage des messages appelés -->
        <p><?php echo $mes ?>  </p>
        <!-- Bouton qui retourne vers la page du formulaire -->
        <div id="bouton" class="bouton">
                <a href="./index.html" >
                    <button>Retour</button>
                </a>
        </div>
    </div>
    </body>
</html>