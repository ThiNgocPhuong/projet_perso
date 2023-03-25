<?php
    //connexion à la database
    $user="Caroline";
    $pass="pingu";

    $mes="";

    try{
        $objPDO=new PDO('mysql:host=localhost;dbname=projet_perso', $user, $pass);

        $request=$objPDO->prepare('INSERT INTO lecteur (email, pseudo, mdp) Values(:email, :pseudo, :mdp)');

        $request->bindValue(':email',$_POST['email'], PDO:: PARAM_STR);
        $request->bindValue(':pseudo', $_POST['pseudo'], PDO:: PARAM_STR);
        $request->bindValue(':mdp', $_POST['mdp'], PDO::PARAM_STR);

        $insertValid= $request->execute();

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
    <link href="style_insert.css" rel="stylesheet" type="text/css">
    <title>Insciption</title>
</head>
<body>
    <div id="affichage">
        <!-- Affiche le message de reussite ou echec -->
        <h1>Confirmation du formulaire</h1>
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
