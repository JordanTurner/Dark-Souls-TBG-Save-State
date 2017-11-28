-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2017 at 08:32 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dark_souls`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` varchar(8) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`) VALUES
(1, 'Assassin'),
(2, 'Herald'),
(3, 'Knight'),
(4, 'Warrior');

-- --------------------------------------------------------

--
-- Table structure for table `encounters`
--

CREATE TABLE `encounters` (
  `id` int(11) NOT NULL,
  `level` int(1) NOT NULL,
  `boss` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `id` int(11) NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weapon` tinyint(1) NOT NULL DEFAULT '0',
  `armor` tinyint(1) NOT NULL DEFAULT '0',
  `shield` tinyint(1) NOT NULL DEFAULT '0',
  `spell` tinyint(1) NOT NULL DEFAULT '0',
  `wep_upgrade` tinyint(4) NOT NULL DEFAULT '0',
  `arm_upgrade` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`id`, `name`, `weapon`, `armor`, `shield`, `spell`, `wep_upgrade`, `arm_upgrade`) VALUES
(1, 'Morning Star', 1, 0, 0, 0, 0, 0),
(2, 'Great Magic Weapon', 0, 0, 0, 1, 0, 0),
(3, 'Heal', 0, 0, 0, 1, 0, 0),
(4, 'Lothric Knight Armor', 0, 1, 0, 0, 0, 0),
(5, 'Titanite Shard', 0, 0, 0, 0, 1, 0),
(6, 'Pierce Shield', 0, 0, 1, 0, 0, 0),
(7, 'Elite Knight Armor', 0, 1, 0, 0, 0, 0),
(8, 'Eastern Iron Shield', 0, 0, 1, 0, 0, 0),
(9, 'Alva Armor', 0, 1, 0, 0, 0, 0),
(10, 'Lothric\'s Holy Sword', 1, 0, 0, 0, 0, 0),
(11, 'Bountiful Sunlight', 0, 0, 0, 1, 0, 0),
(12, 'Broadsword', 1, 0, 0, 0, 0, 0),
(13, 'Deacon Robes', 0, 1, 0, 0, 0, 0),
(14, 'Black Iron Greatshield', 0, 0, 1, 0, 0, 0),
(15, 'Falchion', 1, 0, 0, 0, 0, 0),
(16, 'Saint Bident', 1, 0, 0, 0, 0, 0),
(17, 'Partizan', 1, 0, 0, 0, 0, 0),
(18, 'Elkhorn Round Shield', 0, 0, 1, 0, 0, 0),
(19, 'Lucerne', 1, 0, 0, 0, 0, 0),
(20, 'Umbral Dagger', 1, 0, 0, 0, 0, 0),
(21, 'Grass Crest Shield', 0, 0, 1, 0, 0, 0),
(22, 'Soul Arrow', 0, 0, 0, 1, 0, 0),
(23, 'Faraam Armor', 0, 1, 0, 0, 0, 0),
(24, 'Dragonslayer\'s Axe', 1, 0, 0, 0, 0, 0),
(25, 'Great Machete', 1, 0, 0, 0, 0, 0),
(26, 'Moonlight Greatsword', 1, 0, 0, 0, 0, 0),
(27, 'Fume Ultra Greatsword', 1, 0, 0, 0, 0, 0),
(28, 'Gotthard Twinswords', 1, 0, 0, 0, 0, 0),
(29, 'Drake Sword', 1, 0, 0, 0, 0, 0),
(30, 'Sunlight Straight Sword ', 1, 0, 0, 0, 0, 0),
(31, 'Santier\'s Spear', 1, 0, 0, 0, 0, 0),
(32, 'Avelyn', 1, 0, 0, 0, 0, 0),
(33, 'Golden Wing Crest Shield', 0, 0, 1, 0, 0, 0),
(34, 'Exile Armor', 0, 1, 0, 0, 0, 0),
(35, 'Warpick', 1, 0, 0, 0, 0, 0),
(36, 'Claymore', 1, 0, 0, 0, 0, 0),
(37, 'Thrall Axe', 1, 0, 0, 0, 0, 0),
(38, 'Silver Eagle Kite Shield', 0, 0, 1, 0, 0, 0),
(39, 'Drang Armor', 0, 1, 0, 0, 0, 0),
(40, 'Dragon Tooth', 1, 0, 0, 0, 0, 0),
(41, 'Washing Pole', 1, 0, 0, 0, 0, 0),
(42, 'Fireball', 0, 0, 0, 1, 0, 0),
(43, 'Winged Knight Armour', 0, 1, 0, 0, 0, 0),
(44, 'Caetus', 1, 0, 0, 0, 0, 0),
(45, 'Blessed Gem', 0, 0, 0, 0, 1, 0),
(46, 'Lightning Gem', 0, 0, 0, 0, 1, 0),
(47, 'Reinforced Club', 1, 0, 0, 0, 0, 0),
(48, 'Tiny Being\'s Ring', 0, 0, 0, 0, 0, 1),
(49, 'Dancer\'s Enchanted Swords', 1, 0, 0, 0, 0, 0),
(50, 'Soothing Sunlight', 0, 0, 0, 1, 0, 0),
(51, 'Dancer Armour', 0, 1, 0, 0, 0, 0),
(52, 'Dragonslayer Spear', 1, 0, 0, 0, 0, 0),
(53, 'Dragonslayer Armour', 0, 1, 0, 0, 0, 0),
(54, 'Bountiful Light', 0, 0, 0, 1, 0, 0),
(55, 'Chloranthy Ring', 0, 0, 0, 0, 0, 1),
(56, 'Smough\'s Armour', 0, 1, 0, 0, 0, 0),
(57, 'Smough\'s Hammer', 1, 0, 0, 0, 0, 0),
(58, 'Carthus Curved Sword', 1, 0, 0, 0, 0, 0),
(59, 'Firebombs', 1, 0, 0, 0, 0, 0),
(60, 'Sharp Gem', 0, 0, 0, 0, 1, 0),
(61, 'Balder Side Sword', 1, 0, 0, 0, 0, 0),
(62, 'Greataxe', 1, 0, 0, 0, 0, 0),
(63, 'Black Armour', 0, 1, 0, 0, 0, 0),
(64, 'Great Wooden Hammer', 1, 0, 0, 0, 0, 0),
(65, 'Replenishment', 0, 0, 0, 1, 0, 0),
(66, 'Great Mace', 1, 0, 0, 0, 0, 0),
(67, 'Winged Knight Halberd', 1, 0, 0, 0, 0, 0),
(68, 'Winged Knight Twin Axes', 1, 0, 0, 0, 0, 0),
(69, 'Crystal Gem', 0, 0, 0, 0, 1, 0),
(70, 'Soulstream', 0, 0, 0, 1, 0, 0),
(71, 'Hard Leather Armour', 0, 1, 0, 0, 0, 0),
(72, 'Court Sorcerer Robes', 0, 1, 0, 0, 0, 0),
(73, 'Zweihander', 1, 0, 0, 0, 0, 0),
(74, 'Shadow Armour', 0, 1, 0, 0, 0, 0),
(75, 'East-West Shield', 0, 0, 1, 0, 0, 0),
(76, 'Sorcerer\'s Staff', 1, 0, 0, 0, 0, 0),
(77, 'Dragon Crest Shield', 0, 0, 1, 0, 0, 0),
(78, 'Knight Slayer\'s Ring', 0, 0, 0, 0, 0, 1),
(79, 'Estoc', 1, 0, 0, 0, 0, 0),
(80, 'Long Sword', 1, 0, 0, 0, 0, 0),
(81, 'Kite Shield', 0, 0, 1, 0, 0, 0),
(82, 'Spear', 1, 0, 0, 0, 0, 0),
(83, 'Ember', 0, 0, 0, 0, 0, 0),
(84, 'Knight Armour', 0, 1, 0, 0, 0, 0),
(85, 'Target Shield', 0, 0, 1, 0, 0, 0),
(86, 'Target Shield', 0, 0, 1, 0, 0, 0),
(87, 'Shortsword', 1, 0, 0, 0, 0, 0),
(88, 'Northern Armour', 0, 1, 0, 0, 0, 0),
(89, 'Titanite Catch Pole', 1, 0, 0, 0, 0, 0),
(90, 'Effigy Shield', 0, 0, 1, 0, 0, 0),
(91, 'Rapier', 1, 0, 0, 0, 0, 0),
(92, 'Battle Axe', 1, 0, 0, 0, 0, 0),
(93, 'Herald Armour', 0, 1, 0, 0, 0, 0),
(94, 'Silver Knight Shield', 0, 0, 1, 0, 0, 0),
(95, 'Round Shield', 0, 0, 1, 0, 0, 0),
(96, 'Heal Aid', 0, 0, 0, 1, 0, 0),
(97, 'Kukris', 1, 0, 0, 0, 0, 0),
(98, 'Scimitar', 1, 0, 0, 0, 0, 0),
(99, 'Composite Bow', 1, 0, 0, 0, 0, 0),
(100, 'Spider Shield', 0, 0, 1, 0, 0, 0),
(101, 'Spotted Whip', 1, 0, 0, 0, 0, 0),
(102, 'Rotten Ghru Dagger', 1, 0, 0, 0, 0, 0),
(103, 'Talisman', 1, 0, 0, 0, 0, 0),
(104, 'Force', 0, 0, 0, 1, 0, 0),
(105, 'Worker Armour', 0, 1, 0, 0, 0, 0),
(106, 'Winged Spear', 1, 0, 0, 0, 0, 0),
(107, 'Assassin Armour', 0, 1, 0, 0, 0, 0),
(108, 'Sunless Armour', 0, 1, 0, 0, 0, 0),
(109, 'Sunset Armour', 0, 1, 0, 0, 0, 0),
(110, 'Fallen Knight Armour', 0, 1, 0, 0, 0, 0),
(111, 'Dark Sword', 1, 0, 0, 0, 0, 0),
(112, 'Heavy Gem', 0, 0, 0, 0, 1, 0),
(113, 'Blue Tearstone Ring', 0, 0, 0, 0, 0, 1),
(114, 'Sun Princess Ring', 0, 0, 0, 0, 0, 1),
(115, 'Firelink Armour', 0, 1, 0, 0, 0, 0),
(116, 'Master\'s Attire', 0, 1, 0, 0, 0, 0),
(117, 'Twin Dragon Greatshield', 0, 0, 1, 0, 0, 0),
(118, 'Murakumo', 1, 0, 0, 0, 0, 0),
(119, 'Poison Gem', 0, 0, 0, 0, 0, 1),
(120, 'Hornet Ring', 0, 0, 0, 0, 0, 1),
(121, 'Irithyll Straight Sword', 1, 0, 0, 0, 0, 0),
(122, 'Irithyll Rapier', 1, 0, 0, 0, 0, 0),
(123, 'Outrider Armour', 0, 1, 0, 0, 0, 0),
(124, 'Gargoyle\'s Shield', 0, 0, 1, 0, 0, 0),
(125, 'Gargoyle\'s Halberd', 1, 0, 0, 0, 0, 0),
(126, 'Gargoyle\'s Tail Axe', 1, 0, 0, 0, 0, 0),
(127, 'Spiked Mace', 1, 0, 0, 0, 0, 0),
(128, 'Cathedral Knight Armour', 0, 1, 0, 0, 0, 0),
(129, 'Poison Mist', 0, 0, 0, 1, 0, 0),
(130, 'Titanite', 0, 0, 0, 0, 1, 0),
(131, 'Simple Gem', 0, 0, 0, 0, 1, 0),
(132, 'Blood Gem', 0, 0, 0, 0, 1, 0),
(133, 'Brigand Axe', 1, 0, 0, 0, 0, 0),
(134, 'Silver Knight Straight Sword', 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` int(11) NOT NULL,
  `num_of_players` int(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `num_of_players`, `user_id`, `name`) VALUES
(1, 2, 2, 'Test Game'),
(2, 4, 2, 'campaign1'),
(3, 1, 2, 'Testing Game'),
(4, 1, 2, 'my new game');

-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`user_id`, `time`) VALUES
(2, '2017-07-22 23:07:06'),
(2, '2017-07-22 23:20:03'),
(2, '2017-07-22 23:20:35'),
(2, '2017-11-04 15:45:37'),
(5, '2017-09-02 18:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `player_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `game_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_equip`
--

CREATE TABLE `player_equip` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `equip_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `str` tinyint(1) NOT NULL,
  `dex` tinyint(1) NOT NULL,
  `inte` tinyint(1) NOT NULL,
  `fai` tinyint(1) NOT NULL,
  `health` int(2) NOT NULL,
  `stamina` int(2) NOT NULL,
  `estus` tinyint(1) NOT NULL,
  `ember` tinyint(1) NOT NULL,
  `heroic_action` tinyint(1) NOT NULL,
  `luck` tinyint(1) NOT NULL,
  `status_id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `treasure`
--

CREATE TABLE `treasure` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` char(128) NOT NULL,
  `email` varchar(50) NOT NULL,
  `confirmed` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `email`, `confirmed`) VALUES
(2, 'jordan', '$2y$10$6tIXDBiJv5gtBuKxWtOoX.ZJzxPhbnjZWuJpYV9d9Z.Nm5L3.weLW', '1@1.com', 0),
(3, 'regtester', '$2y$10$9pAUJ4YLahF2KcIOysGCFulQZpvB107B66XLd24DTJkcu/wlNNCVW', 'jturner@videotile.co.uk', 0),
(4, 'jordanturner', '$2y$10$eJJ7xfFzIx8KZnXi7gHlZ.wa4ctt5wz/wkige8Op.AtgH5g1wSio6', 'turnerjordan855@gmail.com', 0),
(5, 'Titus', '$2y$10$ztqvAQQ4Vq/P.pw8rYhxVe3vUSr1AKCMabnWkkXc/QbvRsFBIJ9U6', '2@2.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encounters`
--
ALTER TABLE `encounters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `login_log`
--
ALTER TABLE `login_log`
  ADD PRIMARY KEY (`user_id`,`time`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `player_equip`
--
ALTER TABLE `player_equip`
  ADD KEY `player_id` (`player_id`,`equip_id`),
  ADD KEY `equip_id` (`equip_id`);

--
-- Indexes for table `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treasure`
--
ALTER TABLE `treasure`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `encounters`
--
ALTER TABLE `encounters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `treasure`
--
ALTER TABLE `treasure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `encounters`
--
ALTER TABLE `encounters`
  ADD CONSTRAINT `encounters_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`userid`);

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

--
-- Constraints for table `player_equip`
--
ALTER TABLE `player_equip`
  ADD CONSTRAINT `player_equip_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `player_equip_ibfk_2` FOREIGN KEY (`equip_id`) REFERENCES `equipment` (`id`);

--
-- Constraints for table `stats`
--
ALTER TABLE `stats`
  ADD CONSTRAINT `stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `players` (`id`),
  ADD CONSTRAINT `stats_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

--
-- Constraints for table `treasure`
--
ALTER TABLE `treasure`
  ADD CONSTRAINT `treasure_ibfk_1` FOREIGN KEY (`game_id`) REFERENCES `game` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
