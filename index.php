<?php
    include 'fonctionDAL.inc.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Accueil</title>
</head>
<body>
    <header>
        <a href="index.html" class="logo">Logo</a>
        <nav class="navbar">
            <ul>
                <li><a href="#">Accueil</a></li>
                <li><a href="inscription.php">Inscription</a></li>
                <li><a href="connexion.php">Connexion</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="conteneur" style="font-size: 20px; color:white;">
        <div class="pres" style="margin: 150px 254px 65px 185px; ">
            <p>Bonjour et bienvenue dans le chemin imaginaire ! À l'aide de ce site, je vous propose un petit jeu, plus précisément une histoire interactive. Vos choix auront un grand impact sur la fin. Je suis curieuse de voir sur quelle fin vous allez tomber. Bonne chance et surtout, bonne lecture ! </p>
        </div>
        <div class="histoire" style="margin-left: 35px; margin-right: 35px;">
            <table>
               <thead></thead> 
               <tbody>
                <tr>
                    <td>
                        <img src="./image/resumé.png" alt="image">
                    </td>
                    <td>
                        <p style="margin-left: 35px;">Tu vis seule avec ton petit frère que tu aimes plus que tout au monde. Tu enchaînes les cours et ton boulot tout en gardant le sourire pour ne pas inquiéter ton frère. Tout ça pour dire que ta vie est synonyme d'ennui, sans saveur. Du moins, enfin ça, c’est quand tu es réveillée. Dans ton sommeil, tu es une aventurière, libre d’aller là où bon te semble, de manger ce que tu veux, de te battre si l’envie t’en prend… Un jour, un nouvel élève fait son entrée dans ta classe, il t’est étrangement familier, mais tu n’arrives pas à savoir où et quand tu l’as rencontré. En-tout-cas une chose est sûr, tu as un mauvais pressentiment le concernant. Tu balayes d’un revers de main cette impression, invoquant la règle du “on ne juge pas un livre à sa couverture”. Mais peut-être que tu aurais dû écouter ton instinct.</p>
                        <form action="affiche_text.php" style="margin-left: 38px;font-size: 20px;">
                            <button>Lire</button>
                        </form>
                    </td>
                </tr>
               </tbody>
            </table>
        </div>
    </div>
</body>
</html>