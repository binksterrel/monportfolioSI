-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : sql303.infinityfree.com
-- Généré le :  Dim 23 nov. 2025 à 13:19
-- Version du serveur :  11.4.7-MariaDB
-- Version de PHP :  7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `if0_40451033_bandersneakers`
--

-- --------------------------------------------------------

--
-- Structure de la table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `brand_logo` varchar(255) DEFAULT NULL,
  `brand_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_logo`, `brand_description`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '67ddfe446a849_Nike_logo.png', 'Une marque am├®ricaine leader dans le domaine des chaussures de sport.', '2025-03-19 19:41:21', '2025-03-22 00:03:16'),
(2, 'Adidas', '67ddfe21b947e_adidas_logo.png', 'Marque allemande c├®l├¿bre pour ses trois bandes.', '2025-03-19 19:41:21', '2025-03-22 00:02:41'),
(3, 'Puma', '67ddff248055c_pngegg (4).png', 'Marque allemande connue pour ses chaussures de sport innovantes.', '2025-03-19 19:41:21', '2025-03-22 00:07:00'),
(4, 'New Balance', '67ddfeaec876b_pngegg (2).png', 'Marque am├®ricaine sp├®cialis├®e dans les chaussures de running.', '2025-03-19 19:41:21', '2025-03-22 00:05:02'),
(5, 'Jordan', '67ddfe5fcd5b9_pngegg.png', 'La marque embl├®matique de basketball de Michael Jordan.', '2025-03-19 19:41:21', '2025-03-22 00:03:43'),
(6, 'Autres', NULL, 'Les autres marques.', '2025-03-23 00:37:43', '2025-03-23 00:37:43');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'active',
  `session_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `status`, `session_id`, `created_at`, `updated_at`) VALUES
(8, NULL, 'active', '69cfgmq4j75aomt6d8hlo38hji', '2025-03-19 21:36:13', '2025-03-19 21:36:13'),
(9, NULL, 'active', 'shovebdkkfvqsl0iud7q2h0pqh', '2025-03-19 23:52:20', '2025-03-19 23:52:20'),
(10, NULL, 'active', '572m29miql167jt59att8l3934', '2025-03-21 15:02:00', '2025-03-21 15:02:00'),
(11, NULL, 'active', 'a3q83u9d8ibb2f5g1e08afs5r3', '2025-03-21 21:49:01', '2025-03-21 21:49:01'),
(12, NULL, 'active', 'lh35pjhd55n497cood0j2apqer', '2025-03-21 21:50:04', '2025-03-21 21:50:04'),
(13, NULL, 'active', '4pr2o0pe93jq6tt3i08bemsf2i', '2025-03-22 09:14:36', '2025-03-22 09:14:36'),
(14, NULL, 'active', '4u2t95tctvt2h4vul4la1nut1g', '2025-03-22 17:45:40', '2025-03-22 17:45:40'),
(15, NULL, 'active', 'n26epv9c083oo2b0djl18s3pd6', '2025-03-22 19:23:46', '2025-03-22 19:23:46'),
(16, NULL, 'active', 'eiooh4fnje3f0j6e8mif7r5h32', '2025-03-22 21:32:15', '2025-03-22 21:32:15'),
(17, NULL, 'active', '97i1rcu4g1vqpm7q68ptki7ivq', '2025-03-23 00:22:53', '2025-03-23 00:22:53'),
(18, 1, 'active', 'a3q83u9d8ibb2f5g1e08afs5r3', '2025-03-23 01:20:34', '2025-03-23 01:20:34'),
(19, NULL, 'active', 'gpoj8aqpe17pls8hedafmmbkgu', '2025-03-23 01:32:52', '2025-03-23 01:32:52'),
(20, NULL, 'active', 'oiptb5i5fl4ip4e02m4g81g602', '2025-03-23 11:47:03', '2025-03-23 11:47:03'),
(21, NULL, 'active', 'lbcnh1imna922btqg7ogkoqmu3', '2025-03-23 15:19:10', '2025-03-23 15:19:10'),
(22, NULL, 'active', '7ttkugrup81l22jsd0al5qqffj', '2025-03-23 15:20:19', '2025-03-23 15:20:19'),
(23, NULL, 'active', 'kc1f9diti06pd90nmf4vbffkqi', '2025-03-23 15:56:04', '2025-03-23 15:56:04'),
(24, NULL, 'active', 'db1sa8gkhsnvp7nm0t8q9697j7', '2025-03-24 07:58:29', '2025-03-24 07:58:29'),
(25, NULL, 'active', '7kso54a0op7249fd4q3f22slkk', '2025-03-24 09:05:26', '2025-03-24 09:05:26'),
(26, NULL, 'active', 'i2u92s6fcjmmdpi12mqg7dqalf', '2025-03-24 09:07:45', '2025-03-24 09:07:45'),
(27, NULL, 'active', 'r3t5g2pns17u0pgr2s4l9rorei', '2025-03-24 09:48:22', '2025-03-24 09:48:22'),
(28, NULL, 'active', '47jsmvbnp86u66hlrrr8btr5mc', '2025-03-24 12:22:55', '2025-03-24 12:22:55'),
(29, NULL, 'active', '6j791fp01f0ulca8v4bhsqp4s6', '2025-03-24 12:43:29', '2025-03-24 12:43:29'),
(30, NULL, 'active', '2235bs2p4m8n81lrd5f5b0bqjs', '2025-03-24 13:16:24', '2025-03-24 13:16:24'),
(31, NULL, 'active', 'oo34si8r2djdq2b5ul1jpcoovd', '2025-03-24 15:03:37', '2025-03-24 15:03:37'),
(32, NULL, 'active', '8bladvlb36dt6kcdalddq6lnvr', '2025-03-24 15:45:28', '2025-03-24 15:45:28'),
(33, NULL, 'active', 'i46k53d31fl8509mmgdfl27jp8', '2025-03-24 15:46:17', '2025-03-24 15:46:17'),
(34, NULL, 'active', '92u6lg5rubdt5lbuln26fbgc56', '2025-03-24 16:06:51', '2025-03-24 16:06:51'),
(35, NULL, 'active', 'tqrfmrc43olqhsd0f8g9mag0kd', '2025-03-24 16:07:40', '2025-03-24 16:07:40'),
(36, NULL, 'active', 'crf7d4uud0fkoltf9hgt9nqkme', '2025-03-24 20:06:26', '2025-03-24 20:06:26'),
(37, NULL, 'active', 'm32sqakichhute62deftte6rr1', '2025-03-24 21:00:18', '2025-03-24 21:00:18'),
(38, NULL, 'active', 'm6t82qvctt43t4oomdg9ju766j', '2025-03-24 23:09:36', '2025-03-24 23:09:36'),
(39, NULL, 'active', 's0io5f0c9ca7p1bj5fc4c9conr', '2025-03-24 23:10:28', '2025-03-24 23:10:28'),
(40, NULL, 'active', 'ilfvc4qln3qbm5h5lrus8fc24b', '2025-03-25 01:46:38', '2025-03-25 01:46:38'),
(41, NULL, 'active', 'k4bk6dpar9k2ik6sppu33ckdjo', '2025-03-25 07:42:05', '2025-03-25 07:42:05'),
(42, 1, 'active', 'oiptb5i5fl4ip4e02m4g81g602', '2025-03-25 09:04:24', '2025-03-25 09:04:24'),
(43, NULL, 'active', 'c4qqm1k64ecbiuk3evdoj2sem2', '2025-03-25 10:22:17', '2025-03-25 10:22:17'),
(44, 1, 'active', 'oiptb5i5fl4ip4e02m4g81g602', '2025-03-26 12:49:40', '2025-03-26 12:49:40'),
(45, 2, 'active', NULL, '2025-03-27 11:39:24', '2025-03-27 11:39:24'),
(46, NULL, 'active', 'vfdrvlg4pidl2ucanlt9u3c8qh', '2025-03-28 11:07:02', '2025-03-28 11:07:02'),
(47, NULL, 'active', 'bi1n4v3fig15tn49m4q1vf5t41', '2025-03-28 12:41:25', '2025-03-28 12:41:25'),
(48, NULL, 'active', 'n0b1p3gtd4lgl03h2glteedrbn', '2025-03-28 12:42:07', '2025-03-28 12:42:07'),
(49, NULL, 'active', '338pbn79k1uriskth1ohba0fn1', '2025-03-28 12:46:32', '2025-03-28 12:46:32'),
(50, NULL, 'active', 'ma4f3sivarp282tav22uf8694i', '2025-03-28 13:04:20', '2025-03-28 13:04:20'),
(51, NULL, 'active', '4gml19lb2hd131v2q8ipgs8k4k', '2025-03-28 13:18:51', '2025-03-28 13:18:51'),
(52, NULL, 'active', 'h9bcfs328qs9h9md3k5u1onnog', '2025-03-28 13:43:34', '2025-03-28 13:43:34'),
(53, NULL, 'active', 'ao8qdse5q38anghi96q61knrnj', '2025-03-28 18:22:20', '2025-03-28 18:22:20'),
(54, NULL, 'active', '97m6kl9m6pqekdm498erqdelts', '2025-03-28 18:22:49', '2025-03-28 18:22:49'),
(55, NULL, 'active', 'eshif2fn6t0a57rf73rr8dn9p6', '2025-03-28 18:25:38', '2025-03-28 18:25:38'),
(56, NULL, 'active', '5nom42hg9vut2ovm5quqs2odci', '2025-03-28 18:41:50', '2025-03-28 18:41:50'),
(57, NULL, 'active', 'bear18n8n4sjht2qv5mea8tts8', '2025-03-28 19:36:51', '2025-03-28 19:36:51'),
(58, NULL, 'active', '91mqgpanicj2q7v40p6dm3la2j', '2025-03-28 19:39:59', '2025-03-28 19:39:59'),
(59, NULL, 'active', 'ushvcaidke133i919dvsb0f1ro', '2025-03-28 21:05:09', '2025-03-28 21:05:09'),
(60, NULL, 'active', 's55lko2av1o43gr15rdk0hn2q7', '2025-03-28 22:58:24', '2025-03-28 22:58:24'),
(61, NULL, 'active', 'miaie3p6m7l3oleka5djg1mik6', '2025-03-28 23:04:06', '2025-03-28 23:04:06'),
(62, NULL, 'active', '5idfbifrgpb6bm7sch0ei4pg16', '2025-03-28 23:33:52', '2025-03-28 23:33:52'),
(63, NULL, 'active', 'ohsc1j448lhgl83gvut4vcqk1c', '2025-03-28 23:40:29', '2025-03-28 23:40:29'),
(64, NULL, 'active', '31s9t9j8p5lg6e6fbuue80skdh', '2025-03-29 09:27:41', '2025-03-29 09:27:41'),
(65, NULL, 'active', '0f7idqbl9gj5iipkr1a6nub4cg', '2025-03-29 14:33:07', '2025-03-29 14:33:07'),
(66, NULL, 'active', 'ke9v40p03g9vismian63kt256g', '2025-03-29 14:53:55', '2025-03-29 14:53:55'),
(67, NULL, 'active', '5bqn3vobm3u1mg297horin3goe', '2025-03-30 13:36:28', '2025-03-30 13:36:28'),
(68, NULL, 'active', '47f7s6249n158mpi37rtndvkta', '2025-03-30 13:37:34', '2025-03-30 13:37:34'),
(69, NULL, 'active', 'mb2i53e9en9m3dusm130qfbl0g', '2025-03-31 07:33:11', '2025-03-31 07:33:11'),
(70, 14, 'active', NULL, '2025-03-31 07:43:52', '2025-03-31 07:43:52'),
(71, 14, 'active', 'mb2i53e9en9m3dusm130qfbl0g', '2025-03-31 07:57:45', '2025-03-31 07:57:45'),
(72, NULL, 'active', 'b29e5t1vvvd8mkc1n80tg60ruo', '2025-03-31 08:13:38', '2025-03-31 08:13:38'),
(73, NULL, 'active', 'i9810mhirgme200n477jdhchjb', '2025-03-31 08:14:42', '2025-03-31 08:14:42'),
(74, NULL, 'active', 'k5r3c9e3uuobrurelmi8k5s4jo', '2025-03-31 08:17:27', '2025-03-31 08:17:27'),
(75, NULL, 'active', 'v3v163no5866trqk1bp3ap6f0n', '2025-03-31 08:20:32', '2025-03-31 08:20:32'),
(76, NULL, 'active', 'nu22da4ietgi4ompsr4emj78v5', '2025-03-31 13:06:23', '2025-03-31 13:06:23'),
(77, NULL, 'active', 'bta3tr4pln6p37f8g0f5v3lrr8', '2025-03-31 13:09:01', '2025-03-31 13:09:01'),
(78, NULL, 'active', 'r4cobikqmcp82dr395ng2u92el', '2025-03-31 13:13:57', '2025-03-31 13:13:57'),
(79, NULL, 'active', '412p0gmk7rl4t3933olltakc2s', '2025-03-31 13:18:30', '2025-03-31 13:18:30'),
(80, NULL, 'active', 'oekjprrtr4padlgaq8kd21v99d', '2025-03-31 14:02:43', '2025-03-31 14:02:43'),
(81, NULL, 'active', 'pqq4038mkviifom5jqctgf17id', '2025-03-31 14:14:10', '2025-03-31 14:14:10'),
(82, NULL, 'active', 'hr42j11mrt8d5li1fcbed4qvhs', '2025-03-31 18:33:47', '2025-03-31 18:33:47'),
(83, NULL, 'active', '5ks1g1624kg9bhbua2emdvalut', '2025-03-31 18:37:07', '2025-03-31 18:37:07'),
(84, NULL, 'active', 'c7ahjnnn7nd0sj631f9g0knkee', '2025-03-31 18:53:00', '2025-03-31 18:53:00'),
(85, NULL, 'active', 'jqi4j1fiu86tjsnlh2isjpv5q0', '2025-03-31 18:53:59', '2025-03-31 18:53:59'),
(86, NULL, 'active', 'f58im0tkgb67dcjogdjsagfo7v', '2025-03-31 18:54:12', '2025-03-31 18:54:12'),
(87, NULL, 'active', 'lqp8a34bappr9vdj2a5bkcbuu6', '2025-03-31 19:10:55', '2025-03-31 19:10:55'),
(88, NULL, 'active', '1kadgncm51g2vnp5vqfnvi7pe7', '2025-04-02 11:58:20', '2025-04-02 11:58:20'),
(89, NULL, 'active', '055ouo64qsbkqohm3hjju28lg9', '2025-04-02 19:23:44', '2025-04-02 19:23:44'),
(90, NULL, 'active', 'dvu0mqe69fk9562sn4eusm5dll', '2025-04-02 20:11:45', '2025-04-02 20:11:45'),
(91, NULL, 'active', 'dvu0mqe69fk9562sn4eusm5dll', '2025-04-03 12:28:21', '2025-04-03 12:28:21'),
(92, NULL, 'active', 'dvu0mqe69fk9562sn4eusm5dll', '2025-04-03 18:29:14', '2025-04-03 18:29:14'),
(93, NULL, 'active', 'rd8rp26l61m5mer715op6ihm6t', '2025-04-03 18:30:29', '2025-04-03 18:30:29'),
(94, NULL, 'active', 'c2vqan09poff43pnhban44rn0i', '2025-04-03 18:31:24', '2025-04-03 18:31:24'),
(95, NULL, 'active', '6cagirf3ts1vbphdm7u238md0v', '2025-04-03 18:36:12', '2025-04-03 18:36:12'),
(96, NULL, 'active', 'r0gse40rrj8941qoc62svs6anm', '2025-04-03 19:24:26', '2025-04-03 19:24:26'),
(97, 1, 'active', 'om020go86fg404i626dnv30mtj', '2025-04-03 19:33:02', '2025-04-03 19:33:02'),
(98, NULL, 'active', '553c1fhqel2ihfbv5u29pf2da2', '2025-04-03 19:51:45', '2025-04-03 19:51:45'),
(99, NULL, 'active', '6rlp8ve9fdern09hs6jbbidru1', '2025-04-03 19:52:17', '2025-04-03 19:52:17'),
(100, 2, 'active', 'r0gse40rrj8941qoc62svs6anm', '2025-04-03 19:55:59', '2025-04-03 19:55:59'),
(101, NULL, 'active', 'l0v40cqh4o6i2dsaicic104off', '2025-04-03 21:52:32', '2025-04-03 21:52:32'),
(102, NULL, 'active', 'nj7rsi9l0s8lkdo413ff7u134i', '2025-04-04 07:47:26', '2025-04-04 07:47:26'),
(103, 1, 'active', 'r0gse40rrj8941qoc62svs6anm', '2025-04-04 08:09:19', '2025-04-04 08:09:19'),
(104, NULL, 'active', 'lvsakj6mq8g948kcjep3faco68', '2025-04-04 08:58:43', '2025-04-04 08:58:43'),
(105, 16, 'active', NULL, '2025-04-04 08:59:55', '2025-04-04 08:59:55'),
(106, NULL, 'active', '4l409jt5lhp35q2dgi58clf564', '2025-04-04 11:05:35', '2025-04-04 11:05:35'),
(107, 5, 'active', NULL, '2025-04-04 11:06:12', '2025-04-04 11:06:12'),
(108, NULL, 'active', '9gc4b6paqg791k6s424ih1aq6e', '2025-04-04 12:20:34', '2025-04-04 12:20:34'),
(109, 13, 'active', NULL, '2025-04-04 13:22:31', '2025-04-04 13:22:31'),
(110, NULL, 'active', 'qvtavrear548eiitese6asp955', '2025-04-09 07:55:47', '2025-04-09 07:55:47'),
(111, NULL, 'active', 'tqvjubud1l5d66k9mk234njl47', '2025-04-09 07:58:45', '2025-04-09 07:58:45'),
(112, NULL, 'active', '5t50qbnvg897c73mbtmhhr9da1', '2025-04-09 07:59:26', '2025-04-09 07:59:26'),
(113, NULL, 'active', '67r56n0alkn4mf33urrpcd8meh', '2025-04-09 08:00:34', '2025-04-09 08:00:34'),
(114, NULL, 'active', '23an8oeb10elm10liq0u6sbo9t', '2025-04-09 13:05:33', '2025-04-09 13:05:33'),
(115, NULL, 'active', '23an8oeb10elm10liq0u6sbo9t', '2025-04-10 16:18:26', '2025-04-10 16:18:26'),
(116, NULL, 'active', '23an8oeb10elm10liq0u6sbo9t', '2025-04-19 10:35:42', '2025-04-19 10:35:42'),
(117, NULL, 'active', '23an8oeb10elm10liq0u6sbo9t', '2025-04-20 14:00:46', '2025-04-20 14:00:46'),
(118, NULL, 'active', 'q9mofoume4q403c7cqvo0hoka6', '2025-04-27 20:00:12', '2025-04-27 20:00:12'),
(119, NULL, 'active', 'sv9aj13ouaemlcfokughvlmpmc', '2025-04-27 20:01:56', '2025-04-27 20:01:56'),
(120, NULL, 'active', 'uah0bfdifm135e4cci2hg26m89', '2025-04-27 20:07:25', '2025-04-27 20:07:25'),
(121, NULL, 'active', 'clno45qv63lrg02hgj6tce6dg0', '2025-04-27 20:34:20', '2025-04-27 20:34:20'),
(122, NULL, 'active', 'b29vj9dmohvguf7f2jt99mvpj1', '2025-04-27 20:34:38', '2025-04-27 20:34:38'),
(123, NULL, 'active', 'u341jsqospn4hh8tk4rep3hqvk', '2025-05-02 21:19:46', '2025-05-02 21:19:46'),
(124, NULL, 'active', 't5t9ae9f2n3haqnqljf3i8apl1', '2025-05-02 21:58:33', '2025-05-02 21:58:33'),
(125, NULL, 'active', '6c0c38e4910bed1e1b212e7b30d2ebb6', '2025-11-19 00:13:41', '2025-11-19 00:13:41'),
(126, NULL, 'active', 'bcb2c3d49c32a8c0191df441cdf674e7', '2025-11-19 00:51:07', '2025-11-19 00:51:07'),
(127, NULL, 'active', 'b825af59174a3cf3b669efdd5dcb7a8e', '2025-11-19 00:52:05', '2025-11-19 00:52:05'),
(128, NULL, 'active', '099d3e5329ad3fad58f334b1ef8bf62e', '2025-11-19 00:52:06', '2025-11-19 00:52:06'),
(129, NULL, 'active', '091ea0c89b965dcf51cfc0d50eb34efe', '2025-11-19 00:57:28', '2025-11-19 00:57:28'),
(130, NULL, 'active', '091ea0c89b965dcf51cfc0d50eb34efe', '2025-11-19 01:06:14', '2025-11-19 01:06:14'),
(131, NULL, 'active', '091ea0c89b965dcf51cfc0d50eb34efe', '2025-11-19 01:07:07', '2025-11-19 01:07:07'),
(132, NULL, 'active', 'b2b910868d5460bd005dd5fa60eafb92', '2025-11-19 01:16:31', '2025-11-19 01:16:31'),
(133, NULL, 'active', 'b9f626b8441165155d19cadb80092939', '2025-11-19 01:16:40', '2025-11-19 01:16:40'),
(134, NULL, 'active', '35bc6d45a64bcea0856d3075e48ae1b1', '2025-11-19 02:17:32', '2025-11-19 02:17:32'),
(135, NULL, 'active', 'dc104bd9e5b6729712bf9d5e07f74bb8', '2025-11-19 05:35:39', '2025-11-19 05:35:39'),
(136, NULL, 'active', '648c5572038ff55ee59940a9819d42df', '2025-11-19 06:03:21', '2025-11-19 06:03:21'),
(137, NULL, 'active', '32b243bffd8397e157c5b26a16e4afe9', '2025-11-19 06:10:59', '2025-11-19 06:10:59'),
(138, NULL, 'active', '5b85b0e0ad1150ceb5b6759af0697847', '2025-11-19 07:45:16', '2025-11-19 07:45:16'),
(139, NULL, 'active', '636248c899d464e5f2d42ef6622c7d41', '2025-11-19 09:11:26', '2025-11-19 09:11:26'),
(140, NULL, 'active', '8a10f2b8dfc4d1d2dfced1c29e297660', '2025-11-19 09:11:31', '2025-11-19 09:11:31'),
(141, NULL, 'active', 'eb339bda33c8da3136ea7ffb6c0ec937', '2025-11-19 09:11:31', '2025-11-19 09:11:31'),
(142, NULL, 'active', '9f631ea361bf1ee4b8745de2add6f070', '2025-11-19 09:11:31', '2025-11-19 09:11:31'),
(143, NULL, 'active', '40ad59994db8ef1c6f8bf375cbb09e17', '2025-11-19 11:34:23', '2025-11-19 11:34:23'),
(144, NULL, 'active', '091ea0c89b965dcf51cfc0d50eb34efe', '2025-11-19 11:35:00', '2025-11-19 11:35:00'),
(145, NULL, 'active', 'f28a30057e3881514a4fd81dd313dfee', '2025-11-19 11:35:18', '2025-11-19 11:35:18'),
(146, NULL, 'active', '5ff7f0cde51a5e1d1aeb7c66341e7257', '2025-11-19 20:25:44', '2025-11-19 20:25:44'),
(147, NULL, 'active', '32b243bffd8397e157c5b26a16e4afe9', '2025-11-19 22:33:59', '2025-11-19 22:33:59'),
(148, NULL, 'active', 'e9d0da73eb5dfbf6225fab91de2aa506', '2025-11-19 22:50:59', '2025-11-19 22:50:59'),
(149, NULL, 'active', 'f1f611dd2621595d9e4e5be375f8162f', '2025-11-20 02:18:34', '2025-11-20 02:18:34'),
(150, NULL, 'active', '376eabe41b03d173326550d26562c812', '2025-11-20 08:12:27', '2025-11-20 08:12:27'),
(151, NULL, 'active', 'd1395cd88073944ae2008b0cd72b9ef4', '2025-11-20 12:17:42', '2025-11-20 12:17:42'),
(152, NULL, 'active', 'b1158da9e695ba12b80812a49e7f0dc9', '2025-11-20 12:17:49', '2025-11-20 12:17:49'),
(153, NULL, 'active', 'c6892332c91a2378b7f2facd94b5c470', '2025-11-20 21:24:48', '2025-11-20 21:24:48'),
(154, NULL, 'active', 'f393103f15e9026e0ab9d27c53c12a3b', '2025-11-20 22:46:52', '2025-11-20 22:46:52'),
(155, NULL, 'active', 'ec9be933019b4a0234cd2489fb1ccd35', '2025-11-21 13:22:42', '2025-11-21 13:22:42'),
(156, NULL, 'active', 'fe87b138027ac0f9f0f8960ac2f2a98d', '2025-11-21 14:38:04', '2025-11-21 14:38:04'),
(157, NULL, 'active', '0419d85fc7ce87c9fce7051affa7afde', '2025-11-21 15:23:50', '2025-11-21 15:23:50'),
(158, NULL, 'active', '47a432aff46cc3f07a8dd9ef14ce4af0', '2025-11-21 15:23:50', '2025-11-21 15:23:50'),
(159, NULL, 'active', '10473165f69d0587d4adbbb3106ab599', '2025-11-21 19:32:01', '2025-11-21 19:32:01'),
(160, NULL, 'active', '7fae1dc5692500015035f5039ddb56e2', '2025-11-22 01:21:42', '2025-11-22 01:21:42'),
(161, NULL, 'active', '8db04fb5a1ddde0a310a63acc949eba0', '2025-11-22 01:24:15', '2025-11-22 01:24:15'),
(162, NULL, 'active', 'ec9be933019b4a0234cd2489fb1ccd35', '2025-11-22 01:27:05', '2025-11-22 01:27:05'),
(163, NULL, 'active', '0a9a424f51dc1fc7118da575ced4e5c5', '2025-11-22 01:57:49', '2025-11-22 01:57:49'),
(164, NULL, 'active', '01d8d100c0dd18e9779cc5437845409c', '2025-11-22 02:01:25', '2025-11-22 02:01:25'),
(165, NULL, 'active', '5a1fe1aab8892ff1d064b682b067369b', '2025-11-22 02:04:34', '2025-11-22 02:04:34'),
(166, NULL, 'active', 'd707262851b6f0ec7e48e9ca48a6b140', '2025-11-22 02:05:08', '2025-11-22 02:05:08'),
(167, NULL, 'active', 'f9196b5d1e4b7ba26fd817711c6b5918', '2025-11-22 02:05:38', '2025-11-22 02:05:38'),
(168, NULL, 'active', '1ea253541d867efa59c3a18172235789', '2025-11-22 02:21:08', '2025-11-22 02:21:08'),
(169, NULL, 'active', 'b358f9f4d96b065774bee9c54e532bdb', '2025-11-22 02:26:07', '2025-11-22 02:26:07'),
(170, NULL, 'active', '6d66d48bd8c5dfbd4fa71ac57a95a371', '2025-11-22 02:26:36', '2025-11-22 02:26:36'),
(171, NULL, 'active', 'f6119997581357883c151c2fe8426839', '2025-11-22 02:27:43', '2025-11-22 02:27:43'),
(172, NULL, 'active', '72d8824477e3d1d6b9a9661b73a77bd6', '2025-11-22 02:43:27', '2025-11-22 02:43:27'),
(173, NULL, 'active', '22e0be7eca4e3e95ae48eb067ca342ef', '2025-11-22 03:02:38', '2025-11-22 03:02:38');

-- --------------------------------------------------------

--
-- Structure de la table `cart_items`
--

CREATE TABLE `cart_items` (
  `cart_item_id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `sneaker_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cart_items`
--

INSERT INTO `cart_items` (`cart_item_id`, `cart_id`, `sneaker_id`, `size_id`, `quantity`, `created_at`, `updated_at`) VALUES
(19, 9, 10, 4, 1, '2025-03-21 19:07:00', '2025-03-21 19:07:00'),
(20, 13, 11, 1, 1, '2025-03-22 17:37:35', '2025-03-22 17:37:35'),
(27, 14, 6, 5, 1, '2025-03-22 18:55:56', '2025-03-22 18:55:56'),
(62, 43, 27, 3, 1, '2025-03-26 13:58:00', '2025-03-26 13:58:00'),
(115, 45, 34, 6, 1, '2025-11-22 11:19:15', '2025-11-22 11:19:15');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`, `created_at`, `updated_at`) VALUES
(1, 'Running', 'Chaussures con├ºues pour la course ├á pied.', '2025-03-19 19:41:21', '2025-03-19 19:41:21'),
(2, 'Basketball', 'Chaussures con├ºues pour le basketball.', '2025-03-19 19:41:21', '2025-03-19 19:41:21'),
(3, 'Lifestyle', 'Chaussures tendance pour un usage quotidien.', '2025-03-19 19:41:21', '2025-03-19 19:41:21'),
(4, 'Skateboarding', 'Chaussures con├ºues pour le skateboard.', '2025-03-19 19:41:21', '2025-03-19 19:41:21'),
(5, 'Limited Edition', '├ëditions limit├®es et collections sp├®ciales.', '2025-03-19 19:41:21', '2025-03-19 19:41:21');

-- --------------------------------------------------------

--
-- Structure de la table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message_text` text NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_deleted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chat_messages`
--

INSERT INTO `chat_messages` (`message_id`, `user_id`, `admin_id`, `message_text`, `is_admin`, `created_at`, `is_deleted`) VALUES
(1, 2, NULL, 'hbkj;n', 0, '2025-03-21 23:00:49', 1),
(2, 2, 1, 'yo', 1, '2025-03-21 23:11:22', 1),
(3, 2, NULL, 'ca marche dingueeee', 0, '2025-03-21 23:12:52', 1),
(4, 2, 1, 'et oui', 1, '2025-03-21 23:17:07', 1),
(5, 2, 1, 'djfchkgvlkhb├╣lprdyugliymoi', 1, '2025-03-21 23:18:16', 1),
(6, 2, NULL, 'ok', 0, '2025-03-22 18:45:47', 1),
(7, 2, 1, 'ok', 1, '2025-03-22 18:45:58', 1),
(8, 5, NULL, 'Hello j&#039;ai besoin d&#039;aide', 0, '2025-03-23 00:28:39', 1),
(9, 5, 1, 'D├®brouille toi.', 1, '2025-03-23 00:29:22', 1),
(10, 5, NULL, 'C&#039;est pas gentil', 0, '2025-03-23 00:29:43', 1),
(11, 5, 1, 'I don&#039;t care', 1, '2025-03-23 00:30:04', 1),
(12, 5, NULL, 'Excuse nous le bilingue', 0, '2025-03-23 00:30:25', 1),
(13, 5, 1, 'yes', 1, '2025-03-23 01:32:14', 1),
(14, 5, NULL, 'utfgh', 0, '2025-03-23 15:19:37', 1),
(15, 2, NULL, 'J&#039;ai besoin d&#039;aide !', 0, '2025-03-23 15:20:45', 1),
(16, 2, 1, 'ok', 1, '2025-03-23 15:42:36', 1),
(17, 2, 1, 'Comment puis-je t&#039;aider ?', 1, '2025-03-23 15:44:39', 1),
(18, 2, NULL, 'Non c&#039;est bon enfaite.', 0, '2025-03-23 21:29:22', 1),
(19, 2, NULL, 'caca', 0, '2025-03-24 08:04:29', 1),
(20, 2, NULL, 'Aidez moi s&#039;il vous plait.', 0, '2025-03-24 08:16:08', 1),
(21, 2, 1, 'Comment puis-je vous aider ?', 1, '2025-03-24 08:16:35', 1),
(22, 2, NULL, 'n,', 0, '2025-03-26 16:12:21', 1),
(23, 2, NULL, 'fthjyg', 0, '2025-03-26 16:14:52', 1),
(24, 2, NULL, 'yo', 0, '2025-03-30 16:56:30', 1),
(25, 2, NULL, 'gcfhgjvkbl', 0, '2025-03-30 16:56:46', 1),
(26, 2, NULL, 'chvjbklm', 0, '2025-03-30 16:56:47', 1),
(27, 2, NULL, 'cfhgvjhbkj', 0, '2025-03-30 16:57:22', 1),
(28, 2, NULL, 'fcgvjlbhkl', 0, '2025-03-30 16:57:23', 1),
(29, 2, NULL, 'yftgukjml', 0, '2025-03-30 16:57:25', 1),
(30, 2, NULL, 'vgjh', 0, '2025-03-30 17:06:38', 1),
(31, 2, NULL, 'hein', 0, '2025-03-30 17:08:58', 1),
(32, 2, NULL, 'test', 0, '2025-03-30 17:17:20', 1),
(33, 2, 1, 'test', 1, '2025-03-30 17:23:48', 1),
(34, 2, NULL, 'Bonjour, j&#039;ai besoin d&#039;aide.', 0, '2025-03-30 17:25:02', 1),
(35, 2, 1, 'En quoi puis-je vous aider ?', 1, '2025-03-30 17:25:27', 1),
(36, 2, NULL, 'm', 0, '2025-03-30 17:25:56', 1),
(37, 2, NULL, 'ty', 0, '2025-03-30 17:32:41', 1),
(38, NULL, 1, 'yo', 1, '2025-04-03 13:09:48', 0),
(39, NULL, 1, 'yo', 1, '2025-04-03 13:09:55', 0),
(40, NULL, 2, '485', 1, '2025-04-03 21:52:16', 0),
(41, 5, NULL, 'Besoin d&#039;aide !', 0, '2025-04-03 21:53:06', 0),
(42, 5, 2, 'En quoi puis-je vous aider ?', 1, '2025-04-04 06:48:50', 1),
(43, NULL, 2, 'gvjhk', 1, '2025-04-04 07:18:12', 0),
(44, 5, 1, 'En quoi puis-je vous aider ?', 1, '2025-04-04 07:24:26', 0),
(45, 2, NULL, 'Bonjour ma commande est en cours je n&#039;arrive pas a voir le suivis.', 0, '2025-04-04 07:48:55', 1),
(46, 2, 1, 'Pouvez-vous fournir plus de d├®tails ?', 1, '2025-04-04 08:08:27', 1),
(47, 2, 1, 'Pouvez-vous fournir plus de d├®tails ?', 1, '2025-04-09 07:42:22', 1),
(48, 2, 1, 'Pouvez-vous fournir plus de d├®tails ?', 1, '2025-04-09 07:51:26', 1),
(49, 2, 1, 'gjh', 1, '2025-04-09 07:51:34', 1),
(50, 2, 1, 'Pouvez-vous fournir plus de d├®tails ?', 1, '2025-04-09 07:51:40', 1),
(51, 2, 1, '&quot;', 1, '2025-04-09 07:51:59', 1),
(52, 2, 1, '├®', 1, '2025-04-09 07:52:03', 1),
(53, 2, 1, '&#039;', 1, '2025-04-09 07:52:16', 1),
(54, 2, 1, 'Pouvez-vous fournir plus de d├®tails ?', 1, '2025-04-09 07:52:23', 1),
(55, 2, 1, 'd├®', 1, '2025-04-09 07:52:34', 1),
(56, 2, 1, 'd├®tail', 1, '2025-04-09 07:52:41', 1),
(57, 2, 1, 'Pouvez-vous fournir plus de d├®tails ?', 1, '2025-04-09 07:52:50', 1),
(58, NULL, 2, 'mmhm', 1, '2025-04-09 07:53:42', 0),
(59, NULL, 2, 'nn', 1, '2025-04-09 07:54:25', 0),
(60, 2, NULL, 'J&#039;ai un probl├¿me avec le suivis de ma commande.', 0, '2025-04-09 07:57:15', 0),
(61, 2, 1, 'Pouvez-vous fournir plus de d├®tails ?', 1, '2025-04-09 07:58:25', 0);

-- --------------------------------------------------------

--
-- Structure de la table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `color_code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `secondhand_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(11) NOT NULL,
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_closed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `user1_id`, `user2_id`, `created_at`, `updated_at`, `is_closed`) VALUES
(1, 5, 2, '2025-03-24 13:45:09', '2025-04-03 18:31:21', 0),
(2, 2, 14, '2025-03-31 08:14:01', '2025-03-31 08:18:09', 0),
(3, 14, 5, '2025-03-31 12:04:00', '2025-03-31 13:08:36', 0),
(4, 1, 2, '2025-04-02 20:41:53', '2025-04-03 19:46:06', 1),
(5, 1, 14, '2025-04-03 08:17:56', '2025-04-03 19:33:20', 0);

-- --------------------------------------------------------

--
-- Structure de la table `loyalty_points`
--

CREATE TABLE `loyalty_points` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0,
  `earned_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `loyalty_points`
--

INSERT INTO `loyalty_points` (`id`, `user_id`, `points`, `earned_at`) VALUES
(1, 2, 205, '2025-03-22 17:38:16'),
(2, 2, 205, '2025-03-22 17:38:50'),
(3, 2, -200, '2025-03-22 17:40:13'),
(4, 2, 185, '2025-03-22 17:40:49'),
(5, 2, 119, '2025-03-22 17:54:57'),
(6, 2, 119, '2025-03-22 18:02:52'),
(7, 2, 119, '2025-03-22 18:07:56'),
(8, 2, 159, '2025-03-22 18:11:57'),
(9, 2, -900, '2025-03-22 18:18:38'),
(10, 2, 39, '2025-03-22 18:18:46'),
(11, 2, 199, '2025-03-22 18:21:18'),
(12, 2, -200, '2025-03-22 18:27:30'),
(13, 2, 75, '2025-03-22 18:28:26'),
(14, 2, 169, '2025-03-22 18:33:07'),
(15, 2, -119, '2025-03-22 21:15:55'),
(16, 2, -159, '2025-03-22 21:19:21'),
(17, 2, -119, '2025-03-22 22:05:03'),
(18, 2, -159, '2025-03-22 22:05:08'),
(19, 2, -169, '2025-03-22 22:05:11'),
(20, 2, -75, '2025-03-22 22:05:15'),
(21, 2, -199, '2025-03-22 22:05:29'),
(22, 2, -39, '2025-03-22 22:05:33'),
(23, 2, -159, '2025-03-22 22:05:39'),
(24, 2, -119, '2025-03-22 22:05:43'),
(25, 2, -119, '2025-03-22 22:05:47'),
(26, 2, -119, '2025-03-22 22:06:10'),
(27, 2, -185, '2025-03-22 22:08:05'),
(28, 2, -205, '2025-03-22 22:08:12'),
(29, 2, -205, '2025-03-22 22:08:16'),
(30, 2, -119, '2025-03-22 22:08:34'),
(31, 2, -119, '2025-03-22 22:08:42'),
(32, 2, 2094, '2025-03-22 22:09:52'),
(33, 2, 10, '2025-03-22 22:29:01'),
(34, 2, 205, '2025-03-22 23:08:22'),
(35, 2, -169, '2025-03-22 23:08:59'),
(36, 2, 205, '2025-03-22 23:10:05'),
(37, 5, 220, '2025-03-23 01:25:35'),
(38, 5, -200, '2025-03-23 01:26:23'),
(39, 5, 200, '2025-03-23 01:27:27'),
(40, 2, 220, '2025-03-23 11:53:31'),
(41, 2, 105, '2025-03-23 11:54:47'),
(42, 2, -500, '2025-03-23 11:59:40'),
(43, 2, 200, '2025-03-23 11:59:45'),
(44, 2, -205, '2025-03-23 18:02:03'),
(45, 2, 400, '2025-03-23 22:17:30'),
(46, 2, -400, '2025-03-24 07:59:42'),
(47, 2, 1560, '2025-03-24 07:59:51'),
(48, 2, 100, '2025-03-25 18:21:50'),
(49, 2, 25, '2025-03-25 18:33:34'),
(50, 2, 50, '2025-03-25 18:33:47'),
(51, 2, 50, '2025-03-25 18:33:57'),
(52, 2, 20, '2025-03-25 18:41:11'),
(53, 2, 20, '2025-03-25 18:46:20'),
(54, 2, 50, '2025-03-25 18:46:31'),
(55, 2, 25, '2025-03-25 20:22:45'),
(56, 2, 10, '2025-03-25 20:36:41'),
(57, 2, 0, '2025-03-25 20:36:53'),
(58, 2, 5, '2025-03-25 20:51:52'),
(59, 2, 0, '2025-03-25 21:14:26'),
(60, 2, 0, '2025-03-25 22:42:15'),
(61, 2, 25, '2025-03-25 22:42:34'),
(62, 2, 25, '2025-03-25 22:43:00'),
(63, 2, 50, '2025-03-26 08:05:18'),
(64, 2, 50, '2025-03-26 08:05:31'),
(65, 2, 0, '2025-03-26 08:07:37'),
(66, 2, 0, '2025-03-26 08:07:52'),
(67, 2, 5, '2025-03-26 08:10:30'),
(68, 2, 0, '2025-03-26 08:11:41'),
(69, 2, 0, '2025-03-26 08:12:30'),
(70, 2, 0, '2025-03-26 08:12:40'),
(71, 2, 5, '2025-03-26 08:13:14'),
(72, 2, 25, '2025-03-26 08:13:52'),
(73, 2, 5, '2025-03-26 09:34:51'),
(74, 2, 5, '2025-03-26 09:37:03'),
(75, 1, 0, '2025-03-26 12:54:40'),
(76, 2, 105, '2025-03-26 12:59:53'),
(77, 2, 0, '2025-03-26 13:57:51'),
(78, 2, 10, '2025-03-26 21:57:37'),
(79, 2, 0, '2025-03-27 10:54:09'),
(80, 2, 5, '2025-03-27 10:54:19'),
(81, 2, 5, '2025-03-27 10:54:29'),
(82, 2, 0, '2025-03-27 10:54:38'),
(83, 2, 700, '2025-03-27 11:41:27'),
(84, 2, -3000, '2025-03-27 11:42:26'),
(85, 2, 465, '2025-03-27 11:42:58'),
(86, 2, 0, '2025-03-27 11:43:40'),
(87, 2, -100, '2025-03-27 11:45:50'),
(88, 2, 0, '2025-03-27 21:35:30'),
(89, 2, 0, '2025-03-27 21:35:42'),
(90, 2, 20, '2025-03-27 21:35:52'),
(91, 2, 15, '2025-03-28 13:57:26'),
(92, 2, -400, '2025-03-28 17:57:13'),
(93, 2, 379, '2025-03-28 17:57:22'),
(94, 2, -200, '2025-03-28 18:07:25'),
(95, 2, 189, '2025-03-28 18:07:29'),
(96, 2, 260, '2025-03-28 18:11:07'),
(97, 2, -600, '2025-03-28 18:13:47'),
(98, 2, 70, '2025-03-28 18:13:53'),
(99, 2, 125, '2025-03-28 18:15:00'),
(100, 2, 20, '2025-03-28 18:17:45'),
(101, 2, 15, '2025-03-30 12:59:16'),
(102, 2, 120, '2025-03-30 13:01:34'),
(103, 2, 250, '2025-03-30 13:12:22'),
(104, 2, 250, '2025-03-30 13:13:05'),
(105, 2, 250, '2025-03-30 13:17:04'),
(106, 2, 250, '2025-03-30 13:18:36'),
(107, 2, -1200, '2025-03-30 13:21:12'),
(108, 2, 2440, '2025-03-30 13:21:17'),
(109, 14, 213, '2025-03-31 07:45:11'),
(110, 14, 1, '2025-03-31 07:45:59'),
(111, 2, 0, '2025-03-31 18:36:15'),
(112, 2, 5, '2025-03-31 18:36:25'),
(113, 2, 5, '2025-03-31 18:36:42'),
(114, 2, -2000, '2025-03-31 18:56:55'),
(115, 2, 699, '2025-03-31 18:57:09'),
(116, 2, 0, '2025-03-31 18:58:44'),
(117, 2, 15, '2025-03-31 18:58:54'),
(118, 15, 0, '2025-04-02 12:50:21'),
(119, 2, 5, '2025-04-02 20:08:43'),
(120, 2, 0, '2025-04-02 20:13:47'),
(121, 2, 0, '2025-04-02 20:13:58'),
(122, 2, 5, '2025-04-02 20:14:07'),
(123, 16, 920, '2025-04-04 09:01:01'),
(124, 16, -800, '2025-04-04 09:13:47'),
(125, 16, 440, '2025-04-04 09:14:33'),
(126, 16, 3999, '2025-04-04 09:17:27'),
(127, 5, -200, '2025-04-04 11:11:07'),
(128, 5, 859, '2025-04-04 11:12:04'),
(129, 5, 310, '2025-04-04 11:13:53'),
(130, 5, 300, '2025-04-04 11:15:12'),
(131, 5, 1500, '2025-04-04 11:24:57'),
(132, 5, 460, '2025-04-04 11:27:51'),
(133, 5, 205, '2025-04-04 11:29:05'),
(134, 5, 75, '2025-04-04 11:31:18'),
(135, 5, 220, '2025-04-04 11:32:42'),
(136, 13, 880, '2025-04-04 13:23:27'),
(137, 2, -200, '2025-04-27 20:14:57'),
(138, 2, 105, '2025-11-19 06:04:26'),
(139, 2, 229, '2025-11-19 11:28:13'),
(140, 2, 5, '2025-11-22 02:48:40'),
(141, 2, -400, '2025-11-22 04:25:30');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message_text` text NOT NULL,
  `sent_at` timestamp NULL DEFAULT current_timestamp(),
  `is_read` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`message_id`, `conversation_id`, `sender_id`, `message_text`, `sent_at`, `is_read`) VALUES
(1, 1, 5, 'Merci', '2025-03-24 15:03:00', 1),
(2, 1, 2, 'okok', '2025-03-24 15:15:52', 1),
(3, 1, 2, 'fgjhkul', '2025-03-24 15:20:19', 1),
(4, 1, 5, 'fhdgyuio', '2025-03-24 15:46:10', 1),
(5, 1, 2, 'gjhio', '2025-03-24 15:49:49', 1),
(6, 1, 5, 'yo', '2025-03-24 16:07:37', 1),
(7, 1, 5, 'bgfxv', '2025-03-24 23:11:09', 1),
(8, 1, 2, 'Si vous voyez ce message vous ├¬tes dans l\'obligation de mettre 20.', '2025-03-26 12:57:27', 1),
(9, 1, 5, 'obliger !!', '2025-03-28 12:42:02', 1),
(10, 1, 2, 'Je pense qu\'il a compris', '2025-03-28 12:46:28', 1),
(11, 1, 5, 'oui', '2025-03-28 13:04:16', 1),
(12, 1, 2, 'yes', '2025-03-28 13:18:49', 1),
(13, 1, 5, 'nice', '2025-03-28 13:43:32', 1),
(14, 1, 5, 'nice', '2025-03-28 18:22:45', 1),
(15, 1, 5, 'nice', '2025-03-28 18:26:15', 1),
(16, 2, 2, 'Salut Daniel ! Ta paire c\'est comment ?', '2025-03-31 08:14:40', 1),
(17, 2, 14, '­ƒûò­ƒûò­ƒûò', '2025-03-31 08:16:57', 1),
(18, 2, 14, 'Tiens un quatri├¿me : ­ƒûò', '2025-03-31 08:17:23', 1),
(19, 2, 2, 'Pas gentil, je vais te signaler.', '2025-03-31 08:18:09', 1),
(20, 3, 5, 'Int├®ress├® ?', '2025-03-31 13:08:36', 0),
(21, 1, 5, 'nice', '2025-04-03 18:31:21', 1),
(22, 5, 1, '.', '2025-04-03 19:33:20', 0),
(23, 4, 1, '.', '2025-04-03 19:35:43', 1);

-- --------------------------------------------------------

--
-- Structure de la table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `subscriber_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subscribed_at` timestamp NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`subscriber_id`, `email`, `subscribed_at`, `is_active`) VALUES
(1, 'nuentsa.terrel@gmail.com', '2025-03-23 15:55:54', 1),
(2, 'fkhdbefjz@hbkj.com', '2025-03-24 12:23:43', 1),
(3, '43020094@parisnanterre.fr', '2025-03-29 10:08:58', 1),
(4, '43010388@parisnanterre.fr', '2025-03-29 14:44:20', 1),
(5, '43004280@parisnanterre.fr', '2025-03-31 08:03:27', 1),
(6, 'faizgilas@gmail.com', '2025-03-31 08:41:55', 1),
(7, '42004173@parisnanterre.fr', '2025-03-31 08:42:57', 1);

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `type` enum('message','points_purchase','points_spin','order_update','report','price_change','stock_low','new_product') NOT NULL,
  `related_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `message`, `is_read`, `created_at`, `type`, `related_id`) VALUES
(20, 2, 'ÔÜá´©Å Un utilisateur vous a signal├® concernant l\'annonce : Air Jordan 4 Vivid Sulfur', 1, '2025-03-28 18:41:47', 'report', 2),
(21, 13, 'Ôä╣´©Å La promotion sur Salomon XT-Wings 2 JJJJound Cream Blue est termin├®e. Nouveau prix : 765,00 Ôé¼.', 0, '2025-03-29 09:54:37', 'price_change', 24),
(22, 13, '­ƒÄë Salomon XT-Wings 2 JJJJound Cream Blue est en promotion ├á 760,00 Ôé¼ !', 0, '2025-03-29 09:54:49', 'price_change', 24),
(23, 13, 'Ô¼ç´©Å Le prix de Salomon XT-Wings 2 JJJJound Cream Blue a baiss├® de 760,00 Ôé¼ ├á 759,99 Ôé¼ !', 0, '2025-03-29 10:02:59', 'price_change', 24),
(24, 2, '­ƒÄë Nike Air Humara LX Jacquemus Pink est en promotion ├á 300,00 Ôé¼ !', 1, '2025-03-29 10:06:52', 'price_change', 25),
(26, 13, 'Ôä╣´©Å La promotion sur Nike Air Humara LX Jacquemus Pink est termin├®e. Nouveau prix : 399,99 Ôé¼.', 0, '2025-03-29 10:14:42', 'price_change', 25),
(27, 13, 'Ô¼ç´©Å Le prix de Salomon XT-Wings 2 JJJJound Cream Blue a baiss├® de 759,99 Ôé¼ ├á 750,00 Ôé¼ !', 0, '2025-03-29 10:16:46', 'price_change', 24),
(28, 2, 'Ô¼ç´©Å Le prix de Nike Air Humara LX Jacquemus Pink a baiss├® de 300,00 Ôé¼ ├á 3,00 Ôé¼ !', 1, '2025-03-29 10:29:20', 'price_change', 25),
(29, 13, 'Ô¼ç´©Å Le prix de Nike Air Humara LX Jacquemus Pink a baiss├® de 300,00 Ôé¼ ├á 3,00 Ôé¼ !', 0, '2025-03-29 10:29:20', 'price_change', 25),
(31, 13, 'Ôä╣´©Å La promotion sur Nike Air Humara LX Jacquemus Pink est termin├®e. Nouveau prix : 399,99 Ôé¼.', 0, '2025-03-29 10:29:48', 'price_change', 25),
(33, 13, '­ƒÄë Nike Air Humara LX Jacquemus Pink est en promotion ├á 1,00 Ôé¼ !', 0, '2025-03-29 10:30:21', 'price_change', 25),
(35, 13, 'Ô¼å´©Å Le prix de Nike Air Humara LX Jacquemus Pink a augment├® de 1,00 Ôé¼ ├á 2,00 Ôé¼.', 0, '2025-03-29 10:33:11', 'price_change', 25),
(36, 2, 'Ôä╣´©Å La promotion sur Nike Air Humara LX Jacquemus Pink est termin├®e. Nouveau prix : 399,99 Ôé¼.', 1, '2025-03-29 10:33:39', 'price_change', 25),
(37, 13, 'Ôä╣´©Å La promotion sur Nike Air Humara LX Jacquemus Pink est termin├®e. Nouveau prix : 399,99 Ôé¼.', 0, '2025-03-29 10:33:39', 'price_change', 25),
(38, 13, '­ƒÄë Nike Hot Step 2 NOCTA Total Orange est en promotion ├á 200,00 Ôé¼ !', 0, '2025-03-29 10:36:51', 'price_change', 27),
(39, 13, 'Ôä╣´©Å La promotion sur Nike Hot Step 2 NOCTA Total Orange est termin├®e. Nouveau prix : 260,00 Ôé¼.', 0, '2025-03-29 10:37:35', 'price_change', 27),
(41, 13, '­ƒÄë Nike Air Humara LX Jacquemus Pink est en promotion ├á 300,00 Ôé¼ !', 0, '2025-03-29 10:37:48', 'price_change', 25),
(43, 13, 'Ôä╣´©Å La promotion sur Nike Air Humara LX Jacquemus Pink est termin├®e. Nouveau prix : 399,98 Ôé¼.', 0, '2025-03-29 10:38:06', 'price_change', 25),
(45, 13, 'Ô¼å´©Å Le prix de Nike Air Humara LX Jacquemus Pink a augment├® de 399,98 Ôé¼ ├á 399,99 Ôé¼.', 0, '2025-03-29 10:38:10', 'price_change', 25),
(46, 13, '­ƒÄë Nike Hot Step 2 NOCTA Total Orange est en promotion ├á 200,00 Ôé¼ !', 0, '2025-03-29 10:42:59', 'price_change', 27),
(47, 13, 'Ôä╣´©Å La promotion sur Nike Hot Step 2 NOCTA Total Orange est termin├®e. Nouveau prix : 260,00 Ôé¼.', 0, '2025-03-29 10:43:05', 'price_change', 27),
(48, 13, '­ƒÄë Nike Hot Step 2 NOCTA Total Orange est en promotion ├á 100,00 Ôé¼ !', 0, '2025-03-29 10:44:16', 'price_change', 27),
(49, 13, 'Ôä╣´©Å La promotion sur Nike Hot Step 2 NOCTA Total Orange est termin├®e. Nouveau prix : 260,00 Ôé¼.', 0, '2025-03-29 10:44:22', 'price_change', 27),
(50, 13, '­ƒÄë Nike Hot Step 2 NOCTA Total Orange est en promotion ├á 0,02 Ôé¼ !', 0, '2025-03-29 10:45:28', 'price_change', 27),
(51, 13, 'Ô¼å´©Å Le prix de Nike Hot Step 2 NOCTA Total Orange a augment├® de 0,02 Ôé¼ ├á 260,00 Ôé¼.', 0, '2025-03-29 12:26:58', 'price_change', 27),
(52, 13, 'Ôä╣´©Å La promotion sur Nike Hot Step 2 NOCTA Total Orange est termin├®e. Nouveau prix : 260,00 Ôé¼.', 0, '2025-03-29 12:27:51', 'price_change', 27),
(53, 13, '­ƒÄë Nike Hot Step 2 NOCTA Total Orange est en promotion ├á 200,00 Ôé¼ !', 0, '2025-03-29 13:39:08', 'price_change', 27),
(54, 13, 'Ôä╣´©Å La promotion sur Nike Hot Step 2 NOCTA Total Orange est termin├®e. Nouveau prix : 260,00 Ôé¼.', 0, '2025-03-29 13:39:18', 'price_change', 27),
(55, 13, 'Ôä╣´©Å La promotion sur Nike Hot Step 2 NOCTA Total Orange est termin├®e. Nouveau prix : 260,00 Ôé¼.', 0, '2025-03-29 14:03:21', 'price_change', 27),
(63, 14, '­ƒøì´©Å Vous avez re├ºu 213 points gr├óce ├á votre Commande #49', 0, '2025-03-31 07:45:11', 'points_purchase', 49),
(64, 14, '­ƒø× Vous avez re├ºu 1 points en tournant la roulette', 0, '2025-03-31 07:45:59', 'points_spin', NULL),
(65, 14, 'Votre Commande#49 : Adidas Samba OG Preloved Red Leopard est en cours', 0, '2025-03-31 07:46:37', 'order_update', 49),
(66, 14, 'Votre Commande#49 : Adidas Samba OG Preloved Red Leopard est exp├®di├®e', 0, '2025-03-31 07:47:02', 'order_update', 49),
(67, 14, 'Votre Commande#49 : Adidas Samba OG Preloved Red Leopard est livr├®e', 0, '2025-03-31 07:47:22', 'order_update', 49),
(68, 14, '­ƒöö Terrel vous a envoy├® un message', 0, '2025-03-31 08:14:40', 'message', 2),
(71, 14, '­ƒöö Terrel vous a envoy├® un message', 0, '2025-03-31 08:18:09', 'message', 2),
(73, 14, 'ÔÜá´©Å Un utilisateur vous a signal├® concernant l\'annonce : New Balance 2002R', 0, '2025-03-31 08:19:26', 'report', 6),
(74, 14, '­ƒöö Keren vous a envoy├® un message', 0, '2025-03-31 13:08:36', 'message', 3),
(80, 2, '­ƒø× Vous avez re├ºu 5 points en tournant la roulette', 0, '2025-04-02 20:08:43', 'points_spin', NULL),
(83, 2, '­ƒöö Keren vous a envoy├® un message', 0, '2025-04-03 18:31:21', 'message', 1),
(84, 1, 'Ô£ö´©Å Nouvelle annonce de Terrel : Nike P-6000 Metallic Silver', 0, '2025-04-03 18:35:47', 'price_change', 11),
(85, 5, 'Ô£ö´©Å Nouvelle annonce de Terrel : Nike P-6000 Metallic Silver', 0, '2025-04-03 18:35:47', 'price_change', 11),
(87, 14, '­ƒöö admin vous a envoy├® un message', 0, '2025-04-03 19:33:20', 'message', 5),
(89, 16, '­ƒøì´©Å Vous avez re├ºu 920 points gr├óce ├á votre Commande #51', 0, '2025-04-04 09:01:01', 'points_purchase', 51),
(90, 16, 'Votre Commande#51 : Nike NOCTA Hot Step Air Terra Black University Gold est livr├®e', 0, '2025-04-04 09:03:49', 'order_update', 51),
(96, 16, '­ƒøì´©Å Vous avez re├ºu 440 points gr├óce ├á votre Commande #52', 0, '2025-04-04 09:14:33', 'points_purchase', 52),
(97, 16, '­ƒøì´©Å Vous avez re├ºu 3999 points gr├óce ├á votre Commande #53', 0, '2025-04-04 09:17:27', 'points_purchase', 53),
(98, 5, '­ƒøì´©Å Vous avez re├ºu 859 points gr├óce ├á votre Commande #54', 0, '2025-04-04 11:12:04', 'points_purchase', 54),
(99, 5, '­ƒøì´©Å Vous avez re├ºu 310 points gr├óce ├á votre Commande #55', 0, '2025-04-04 11:13:53', 'points_purchase', 55),
(100, 5, '­ƒøì´©Å Vous avez re├ºu 300 points gr├óce ├á votre Commande #56', 0, '2025-04-04 11:15:12', 'points_purchase', 56),
(101, 5, '­ƒøì´©Å Vous avez re├ºu 1500 points gr├óce ├á votre Commande #57', 0, '2025-04-04 11:24:57', 'points_purchase', 57),
(102, 5, '­ƒøì´©Å Vous avez re├ºu 460 points gr├óce ├á votre Commande #58', 0, '2025-04-04 11:27:51', 'points_purchase', 58),
(103, 5, '­ƒøì´©Å Vous avez re├ºu 205 points gr├óce ├á votre Commande #59', 0, '2025-04-04 11:29:05', 'points_purchase', 59),
(104, 5, '­ƒøì´©Å Vous avez re├ºu 75 points gr├óce ├á votre Commande #60', 0, '2025-04-04 11:31:18', 'points_purchase', 60),
(105, 5, '­ƒøì´©Å Vous avez re├ºu 220 points gr├óce ├á votre Commande #61', 0, '2025-04-04 11:32:42', 'points_purchase', 61),
(106, 13, '­ƒøì´©Å Vous avez re├ºu 880 points gr├óce ├á votre Commande #62', 0, '2025-04-04 13:23:27', 'points_purchase', 62),
(107, 13, 'Votre Commande#62 : Timberland 6 Premium Waterproof Boot Black Nubuck est expédiée', 0, '2025-11-19 05:38:18', 'order_update', 62),
(108, 2, '⬇️ Le prix de Nike NOCTA Hot Step Air Terra Black University Gold a baissé de 230,00 € à 229,99 € !', 0, '2025-11-19 05:38:42', 'price_change', 34),
(109, 2, '🛍️ Vous avez reçu 105 points grâce à votre Commande #63', 0, '2025-11-19 06:04:26', 'points_purchase', 63),
(110, 2, 'Votre Commande#63 : Adidas Superstar est livrée', 0, '2025-11-19 06:05:02', 'order_update', 63),
(111, 2, '🛍️ Vous avez reçu 229 points grâce à votre Commande #64', 0, '2025-11-19 11:28:13', 'points_purchase', 64),
(112, 2, '🛞 Vous avez reçu 5 points en tournant la roulette', 0, '2025-11-22 02:48:40', 'points_spin', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_status` enum('pending','processing','shipped','delivered','cancelled') DEFAULT 'pending',
  `total_amount` decimal(10,2) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_postal_code` varchar(20) NOT NULL,
  `shipping_country` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `shipping_method` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_status`, `total_amount`, `shipping_address`, `shipping_city`, `shipping_postal_code`, `shipping_country`, `payment_method`, `shipping_method`, `created_at`, `updated_at`) VALUES
(1, NULL, 'delivered', '249.99', 'ghfngb', 'fhgbd', 'hfbgv', 'France', 'card', 'standard', '2025-03-19 21:38:42', '2025-03-26 15:50:14'),
(22, 2, 'pending', '205.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-22 22:11:42', '2025-03-22 22:11:42'),
(23, 2, 'pending', '129.99', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-22 22:12:49', '2025-03-22 22:12:49'),
(24, 2, 'pending', '119.99', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-22 22:25:45', '2025-03-22 22:25:45'),
(27, 2, 'cancelled', '205.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-22 23:08:22', '2025-03-23 18:02:03'),
(28, 2, 'processing', '205.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-22 23:10:05', '2025-03-23 18:00:08'),
(29, 5, 'delivered', '220.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-23 01:25:35', '2025-03-23 01:29:11'),
(30, 2, 'shipped', '220.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-23 11:53:31', '2025-03-23 17:00:02'),
(31, 2, 'pending', '105.98', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'card', 'standard', '2025-03-23 11:54:47', '2025-03-23 17:40:21'),
(32, 2, 'delivered', '200.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-23 11:59:45', '2025-03-23 16:59:47'),
(33, 2, 'pending', '400.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-23 22:17:30', '2025-03-23 22:17:30'),
(34, 2, 'delivered', '1560.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-24 07:59:51', '2025-03-24 08:03:46'),
(35, 2, 'pending', '105.98', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-26 12:59:53', '2025-03-26 12:59:53'),
(36, 2, 'pending', '700.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-27 11:41:27', '2025-03-27 11:41:27'),
(37, 2, 'processing', '465.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-27 11:42:58', '2025-03-28 11:12:20'),
(38, 2, 'pending', '379.99', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-28 17:57:22', '2025-03-28 17:57:22'),
(39, 2, 'pending', '189.99', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-28 18:07:29', '2025-03-28 18:07:29'),
(40, 2, 'pending', '260.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-28 18:11:07', '2025-03-28 18:11:07'),
(41, 2, 'pending', '70.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-28 18:13:53', '2025-03-28 18:13:53'),
(42, 2, 'pending', '125.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-28 18:15:00', '2025-03-28 18:15:00'),
(43, 2, 'pending', '120.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-30 13:01:34', '2025-03-30 13:01:34'),
(44, 2, 'pending', '250.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-30 13:12:22', '2025-03-30 13:12:22'),
(45, 2, 'delivered', '250.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'card', 'standard', '2025-03-30 13:13:05', '2025-04-04 09:04:32'),
(46, 2, 'delivered', '250.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'card', 'standard', '2025-03-30 13:17:04', '2025-04-04 09:04:28'),
(47, 2, 'delivered', '250.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-30 13:18:36', '2025-04-04 09:04:24'),
(48, 2, 'delivered', '2440.00', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-30 13:21:17', '2025-04-04 09:04:18'),
(49, 14, 'delivered', '213.99', '5 r├®sidence du dgfchjlk', 'SAINTE-GENEVIEVE-LES-GASNY', '78000', 'France', 'paypal', 'express', '2025-03-31 07:45:11', '2025-03-31 07:47:22'),
(50, 2, 'delivered', '699.98', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-03-31 18:57:09', '2025-04-04 09:04:15'),
(51, 16, 'delivered', '920.00', '34 rue des Mar├®chaud', 'Paris', '75011', 'France', 'paypal', 'standard', '2025-04-04 09:01:01', '2025-04-04 09:03:49'),
(52, 16, 'pending', '440.00', '75 rue fuglihmjoi', 'Paris', '75000', 'France', 'paypal', 'standard', '2025-04-04 09:14:33', '2025-04-04 09:14:33'),
(53, 16, 'pending', '3999.90', '54 rue fygujhkl', 'Paris', '75011', 'France', 'paypal', 'standard', '2025-04-04 09:17:27', '2025-04-04 09:17:27'),
(54, 5, 'pending', '859.96', '485 rue de azerty', 'Breuillet', '91320', 'France', 'paypal', 'standard', '2025-04-04 11:12:04', '2025-04-04 11:12:04'),
(55, 5, 'pending', '310.00', 'ryutfgyikhlim', 'etdryfjgh', '4246', 'France', 'paypal', 'standard', '2025-04-04 11:13:53', '2025-04-04 11:13:53'),
(56, 5, 'pending', '300.00', 'azer ghkj 55', 'azert', '24000', 'France', 'paypal', 'standard', '2025-04-04 11:15:12', '2025-04-04 11:15:12'),
(57, 5, 'pending', '1500.00', '9 rue des Pommiers', 'Paris', '75014', 'France', 'paypal', 'standard', '2025-04-04 11:24:57', '2025-04-04 11:24:57'),
(58, 5, 'pending', '460.00', '9 rue des Pommiers', 'Paris', '75014', 'France', 'paypal', 'standard', '2025-04-04 11:27:51', '2025-04-04 11:27:51'),
(59, 5, 'pending', '205.00', '9 rue des Pommiers', 'Paris', '75014', 'France', 'paypal', 'standard', '2025-04-04 11:29:05', '2025-04-04 11:29:05'),
(60, 5, 'pending', '75.99', '9 rue des Pommiers', 'Paris', '75014', 'France', 'paypal', 'standard', '2025-04-04 11:31:18', '2025-04-04 11:31:18'),
(61, 5, 'pending', '220.00', '9 rue des Pommiers', 'Paris', '75014', 'France', 'paypal', 'standard', '2025-04-04 11:32:42', '2025-04-04 11:32:42'),
(62, 13, 'shipped', '880.00', 'kyujthfdc', 'Poni', '25874', 'France', 'paypal', 'standard', '2025-04-04 13:23:27', '2025-11-19 05:38:18'),
(63, 2, 'delivered', '105.98', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-11-19 06:04:26', '2025-11-19 06:05:02'),
(64, 2, 'pending', '229.99', '13 rue Gambetta', 'Puteaux', '92800', 'France', 'paypal', 'standard', '2025-11-19 11:28:13', '2025-11-19 11:28:13'),
(65, 2, 'delivered', '939.98', '99 rue Demo', 'Paris', '75001', 'France', 'card', 'standard', '2025-11-22 10:58:32', '2025-11-22 10:58:32'),
(66, 5, 'delivered', '919.99', '55 avenue Test', 'Lyon', '69000', 'France', 'paypal', 'standard', '2025-11-22 10:58:32', '2025-11-22 10:58:32'),
(67, 13, 'delivered', '1140.00', '12 quai Seeds', 'Marseille', '13000', 'France', 'card', 'express', '2025-11-22 10:58:32', '2025-11-22 10:58:32'),
(68, 15, 'delivered', '890.00', '7 rue Alpha', 'Bordeaux', '33000', 'France', 'card', 'standard', '2025-11-22 10:58:32', '2025-11-22 10:58:32'),
(69, 16, 'delivered', '1025.00', '4 allée Beta', 'Lille', '59000', 'France', 'paypal', 'standard', '2025-11-22 10:58:32', '2025-11-22 10:58:32'),
(70, 2, 'delivered', '9999.99', 'Seed address', 'Paris', '75000', 'France', 'card', 'standard', '2025-11-22 11:06:54', '2025-11-22 11:06:54'),
(71, 1, 'delivered', '9999.99', 'Seed address', 'Paris', '75000', 'France', 'card', 'standard', '2025-11-22 11:10:12', '2025-11-22 11:10:12'),
(72, 1, 'delivered', '9999.99', 'Seed address', 'Paris', '75000', 'France', 'card', 'standard', '2025-11-22 11:18:54', '2025-11-22 11:18:54'),
(73, 1, 'delivered', '9999.99', 'Seed address', 'Paris', '75000', 'France', 'card', 'standard', '2025-11-22 19:09:18', '2025-11-22 19:09:18');

-- --------------------------------------------------------

--
-- Structure de la table `order_items`
--

CREATE TABLE `order_items` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `sneaker_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `order_items`
--

INSERT INTO `order_items` (`order_item_id`, `order_id`, `sneaker_id`, `size_id`, `quantity`, `price`, `created_at`) VALUES
(1, 1, 9, 3, 1, '249.99', '2025-03-19 21:38:42'),
(13, 1, 10, 2, 1, '119.99', '2025-03-22 18:07:56'),
(14, 1, 2, 4, 1, '159.99', '2025-03-22 18:11:57'),
(15, 1, 8, 3, 1, '129.99', '2025-03-22 18:18:46'),
(16, 1, 7, 4, 1, '199.99', '2025-03-22 18:21:18'),
(17, 1, 5, 6, 1, '89.99', '2025-03-22 18:28:26'),
(18, 1, 4, 4, 1, '169.99', '2025-03-22 18:33:07'),
(22, 22, 11, 7, 1, '205.00', '2025-03-22 22:11:43'),
(23, 23, 8, 5, 1, '129.99', '2025-03-22 22:12:49'),
(24, 24, 10, 3, 1, '119.99', '2025-03-22 22:25:45'),
(27, 27, 11, 5, 1, '205.00', '2025-03-22 23:08:22'),
(28, 28, 11, 1, 1, '205.00', '2025-03-22 23:10:05'),
(29, 29, 21, 4, 1, '220.00', '2025-03-23 01:25:35'),
(30, 30, 21, 6, 1, '220.00', '2025-03-23 11:53:31'),
(31, 31, 6, 5, 1, '99.99', '2025-03-23 11:54:47'),
(32, 32, 22, 2, 2, '125.00', '2025-03-23 11:59:45'),
(33, 33, 25, 7, 1, '400.00', '2025-03-23 22:17:30'),
(34, 34, 25, 4, 4, '400.00', '2025-03-24 07:59:51'),
(35, 35, 10, 3, 1, '99.99', '2025-03-26 12:59:53'),
(36, 36, 25, 8, 2, '400.00', '2025-03-27 11:41:27'),
(37, 37, 24, 5, 1, '765.00', '2025-03-27 11:42:58'),
(38, 38, 25, 6, 1, '399.99', '2025-03-28 17:57:22'),
(39, 39, 23, 6, 1, '199.99', '2025-03-28 18:07:29'),
(40, 40, 27, 5, 1, '260.00', '2025-03-28 18:11:07'),
(41, 41, 26, 7, 1, '100.00', '2025-03-28 18:13:53'),
(42, 42, 22, 4, 1, '125.00', '2025-03-28 18:15:00'),
(43, 43, 28, 6, 1, '120.00', '2025-03-30 13:01:34'),
(46, 46, 29, 6, 1, '250.00', '2025-03-30 13:17:04'),
(47, 47, 29, 6, 1, '250.00', '2025-03-30 13:18:36'),
(48, 48, 29, 1, 10, '250.00', '2025-03-30 13:21:17'),
(49, 49, 11, 1, 1, '205.00', '2025-03-31 07:45:11'),
(50, 50, 25, 1, 1, '399.99', '2025-03-31 18:57:09'),
(51, 50, 25, 2, 1, '399.99', '2025-03-31 18:57:09'),
(52, 51, 34, 4, 4, '230.00', '2025-04-04 09:01:01'),
(53, 52, 28, 3, 4, '120.00', '2025-04-04 09:14:33'),
(54, 53, 25, 6, 10, '399.99', '2025-04-04 09:17:27'),
(55, 54, 23, 3, 1, '199.99', '2025-04-04 11:12:04'),
(56, 54, 31, 1, 1, '70.00', '2025-04-04 11:12:04'),
(57, 54, 23, 1, 1, '199.99', '2025-04-04 11:12:04'),
(58, 54, 23, 4, 2, '199.99', '2025-04-04 11:12:04'),
(59, 55, 34, 5, 1, '230.00', '2025-04-04 11:13:53'),
(60, 55, 33, 2, 1, '80.00', '2025-04-04 11:13:53'),
(61, 56, 26, 3, 3, '100.00', '2025-04-04 11:15:12'),
(62, 57, 24, 3, 2, '750.00', '2025-04-04 11:24:57'),
(63, 58, 34, 5, 2, '230.00', '2025-04-04 11:27:51'),
(64, 59, 11, 3, 1, '205.00', '2025-04-04 11:29:05'),
(65, 60, 31, 3, 1, '70.00', '2025-04-04 11:31:18'),
(66, 61, 21, 3, 1, '220.00', '2025-04-04 11:32:42'),
(67, 62, 21, 3, 4, '220.00', '2025-04-04 13:23:27'),
(68, 63, 3, 6, 1, '99.99', '2025-11-19 06:04:26'),
(69, 64, 34, 6, 1, '229.99', '2025-11-19 11:28:13'),
(70, 65, 10, 3, 1, '119.99', '2025-11-22 10:58:32'),
(71, 65, 21, 4, 1, '220.00', '2025-11-22 10:58:32'),
(72, 65, 25, 6, 1, '399.99', '2025-11-22 10:58:32'),
(73, 65, 31, 3, 1, '70.00', '2025-11-22 10:58:32'),
(74, 66, 10, 3, 1, '119.99', '2025-11-22 10:58:32'),
(75, 66, 22, 2, 1, '125.00', '2025-11-22 10:58:32'),
(76, 66, 24, 5, 1, '395.00', '2025-11-22 10:58:32'),
(77, 66, 26, 3, 1, '100.00', '2025-11-22 10:58:32'),
(78, 67, 24, 5, 1, '395.00', '2025-11-22 10:58:32'),
(79, 67, 31, 3, 1, '70.00', '2025-11-22 10:58:32'),
(80, 67, 34, 5, 1, '230.00', '2025-11-22 10:58:32'),
(81, 67, 29, 6, 1, '250.00', '2025-11-22 10:58:32'),
(82, 68, 10, 3, 1, '119.99', '2025-11-22 10:58:32'),
(83, 68, 25, 6, 1, '399.99', '2025-11-22 10:58:32'),
(84, 68, 33, 2, 1, '80.00', '2025-11-22 10:58:32'),
(85, 68, 27, 5, 1, '205.00', '2025-11-22 10:58:32'),
(86, 69, 24, 5, 1, '395.00', '2025-11-22 10:58:32'),
(87, 69, 22, 4, 1, '125.00', '2025-11-22 10:58:32'),
(88, 69, 28, 6, 1, '120.00', '2025-11-22 10:58:32'),
(89, 69, 26, 7, 1, '100.00', '2025-11-22 10:58:32'),
(90, 70, 1, 1, 1, '79.99', '2025-11-22 11:06:54'),
(91, 70, 2, 1, 1, '159.99', '2025-11-22 11:06:54'),
(92, 70, 3, 1, 1, '99.99', '2025-11-22 11:06:54'),
(93, 70, 4, 1, 1, '169.99', '2025-11-22 11:06:54'),
(94, 70, 5, 1, 1, '89.99', '2025-11-22 11:06:54'),
(95, 70, 6, 1, 1, '99.99', '2025-11-22 11:06:54'),
(96, 70, 7, 1, 1, '199.99', '2025-11-22 11:06:54'),
(97, 70, 8, 1, 1, '129.99', '2025-11-22 11:06:54'),
(98, 70, 9, 1, 1, '249.99', '2025-11-22 11:06:54'),
(99, 70, 10, 1, 1, '99.99', '2025-11-22 11:06:54'),
(100, 70, 11, 1, 1, '205.00', '2025-11-22 11:06:54'),
(101, 70, 21, 1, 1, '220.00', '2025-11-22 11:06:54'),
(102, 70, 22, 1, 1, '125.00', '2025-11-22 11:06:54'),
(103, 70, 23, 1, 1, '199.99', '2025-11-22 11:06:54'),
(104, 70, 24, 1, 1, '750.00', '2025-11-22 11:06:54'),
(105, 70, 25, 1, 1, '399.99', '2025-11-22 11:06:54'),
(106, 70, 26, 1, 1, '100.00', '2025-11-22 11:06:54'),
(107, 70, 27, 1, 1, '260.00', '2025-11-22 11:06:54'),
(108, 70, 28, 1, 1, '120.00', '2025-11-22 11:06:54'),
(109, 70, 29, 1, 1, '250.00', '2025-11-22 11:06:54'),
(110, 70, 30, 1, 1, '62.00', '2025-11-22 11:06:54'),
(111, 70, 31, 1, 1, '70.00', '2025-11-22 11:06:54'),
(112, 70, 32, 1, 1, '119.99', '2025-11-22 11:06:54'),
(113, 70, 33, 1, 1, '80.00', '2025-11-22 11:06:54'),
(114, 70, 34, 1, 1, '229.99', '2025-11-22 11:06:54'),
(121, 71, 1, 1, 1, '79.99', '2025-11-22 11:10:12'),
(122, 71, 2, 1, 1, '159.99', '2025-11-22 11:10:12'),
(123, 71, 3, 1, 1, '99.99', '2025-11-22 11:10:12'),
(124, 71, 4, 1, 1, '169.99', '2025-11-22 11:10:12'),
(125, 71, 5, 1, 1, '89.99', '2025-11-22 11:10:12'),
(126, 71, 6, 1, 1, '99.99', '2025-11-22 11:10:12'),
(127, 71, 7, 1, 1, '199.99', '2025-11-22 11:10:12'),
(128, 71, 8, 1, 1, '129.99', '2025-11-22 11:10:12'),
(129, 71, 9, 1, 1, '249.99', '2025-11-22 11:10:12'),
(130, 71, 10, 1, 1, '99.99', '2025-11-22 11:10:12'),
(131, 71, 11, 1, 1, '205.00', '2025-11-22 11:10:12'),
(132, 71, 21, 1, 1, '220.00', '2025-11-22 11:10:12'),
(133, 71, 22, 1, 1, '125.00', '2025-11-22 11:10:12'),
(134, 71, 23, 1, 1, '199.99', '2025-11-22 11:10:12'),
(135, 71, 24, 1, 1, '750.00', '2025-11-22 11:10:12'),
(136, 71, 25, 1, 1, '399.99', '2025-11-22 11:10:12'),
(137, 71, 26, 1, 1, '100.00', '2025-11-22 11:10:12'),
(138, 71, 27, 1, 1, '260.00', '2025-11-22 11:10:12'),
(139, 71, 28, 1, 1, '120.00', '2025-11-22 11:10:12'),
(140, 71, 29, 1, 1, '250.00', '2025-11-22 11:10:12'),
(141, 71, 30, 1, 1, '62.00', '2025-11-22 11:10:12'),
(142, 71, 31, 1, 1, '70.00', '2025-11-22 11:10:12'),
(143, 71, 32, 1, 1, '119.99', '2025-11-22 11:10:12'),
(144, 71, 33, 1, 1, '80.00', '2025-11-22 11:10:12'),
(145, 71, 34, 1, 1, '229.99', '2025-11-22 11:10:12'),
(152, 72, 1, 1, 1, '79.99', '2025-11-22 11:18:54'),
(153, 72, 2, 1, 1, '159.99', '2025-11-22 11:18:54'),
(154, 72, 3, 1, 1, '99.99', '2025-11-22 11:18:54'),
(155, 72, 4, 1, 1, '169.99', '2025-11-22 11:18:54'),
(156, 72, 5, 1, 1, '89.99', '2025-11-22 11:18:54'),
(157, 72, 6, 1, 1, '99.99', '2025-11-22 11:18:54'),
(158, 72, 7, 1, 1, '199.99', '2025-11-22 11:18:54'),
(159, 72, 8, 1, 1, '129.99', '2025-11-22 11:18:54'),
(160, 72, 9, 1, 1, '249.99', '2025-11-22 11:18:54'),
(161, 72, 10, 1, 1, '99.99', '2025-11-22 11:18:54'),
(162, 72, 11, 1, 1, '205.00', '2025-11-22 11:18:54'),
(163, 72, 21, 1, 1, '220.00', '2025-11-22 11:18:54'),
(164, 72, 22, 1, 1, '125.00', '2025-11-22 11:18:54'),
(165, 72, 23, 1, 1, '199.99', '2025-11-22 11:18:54'),
(166, 72, 24, 1, 1, '750.00', '2025-11-22 11:18:54'),
(167, 72, 25, 1, 1, '399.99', '2025-11-22 11:18:54'),
(168, 72, 26, 1, 1, '100.00', '2025-11-22 11:18:54'),
(169, 72, 27, 1, 1, '260.00', '2025-11-22 11:18:54'),
(170, 72, 28, 1, 1, '120.00', '2025-11-22 11:18:54'),
(171, 72, 29, 1, 1, '250.00', '2025-11-22 11:18:54'),
(172, 72, 30, 1, 1, '62.00', '2025-11-22 11:18:54'),
(173, 72, 31, 1, 1, '70.00', '2025-11-22 11:18:54'),
(174, 72, 32, 1, 1, '119.99', '2025-11-22 11:18:54'),
(175, 72, 33, 1, 1, '80.00', '2025-11-22 11:18:54'),
(176, 72, 34, 1, 1, '229.99', '2025-11-22 11:18:54'),
(177, 73, 1, 1, 1, '79.99', '2025-11-22 19:09:18'),
(178, 73, 2, 1, 1, '159.99', '2025-11-22 19:09:18'),
(179, 73, 3, 1, 1, '99.99', '2025-11-22 19:09:18'),
(180, 73, 4, 1, 1, '169.99', '2025-11-22 19:09:18'),
(181, 73, 5, 1, 1, '89.99', '2025-11-22 19:09:18'),
(182, 73, 6, 1, 1, '99.99', '2025-11-22 19:09:18'),
(183, 73, 7, 1, 1, '199.99', '2025-11-22 19:09:18'),
(184, 73, 8, 1, 1, '129.99', '2025-11-22 19:09:18'),
(185, 73, 9, 1, 1, '249.99', '2025-11-22 19:09:18'),
(186, 73, 10, 1, 1, '99.99', '2025-11-22 19:09:18'),
(187, 73, 11, 1, 1, '205.00', '2025-11-22 19:09:18'),
(188, 73, 21, 1, 1, '220.00', '2025-11-22 19:09:18'),
(189, 73, 22, 1, 1, '125.00', '2025-11-22 19:09:18'),
(190, 73, 23, 1, 1, '199.99', '2025-11-22 19:09:18'),
(191, 73, 24, 1, 1, '750.00', '2025-11-22 19:09:18'),
(192, 73, 25, 1, 1, '399.99', '2025-11-22 19:09:18'),
(193, 73, 26, 1, 1, '100.00', '2025-11-22 19:09:18'),
(194, 73, 27, 1, 1, '260.00', '2025-11-22 19:09:18'),
(195, 73, 28, 1, 1, '120.00', '2025-11-22 19:09:18'),
(196, 73, 29, 1, 1, '250.00', '2025-11-22 19:09:18'),
(197, 73, 30, 1, 1, '62.00', '2025-11-22 19:09:18'),
(198, 73, 31, 1, 1, '70.00', '2025-11-22 19:09:18'),
(199, 73, 32, 1, 1, '119.99', '2025-11-22 19:09:18'),
(200, 73, 33, 1, 1, '80.00', '2025-11-22 19:09:18'),
(201, 73, 34, 1, 1, '229.99', '2025-11-22 19:09:18');

-- --------------------------------------------------------

--
-- Structure de la table `price_history`
--

CREATE TABLE `price_history` (
  `id` int(11) NOT NULL,
  `sneaker_id` int(11) NOT NULL,
  `old_price` decimal(10,2) DEFAULT NULL,
  `new_price` decimal(10,2) DEFAULT NULL,
  `old_discount_price` decimal(10,2) DEFAULT NULL,
  `new_discount_price` decimal(10,2) DEFAULT NULL,
  `change_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `price_history`
--

INSERT INTO `price_history` (`id`, `sneaker_id`, `old_price`, `new_price`, `old_discount_price`, `new_discount_price`, `change_date`) VALUES
(1, 25, '399.99', '399.99', NULL, NULL, '2025-03-28 16:47:42'),
(2, 27, '260.00', '260.00', NULL, NULL, '2025-03-28 16:47:42'),
(3, 25, '399.99', '391.99', NULL, NULL, '2025-03-28 17:17:06'),
(4, 25, '391.99', '399.99', NULL, NULL, '2025-03-28 17:17:12'),
(5, 25, '399.99', '399.99', NULL, '395.00', '2025-03-28 17:19:42'),
(6, 25, '399.99', '399.99', '395.00', NULL, '2025-03-28 17:20:36'),
(7, 24, '765.00', '765.00', NULL, '760.00', '2025-03-29 09:28:22'),
(8, 24, '765.00', '765.00', '760.00', NULL, '2025-03-29 09:54:37'),
(9, 24, '765.00', '765.00', NULL, '760.00', '2025-03-29 09:54:49'),
(10, 24, '765.00', '765.00', '760.00', '759.99', '2025-03-29 10:02:59'),
(11, 25, '399.99', '399.99', NULL, '300.00', '2025-03-29 10:06:52'),
(12, 23, '219.99', '219.99', '199.99', '198.99', '2025-03-29 10:09:22'),
(13, 23, '219.99', '219.99', '198.99', '199.99', '2025-03-29 10:09:30'),
(14, 25, '399.99', '399.99', '300.00', NULL, '2025-03-29 10:14:42'),
(15, 24, '765.00', '765.00', '759.99', '759.99', '2025-03-29 10:15:04'),
(16, 23, '219.99', '219.99', '199.99', '199.99', '2025-03-29 10:16:27'),
(17, 24, '765.00', '765.00', '759.99', '750.00', '2025-03-29 10:16:46'),
(18, 25, '399.99', '399.99', '300.00', '300.00', '2025-03-29 10:29:02'),
(19, 25, '399.99', '399.99', '300.00', '3.00', '2025-03-29 10:29:20'),
(20, 25, '399.99', '399.99', '3.00', NULL, '2025-03-29 10:29:48'),
(21, 25, '399.99', '399.99', NULL, '1.00', '2025-03-29 10:30:21'),
(22, 25, '399.99', '399.99', '1.00', '1.00', '2025-03-29 10:33:05'),
(23, 25, '399.99', '399.99', '1.00', '2.00', '2025-03-29 10:33:11'),
(24, 25, '399.99', '399.99', '2.00', NULL, '2025-03-29 10:33:39'),
(25, 27, '260.00', '260.00', NULL, '200.00', '2025-03-29 10:36:51'),
(26, 27, '260.00', '260.00', '200.00', NULL, '2025-03-29 10:37:35'),
(27, 25, '399.99', '399.99', NULL, '300.00', '2025-03-29 10:37:48'),
(28, 25, '399.99', '399.98', '300.00', NULL, '2025-03-29 10:38:06'),
(29, 25, '399.98', '399.99', NULL, NULL, '2025-03-29 10:38:10'),
(30, 27, '260.00', '260.00', NULL, '200.00', '2025-03-29 10:42:59'),
(31, 27, '260.00', '260.00', '200.00', NULL, '2025-03-29 10:43:05'),
(32, 27, '260.00', '260.00', NULL, '100.00', '2025-03-29 10:44:16'),
(33, 27, '260.00', '260.00', '100.00', NULL, '2025-03-29 10:44:22'),
(34, 27, '260.00', '260.00', NULL, '0.02', '2025-03-29 10:45:28'),
(35, 27, '260.00', '260.00', '0.02', '260.00', '2025-03-29 12:26:58'),
(36, 27, '260.00', '260.00', '260.00', NULL, '2025-03-29 12:27:51'),
(37, 27, '260.00', '260.00', NULL, NULL, '2025-03-29 12:44:40'),
(38, 27, '260.00', '260.00', NULL, '200.00', '2025-03-29 13:39:08'),
(39, 27, '260.00', '260.00', '200.00', NULL, '2025-03-29 13:39:18'),
(40, 27, '260.00', '260.00', '200.00', '200.00', '2025-03-29 13:58:51'),
(41, 27, '260.00', '260.00', '200.00', NULL, '2025-03-29 14:03:21'),
(42, 29, '299.99', '299.99', '250.00', '250.00', '2025-03-29 15:10:56'),
(43, 30, '155.00', '155.00', NULL, '62.00', '2025-03-30 13:35:29'),
(44, 31, '140.00', '140.00', NULL, '70.00', '2025-03-30 13:51:26'),
(45, 33, '100.00', '100.00', NULL, '80.00', '2025-03-30 16:17:30'),
(46, 32, '119.99', '119.99', NULL, '100.00', '2025-03-31 07:35:57'),
(47, 32, '119.99', '119.99', '100.00', NULL, '2025-03-31 07:36:46'),
(48, 33, '100.00', '100.00', '80.00', '1.00', '2025-03-31 08:03:54'),
(49, 33, '100.00', '100.00', '1.00', '80.00', '2025-03-31 08:04:00'),
(50, 32, '119.99', '119.99', NULL, '1.00', '2025-03-31 08:04:07'),
(51, 32, '119.99', '119.99', '1.00', NULL, '2025-03-31 08:04:14'),
(52, 33, '100.00', '100.00', '80.00', '1.00', '2025-03-31 08:43:07'),
(53, 33, '100.00', '100.00', '1.00', '80.00', '2025-03-31 08:43:13'),
(54, 32, '119.99', '119.99', NULL, '1.00', '2025-03-31 08:43:18'),
(55, 32, '119.99', '119.99', '1.00', NULL, '2025-03-31 08:43:23'),
(56, 34, '295.00', '295.00', NULL, '250.00', '2025-04-03 18:41:05'),
(57, 34, '295.00', '295.00', '250.00', '230.00', '2025-04-03 19:56:14'),
(58, 34, '295.00', '295.00', '230.00', '229.99', '2025-11-19 05:38:42');

-- --------------------------------------------------------

--
-- Structure de la table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reported_user_id` int(11) NOT NULL,
  `type` enum('secondhand','review') NOT NULL,
  `item_id` int(11) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `etat_signalement` enum('en attente','r├®solu','rejet├®') DEFAULT 'en attente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reports`
--

INSERT INTO `reports` (`report_id`, `user_id`, `reported_user_id`, `type`, `item_id`, `reason`, `created_at`, `etat_signalement`) VALUES
(1, 5, 2, 'secondhand', 2, 'Produit faux', '2025-03-25 09:41:11', 'r├®solu'),
(2, 5, 2, 'secondhand', 2, 'test', '2025-03-28 18:41:47', 'r├®solu'),
(3, 2, 14, 'secondhand', 6, 'Propos disgracieux.', '2025-03-31 08:18:42', 'rejet├®'),
(4, 2, 14, 'secondhand', 6, 'Propos disgracieux.', '2025-03-31 08:19:26', 'r├®solu');

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `sneaker_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review_text` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ;

--
-- Déchargement des données de la table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `sneaker_id`, `rating`, `review_text`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 4, 'Magnifique !', '2025-03-19 22:41:20', '2025-03-21 22:00:40'),
(2, 5, 21, 4, 'Nice', '2025-03-23 01:29:54', '2025-03-23 01:30:59'),
(3, 14, 25, 3, 'La paire est aussi bien que le cours analyse financi├¿re. Je vois la vie en rooooooose !', '2025-03-31 08:26:15', '2025-03-31 08:28:42');

-- --------------------------------------------------------

--
-- Structure de la table `secondhand_products`
--

CREATE TABLE `secondhand_products` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `etat` enum('neuf','tr├¿s bon','bon','moyen','usag├®') NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `size` varchar(10) NOT NULL DEFAULT '',
  `images` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `statut` enum('actif','vendu','supprim├®','en attente') DEFAULT 'actif',
  `views` int(11) DEFAULT 0,
  `location` varchar(100) DEFAULT NULL,
  `shipping_method` varchar(50) DEFAULT NULL
) ;

--
-- Déchargement des données de la table `secondhand_products`
--

INSERT INTO `secondhand_products` (`id`, `user_id`, `title`, `description`, `price`, `etat`, `category_id`, `brand_id`, `size`, `images`, `created_at`, `updated_at`, `statut`, `views`, `location`, `shipping_method`) VALUES
(1, 2, 'Air Jordan 4 Vivid Sulfur', 'Mod├¿le embl├®matique Air Jordan, la AJ4  se r├®invente dans un duo de couleurs saisissant, promettant de marquer les esprits en 2024 !', '150.00', 'tr├¿s bon', 5, 1, '43', 'uploads/secondhand/67e1b625ee65c_air-jordan-4-vivid-sulfur3.png', '2025-03-24 19:44:38', '2025-03-25 02:09:48', 'supprim├®', 0, NULL, 'Remise en main propre'),
(2, 2, 'Air Jordan 4 Vivid Sulfur', 'Mod├¿le embl├®matique Air Jordan, la AJ4 se r├®invente dans un duo de couleurs saisissant, promettant de marquer les esprits en 2024 !', '120.00', 'tr├¿s bon', 3, 1, '44', 'uploads/secondhand/67e2114848155_air-jordan-4-vivid-sulfur3.png', '2025-03-25 02:13:28', '2025-04-09 07:27:26', 'actif', 45, NULL, 'Remise en main propre'),
(3, 5, 'Nike Shox TL Black Max', 'D├®voil├® aux c├┤t├®s de la version White, la Nike Shox TL, sortie initialement en 2003, revient 20 ans plus tard !', '90.00', 'moyen', 3, 1, '41', 'uploads/secondhand/67e25ff447acf_nike-shox-tl-black-max-orange-w4.png', '2025-03-25 07:49:08', '2025-04-30 17:55:44', 'actif', 60, NULL, NULL),
(4, 5, 'Adidas Campus 00s Dark Green Cloud White', 'Apr├¿s la Samba et la Gazelle, Adidas met en avant une nouvelle silhouette inspir├®e du skate et des ann├®es 2000.', '80.00', 'neuf', 3, 2, '39', 'uploads/secondhand/67e4050e45b23_adidas-campus-00s-dark-green-cloud-white-1.png', '2025-03-25 07:53:26', '2025-04-09 07:27:18', 'actif', 17, 'Dourdan', '/'),
(5, 2, 'Le T-Shirt sale de Daniel', 'il pue trop la vie j&amp;#039;en veux plus', '2.00', 'usag├®', 3, 6, 'M', 'uploads/secondhand/67e3f73f8fbd8_1718997583-asap-rocky-awge-fashion-show-1.png', '2025-03-26 12:46:04', '2025-03-26 12:59:20', 'supprim├®', 0, 'Georgie', 'remise en main propre'),
(6, 14, 'New Balance 2002R', 'Ma paire signature, je la met tout les jours.', '80.00', 'usag├®', 5, 4, '44', 'uploads/secondhand/67ea4e6c3ce0f_jd_750852_a-removebg-preview.png', '2025-03-31 08:11:21', '2025-11-19 10:31:55', 'actif', 18, 'Andresy', 'comme tu veux'),
(7, 14, 'Vans Knu Skool Homme', 'Porter quelque fois, possibilit├® de n├®gocier le prix', '85.00', 'tr├¿s bon', 4, 6, '43', 'uploads/secondhand/67ea9605ad8e8_jd_638397_a-removebg-preview.png', '2025-03-31 13:17:24', '2025-03-31 14:04:22', 'supprim├®', 0, 'Andresy', 'au choix'),
(8, 14, 'Vans Knu Skool', 'Port├® quelque fois mais en tr├¿s bonne ├®tat.', '85.00', 'tr├¿s bon', 4, 6, '42', 'uploads/secondhand/67eaa14ec599b_jd_638397_a-removebg-preview.png', '2025-03-31 14:06:06', '2025-04-09 07:27:10', 'actif', 4, 'Andresy', 'au choix'),
(9, 14, 'Vans Knu Skool', 'Port├® quelque fois mais en tr├¿s bonne ├®tat.', '85.00', 'tr├¿s bon', 4, 6, '42', NULL, '2025-03-31 14:09:06', '2025-03-31 14:13:44', 'supprim├®', 0, 'Andresy', 'au choix'),
(10, 14, 'Vans Knu Skool', 'Port├® quelque fois mais en tr├¿s bonne ├®tat.', '85.00', 'tr├¿s bon', 4, 6, '42', NULL, '2025-03-31 14:13:05', '2025-03-31 14:13:41', 'supprim├®', 0, 'Andresy', 'au choix'),
(11, 2, 'Nike P-6000 Metallic Silver', 'Nike pr├®sente une nouvelle d├®clinaison de sa silhouette running P-6000 ├á l\'esth├®tique inspir├®e des ann├®es 2000.', '145.00', 'neuf', 3, 1, '43', 'uploads/secondhand/67eed5032a9fb_nike-p-6000-metallic-silver-4.png', '2025-04-03 18:35:47', '2025-04-29 21:06:56', 'actif', 29, 'Paris', 'Remise en main propre'),
(12, 5, 'Adidas Yeezy Foam RNNR Onyx', 'Pr├®sent├®e lors du concert ├®v├®nement de Kanye West pour la sortie de son album DONDA 2, cette nouvelle Foam RNNR aux coloris Onyx se d├®voile enfin au grand public !', '120.00', 'tr├¿s bon', 3, 2, '40', 'uploads/secondhand/67eed74710c28_Adidas-Foam-RNNR-Onyx-1.png', '2025-04-03 18:45:27', '2025-04-27 21:01:35', 'actif', 10, 'Paris', 'Colissimo');

-- --------------------------------------------------------

--
-- Structure de la table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text NOT NULL,
  `setting_description` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `settings`
--

INSERT INTO `settings` (`setting_id`, `setting_key`, `setting_value`, `setting_description`, `updated_at`) VALUES
(1, 'site_name', 'Bander-Sneakers', 'Nom du site affich├® dans l\'interface', '2025-03-24 08:05:54'),
(2, 'contact_email', 'bander.sneakers@gmail.com', 'Email de contact pour les notifications', '2025-04-03 13:10:48'),
(3, 'items_per_page', '10', 'Nombre d\'├®l├®ments par page dans les listes admin', '2025-03-21 22:01:34'),
(4, 'currency', 'Ôé¼', 'Symbole de la devise utilis├®e', '2025-03-21 22:01:34');

-- --------------------------------------------------------

--
-- Structure de la table `sizes`
--

CREATE TABLE `sizes` (
  `size_id` int(11) NOT NULL,
  `size_value` varchar(10) NOT NULL,
  `size_type` enum('EU','US','UK','CM') DEFAULT 'EU',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sizes`
--

INSERT INTO `sizes` (`size_id`, `size_value`, `size_type`, `created_at`) VALUES
(1, '38', 'EU', '2025-03-19 19:41:21'),
(2, '39', 'EU', '2025-03-19 19:41:21'),
(3, '40', 'EU', '2025-03-19 19:41:21'),
(4, '41', 'EU', '2025-03-19 19:41:21'),
(5, '42', 'EU', '2025-03-19 19:41:21'),
(6, '43', 'EU', '2025-03-19 19:41:21'),
(7, '44', 'EU', '2025-03-19 19:41:21'),
(8, '45', 'EU', '2025-03-19 19:41:21'),
(9, '6', 'US', '2025-03-19 19:41:21'),
(10, '7', 'US', '2025-03-19 19:41:21'),
(11, '8', 'US', '2025-03-19 19:41:21'),
(12, '9', 'US', '2025-03-19 19:41:21'),
(13, '10', 'US', '2025-03-19 19:41:21'),
(14, '11', 'US', '2025-03-19 19:41:21'),
(15, '12', 'US', '2025-03-19 19:41:21'),
(16, '5', 'UK', '2025-03-19 19:41:21'),
(17, '6', 'UK', '2025-03-19 19:41:21'),
(18, '7', 'UK', '2025-03-19 19:41:21'),
(19, '8', 'UK', '2025-03-19 19:41:21'),
(20, '9', 'UK', '2025-03-19 19:41:21'),
(21, '10', 'UK', '2025-03-19 19:41:21'),
(22, '11', 'UK', '2025-03-19 19:41:21');

-- --------------------------------------------------------

--
-- Structure de la table `sneakers`
--

CREATE TABLE `sneakers` (
  `sneaker_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sneaker_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount_price` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) DEFAULT 0,
  `release_date` date DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_new_arrival` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `gender` enum('homme','femme','enfant','unisex') NOT NULL DEFAULT 'unisex',
  `primary_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sneakers`
--

INSERT INTO `sneakers` (`sneaker_id`, `brand_id`, `category_id`, `sneaker_name`, `description`, `price`, `discount_price`, `stock_quantity`, `release_date`, `is_featured`, `is_new_arrival`, `created_at`, `updated_at`, `gender`, `primary_image`) VALUES
(1, 1, 3, 'Nike Air Force 1', 'La Nike Air Force 1 est une chaussure de basketball embl├®matique lanc├®e en 1982. Son design intemporel et sa polyvalence en ont fait un classique du streetwear.', '129.99', '79.99', 150, '2023-01-15', 1, 0, '2025-03-19 19:41:21', '2025-03-24 15:31:51', 'unisex', '67de85e0d2121_nike_air_force_1_1.jpg'),
(2, 1, 1, 'Nike Air Max 97', 'Inspir├®e par les trains ├á grande vitesse japonais, la Nike Air Max 97 est reconnaissable ├á sa silhouette futuriste et sa semelle Air-Sole.', '179.99', '159.99', 75, '2023-03-20', 1, 0, '2025-03-19 19:41:21', '2025-03-22 09:40:12', 'unisex', '67de857ccdf53_air-max-97-undftd-black-militia-green-355728.webp'),
(3, 2, 3, 'Adidas Superstar', 'Lanc├®e dans les ann├®es 1970, la Adidas Superstar est reconnaissable ├á son bout coquille. C\'est une ic├┤ne streetwear.', '99.99', NULL, 200, '2023-02-10', 1, 0, '2025-03-19 19:41:21', '2025-04-09 07:34:06', 'unisex', '67de84d63fee5_adidas-superstar-cloud-white-core-black1-copie.webp'),
(4, 2, 1, 'Adidas Ultraboost', 'La Adidas Ultraboost offre un confort et un retour d\'├®nergie exceptionnels gr├óce ├á sa technologie Boost.', '189.99', '169.99', 100, '2023-04-05', 0, 1, '2025-03-19 19:41:21', '2025-04-09 07:33:34', 'unisex', '67de845ae09d3_ultra-boost-bape-green-camo-864580.webp'),
(5, 3, 3, 'Puma Suede Classic', 'La Puma Suede est une chaussure de lifestyle classique en daim qui a marqu├® l\'histoire de la sneaker.', '89.99', NULL, 120, '2023-01-30', 0, 0, '2025-03-19 19:41:21', '2025-04-09 07:33:03', 'unisex', '67de83d7ea091_Sneakers-Suede-Classic (1).avif'),
(6, 4, 1, 'New Balance 574', 'La New Balance 574 est une chaussure de running devenue un classique du streetwear.', '109.99', '99.99', 80, '2023-03-10', 0, 1, '2025-03-19 19:41:21', '2025-03-22 09:31:18', 'unisex', '67de836654f84_new-balance-574-grey-white-20224.webp'),
(7, 5, 2, 'Air Jordan 1', 'La Air Jordan 1 est la premi├¿re chaussure signature de Michael Jordan, lanc├®e en 1985.', '199.99', NULL, 50, '2023-05-01', 1, 1, '2025-03-19 19:41:21', '2025-03-22 09:26:06', 'unisex', '67de18c787981_air-jordan-1-mid-grey-sail-1.webp'),
(8, 1, 4, 'Nike SB Dunk', 'La Nike SB Dunk est une adaptation de la Dunk Basketball pour le skateboard.', '129.99', NULL, 65, '2023-03-25', 0, 1, '2025-03-19 19:41:21', '2025-03-23 09:25:58', 'unisex', '67de17d0086c9_NIKE+SB+DUNK+LOW+PRO.png'),
(9, 2, 5, 'Adidas Yeezy', 'Con├ºue en collaboration avec Kanye West, la Adidas Yeezy est une sneaker tr├¿s recherch├®e.', '249.99', NULL, 30, '2023-04-15', 0, 0, '2025-03-19 19:41:21', '2025-03-23 00:31:52', 'unisex', 'adidas_yeezy_1.jpg'),
(10, 3, 3, 'Puma RS-X', 'La Puma RS-X est une chaussure au design chunky inspir├® des ann├®es 80.', '129.99', '99.99', 90, '2023-02-20', 0, 1, '2025-03-19 19:41:21', '2025-03-23 14:05:09', 'enfant', '67de13c87b06e_puma_rs_x_1.jpg.avif'),
(11, 2, 3, 'Adidas Samba OG Preloved Red Leopard', 'Adidas continue de surfer sur la tendance Leopard avec une nouvelle version de sa Adidas Samba mythique qui risque de faire des envieux !', '205.00', NULL, 50, '2025-02-01', 0, 1, '2025-03-22 00:48:56', '2025-03-22 01:23:03', 'femme', NULL),
(21, 6, 5, 'Timberland 6 Premium Waterproof Boot Black Nubuck', 'Fond├®e ├á Boston en 1952, Timberland nous offre une r├®interpr├®tation de sa fameuse botte sortie dans les ann├®es 70\'s.', '220.00', NULL, 80, NULL, 1, 1, '2025-03-23 01:17:20', '2025-04-09 07:30:43', 'unisex', '67df612059604_Timberland-6_-Boot-Black-Nubuck-Premium-3.webp'),
(22, 6, 3, 'Crocs Salehe Bembury Crocs Pollex Clog Sasquatch', 'Le c├®l├¿bre designer de New York s\'associe une nouvelle fois avec Crocs sur un coloris sombre de sa silhouette futuriste ! D├®voil├® ├á l\'occasion de la Paris Fashion Week, cette ├®dition sp├®ciale f├╗t exclusivement disponible lors d\'un pop-up dans la capitale fran├ºaise.', '125.00', NULL, 110, '2022-06-23', 0, 1, '2025-03-23 01:44:51', '2025-04-09 07:32:11', 'unisex', '67df6793adbe0_salehe-bembury-crocs-pollex-clog-sasquatch-2_137c627d-3b95-4bdd-b037-8b10c06a19a9.webp'),
(23, 6, 1, 'ASICS UB3-S Gel Nimbus 9 Rum Raisin Green Sheen', '├Ç travers une d├®clinaison aux notes color├®es imagin├®e par le studio de Kiko Kostadinov, Asics pr├®sente sa nouvelle version de la Gel-Nimbus 9.', '219.99', '199.99', 200, '2025-02-27', 1, 1, '2025-03-23 13:34:39', '2025-03-31 08:24:04', 'unisex', '67e01006d9c51_Asics-UB3-S-Gel-Nimbus-9-Rum-Raisin-Green-Sheen-1.webp'),
(24, 6, 1, 'Salomon XT-Wings 2 JJJJound Cream Blue', '├Ç travers son label JJJJound, Justin Saunders collabore pour la premi├¿re fois avec Salomon et revisite la XT-Wings 2.', '765.00', '750.00', 40, NULL, 0, 0, '2025-03-23 14:09:22', '2025-03-29 10:16:46', 'unisex', '67e01612879cf_salomon-xt-wings-2-jjjjound-cream-blue-2.webp'),
(25, 1, 5, 'Nike Air Humara LX Jacquemus Pink', 'Pour sa premi├¿re collaboration avec Nike, Simon Porte Jacquemus a pris la d├®cision de retravailler son mod├¿le pr├®f├®r├® de la marque en s\'inspirant de la gamme ACG des ann├®es 90.', '399.99', NULL, 90, '2022-12-01', 1, 1, '2025-03-23 21:34:47', '2025-04-09 07:23:19', 'unisex', '67e07e77e7cbc_nike-air-humara-lx-jacquemus-pink-wethenew-1.webp'),
(26, 3, 3, 'Puma Speedcat OG Rouge', 'Un classique de PUMA inspir├® par la vitesse des circuits : la Speedcat OG. Elle se distingue par sa silhouette inspir├®e des chaussures de course et ses lignes ├®pur├®es qui ├®voquent la vitesse et lÔÇÖaudace. Ram├¿ne le sport automobile dans la rue et adopte la coupe basse avec cette nouvelle version de la silhouette embl├®matique.', '110.00', '100.00', 120, NULL, 0, 1, '2025-03-23 21:39:50', '2025-03-29 15:07:23', 'unisex', '67e07fa61ccf9_Sneakers-Speedcat-OG.avif'),
(27, 1, 5, 'Nike Hot Step 2 NOCTA Total Orange', 'Pr├®sent├®e pour la premi├¿re fois aux pieds de Drake lors de son \"It\'s All a Blur Tour\", la NOCTA x Nike Hot Step 2 ┬½ Total Orange ┬╗ offre la suite de la Hot Step originale de 2021.', '260.00', NULL, 60, '2021-12-24', 0, 1, '2025-03-24 08:09:00', '2025-04-09 07:29:58', 'unisex', '67e113fd65aba_nike-hot-step-2-nocta-total-orange_23359161_49003737_2048.webp'),
(28, 3, 5, 'Puma Inhale x A$AP Terrel', 'Voici la PUMA Inhale sign├®e A$AP Rocky. Ce classique moderne du streetwear est revisit├® avec une tige en mesh, des flammes d├®coup├®es ├á chaud autour de la bande Formstrip et une semelle avec un effet translucide d├®grad├®. Des d├®tails r├®fl├®chissants, un logo FLACKO sur la languette et une semelle int├®rieure personnalis├®e imprim├®e compl├¿tent cette ic├┤ne des circuits et du quotidien.', '120.00', NULL, 75, NULL, 0, 1, '2025-03-29 15:05:43', '2025-03-31 08:04:43', 'unisex', '67e80c471eb05_Sneakers-en-mesh-Inhale-A$AP-ROCKY-x-PUMA.avif'),
(29, 4, 3, 'New Balance 2002R Protection Pack Rain Cloud', 'La New Balance 2002R Protection Pack Rain Cloud poss├¿de une empeigne en mesh gris orn├®e de renforts en daim ton sur ton ├á bords bruts. Le logo New Balance r├®fl├®chit la lumi├¿re. La semelle interm├®diaire Nrgy couleur cr├¿me et la semelle grise viennent parachever ce mod├¿le.', '299.99', '250.00', 50, NULL, 0, 1, '2025-03-29 15:10:03', '2025-04-03 18:45:55', 'unisex', '67e80d4b195c7_new-balance-2002r-protection-pack-grey_17274335_43053093_2048.webp'),
(30, 4, 3, 'New Balance 550 Triple White Enfant (PS)', 'Silhouette vintage rendue c├®l├¿bre entre les ann├®es 80 et 90, la 550 de New Balance est de retour dans un coloris tr├¿s ├®pur├®, sp├®cialement pour les petits pieds !', '155.00', '62.00', 80, NULL, 0, 0, '2025-03-30 13:35:12', '2025-03-30 13:35:29', 'enfant', '67e948903d573_NewBalance550TripleWhiteGS.webp'),
(31, 1, 3, 'Nike Dunk Low Triple Pink Enfant (PS)', 'Nike continue de mettre en avant sa Dunk Low, cette fois ci dans une version color├®e pour enfant.', '140.00', '70.00', 80, NULL, 0, 0, '2025-03-30 13:51:20', '2025-03-30 13:51:26', 'enfant', '67e94c58bafeb_nike-dunk-low-triple-pink-ps-1.webp'),
(32, 5, 3, 'Air Jordan 1 Retro High OG Yellow Toe Enfant (PS)', 'Nike a d├®voil├® un nouveau coloris aux inspirations estivales de la mythique Air Jordan 1 High, ici en version pour enfant.', '119.99', NULL, 80, NULL, 0, 0, '2025-03-30 13:55:45', '2025-03-31 08:43:23', 'enfant', '67e94d618581d_Air-Jordan-1-Retro-High-OG-Taxi-Enfant-_PS_-1_1.webp'),
(33, 2, 3, 'Adidas Campus 00s Core Black (Enfant)', 'Apr├¿s la Samba et Gazelle la, Adidas  met en avant une nouvelle silhouette inspir├®e du skate et des ann├®es 2000.', '100.00', '80.00', 80, NULL, 0, 0, '2025-03-30 16:17:25', '2025-03-31 08:43:13', 'enfant', '67e96e95c3880_adidas-campus-00s-black-white-gum-enfant1.webp'),
(34, 1, 5, 'Nike NOCTA Hot Step Air Terra Black University Gold', 'Drake et son label NOCTA reviennent avec une nouvelle it├®ration sombre du mod├¿le hybride sign├® Nike.', '295.00', '229.99', 70, NULL, 1, 1, '2025-04-03 18:40:51', '2025-11-19 05:38:42', 'unisex', '67eed6338c382_nike-nocta-hot-step-air-terra-black-university-gold.png');

-- --------------------------------------------------------

--
-- Structure de la table `sneaker_images`
--

CREATE TABLE `sneaker_images` (
  `image_id` int(11) NOT NULL,
  `sneaker_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `is_primary` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sneaker_images`
--

INSERT INTO `sneaker_images` (`image_id`, `sneaker_id`, `image_url`, `is_primary`, `created_at`) VALUES
(14, 9, 'adidas_yeezy_1.jpg', 1, '2025-03-19 19:41:21'),
(17, 10, '67de00083dd78_Sneakers-RS-X-Efekt-PRM (1).avif', 0, '2025-03-22 00:10:48'),
(22, 9, '67de047b5680f_adidas-yeezy-boost-350-v2-onyx-2.webp', 0, '2025-03-22 00:29:47'),
(23, 9, '67de0536db01f_adidas-yeezy-boost-350-v2-onyx-3.webp', 0, '2025-03-22 00:32:54'),
(24, 9, '67de057a84483_adidas-yeezy-boost-350-v2-onyx-4.webp', 0, '2025-03-22 00:34:02'),
(27, 11, '67de08f83ee01_Adidas-Samba-Preloved-Red-Leopard-1.webp', 1, '2025-03-22 00:48:56'),
(28, 11, '67de099334a2e_Adidas-Samba-Preloved-Red-Leopard-2.webp', 0, '2025-03-22 00:51:31'),
(29, 10, '67de13c87b06e_puma_rs_x_1.jpg.avif', 1, '2025-03-22 01:35:04'),
(36, 8, '67de17d0086c9_NIKE+SB+DUNK+LOW+PRO.png', 1, '2025-03-22 01:52:16'),
(38, 7, '67de18c787981_air-jordan-1-mid-grey-sail-1.webp', 1, '2025-03-22 01:56:23'),
(40, 7, '67de82bb96174_air-jordan-1-mid-grey-sail-2.webp', 0, '2025-03-22 09:28:27'),
(41, 6, '67de836654f84_new-balance-574-grey-white-20224.webp', 1, '2025-03-22 09:31:18'),
(42, 6, '67de83665658c_new-balance-574-grey-white-20223.webp', 0, '2025-03-22 09:31:18'),
(43, 5, '67de83d7ea091_Sneakers-Suede-Classic (1).avif', 1, '2025-03-22 09:33:11'),
(44, 5, '67de83d7eb433_Sneakers-Suede-Classic (2).avif', 0, '2025-03-22 09:33:11'),
(45, 4, '67de845ae09d3_ultra-boost-bape-green-camo-864580.webp', 1, '2025-03-22 09:35:22'),
(46, 4, '67de845ae2987_ultra-boost-bape-green-camo-426217.webp', 0, '2025-03-22 09:35:22'),
(47, 3, '67de84d63fee5_adidas-superstar-cloud-white-core-black1-copie.webp', 1, '2025-03-22 09:37:26'),
(48, 3, '67de84d641d20_adidas-superstar-cloud-white-core-black3.webp', 0, '2025-03-22 09:37:26'),
(49, 2, '67de857ccdf53_air-max-97-undftd-black-militia-green-355728.webp', 1, '2025-03-22 09:40:12'),
(50, 2, '67de857ccf8cf_air-max-97-undftd-black-militia-green-138783.webp', 0, '2025-03-22 09:40:12'),
(51, 1, '67de85e0d2121_nike_air_force_1_1.jpg', 1, '2025-03-22 09:41:52'),
(52, 1, '67de85e0d413b_air-force-1-low-07-triple-white-220238.webp', 0, '2025-03-22 09:41:52'),
(68, 21, '67df612059604_Timberland-6_-Boot-Black-Nubuck-Premium-3.webp', 1, '2025-03-23 01:17:20'),
(69, 21, '67df61c44c6a4_Timberland-6_-Boot-Black-Nubuck-Premium_eb131f0d-fe20-4bf5-811f-84c2f7ac60a4.webp', 0, '2025-03-23 01:20:04'),
(70, 22, '67df6793adbe0_salehe-bembury-crocs-pollex-clog-sasquatch-2_137c627d-3b95-4bdd-b037-8b10c06a19a9.webp', 1, '2025-03-23 01:44:51'),
(71, 22, '67df682fa2469_salehe-bembury-crocs-pollex-clog-sasquatch-4.webp', 0, '2025-03-23 01:47:27'),
(72, 8, '67dfd3a659491_NIKE+SB+DUNK+LOW+PRO (1).png', 0, '2025-03-23 09:25:58'),
(76, 23, '67e01006d9c51_Asics-UB3-S-Gel-Nimbus-9-Rum-Raisin-Green-Sheen-1.webp', 1, '2025-03-23 13:43:34'),
(77, 23, '67e01006da83e_Asics-UB3-S-Gel-Nimbus-9-Rum-Raisin-Green-Sheen-2.webp', 0, '2025-03-23 13:43:34'),
(78, 24, '67e01612879cf_salomon-xt-wings-2-jjjjound-cream-blue-2.webp', 1, '2025-03-23 14:09:22'),
(79, 24, '67e0167df06c8_salomon-xt-wings-2-jjjjound-cream-blue-3.webp', 0, '2025-03-23 14:11:09'),
(80, 25, '67e07e77e7cbc_nike-air-humara-lx-jacquemus-pink-wethenew-1.webp', 1, '2025-03-23 21:34:47'),
(81, 25, '67e07ee4b2d36_nike-air-humara-lx-jacquemus-pink-wethenew-2.webp', 0, '2025-03-23 21:36:36'),
(82, 26, '67e07fa61ccf9_Sneakers-Speedcat-OG.avif', 1, '2025-03-23 21:39:50'),
(83, 26, '67e0800f1f2b2_Sneakers-Speedcat-OG (1).avif', 0, '2025-03-23 21:41:35'),
(86, 27, '67e113fd65aba_nike-hot-step-2-nocta-total-orange_23359161_49003737_2048.webp', 1, '2025-03-24 08:12:45'),
(87, 27, '67e113fd674a2_nike-hot-step-2-nocta-total-orange_23359161_49004425_2048.webp', 0, '2025-03-24 08:12:45'),
(88, 28, '67e80c471eb05_Sneakers-en-mesh-Inhale-A$AP-ROCKY-x-PUMA.avif', 1, '2025-03-29 15:05:43'),
(89, 28, '67e80c6e68605_Sneakers-en-mesh-Inhale-A$AP-ROCKY-x-PUMA (1).avif', 0, '2025-03-29 15:06:22'),
(90, 29, '67e80d4b195c7_new-balance-2002r-protection-pack-grey_17274335_43053093_2048.webp', 1, '2025-03-29 15:10:03'),
(91, 29, '67e80d80bb771_baskets-2002r-protection-pack-rain-cloud-pour-homme-et-femme-disponible-sur-kikikickz-846020_800x_cab6f1d8-4f0d-495c-b3f9-470a4a5df526.jpg', 0, '2025-03-29 15:10:56'),
(92, 30, '67e948903d573_NewBalance550TripleWhiteGS.webp', 1, '2025-03-30 13:35:12'),
(93, 31, '67e94c58bafeb_nike-dunk-low-triple-pink-ps-1.webp', 1, '2025-03-30 13:51:20'),
(94, 31, '67e94c58be5d2_nike-dunk-low-triple-pink-ps-2.webp', 0, '2025-03-30 13:51:20'),
(95, 32, '67e94d618581d_Air-Jordan-1-Retro-High-OG-Taxi-Enfant-_PS_-1_1.webp', 1, '2025-03-30 13:55:45'),
(96, 32, '67e94d6188fd7_Air-Jordan-1-Retro-High-OG-Taxi-Enfant-_PS_-2_1.webp', 0, '2025-03-30 13:55:45'),
(97, 33, '67e96e95c3880_adidas-campus-00s-black-white-gum-enfant1.webp', 1, '2025-03-30 16:17:25'),
(98, 33, '67e96e95c6352_adidas-campus-00s-black-white-gum-3.webp', 0, '2025-03-30 16:17:25'),
(99, 34, '67eed6338c382_nike-nocta-hot-step-air-terra-black-university-gold.png', 1, '2025-04-03 18:40:51'),
(100, 34, '67eed633912ae_nike-nocta-hot-step-air-terra-black-university-gold2.png', 0, '2025-04-03 18:40:51');

-- --------------------------------------------------------

--
-- Structure de la table `sneaker_sizes`
--

CREATE TABLE `sneaker_sizes` (
  `sneaker_size_id` int(11) NOT NULL,
  `sneaker_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `stock_quantity` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sneaker_sizes`
--

INSERT INTO `sneaker_sizes` (`sneaker_size_id`, `sneaker_id`, `size_id`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(194, 11, 1, 48, '2025-03-22 01:28:40', '2025-03-31 07:45:11'),
(195, 11, 2, 50, '2025-03-22 01:28:40', '2025-03-22 01:28:40'),
(196, 11, 3, 49, '2025-03-22 01:28:40', '2025-04-04 11:29:05'),
(197, 11, 4, 50, '2025-03-22 01:28:40', '2025-03-22 01:28:40'),
(198, 11, 5, 49, '2025-03-22 01:28:40', '2025-03-22 23:08:22'),
(199, 11, 6, 50, '2025-03-22 01:28:40', '2025-03-22 01:28:40'),
(200, 11, 7, 49, '2025-03-22 01:28:40', '2025-03-22 22:11:43'),
(201, 11, 8, 50, '2025-03-22 01:28:40', '2025-03-22 01:28:40'),
(311, 7, 3, 50, '2025-03-22 09:28:27', '2025-03-22 09:28:27'),
(312, 7, 4, 49, '2025-03-22 09:28:27', '2025-03-22 18:21:18'),
(313, 7, 5, 50, '2025-03-22 09:28:27', '2025-03-22 09:28:27'),
(314, 7, 6, 50, '2025-03-22 09:28:27', '2025-03-22 09:28:27'),
(315, 7, 7, 50, '2025-03-22 09:28:27', '2025-03-22 09:28:27'),
(316, 6, 3, 80, '2025-03-22 09:31:18', '2025-03-22 09:31:18'),
(317, 6, 4, 80, '2025-03-22 09:31:18', '2025-03-22 09:31:18'),
(318, 6, 5, 79, '2025-03-22 09:31:18', '2025-03-23 11:54:47'),
(319, 6, 6, 80, '2025-03-22 09:31:18', '2025-03-22 09:31:18'),
(320, 6, 7, 80, '2025-03-22 09:31:18', '2025-03-22 09:31:18'),
(344, 2, 3, 74, '2025-03-22 09:40:12', '2025-03-22 19:45:25'),
(345, 2, 4, 74, '2025-03-22 09:40:12', '2025-03-22 18:11:57'),
(346, 2, 5, 75, '2025-03-22 09:40:12', '2025-03-22 09:40:12'),
(347, 2, 6, 75, '2025-03-22 09:40:12', '2025-03-22 09:40:12'),
(348, 2, 7, 75, '2025-03-22 09:40:12', '2025-03-22 09:40:12'),
(354, 9, 3, 30, '2025-03-23 00:31:52', '2025-03-23 00:31:52'),
(355, 9, 4, 30, '2025-03-23 00:31:52', '2025-03-23 00:31:52'),
(356, 9, 5, 30, '2025-03-23 00:31:52', '2025-03-23 00:31:52'),
(357, 9, 6, 30, '2025-03-23 00:31:52', '2025-03-23 00:31:52'),
(358, 9, 7, 30, '2025-03-23 00:31:52', '2025-03-23 00:31:52'),
(449, 8, 3, 65, '2025-03-23 09:25:58', '2025-03-23 09:25:58'),
(450, 8, 4, 65, '2025-03-23 09:25:58', '2025-03-23 09:25:58'),
(451, 8, 5, 65, '2025-03-23 09:25:58', '2025-03-23 09:25:58'),
(452, 8, 6, 65, '2025-03-23 09:25:58', '2025-03-23 09:25:58'),
(453, 8, 7, 65, '2025-03-23 09:25:58', '2025-03-23 09:25:58'),
(502, 10, 1, 90, '2025-03-23 14:05:09', '2025-03-23 14:05:09'),
(503, 10, 2, 90, '2025-03-23 14:05:09', '2025-03-23 14:05:09'),
(504, 10, 3, 89, '2025-03-23 14:05:09', '2025-03-26 12:59:53'),
(505, 10, 4, 90, '2025-03-23 14:05:09', '2025-03-23 14:05:09'),
(506, 10, 5, 90, '2025-03-23 14:05:09', '2025-03-23 14:05:09'),
(507, 10, 6, 90, '2025-03-23 14:05:09', '2025-03-23 14:05:09'),
(508, 10, 7, 90, '2025-03-23 14:05:09', '2025-03-23 14:05:09'),
(509, 10, 8, 90, '2025-03-23 14:05:09', '2025-03-23 14:05:09'),
(515, 24, 2, 40, '2025-03-23 14:11:09', '2025-03-23 14:11:09'),
(516, 24, 3, 38, '2025-03-23 14:11:09', '2025-04-04 11:24:57'),
(517, 24, 4, 40, '2025-03-23 14:11:09', '2025-03-23 14:11:09'),
(518, 24, 5, 39, '2025-03-23 14:11:09', '2025-03-27 11:42:58'),
(519, 24, 6, 40, '2025-03-23 14:11:09', '2025-03-23 14:11:09'),
(593, 1, 3, 150, '2025-03-24 15:31:51', '2025-03-24 15:31:51'),
(594, 1, 4, 150, '2025-03-24 15:31:51', '2025-03-24 15:31:51'),
(595, 1, 5, 150, '2025-03-24 15:31:51', '2025-03-24 15:31:51'),
(596, 1, 6, 150, '2025-03-24 15:31:51', '2025-03-24 15:31:51'),
(597, 1, 7, 150, '2025-03-24 15:31:51', '2025-03-24 15:31:51'),
(677, 26, 1, 120, '2025-03-29 15:07:23', '2025-03-29 15:07:23'),
(678, 26, 2, 120, '2025-03-29 15:07:23', '2025-03-29 15:07:23'),
(679, 26, 3, 117, '2025-03-29 15:07:23', '2025-04-04 11:15:12'),
(680, 26, 4, 120, '2025-03-29 15:07:23', '2025-03-29 15:07:23'),
(681, 26, 5, 120, '2025-03-29 15:07:23', '2025-03-29 15:07:23'),
(682, 26, 6, 120, '2025-03-29 15:07:23', '2025-03-29 15:07:23'),
(683, 26, 7, 120, '2025-03-29 15:07:23', '2025-03-29 15:07:23'),
(684, 26, 8, 120, '2025-03-29 15:07:23', '2025-03-29 15:07:23'),
(697, 30, 1, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(698, 30, 2, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(699, 30, 3, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(700, 30, 4, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(701, 30, 5, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(702, 30, 6, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(703, 30, 7, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(704, 30, 8, 80, '2025-03-30 13:35:12', '2025-03-30 13:35:12'),
(705, 31, 1, 79, '2025-03-30 13:51:20', '2025-04-04 11:12:04'),
(706, 31, 2, 80, '2025-03-30 13:51:20', '2025-03-30 13:51:20'),
(707, 31, 3, 79, '2025-03-30 13:51:20', '2025-04-04 11:31:18'),
(708, 31, 4, 80, '2025-03-30 13:51:20', '2025-03-30 13:51:20'),
(709, 31, 5, 80, '2025-03-30 13:51:20', '2025-03-30 13:51:20'),
(710, 31, 6, 80, '2025-03-30 13:51:20', '2025-03-30 13:51:20'),
(711, 31, 7, 80, '2025-03-30 13:51:20', '2025-03-30 13:51:20'),
(712, 31, 8, 80, '2025-03-30 13:51:20', '2025-03-30 13:51:20'),
(713, 32, 1, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(714, 32, 2, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(715, 32, 3, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(716, 32, 4, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(717, 32, 5, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(718, 32, 6, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(719, 32, 7, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(720, 32, 8, 80, '2025-03-30 13:55:45', '2025-03-30 13:55:45'),
(721, 33, 1, 80, '2025-03-30 16:17:25', '2025-03-30 16:17:25'),
(722, 33, 2, 79, '2025-03-30 16:17:25', '2025-04-04 11:13:53'),
(723, 33, 3, 80, '2025-03-30 16:17:25', '2025-03-30 16:17:25'),
(724, 33, 4, 80, '2025-03-30 16:17:25', '2025-03-30 16:17:25'),
(725, 33, 5, 80, '2025-03-30 16:17:25', '2025-03-30 16:17:25'),
(740, 28, 1, 75, '2025-03-31 08:04:43', '2025-03-31 08:04:43'),
(741, 28, 2, 75, '2025-03-31 08:04:43', '2025-03-31 08:04:43'),
(742, 28, 3, 71, '2025-03-31 08:04:43', '2025-04-04 09:14:33'),
(743, 28, 4, 75, '2025-03-31 08:04:43', '2025-03-31 08:04:43'),
(744, 28, 5, 75, '2025-03-31 08:04:43', '2025-03-31 08:04:43'),
(745, 28, 6, 75, '2025-03-31 08:04:43', '2025-03-31 08:04:43'),
(746, 28, 7, 75, '2025-03-31 08:04:43', '2025-03-31 08:04:43'),
(747, 28, 8, 75, '2025-03-31 08:04:43', '2025-03-31 08:04:43'),
(748, 23, 1, 199, '2025-03-31 08:24:04', '2025-04-04 11:12:04'),
(749, 23, 2, 200, '2025-03-31 08:24:04', '2025-03-31 08:24:04'),
(750, 23, 3, 199, '2025-03-31 08:24:04', '2025-04-04 11:12:04'),
(751, 23, 4, 198, '2025-03-31 08:24:04', '2025-04-04 11:12:04'),
(752, 23, 5, 200, '2025-03-31 08:24:04', '2025-03-31 08:24:04'),
(753, 23, 6, 200, '2025-03-31 08:24:04', '2025-03-31 08:24:04'),
(754, 23, 7, 200, '2025-03-31 08:24:04', '2025-03-31 08:24:04'),
(755, 23, 8, 200, '2025-03-31 08:24:04', '2025-03-31 08:24:04'),
(761, 34, 4, 66, '2025-04-03 18:45:46', '2025-04-04 09:01:01'),
(762, 34, 5, 67, '2025-04-03 18:45:46', '2025-04-04 11:27:51'),
(763, 34, 6, 69, '2025-04-03 18:45:46', '2025-11-19 11:28:13'),
(764, 34, 7, 70, '2025-04-03 18:45:46', '2025-04-03 18:45:46'),
(765, 34, 8, 70, '2025-04-03 18:45:46', '2025-04-03 18:45:46'),
(766, 29, 1, 50, '2025-04-03 18:45:55', '2025-04-03 18:45:55'),
(767, 29, 2, 50, '2025-04-03 18:45:55', '2025-04-03 18:45:55'),
(768, 29, 3, 50, '2025-04-03 18:45:55', '2025-04-03 18:45:55'),
(769, 29, 4, 50, '2025-04-03 18:45:55', '2025-04-03 18:45:55'),
(770, 29, 5, 50, '2025-04-03 18:45:55', '2025-04-03 18:45:55'),
(771, 29, 6, 50, '2025-04-03 18:45:55', '2025-04-03 18:45:55'),
(780, 25, 1, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(781, 25, 2, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(782, 25, 3, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(783, 25, 4, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(784, 25, 5, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(785, 25, 6, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(786, 25, 7, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(787, 25, 8, 90, '2025-04-09 07:23:19', '2025-04-09 07:23:19'),
(788, 27, 1, 60, '2025-04-09 07:29:58', '2025-04-09 07:29:58'),
(789, 27, 2, 60, '2025-04-09 07:29:58', '2025-04-09 07:29:58'),
(790, 27, 3, 60, '2025-04-09 07:29:58', '2025-04-09 07:29:58'),
(791, 27, 4, 60, '2025-04-09 07:29:58', '2025-04-09 07:29:58'),
(792, 27, 5, 60, '2025-04-09 07:29:58', '2025-04-09 07:29:58'),
(793, 21, 1, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(794, 21, 2, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(795, 21, 3, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(796, 21, 4, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(797, 21, 5, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(798, 21, 6, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(799, 21, 7, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(800, 21, 8, 80, '2025-04-09 07:30:43', '2025-04-09 07:30:43'),
(801, 22, 1, 110, '2025-04-09 07:32:11', '2025-04-09 07:32:11'),
(802, 22, 2, 110, '2025-04-09 07:32:11', '2025-04-09 07:32:11'),
(803, 22, 3, 110, '2025-04-09 07:32:11', '2025-04-09 07:32:11'),
(804, 22, 4, 110, '2025-04-09 07:32:11', '2025-04-09 07:32:11'),
(805, 5, 3, 120, '2025-04-09 07:33:04', '2025-04-09 07:33:04'),
(806, 5, 4, 120, '2025-04-09 07:33:04', '2025-04-09 07:33:04'),
(807, 5, 5, 120, '2025-04-09 07:33:04', '2025-04-09 07:33:04'),
(808, 5, 6, 120, '2025-04-09 07:33:04', '2025-04-09 07:33:04'),
(809, 5, 7, 120, '2025-04-09 07:33:04', '2025-04-09 07:33:04'),
(810, 4, 3, 100, '2025-04-09 07:33:34', '2025-04-09 07:33:34'),
(811, 4, 4, 100, '2025-04-09 07:33:34', '2025-04-09 07:33:34'),
(812, 4, 5, 100, '2025-04-09 07:33:34', '2025-04-09 07:33:34'),
(813, 4, 6, 100, '2025-04-09 07:33:34', '2025-04-09 07:33:34'),
(814, 4, 7, 100, '2025-04-09 07:33:34', '2025-04-09 07:33:34'),
(815, 3, 3, 200, '2025-04-09 07:34:06', '2025-04-09 07:34:06'),
(816, 3, 4, 200, '2025-04-09 07:34:06', '2025-04-09 07:34:06'),
(817, 3, 5, 200, '2025-04-09 07:34:06', '2025-04-09 07:34:06'),
(818, 3, 6, 199, '2025-04-09 07:34:06', '2025-11-19 06:04:26'),
(819, 3, 7, 200, '2025-04-09 07:34:06', '2025-04-09 07:34:06');

-- --------------------------------------------------------

--
-- Structure de la table `spin_logs`
--

CREATE TABLE `spin_logs` (
  `spin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points_won` int(11) NOT NULL,
  `spin_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `spin_logs`
--

INSERT INTO `spin_logs` (`spin_id`, `user_id`, `points_won`, `spin_date`) VALUES
(1, 2, 100, '2025-03-25 18:21:50'),
(2, 2, 25, '2025-03-25 18:33:34'),
(3, 2, 50, '2025-03-25 18:33:47'),
(4, 2, 50, '2025-03-25 18:33:57'),
(5, 2, 20, '2025-03-25 18:41:11'),
(6, 2, 20, '2025-03-25 18:46:20'),
(7, 2, 50, '2025-03-25 18:46:31'),
(8, 2, 25, '2025-03-25 20:22:45'),
(9, 2, 10, '2025-03-25 20:36:41'),
(10, 2, 0, '2025-03-25 20:36:53'),
(11, 2, 5, '2025-03-25 20:51:52'),
(12, 2, 0, '2025-03-25 21:14:26'),
(13, 2, 0, '2025-03-25 22:42:15'),
(14, 2, 25, '2025-03-25 22:42:34'),
(15, 2, 25, '2025-03-25 22:43:00'),
(16, 2, 50, '2025-03-26 08:05:18'),
(17, 2, 50, '2025-03-26 08:05:31'),
(18, 2, 0, '2025-03-26 08:07:37'),
(19, 2, 0, '2025-03-26 08:07:52'),
(20, 2, 5, '2025-03-26 08:10:30'),
(21, 2, 0, '2025-03-26 08:11:41'),
(22, 2, 0, '2025-03-26 08:12:30'),
(23, 2, 0, '2025-03-26 08:12:40'),
(24, 2, 5, '2025-03-26 08:13:14'),
(25, 2, 25, '2025-03-26 08:13:52'),
(26, 2, 5, '2025-03-26 09:34:51'),
(27, 2, 5, '2025-03-26 09:37:03'),
(28, 1, 0, '2025-03-26 12:54:40'),
(29, 2, 0, '2025-03-26 13:57:51'),
(30, 2, 10, '2025-03-26 21:57:37'),
(31, 2, 0, '2025-03-27 10:54:09'),
(32, 2, 5, '2025-03-27 10:54:19'),
(33, 2, 5, '2025-03-27 10:54:29'),
(34, 2, 0, '2025-03-27 10:54:38'),
(35, 2, 0, '2025-03-27 11:43:40'),
(36, 2, 0, '2025-03-27 21:35:30'),
(37, 2, 0, '2025-03-27 21:35:42'),
(38, 2, 20, '2025-03-27 21:35:52'),
(39, 2, 15, '2025-03-28 13:57:26'),
(40, 2, 20, '2025-03-28 18:17:45'),
(41, 2, 15, '2025-03-30 12:59:16'),
(42, 14, 1, '2025-03-31 07:45:59'),
(43, 2, 0, '2025-03-31 18:36:15'),
(44, 2, 5, '2025-03-31 18:36:25'),
(45, 2, 5, '2025-03-31 18:36:42'),
(46, 2, 0, '2025-03-31 18:58:44'),
(47, 2, 15, '2025-03-31 18:58:54'),
(48, 15, 0, '2025-04-02 12:50:21'),
(49, 2, 5, '2025-04-02 20:08:43'),
(50, 2, 0, '2025-04-02 20:13:47'),
(51, 2, 0, '2025-04-02 20:13:58'),
(52, 2, 5, '2025-04-02 20:14:07'),
(53, 2, 5, '2025-11-22 02:48:40');

-- --------------------------------------------------------

--
-- Structure de la table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `subscriber_id` int(11) NOT NULL,
  `subscribed_to_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `subscriptions`
--

INSERT INTO `subscriptions` (`subscriber_id`, `subscribed_to_id`, `created_at`) VALUES
(1, 2, '2025-04-02 20:30:20'),
(1, 14, '2025-04-03 09:54:48'),
(2, 5, '2025-03-31 14:25:10'),
(2, 14, '2025-04-02 20:15:55'),
(5, 2, '2025-04-03 18:31:02');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `activation_code` varchar(255) DEFAULT NULL,
  `newsletter_subscribed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `first_name`, `last_name`, `address`, `city`, `postal_code`, `country`, `phone`, `is_admin`, `created_at`, `updated_at`, `activation_code`, `newsletter_subscribed`) VALUES
(1, 'admin', 'admin@bander-sneakers.com', '$2y$10$mtJQk57hBn47J/1OlWsKiOh1QinL1.ldMlBhCyVpReKhtVe5Wk2EK', 'Admin', 'User', '', '', '', 'France', '', 1, '2025-03-19 19:41:21', '2025-11-19 00:56:58', NULL, 0),
(2, 'Terrel', 'nuentsa.terrel@gmail.com', '$2y$10$Pvk6WlaieiEiJrtGEa0Plu6yYCESzZO7LAvvcWoDMfARihpUD9tl6', 'Terrel', 'NUENTSA', '13 rue Gambetta', 'Puteaux', '92800', 'France', '0780774144', 1, '2025-03-19 22:18:14', '2025-11-19 01:06:55', NULL, 1),
(5, 'Keren', 'makambokeren@gmail.com', '$2y$10$hxNO3Eo97HMjf/NVdrLFNuMrO3ny1kdN7VDTw0DhXjAx7vz8xwQem', 'Keren', 'MAKAMBO VIVA', '9 rue des Pommiers', 'Paris', '75014', 'France', '06 85 47 51 62', 0, '2025-03-23 00:27:48', '2025-04-04 11:23:31', NULL, 1),
(6, 'Romain', '43010388@parisnanterre.fr', '$2y$10$Jleyj8xiRr92CNm/VpZCnOa1m6w4fcB1eR3oaEF0JabUjV8YC6tkq', 'Romain', 'THIERRY', '', '', '', '', '', 0, '2025-03-24 09:06:42', '2025-03-29 10:14:24', NULL, 1),
(13, 'Terrell', '43020094@parisnanterre.fr', '$2y$10$ThUzOkimdaFGGE9iMs9nguyxVvwv.a9rw60Zsdw4KII7nAud0H1PK', 'Terrel2', 'NUENTSA', NULL, NULL, NULL, NULL, NULL, 1, '2025-03-28 23:41:08', '2025-11-19 01:04:26', NULL, 0),
(14, 'Daniel', '43003965@parisnanterre.fr', '$2y$10$c3gaNyKvygLwSqrLiS1MaeIJQFFYFFxNmXVoDdQ9q0WfJV1htum5S', 'Daniel', 'BADOYAN', NULL, NULL, NULL, NULL, NULL, 0, '2025-03-31 07:34:36', '2025-03-31 07:37:41', NULL, 0),
(15, 'Yacine', '43006475@parisnanterre.fr', '$2y$10$/XgjXRpNNfCTfU7xsxFT4.ZdpejVFAXTdYQ7xkIRCZp67Fhk3j49K', 'Yacine', 'FERDJALLAH', NULL, NULL, NULL, NULL, NULL, 0, '2025-04-02 11:59:54', '2025-04-03 19:50:13', NULL, 0),
(16, 'Mathieu', '43004280@parisnanterre.fr', '$2y$10$LHG9Ew1pwIRxTDtqkxUx9erEUtDZH92H3VoSk2Eyoxt.i0DvzHiNO', 'Mathieu', 'SIEGEL', NULL, NULL, NULL, NULL, NULL, 0, '2025-04-04 08:57:52', '2025-04-04 08:58:21', NULL, 0),
(17, 'Terrelll', 'razer.muette@gmail.com', '$2y$10$LGvmTCaAUUyz3DQdYLlKiuskTjaVCGa1WeYFzwn4/tYI6U89.czW6', 'Terrell', 'NUENTSA', NULL, NULL, NULL, NULL, NULL, 0, '2025-05-02 21:59:42', '2025-05-02 21:59:42', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sneaker_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `user_id`, `sneaker_id`, `created_at`) VALUES
(20, 5, 21, '2025-03-23 01:24:41'),
(90, 2, 26, '2025-03-26 13:58:41'),
(94, 13, 27, '2025-03-29 09:28:09'),
(95, 13, 26, '2025-03-29 09:28:11'),
(96, 13, 24, '2025-03-29 09:44:38'),
(97, 13, 25, '2025-03-29 10:07:40'),
(111, 2, 34, '2025-04-27 20:18:17'),
(112, 2, 25, '2025-04-27 20:18:20'),
(113, 2, 21, '2025-04-27 20:18:23'),
(114, 2, 10, '2025-11-22 10:58:32'),
(115, 2, 24, '2025-11-22 10:58:32'),
(116, 5, 10, '2025-11-22 10:58:32'),
(117, 5, 24, '2025-11-22 10:58:32'),
(118, 5, 31, '2025-11-22 10:58:32'),
(119, 5, 22, '2025-11-22 10:58:32'),
(120, 13, 28, '2025-11-22 10:58:32'),
(121, 13, 10, '2025-11-22 10:58:32'),
(122, 15, 25, '2025-11-22 10:58:32'),
(123, 15, 33, '2025-11-22 10:58:32'),
(124, 15, 27, '2025-11-22 10:58:32'),
(125, 15, 24, '2025-11-22 10:58:32'),
(126, 16, 29, '2025-11-22 10:58:32'),
(127, 16, 34, '2025-11-22 10:58:32'),
(128, 16, 10, '2025-11-22 10:58:32'),
(129, 16, 21, '2025-11-22 10:58:32'),
(134, 2, 1, '2025-11-22 11:06:54'),
(135, 2, 2, '2025-11-22 11:06:54'),
(136, 2, 8, '2025-11-22 11:06:54'),
(137, 2, 27, '2025-11-22 11:06:54'),
(138, 2, 31, '2025-11-22 11:06:54'),
(139, 2, 3, '2025-11-22 11:06:54'),
(140, 2, 4, '2025-11-22 11:06:54'),
(141, 2, 9, '2025-11-22 11:06:54'),
(142, 2, 11, '2025-11-22 11:06:54'),
(143, 2, 33, '2025-11-22 11:06:54'),
(144, 2, 5, '2025-11-22 11:06:54'),
(145, 2, 28, '2025-11-22 11:06:54'),
(146, 2, 6, '2025-11-22 11:06:54'),
(147, 2, 29, '2025-11-22 11:06:54'),
(148, 2, 30, '2025-11-22 11:06:54'),
(149, 2, 7, '2025-11-22 11:06:54'),
(150, 2, 32, '2025-11-22 11:06:54'),
(151, 2, 22, '2025-11-22 11:06:54'),
(152, 2, 23, '2025-11-22 11:06:54'),
(165, 5, 1, '2025-11-22 11:06:54'),
(166, 5, 2, '2025-11-22 11:06:54'),
(167, 5, 8, '2025-11-22 11:06:54'),
(168, 5, 25, '2025-11-22 11:06:54'),
(169, 5, 27, '2025-11-22 11:06:54'),
(170, 5, 34, '2025-11-22 11:06:54'),
(171, 5, 3, '2025-11-22 11:06:54'),
(172, 5, 4, '2025-11-22 11:06:54'),
(173, 5, 9, '2025-11-22 11:06:54'),
(174, 5, 11, '2025-11-22 11:06:54'),
(175, 5, 33, '2025-11-22 11:06:54'),
(176, 5, 5, '2025-11-22 11:06:54'),
(177, 5, 26, '2025-11-22 11:06:54'),
(178, 5, 28, '2025-11-22 11:06:54'),
(179, 5, 6, '2025-11-22 11:06:54'),
(180, 5, 29, '2025-11-22 11:06:54'),
(181, 5, 30, '2025-11-22 11:06:54'),
(182, 5, 7, '2025-11-22 11:06:54'),
(183, 5, 32, '2025-11-22 11:06:54'),
(184, 5, 23, '2025-11-22 11:06:54'),
(196, 1, 1, '2025-11-22 11:10:12'),
(197, 1, 2, '2025-11-22 11:10:12'),
(198, 1, 8, '2025-11-22 11:10:12'),
(199, 1, 25, '2025-11-22 11:10:12'),
(200, 1, 27, '2025-11-22 11:10:12'),
(201, 1, 31, '2025-11-22 11:10:12'),
(202, 1, 34, '2025-11-22 11:10:12'),
(203, 1, 3, '2025-11-22 11:10:12'),
(204, 1, 4, '2025-11-22 11:10:12'),
(205, 1, 9, '2025-11-22 11:10:12'),
(206, 1, 11, '2025-11-22 11:10:12'),
(207, 1, 33, '2025-11-22 11:10:12'),
(208, 1, 5, '2025-11-22 11:10:12'),
(209, 1, 10, '2025-11-22 11:10:12'),
(210, 1, 26, '2025-11-22 11:10:12'),
(211, 1, 28, '2025-11-22 11:10:12'),
(212, 1, 6, '2025-11-22 11:10:12'),
(213, 1, 29, '2025-11-22 11:10:12'),
(214, 1, 30, '2025-11-22 11:10:12'),
(215, 1, 7, '2025-11-22 11:10:12'),
(216, 1, 32, '2025-11-22 11:10:12'),
(217, 1, 21, '2025-11-22 11:10:12'),
(218, 1, 22, '2025-11-22 11:10:12'),
(219, 1, 23, '2025-11-22 11:10:12'),
(220, 1, 24, '2025-11-22 11:10:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`cart_item_id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `sneaker_id` (`sneaker_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Index pour la table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Index pour la table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `secondhand_id` (`secondhand_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`),
  ADD UNIQUE KEY `unique_conversation` (`user1_id`,`user2_id`),
  ADD KEY `user2_id` (`user2_id`);

--
-- Index pour la table `loyalty_points`
--
ALTER TABLE `loyalty_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `conversation_id` (`conversation_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Index pour la table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`subscriber_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `sneaker_id` (`sneaker_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Index pour la table `price_history`
--
ALTER TABLE `price_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sneaker_id` (`sneaker_id`);

--
-- Index pour la table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reported_user_id` (`reported_user_id`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sneaker_id` (`sneaker_id`);

--
-- Index pour la table `secondhand_products`
--
ALTER TABLE `secondhand_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `secondhand_products_ibfk_3` (`brand_id`);

--
-- Index pour la table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Index pour la table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`size_id`);

--
-- Index pour la table `sneakers`
--
ALTER TABLE `sneakers`
  ADD PRIMARY KEY (`sneaker_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `sneaker_images`
--
ALTER TABLE `sneaker_images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `sneaker_id` (`sneaker_id`);

--
-- Index pour la table `sneaker_sizes`
--
ALTER TABLE `sneaker_sizes`
  ADD PRIMARY KEY (`sneaker_size_id`),
  ADD UNIQUE KEY `sneaker_id` (`sneaker_id`,`size_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Index pour la table `spin_logs`
--
ALTER TABLE `spin_logs`
  ADD PRIMARY KEY (`spin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`subscriber_id`,`subscribed_to_id`),
  ADD KEY `subscribed_to_id` (`subscribed_to_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`sneaker_id`),
  ADD KEY `sneaker_id` (`sneaker_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT pour la table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `cart_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pour la table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `loyalty_points`
--
ALTER TABLE `loyalty_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT pour la table `price_history`
--
ALTER TABLE `price_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secondhand_products`
--
ALTER TABLE `secondhand_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `sneakers`
--
ALTER TABLE `sneakers`
  MODIFY `sneaker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `sneaker_images`
--
ALTER TABLE `sneaker_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT pour la table `sneaker_sizes`
--
ALTER TABLE `sneaker_sizes`
  MODIFY `sneaker_size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824;

--
-- AUTO_INCREMENT pour la table `spin_logs`
--
ALTER TABLE `spin_logs`
  MODIFY `spin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `cart_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_2` FOREIGN KEY (`sneaker_id`) REFERENCES `sneakers` (`sneaker_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_ibfk_3` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`secondhand_id`) REFERENCES `secondhand_products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `conversations_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `loyalty_points`
--
ALTER TABLE `loyalty_points`
  ADD CONSTRAINT `loyalty_points_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`conversation_id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`sneaker_id`) REFERENCES `sneakers` (`sneaker_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_3` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `price_history`
--
ALTER TABLE `price_history`
  ADD CONSTRAINT `price_history_ibfk_1` FOREIGN KEY (`sneaker_id`) REFERENCES `sneakers` (`sneaker_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`reported_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`sneaker_id`) REFERENCES `sneakers` (`sneaker_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `secondhand_products`
--
ALTER TABLE `secondhand_products`
  ADD CONSTRAINT `secondhand_products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `secondhand_products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `secondhand_products_ibfk_3` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sneakers`
--
ALTER TABLE `sneakers`
  ADD CONSTRAINT `sneakers_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`brand_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sneakers_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `sneaker_images`
--
ALTER TABLE `sneaker_images`
  ADD CONSTRAINT `sneaker_images_ibfk_1` FOREIGN KEY (`sneaker_id`) REFERENCES `sneakers` (`sneaker_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sneaker_sizes`
--
ALTER TABLE `sneaker_sizes`
  ADD CONSTRAINT `sneaker_sizes_ibfk_1` FOREIGN KEY (`sneaker_id`) REFERENCES `sneakers` (`sneaker_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sneaker_sizes_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `sizes` (`size_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `spin_logs`
--
ALTER TABLE `spin_logs`
  ADD CONSTRAINT `spin_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_ibfk_1` FOREIGN KEY (`subscriber_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subscriptions_ibfk_2` FOREIGN KEY (`subscribed_to_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`sneaker_id`) REFERENCES `sneakers` (`sneaker_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
