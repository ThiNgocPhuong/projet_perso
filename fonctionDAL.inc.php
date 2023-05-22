<?php
    include 'db.inc.php';
    function sauvegarde($email,$num_chap){
        try{
            $objetPDO = new PDO('mysql:dbname='.BDD.';host='.HOST.';port='.PORT,LOGIN,PASSW);
            $request=$objetPDO->prepare("INSERT INTO lecteur(id_chap) VALUES ($num_chap) WHERE email='$email'");
            $insertValid= $request->execute();
        }
        catch(PDOException $e){

            print "Erreur : ".$e->getMessage()."<br/>";
            die;
        }


    }
   
?>