-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 16 jan. 2022 à 23:55
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `provisionalmockexam`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `answer` varchar(300) NOT NULL,
  `question` int(11) NOT NULL,
  `correct` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `answer`, `question`, `correct`) VALUES
(1, '4', 1, 0),
(2, '55', 1, 1),
(3, '5', 1, 0),
(4, 'Give way to cars from your right', 2, 0),
(5, 'A warning to stop', 2, 0),
(6, 'The robot is not working', 2, 1),
(7, '25 years', 3, 0),
(8, '18 years', 3, 1),
(9, '16 years', 3, 0),
(10, '6 cars', 4, 1),
(11, '5 cars ', 4, 0),
(12, '7 cars', 4, 0),
(13, '6 months', 5, 0),
(14, '12 months', 5, 1),
(15, '18 months', 5, 0),
(19, 'The one already circulating', 6, 0),
(20, 'The one on the right', 6, 1),
(21, 'Oncoming car', 6, 0),
(22, 'Broken line', 7, 0),
(23, 'Stop line', 7, 1),
(24, 'Double lines', 7, 0),
(25, 'On the left side', 8, 0),
(26, 'On the right hand side', 8, 1),
(27, 'On whichever side is safe', 8, 0),
(28, 'When travelling at a fast speed', 9, 0),
(29, 'When turning to the left side', 9, 0),
(30, 'When there is a green arrow', 9, 1),
(31, 'curve', 10, 0),
(32, 'a portion not covered by your mirrors', 10, 1),
(33, 'a bridge', 10, 0),
(34, '5 000kgs', 11, 1),
(35, '2 300kgs', 11, 0),
(36, '2 200kgs', 11, 0),
(37, 'Red circle', 12, 0),
(38, 'Red rectangle', 12, 0),
(39, 'Red triangle', 12, 1),
(40, '18 years', 13, 1),
(41, '25 years', 13, 0),
(42, '16 years', 13, 0),
(43, 'Danger warning signs', 14, 0),
(44, 'Regulatory signs', 14, 0),
(45, 'Informative', 14, 1),
(46, 'carriageway markings', 15, 0),
(47, 'regulatory signs', 15, 0),
(48, 'danger warning signs', 15, 1),
(49, 'Stop where you are', 16, 1),
(50, 'Proceed with caution', 16, 0),
(51, 'Reverse', 16, 0),
(52, '7,5 meters', 17, 1),
(53, '20 meters', 17, 0),
(54, '30-50 meters', 17, 0),
(55, 'Regulatory signs', 18, 0),
(56, 'informative', 18, 1),
(57, 'danger signs', 18, 0),
(58, 'Where there is broken white line', 19, 1),
(59, 'In face of oncoming traffic', 19, 0),
(60, 'When travelling on the main road', 19, 0),
(61, 'Traffic which has already entered the junction before you', 20, 0),
(62, 'Traffic from your right', 20, 1),
(63, 'Traffic on the main road', 20, 0),
(64, 'Danger warning signs', 21, 0),
(65, 'Regulatory signs', 21, 1),
(66, 'Informative signs', 21, 0),
(67, '16 years', 22, 1),
(68, '20 years', 22, 0),
(69, '18 years', 22, 0),
(70, 'Car C', 23, 1),
(71, 'Car A', 23, 0),
(72, 'Car B', 23, 0),
(73, 'Car A', 24, 0),
(74, 'Car B', 24, 1),
(75, 'Tractor', 25, 0),
(76, 'Scotch cart', 25, 1),
(77, 'Scania', 25, 0),
(78, 'On the right side', 26, 1),
(79, 'On the left side', 26, 0),
(80, 'Whichever side is safe', 26, 0),
(81, 'Indicate to the right', 27, 0),
(82, 'You cannot turn at all', 27, 1),
(83, 'First check the vehicle behind you then you can turn', 27, 0),
(84, 'When leaving the roundabout', 28, 0),
(85, 'When you are entering the circle', 28, 1),
(86, 'Don\'t indicate', 28, 0),
(87, 'A dangerous spot', 29, 0),
(88, 'A sharp curve', 29, 0),
(89, 'An area not covered by rear view mirror', 29, 1),
(90, 'To reduce speed', 30, 0),
(91, 'So that there is no noise produced when changing gears', 30, 1),
(92, 'To increase speed', 30, 0),
(93, 'To keep the vehicle stationery when parked', 31, 1),
(94, 'To keep the vehicle stationery', 31, 0),
(95, 'To keep the vehicle stationery on a steep gradient', 31, 0),
(96, 'When there is mud', 32, 0),
(97, 'When there is mist', 32, 1),
(98, 'When there is heavy rain', 32, 0),
(99, 'Danger warning sign', 33, 1),
(100, 'Predicting danger in traffic situation', 33, 0),
(101, 'Reduce speed', 33, 0),
(102, 'I Should have my lights on according to day light', 34, 1),
(103, 'Switch off your lights', 34, 0),
(104, 'I must have my lights on', 34, 0),
(105, 'Danger warning sign', 35, 0),
(106, 'Regulatory sign', 35, 1),
(107, 'Informative signs', 35, 0),
(108, '120km for light motor vehicles 80km for heavy vehicles', 36, 1),
(109, '120km for heavy vehicle 80km for light vehicles', 36, 0),
(110, '120km for all vehicles', 36, 0),
(111, 'When one lane becomes two', 37, 1),
(112, 'When two lanes become one', 37, 0),
(113, 'Two lane', 37, 0),
(114, 'When moving fast', 38, 0),
(115, 'When reversing', 38, 1),
(116, 'When moving slow', 38, 0),
(117, 'Hazard lights on', 39, 0),
(118, 'Headlights on', 39, 1),
(119, 'Your tail lights and side lights on', 39, 0),
(120, 'Overtake', 40, 0),
(121, 'Do not overtake', 40, 1),
(122, 'Hoot and tell them to move fast', 40, 0),
(123, 'Move quickly before the boom is closed', 41, 0),
(124, 'Look to the right only', 41, 0),
(125, 'Look left and right and proceed with caution', 41, 1),
(126, 'In an emergency', 42, 1),
(127, 'When there is a person on the road', 42, 0),
(128, 'When there are animals on the road', 42, 0),
(129, 'Exercise caution and be patient', 43, 1),
(130, 'Hoot for them', 43, 0),
(131, 'They must get off your way', 43, 0),
(132, 'Spare wheels', 44, 0),
(133, 'Strong safety chains', 44, 1),
(134, 'Rear view mirror', 44, 0),
(135, '2300kgs', 45, 0),
(136, '3200kgs', 45, 1),
(137, '5000kgs', 45, 0),
(138, 'White reflector in front and red at the back', 46, 1),
(139, 'Red reflector at the back and white in front', 46, 0),
(140, 'Yellow reflector on the sides and white at the back', 46, 0),
(141, 'Weight of the vehicle only', 47, 1),
(142, 'Weight of the vehicle and its load', 47, 0),
(143, 'Load', 47, 0),
(144, 'Stay on the centre of the road', 48, 0),
(145, 'Keep right', 48, 0),
(146, 'Keep well left', 48, 1),
(147, 'Stop on the side of the road', 49, 1),
(148, 'Do not pull out of the road and', 49, 0),
(149, 'continue driving', 49, 0),
(150, 'Cross then anyhow', 50, 0),
(151, 'Have a regulatory effect', 50, 1),
(152, 'Sixteen tears', 51, 0),
(153, 'Nineteen years', 51, 0),
(154, 'Eighteen years', 51, 1),
(155, 'Between 30 to 40 years', 52, 0),
(156, '16 years', 52, 1),
(157, '18 years', 52, 0),
(158, 'Stop over the line if you cannot see because of buildings and hedges', 53, 0),
(159, 'Give way to the right', 53, 0),
(160, 'Stop behind the stop line and proceed when both lanes are clear', 53, 1),
(161, 'Police should be directing traffic', 54, 0),
(162, 'Police should be directing traffic', 54, 0),
(163, 'Proceed with caution and give right of way to traffic coming from the right', 54, 1),
(164, 'Report to the nearest police station within 24hrs', 55, 0),
(165, 'Report to the nearest police station as soon as possible', 55, 1),
(166, 'You carry the injured to the nearest hospital', 55, 0),
(167, 'Oncoming traffic', 56, 0),
(168, 'Traffic from the right', 56, 0),
(169, 'Pedestrian crossing', 56, 1),
(170, 'Road intersection attend', 57, 1),
(171, 'T road ahead', 57, 0),
(172, 'Stop or give way sign', 57, 0),
(173, 'Carriageway markings', 58, 0),
(174, 'Informative signs', 58, 1),
(175, 'Danger warning signs', 58, 0),
(176, 'Police, ambulance and fire brigade', 59, 0),
(177, 'Oncoming traffic', 59, 0),
(178, 'Traffic from the right', 59, 1),
(179, 'Informative signs', 60, 0),
(180, 'Regulatory signs', 60, 1),
(181, 'Give way signs', 60, 0),
(182, 'On mountain place', 61, 0),
(183, 'Where there is a hump', 61, 1),
(184, 'Where there are big wave', 61, 0),
(185, 'Car A', 62, 1),
(186, 'Car B', 62, 0),
(187, 'Car A', 63, 0),
(188, 'Car B', 63, 1),
(189, 'Car C', 63, 0),
(190, 'Car A', 64, 1),
(191, 'Car B', 64, 0),
(192, 'Car C', 64, 0),
(193, 'Car A', 65, 1),
(194, 'Car B', 65, 0),
(195, 'Car A', 66, 0),
(196, 'Car B', 66, 1),
(197, 'Car A', 67, 0),
(198, 'Car B', 67, 0),
(199, 'Car C', 67, 1),
(200, 'Car A', 68, 0),
(201, 'Car B', 68, 1),
(202, 'Car C', 68, 0),
(203, 'Car A', 69, 0),
(204, 'Car B', 69, 1),
(205, 'Car C', 69, 0),
(206, 'Amber green red', 70, 1),
(207, 'Green red amber', 70, 0),
(208, 'Red green amber', 70, 0),
(209, 'Disengage gears', 71, 0),
(210, 'Engage to lower gear', 71, 0),
(211, 'Reduce speed', 71, 1),
(212, 'Give way to all crossing traffic', 72, 1),
(213, 'Give way to traffic from the right', 72, 0),
(214, 'Stop', 72, 0);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  `image` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `question`, `image`) VALUES
(1, 'How many traffic signs and signals do we have in Zimbabwe?', NULL),
(2, 'When a robot is flashing Amber in a light sequence, it means... ', NULL),
(3, 'At what age are you allowed to drive a public service vehicle?', NULL),
(4, 'At what distance should you follow the vehicle in front of you when travelling at 75km?', ''),
(5, 'A learner\'s licence is valid for how long?', NULL),
(6, 'At a plain intersection, which car has the right of way?', NULL),
(7, 'What is a transverse line?', NULL),
(8, 'On which side must you overtake an animal drawn vehicle?', NULL),
(9, 'When can you go through a red robot?', NULL),
(10, 'What is a blind rise?', NULL),
(11, 'A heavy motor vehicle is one exceeding', NULL),
(12, '1What is the insignia of a danger warning sign?', NULL),
(13, 'At what age is a female allowed to drive a heavy vehicle?', NULL),
(14, 'In which class is a cycle track?', NULL),
(15, 'This sign falls under which class', 'uploads/15.png'),
(16, 'When you have crossed the transverse line and the robot has turned red, what do you do?', NULL),
(17, 'At what distance should you place the red reflective triangle?', NULL),
(18, 'This sign falls under which class', 'uploads/18.png'),
(19, 'When is it allowed to overtake?', NULL),
(20, 'To what traffic do you give right of way in rural areas?', NULL),
(21, 'In which class is the de-restriction sign?', NULL),
(22, 'At what age are you allowed to drive a class 4 or 2 vehicle?', NULL),
(23, 'Which car goes first?', 'uploads/23.png'),
(24, 'Which car has the right of way?', 'uploads/24.png'),
(25, 'What is an animal drawn vehicle?', NULL),
(26, 'Where can you overtake an animal drawn vehicle?', NULL),
(27, 'In a straight-ahead lane and I want to turn right what do I do?', NULL),
(28, 'When do you indicate at a round about?', NULL),
(29, 'What is a blind spot?', NULL),
(30, 'What is the use of a clutch?', NULL),
(31, 'What is the use of a handbrake or parking brake?', NULL),
(32, 'When do you use fog lights?', NULL),
(33, 'What is a hazard perception?', NULL),
(34, 'When you are driving at 6am in Zimbabwe, what does the law say?', NULL),
(35, 'Under which class is a one way sign?', NULL),
(36, 'What is the maximum speed limit in Zimbabwe?', NULL),
(37, 'What is a diversion lane?', NULL),
(38, 'When can you drive without safety belt?', NULL),
(39, 'When you parked at night on the side of the road you leave?', NULL),
(40, 'When at a bridge and there is a slow moving vehicle what do you do?', NULL),
(41, 'When the boom is open what do you do?', NULL),
(42, 'When can you use a horn?', NULL),
(43, 'When meeting a vehicle with an “L” plate what do you do?', NULL),
(44, 'When driving a heavy vehicle with two trailers what must be fitted?', NULL),
(45, 'What is a lorry?', NULL),
(46, 'What colors of reflectors are fitted on vehicle?', NULL),
(47, 'What does weight restriction involve?', NULL),
(48, 'When meeting a vehicle on a strip road which side of the road do you keep?', NULL),
(49, 'When police, ambulance and fire brigade are sounding their siren that do you do?', NULL),
(50, 'Longitudinal lines with direction arrows', NULL),
(51, 'What is the minimum age for one to drive a heavy vehicle?', NULL),
(52, 'For an applicant learner to drive class 3 or 4 he/she must be', NULL),
(53, 'What do you do when approaching a stop sign?', NULL),
(54, 'A flashing amber on a robot means what?', NULL),
(55, 'In case you are involved in an accident, what must you do?', NULL),
(56, 'When turning left or right at a robot-controlled intersection you give way to?', NULL),
(57, 'This sign means what?', 'uploads/57.png'),
(58, 'In which class is this sign?', 'uploads/58.png'),
(59, 'To which traffic do you give way in urban areas?', NULL),
(60, 'In which class is this sign?', 'uploads/60.png'),
(61, 'Where do you find this sign?', 'uploads/61.png'),
(62, 'Which car goes first?', 'uploads/62.png'),
(63, 'Which car is breaking the law?', 'uploads/63.png'),
(64, 'Which car moves first?', 'uploads/64.png'),
(65, 'Which car has the right of way?', 'uploads/65.png'),
(66, 'Which car stops?', 'uploads/66.png'),
(67, 'Which car has the right of way?', 'uploads/67.png'),
(68, 'Which car has the right of way?', 'uploads/68.png'),
(69, 'Which car is the last to move?', 'uploads/69.png'),
(70, 'Which is the sequence of a robot?', NULL),
(71, 'When going downhill what do you do?', NULL),
(72, 'At a flashing amber robot what do you do?', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question` (`question`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `question` FOREIGN KEY (`question`) REFERENCES `questions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
