<?php
require('config.php');


// Récupérer le nombre total de livres
$queryTotalBooks = "SELECT COUNT(*) as total_books FROM livres";
$stmtTotalBooks = $pdo->prepare($queryTotalBooks);
$stmtTotalBooks->execute();
$resultTotalBooks = $stmtTotalBooks->fetch(PDO::FETCH_ASSOC);


?>
<!DOCTYPE html>
<html>
<head>
    <title>Accueil</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<header>
        <h1>Librairie XYZ</h1>
    </header>

<div class="wrapper">
        <!-- Sidebar -->
       <nav id="sidebar">
    <ul>
            <li><a href="books.php">Voir la liste des livres</a></li>
    </ul>
</nav>
        

        <!-- Page Content -->
        <div id="content">
            <div class="container">
                
                <!-- Votre contenu principal va ici -->
                <div id="content">
                <h1>Dashboard</h1>
    <div class="container">
        
    <div class="statistic">
        
            <h3>Total des Livres</h3>
            <p><?php echo $resultTotalBooks['total_books']; ?></p>
        </div>


        <!-- ... Autres statistiques ... -->
    </div>
</div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
    <div class="container">
        <p>&copy; <?= date("Y"); ?> Librairie XYZ</p>
    </div>
</footer>
</body>
</html>