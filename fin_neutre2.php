<?php
// Connexion à la base de données
$servername = "localhost";
$username = "Caroline";
$password = "pingu";
$dbname = "projet_perso";

$conn = new mysqli($servername, $username, $password, $dbname);

// Vérification de la connexion
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Requête SQL pour récupérer les données
$sql = "SELECT text FROM chapitre WHERE id LIKE 6";
$result = $conn->query($sql);
?>
<html>
    <header>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/histoires.css">
    <title>Histoire</title>
    </header>
    <body>
        <div class="conteneur">
            <h1>Le commencement</h1>
            <div class="text">
                <?php
                    if ($result->num_rows > 0) {
                        while($row = $result->fetch_assoc()) {
                            echo "<br><br>".$row["text"]."<br><br>";
                        }
                    } else {
                        echo "Aucun résultat trouvé.";
                    }

                    // Fermeture de la connexion
                    $conn->close();
                ?>
            </div>
        </div>
    </body>
</html>