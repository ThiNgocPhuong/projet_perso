<?php
    //connexion à la database
    include 'db.inc.php';

    try{
        
        
        $objetPDO = new PDO('mysql:dbname='.BDD.';host='.HOST.';port='.PORT,LOGIN,PASSW);

        $request=$objetPDO->prepare('SELECT mdp FROM lecteur WHERE email LIKE :email ');

        $request->bindValue(':email',$_POST['email'], PDO:: PARAM_STR);

        $insertValid= $request->execute();

        if($insertValid)
        {
            $mes = 'connexion réussi';
        }
        else
        {
            $mes = 'echec de connexion';
        }
    }
?>