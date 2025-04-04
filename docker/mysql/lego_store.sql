-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Hôte : tp-symfony-mysql
-- Généré le : ven. 04 avr. 2025 à 07:56
-- Version du serveur : 8.4.4
-- Version de PHP : 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `lego_store`
--

-- --------------------------------------------------------

--
-- Structure de la table `brick`
--

CREATE TABLE `brick` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brick`
--

INSERT INTO `brick` (`id`, `name`, `number`, `price`, `image`, `collection_id`) VALUES
(6388641, 'TUB', 0, 0.46, '6388641.jpg', 3),
(6424600, 'INTERIOR', 8, 1.38, '6424600.jpg', 3),
(6435171, 'OTTER', 2, 1.58, '6435171.jpg', 2),
(6438776, 'PLANT, W/ 3.2 SHAFT, 1.5 HOLE', 1, 0.12, '6438776.jpg', 2),
(6440966, 'TURTLE', 11, 0.12, '6440966.jpg', 2),
(6444464, 'MINI WIG', 174, 1.82, '6444464.jpg', 1),
(6446937, 'MINI HEAD', 4152, 0.26, '6446937.jpg', 1),
(6446963, 'FLAG, W/ 2 HOLDERS', 22, 2.48, '6446963.jpg', 3),
(6449633, 'MINI LOWER PART', 2550, 0.9, '6449633.jpg', 1),
(6460998, 'MINI UPPER PART', 6825, 1.45, '6460998.jpg', 1),
(63699367, 'DOOR 4X6, W/ CUT OUT', 1, 0.86, '6369367.jpg', 3);

-- --------------------------------------------------------

--
-- Structure de la table `brick_collection`
--

CREATE TABLE `brick_collection` (
  `id` int NOT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `brick_collection`
--

INSERT INTO `brick_collection` (`id`, `collection_name`) VALUES
(1, 'Figurines'),
(2, 'Nature'),
(3, 'Meubles');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20250212154825', '2025-04-03 19:32:52', 103),
('DoctrineMigrations\\Version20250212160959', '2025-04-03 19:32:52', 291),
('DoctrineMigrations\\Version20250212163957', '2025-04-03 19:32:53', 213),
('DoctrineMigrations\\Version20250212165509', NULL, NULL),
('DoctrineMigrations\\Version20250219155826', NULL, NULL),
('DoctrineMigrations\\Version20250219161301', NULL, NULL),
('DoctrineMigrations\\Version20250219161704', NULL, NULL),
('DoctrineMigrations\\Version20250312131001', NULL, NULL),
('DoctrineMigrations\\Version20250312145917', NULL, NULL),
('DoctrineMigrations\\Version20250403193437', NULL, NULL),
('DoctrineMigrations\\Version20250403195652', '2025-04-03 19:57:01', 250),
('DoctrineMigrations\\Version20250404061328', '2025-04-04 06:13:54', 56),
('DoctrineMigrations\\Version20250404061846', '2025-04-04 06:19:19', 57),
('DoctrineMigrations\\Version20250404063155', '2025-04-04 06:32:38', 138);

-- --------------------------------------------------------

--
-- Structure de la table `lego`
--

CREATE TABLE `lego` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `price` float NOT NULL,
  `pieces` int NOT NULL,
  `imagebox` varchar(255) NOT NULL,
  `imagebg` varchar(255) NOT NULL,
  `collection_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lego`
--

INSERT INTO `lego` (`id`, `name`, `description`, `price`, `pieces`, `imagebox`, `imagebg`, `collection_id`) VALUES
(10252, 'La coccinelle Volkwagen', 'Construis une réplique LEGO® Creator Expert de l\'automobile la plus populaire au monde. Ce magnifique modèle LEGO est plein de détails authentiques qui capturent le charme et la personnalité de la voiture, notamment un coloris bleu ciel, des ailes arrondies, des jantes blanches avec des enjoliveurs caractéristiques, des phares ronds et des clignotants montés sur les ailes.', 94.99, 1167, 'LEGO_10252_Box.png', 'LEGO_10252_Main.jpg', 1),
(10262, 'James Bond Aston Martin DB5', 'Get a license to build with the awesome LEGO® Creator Expert 10262 James Bond™ Aston Martin DB5. This impressive replica model captures the elegance and timeless sophistication of Agent 007’s iconic 1964 sports car, and comes with a wealth of authentic details and functioning gadgetry. ', 149.99, 1295, 'LEGO_10262_Box.jpg', 'LEGO_10262_Main.jpg', 3),
(21061, 'Notre-Dame de Paris', ' Revivez chaque étape de la construction d’un célèbre monument parisien avec le set de construction pour adultes LEGO® Architecture Notre-Dame de Paris. Cette maquette vous entraîne dans l’histoire de la construction de l’ouvrage, de la pose de la première pierre en 1163 à l’aspect majestueux qui était le sien avant l’incendie de 2019, en passant par les travaux de rénovation de l’architecte Viollet-le-Duc.\r\n', 229.99, 4383, 'LEGO_21061_Box.jpg', 'LEGO_21061_Main.png', 4),
(31046, 'La voiture rapide', 'Prends la route avec cette splendide voiture de sport, avec des coloris jaune, blanc et noir, un énorme aileron, des jantes élégantes avec des pneus profil bas, un capot qui s\'ouvre et un moteur détaillé. Ouvre les portes ciseaux, mets-toi au volant, ouvre le toit et profite du soleil !', 19.99, 222, 'LEGO_31046_Box.png', 'LEGO_31046_Main.jpg', 2),
(31062, 'Le robot explorateur', 'Impressionne tes amis avec ce modèle génial ! Ce robot explorateur comprend des coloris bleu, noir et gris, des yeux vert vif, des chenilles qui fonctionnent, une tête et un corps qui tournent, et des bras mobiles avec des pinces et un projecteur qui fonctionnent.', 19.99, 205, 'LEGO_31062_Box.png', 'LEGO_31062_Main.jpg', 1),
(31064, 'Les aventures sur l\'île', 'Trouve une carte dans une bouteille et aventure-toi vers une île tropicale lointaine à bord de l’hydravion avec ses flotteurs d’atte rrissage et ses coloris jaune vif, blanc et bleu foncé. Charge le compartiment à marchandises, ouvre le cockpit et monte à bord, puis fais tourner l\'énorme hélice et envole-toi dans les airs. Utilise tes talents de pilote pour localiser l\'île', 29.99, 359, 'LEGO_31064_Box.png', 'LEGO_31064_Main.jpg', 1),
(31065, 'La maison de ville', 'Monte les marches vers la porte bleue de cette charmante maison à trois étages. Tu découvriras à l’intérieur de nombreuses fonctions, notamment un salon confortable avec une télé à écran plat et un canapé, plus une chambre avec une cheminée et une cuisine détaillée. Prends l\'escalier vers le deuxième étage et tu trouveras une chambre confortable.', 54.99, 566, 'LEGO_31065_Box.png', 'LEGO_31065_Main.jpg', 1),
(75102, 'Poe\'s X-Wing Fighter', 'Lutte contre les forces du Premier Ordre avec le X-Wing Fighter de Poe. Ce starfighter personnalisé est plein de fonctions, avec notamment 4 fusils à ressorts, 2 fusils à tenons, un train d\'atterrissage rétractable, des ailes qui s\'ouvrent, un cockpit qui s\'ouvre avec de la place pour une figurine, et de la place derrière pour le droïde astromech BB-8.', 89.99, 717, 'LEGO_75102_Box.png', 'LEGO_75102_Main.jpg', 3),
(75192, 'Millenium Falcon', 'Ce nouveau modèle LEGO® Star Wars Millennium Falcon est le plus grand et le plus détaillé jamais conçu. En réalité, avec ses 7 500 pièces, c’est tout simplement l’un des plus grands modèles LEGO ! Cette fantastique version LEGO de l’inoubliable cargo Corellien de Han Solo présente les moindres détails dont rêvent tous les fans de Star Wars, quel que soit leur âge.\r\n        ', 799.99, 7541, 'LEGO_75192_Box.jpg', 'LEGO_75192_Main.png', 3);

-- --------------------------------------------------------

--
-- Structure de la table `lego_collection`
--

CREATE TABLE `lego_collection` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_premium` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lego_collection`
--

INSERT INTO `lego_collection` (`id`, `name`, `is_premium`) VALUES
(1, 'Creator', 0),
(2, 'Creator Expert', 0),
(3, 'Star Wars', 0),
(4, 'Premium', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'fp@gmail.com', '[]', '$2y$13$sF95fQzrG89s2R4Ge2chheEdxzplX0p.yMK9KWanmiLTmyYG1s8IK');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brick`
--
ALTER TABLE `brick`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3750CB3C514956FD` (`collection_id`);

--
-- Index pour la table `brick_collection`
--
ALTER TABLE `brick_collection`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `lego`
--
ALTER TABLE `lego`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E9191FC5514956FD` (`collection_id`);

--
-- Index pour la table `lego_collection`
--
ALTER TABLE `lego_collection`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brick`
--
ALTER TABLE `brick`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63699368;

--
-- AUTO_INCREMENT pour la table `brick_collection`
--
ALTER TABLE `brick_collection`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `lego`
--
ALTER TABLE `lego`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75193;

--
-- AUTO_INCREMENT pour la table `lego_collection`
--
ALTER TABLE `lego_collection`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `brick`
--
ALTER TABLE `brick`
  ADD CONSTRAINT `FK_3750CB3C514956FD` FOREIGN KEY (`collection_id`) REFERENCES `brick_collection` (`id`);

--
-- Contraintes pour la table `lego`
--
ALTER TABLE `lego`
  ADD CONSTRAINT `FK_E9191FC5514956FD` FOREIGN KEY (`collection_id`) REFERENCES `lego_collection` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
