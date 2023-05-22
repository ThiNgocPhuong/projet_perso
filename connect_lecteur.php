<?php
    session_start();
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

            $request=$objetPDO->prepare("SELECT email, mdp FROM lecteur WHERE email='$email' AND mdp='$mdp'");

            $insertValid= $request->execute();

            if($insertValid){
                $mes="Connexion réussie !";
                $_SESSION['connected']=true;
                $_SESSION['profil']=$email;
            }else{
                $mes="Echec de connexion !";
            }
        }
    }catch(PDOException $e){

        print "Erreur : ".$e->getMessage()."<br/>";
        die;
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Connexion</title>
    </head>
    <body>
    <div id="contain">
        <!-- Affiche le message de reussite ou echec -->
        <h1>Confirmation de la connexion</h1>
        <!-- Affichage des messages appelés -->
        <p><?php echo $_SESSION['connected']; echo $_SESSION['profil'] ?></p>
        <p><?php echo $mes ?>  </p>
        <!-- Bouton qui retourne vers la page du formulaire -->
        <div id="bouton" class="bouton">
                <a href="./index.php" >
                    <button>Retour</button>
                </a>
        </div>
    </div>
    </body>
</html>