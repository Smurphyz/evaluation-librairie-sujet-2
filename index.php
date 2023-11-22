<?php
if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
// Vérifier si l'utilisateur est connecté
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

include("config.php");
include("header.php");

$page = isset($_GET['page']) ? $_GET['page'] : 'home';

if ($page === 'home') {
    include("home.php");
} elseif ($page === 'books') {
    include("books.php");
}

include("footer.php");
?>
