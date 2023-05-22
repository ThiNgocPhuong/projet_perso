<?php
    //connexion à la database
    include 'db.inc.php';

    $mes="";

    try{
        $objetPDO = new PDO('mysql:dbname='.BDD.';host='.HOST.';port='.PORT,LOGIN,PASSW);

        if (!$objetPDO) {
            die("Echec de connexion à la base de données : " . mysqli_connect_error());
        }

        $request=$objetPDO->prepare('INSERT INTO lecteur (email, pseudo, mdp, date_concentement) Values(:email, :pseudo, :mdp, :date)');

        $request->bindValue(':email',$_POST['email'], PDO:: PARAM_STR);
        $request->bindValue(':pseudo', $_POST['pseudo'], PDO:: PARAM_STR);
        $request->bindValue(':mdp', password_hash(':mdp',PASSWORD_DEFAULT));
        $request->bindValue(':date',date("Y-m-d"));

        $insertValid= $request->execute();

        $requete=$objetPDO->prepare('INSERT INTO parcours(email) VALUE (:email)');
        $request->bindValue(':email',$_POST['email'], PDO:: PARAM_STR);
        $isValid=$requete->execute();

        if($insertValid)
        {
            $mes = 'Votre inscription a bien été pris en compte.';
        }
        else
        {
            $mes = 'Votre inscription n\'a pas été pris en compte.';
        }
    } catch(PDOException $e){

        print "Erreur : ".$e->getMessage()."<br/>";
        die;
    }
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Insciption</title>
</head>
<body>
    <div id="contain">
        <!-- Affiche le message de reussite ou echec -->
        <h1>Confirmation de l'inscription</h1>
        <!-- Affichage des messages appelés -->
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
