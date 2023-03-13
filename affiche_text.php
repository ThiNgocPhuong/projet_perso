<?php
    //connexion à la database
    $user="Caroline"
    $pass="pingu"

    try{
        $objPDO = new PDO('mysql:host=localhost;dbname=projet_perso', $user, $pass);

        //préparation de la requête
        $request = $objPDO -> prepare('SELECT text from chapitre WHERE id like 1 ');
        
    }
?>