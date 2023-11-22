-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 22 nov. 2023 à 14:07
-- Version du serveur : 8.0.31
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `library`
--

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE `emprunt` (
  `id_emprunt` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  `id_livre` int NOT NULL,
  `date_emprunt` date NOT NULL,
  `date_retour_prevue` date NOT NULL,
  `date_retour_effectif` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `emprunt`
--

INSERT INTO `emprunt` (`id_emprunt`, `id_utilisateur`, `id_livre`, `date_emprunt`, `date_retour_prevue`, `date_retour_effectif`) VALUES
(1, 1, 1, '2023-11-09', '2023-11-11', '2023-11-09'),
(2, 2, 1, '2023-11-09', '2023-11-23', '2023-11-09'),
(3, 2, 1, '2023-11-09', '2023-11-09', '2023-11-09'),
(4, 2, 1, '2023-11-09', '2023-11-29', '2023-11-09'),
(5, 2, 1, '2023-09-14', '2024-01-19', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auteur` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_publication` date NOT NULL,
  `isbn` varchar(13) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `statut` enum('disponible','emprunté') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'disponible',
  `photo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `auteur`, `date_publication`, `isbn`, `description`, `statut`, `photo_url`) VALUES
(1, 'Developpement Web mobile avec HTML, CSS et JavaScript Pour les Nuls', 'William HARREL', '2023-11-09', 'DHIDZH1374R', 'Un livre indispensable ï¿½ tous les concepteurs ou dï¿½veloppeurs de sites Web pour iPhone, iPad, smartphones et tablettes !Ce livre est destinï¿½ aux dï¿½veloppeurs qui veulent crï¿½er un site Internet destinï¿½ aux plate-formes mobiles en adoptant les standard du Web que sont HTML, XHTML, les CSS et JavaScript.', 'emprunté', 'https://cdn.cultura.com/cdn-cgi/image/width=180/media/pim/82_metadata-image-20983225.jpeg'),
(4, 'PHP et MySql pour les Nuls ', 'Janet VALADE', '2023-11-14', '23R32R2R4', 'Le livre best-seller sur PHP & MySQL !\r\n\r\n\r\nAvec cette 5e ï¿½dition de PHP et MySQL pour les Nuls, vous verrez qu\'il n\'est plus nï¿½cessaire d\'ï¿½tre un as de la programmation pour dï¿½velopper des sites Web dynamiques et interactifs.\r\n', 'disponible', ' https://cdn.cultura.com/cdn-cgi/image/width=830/media/pim/66_metadata-image-20983256.jpeg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD PRIMARY KEY (`id_emprunt`),
  ADD KEY `SECONDARY` (`id_utilisateur`),
  ADD KEY `SECONDARY_` (`id_livre`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emprunt`
--
ALTER TABLE `emprunt`
  MODIFY `id_emprunt` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
