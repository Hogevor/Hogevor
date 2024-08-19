-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 27 2021 г., 07:28
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mybid`
--

-- --------------------------------------------------------

--
-- Структура таблицы `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `city`
--

INSERT INTO `city` (`id`, `title`, `parentId`) VALUES
(1, 'Երևան', 0),
(2, 'Արագածոտն', 0),
(3, 'Արարատ', 0),
(4, 'Արմավիր', 0),
(5, 'Արցախ', 0),
(6, 'Գեղարքունիք', 0),
(7, 'Կոտայք', 0),
(8, 'Լոռի', 0),
(9, 'Սյունիք', 0),
(10, 'Տավուշ', 0),
(11, 'Վայոց Ձոր', 0),
(12, 'Աջափնյակ', 1),
(13, 'Արաբկիր', 1),
(14, 'Ավան', 1),
(15, 'Դավիթաշեն', 1),
(16, 'Էրեբունի', 1),
(17, 'Քանաքեռ Զեյթուն', 1),
(18, 'Կենտրոն', 1),
(19, 'Մալաթիա Սեբաստիա', 1),
(20, 'Նոր Նորք', 1),
(21, 'Նորք Մարա', 1),
(22, 'Նուբարաշեն', 1),
(23, 'Շենգավիթ', 1),
(24, 'Ապարան', 2),
(25, 'Արագած', 2),
(26, 'Արուճ', 2),
(27, 'Աշտարակ', 2),
(28, 'Բյուրական', 2),
(29, 'Կոշ', 2),
(30, 'Օշական', 2),
(31, 'Թալին', 2),
(32, 'Ուջան', 2),
(33, 'Արարատ', 3),
(34, 'Արտաշատ', 3),
(35, 'Մասիս', 3),
(36, 'Վեդի', 3),
(37, 'Արմավիր', 4),
(38, 'Էջմիածին', 4),
(39, 'Մեծամոր', 4),
(40, 'Ստեփանակերտ', 5),
(41, 'Ճամբարակ', 6),
(42, 'Գավառ', 6),
(43, 'Մարտունի', 6),
(44, 'Սևան', 6),
(45, 'Վարդենիս', 6),
(46, 'Աբովյան', 7),
(47, 'Աղվերան', 7),
(48, 'Արգել', 7),
(49, 'Առինջ', 7),
(50, 'Արզնի', 7),
(51, 'Բջնի', 7),
(52, 'Բյուրեղավան', 7),
(53, 'Չարենցավան', 7),
(54, 'Ձորաղբյուր', 7),
(55, 'Գառնի', 7),
(56, 'Գողթ', 7),
(57, 'Հրազդան', 7),
(58, 'Ջրվեժ', 7),
(59, 'Քանաքեռավան', 7),
(60, 'Քասախ', 7),
(61, 'Նոր Հաճըն', 7),
(62, 'Նուռնուս', 7),
(63, 'Պռոշյան', 7),
(64, 'Պտղնի', 7),
(65, 'Ծաղկաձոր', 7),
(66, 'Եղվարդ', 7),
(67, 'Զովունի', 7),
(68, 'Ալավերդի', 8),
(69, 'Սպիտակ', 8),
(70, 'Ստեփանավան', 8),
(71, 'Տաշիր', 8),
(72, 'Վանաձոր', 8),
(73, 'Արթիկ', 9),
(74, 'Գյումրի', 9),
(75, 'Մարալիկ', 9),
(76, 'Գորիս', 10),
(77, 'Քաջարան', 10),
(78, 'Կապան', 10),
(79, 'Մեղրի', 10),
(80, 'Սիսիան', 10),
(81, 'Բերդ', 11),
(82, 'Դիլիջան', 11),
(83, 'Իջևան', 11),
(84, 'Նոյեմբերյան', 11),
(85, 'Ջերմուկ', 11),
(86, 'Վայք', 11),
(87, 'Եղեգնաձոր', 11),
(88, 'Իջևան', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `code_mony`
--

CREATE TABLE `code_mony` (
  `id` int(11) NOT NULL,
  `code` bigint(20) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parentId` varchar(255) NOT NULL,
  `w` int(11) NOT NULL,
  `h` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `sub` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `image`, `parentId`, `w`, `h`, `category`, `sub`) VALUES
(836, '3a98303e774e3f7eb4c508ed57fb722e.webp', '6132711e0ae2d', 1500, 1125, '18', '22'),
(837, '8d4ffc5c454dd7f971ce5a5ef109ea90.webp', '6132711e0ae2d', 1500, 1125, '18', '22'),
(838, 'd774af0d70170bd4169c9555ccb85c31.webp', '6132711e0ae2d', 1500, 1125, '18', '22'),
(839, '03350c34c7d6df961e876edcb000f13a.webp', '6132711e0ae2d', 1500, 1125, '18', '22'),
(840, '22b5572949e88d7318e8e3b1cdb7b576.webp', '6132711e0ae2d', 1500, 1125, '18', '22'),
(841, '547e39a049070d7c1904192787456bc3.webp', '61327401289e3', 1500, 1333, '46', '47'),
(842, '9438ce55e896204696237c305130eec1.webp', '61327401289e3', 1500, 1124, '46', '47'),
(843, '78805a221a988e79ef3f42d7c5bfd418.webp', '61327401289e3', 1500, 1113, '46', '47'),
(844, 'c4ca4238a0b923820dcc509a6f75849b.webp', '61327775e9922', 1500, 1136, '18', '22'),
(845, 'c81e728d9d4c2f636f067f89cc14862c.webp', '61327775e9922', 1500, 1196, '18', '22'),
(846, 'eccbc87e4b5ce2fe28308fd9f2a7baf3.webp', '61327775e9922', 1500, 1216, '18', '22'),
(847, 'a87ff679a2f3e71d9181a67b7542122c.webp', '61327775e9922', 1500, 1165, '18', '22'),
(848, 'e4da3b7fbbce2345d7772b0674a318d5.webp', '61327775e9922', 1500, 1127, '18', '22'),
(849, 'c4ca4238a0b923820dcc509a6f75849b.webp', '613278d6b3f0c', 1500, 1760, '18', '22'),
(850, 'c81e728d9d4c2f636f067f89cc14862c.webp', '613278d6b3f0c', 1500, 1839, '18', '22'),
(851, 'eccbc87e4b5ce2fe28308fd9f2a7baf3.webp', '613278d6b3f0c', 1500, 1831, '18', '22'),
(852, 'a87ff679a2f3e71d9181a67b7542122c.webp', '613278d6b3f0c', 1500, 1818, '18', '22'),
(853, 'e4da3b7fbbce2345d7772b0674a318d5.webp', '613278d6b3f0c', 1500, 1046, '18', '22'),
(854, 'c4ca4238a0b923820dcc509a6f75849b.webp', '61327a5ab8fcc', 1500, 1017, '18', '22'),
(855, 'c81e728d9d4c2f636f067f89cc14862c.webp', '61327a5ab8fcc', 1500, 1060, '18', '22'),
(856, 'eccbc87e4b5ce2fe28308fd9f2a7baf3.webp', '61327a5ab8fcc', 1500, 1006, '18', '22'),
(857, 'a87ff679a2f3e71d9181a67b7542122c.webp', '61327a5ab8fcc', 1500, 1044, '18', '22'),
(858, 'e4da3b7fbbce2345d7772b0674a318d5.webp', '61327a5ab8fcc', 1500, 1038, '18', '22'),
(859, 'c4ca4238a0b923820dcc509a6f75849b.webp', '61327bfe181e6', 1500, 1017, '18', '22'),
(860, 'c81e728d9d4c2f636f067f89cc14862c.webp', '61327bfe181e6', 1500, 949, '18', '22'),
(861, 'eccbc87e4b5ce2fe28308fd9f2a7baf3.webp', '61327bfe181e6', 1500, 1023, '18', '22'),
(862, 'a87ff679a2f3e71d9181a67b7542122c.webp', '61327bfe181e6', 1500, 1039, '18', '22'),
(863, 'a87ff679a2f3e71d9181a67b7542122c.webp', '61327de873452', 1500, 1086, '50', '52'),
(864, 'a87ff679a2f3e71d9181a67b7542122c.webp', '61327ea580a9d', 1500, 952, '33', '34'),
(865, 'c4ca4238a0b923820dcc509a6f75849b.webp', '61327f7b03678', 1500, 1816, '33', '37'),
(866, 'c81e728d9d4c2f636f067f89cc14862c.webp', '61327f7b03678', 1500, 1821, '33', '37'),
(867, 'eccbc87e4b5ce2fe28308fd9f2a7baf3.webp', '61327f7b03678', 1500, 1009, '33', '37'),
(868, 'a87ff679a2f3e71d9181a67b7542122c.webp', '61327f7b03678', 1500, 1845, '33', '37'),
(869, 'c4ca4238a0b923820dcc509a6f75849b.webp', '61328062e6bb2', 1500, 1116, '33', '34'),
(870, 'c4ca4238a0b923820dcc509a6f75849b.webp', '613280fec75fc', 1500, 1345, '33', '37');

-- --------------------------------------------------------

--
-- Структура таблицы `like_product_list`
--

CREATE TABLE `like_product_list` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `limitproduct`
--

CREATE TABLE `limitproduct` (
  `id` int(11) NOT NULL,
  `limits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `limitproduct`
--

INSERT INTO `limitproduct` (`id`, `limits`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `navbar`
--

CREATE TABLE `navbar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parentId` varchar(255) NOT NULL,
  `setting_item` tinyint(1) NOT NULL,
  `sub_title` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `navbar`
--

INSERT INTO `navbar` (`id`, `title`, `parentId`, `setting_item`, `sub_title`) VALUES
(1, 'Սկիզբ', '0', 0, 0),
(2, 'Անշարժ գույք', '0', 1, 1),
(3, 'Վաճառք', '2', 1, 1),
(4, 'Բնակարաններ', '3', 0, 0),
(5, 'Տներ', '3', 0, 0),
(6, 'Կոմերցիոն տարածքներ', '3', 0, 0),
(7, 'Հողատարածքներ', '3', 0, 0),
(8, 'Վարձակալություն', '2', 1, 1),
(9, 'Բնակարաններ', '8', 0, 0),
(10, 'Տներ', '8', 0, 0),
(11, 'Կոմերցիոն տարածքներ', '8', 0, 0),
(12, 'Հողատարածքներ', '8', 0, 0),
(13, 'Օրավարձ', '2', 1, 1),
(14, 'Բնակարաններ', '13', 0, 0),
(15, 'Տներ', '13', 0, 0),
(16, 'Կոմերցիոն տարածքներ', '13', 0, 0),
(17, 'Տրանսպորտային միջոցներ', '0', 1, 1),
(18, 'Ավտոմեքենաներ', '17', 1, 1),
(19, 'Հատուկ տեխնիկա', '17', 1, 1),
(20, 'Մոտոտեխնիկա', '17', 1, 1),
(21, 'Ջրային տեխնիկա', '17', 1, 1),
(22, 'Մարդատար մեքենաներ', '18', 0, 0),
(23, 'Բեռնատար մեքենաներ', '18', 0, 0),
(24, 'Ավտոբուսներ', '18', 0, 0),
(25, 'Կցորթային սայլեր', '18', 0, 0),
(26, 'Տրակտորներ', '19', 0, 0),
(27, 'Վերանբարձ կռունկներ', '19', 0, 0),
(28, 'մանիպուլյատորներ', '19', 0, 0),
(29, 'Մոտոներ', '20', 0, 0),
(30, 'Հեծանիվներ', '20', 0, 0),
(31, 'նավակներ', '21', 0, 0),
(32, 'Էլեկտրոնիկա', '0', 1, 1),
(33, 'Հեռախոսներ', '32', 1, 1),
(34, 'Սմարթֆոններ', '33', 0, 1),
(35, 'Ip Հեռախոսներ', '33', 1, 1),
(36, 'Լարային հեռախոսներ', '33', 1, 1),
(37, 'Աքսեսուարներ', '33', 0, 1),
(38, 'Աուդիո և վիդեո տեխնիկա', '32', 1, 1),
(39, 'Հեռուստացույցներ', '38', 1, 1),
(40, 'բարձրախոսներ', '38', 1, 1),
(41, 'Նվագարկիչներ', '38', 1, 1),
(42, 'նավիգատորներ', '38', 1, 1),
(43, 'Պրոեկտորներ', '38', 1, 1),
(44, 'DVR-ներ', '38', 1, 1),
(45, 'Աքսեսուարներ', '38', 1, 1),
(46, 'Ֆոտո և թվային տեխնիկա', '32', 1, 1),
(47, 'Ֆոտոխցիկներ', '46', 1, 1),
(48, 'Օպտիկական սարքեր', '46', 1, 1),
(49, 'Աքսեսուարներ', '46', 1, 1),
(50, 'Համակարգչային տեխնիկա', '32', 1, 1),
(51, 'Համակարգիչներ', '50', 1, 1),
(52, 'Նոութբուքեր', '50', 1, 1),
(53, 'Պլանշետներ', '50', 1, 1),
(54, 'Աքսեսուարներ', '50', 1, 1),
(55, 'Խաղային համակարգեր', '32', 1, 1),
(56, 'Համակարգչային խաղեր', '55', 1, 1),
(57, 'խաղային կայաններ', '55', 1, 1),
(58, 'Աքսեսուարներ', '55', 1, 1),
(59, 'կենցաղային տեխնիկա', '32', 1, 1),
(60, 'Խոշոր կենցաղային տեխնիկա', '59', 1, 1),
(61, 'Մանր կենցաղային տեխնիկա', '59', 1, 1),
(62, 'Այլ', '59', 1, 1),
(63, 'Տպագրական սարքեր', '32', 1, 1),
(64, 'Կահույք', '0', 1, 1),
(65, 'Վաճառք', '64', 1, 1),
(66, 'վերանորոգում', '64', 1, 1),
(67, 'Ննջասենյակի կահույք', '65', 1, 1),
(68, 'Պահարաններ', '65', 1, 1),
(69, 'Բազմոցներ', '65', 1, 1),
(70, 'բազկաթոռներ', '65', 1, 1),
(71, 'Սեղաններ', '65', 1, 1),
(72, 'Աթոռներ', '65', 1, 1),
(73, 'Խոհանոցային կահույք', '65', 1, 1),
(74, 'Այլ', '65', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `online`
--

CREATE TABLE `online` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parentId` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `options`
--

INSERT INTO `options` (`id`, `title`, `parentId`, `type`) VALUES
(1, 'Վաճառք', '2', 'type'),
(2, 'Վարձակալություն', '2', 'type'),
(3, 'Օրավարձ', '2', 'type'),
(4, 'Փնտրում եմ', '2', 'type'),
(5, 'Կփոխանակեմ', '2', 'type'),
(6, 'Անհատ', '2', 'd_s'),
(7, 'Ձեռնարկություն', '2', 'd_s'),
(8, 'Անհատ', '3', 'd_s'),
(9, 'Վաճառք', '3', 'type'),
(10, 'Փնտրում եմ', '3', 'type'),
(11, 'Կփոխանակեմ', '3', 'type'),
(13, 'Օրավարձ', '3', 'type'),
(14, 'Դիլեր', '3', 'd_s'),
(15, 'Վաճառք', '14', 'type'),
(16, 'Կփոխանակեմ', '14', 'type'),
(17, 'Փնտրում եմ', '14', 'type'),
(18, 'Անհատ', '14', 'd_s'),
(19, 'Կազմակերպություն', '14', 'd_s'),
(20, 'Գործակալություն', '2', 'd_s');

-- --------------------------------------------------------

--
-- Структура таблицы `order_user`
--

CREATE TABLE `order_user` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `mony` float NOT NULL,
  `user_status` varchar(255) NOT NULL,
  `image_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_user`
--

INSERT INTO `order_user` (`id`, `order_id`, `mony`, `user_status`, `image_limit`) VALUES
(23, 95, 2300, 'ԲԱԶԱՅԻՆ', 5),
(24, 96, 3000, 'ԲԱԶԱՅԻՆ', 5),
(25, 97, 3000, 'ԲԱԶԱՅԻՆ', 5),
(26, 98, 3000, 'ԲԱԶԱՅԻՆ', 5),
(27, 99, 3000, 'ԲԱԶԱՅԻՆ', 5),
(28, 100, 3000, 'ԲԱԶԱՅԻՆ', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `parentId` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `currency` varchar(255) NOT NULL,
  `category` int(11) NOT NULL,
  `catalog` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `region` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `d_s` varchar(255) NOT NULL,
  `likes` tinyint(1) NOT NULL,
  `order_id` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `sub1` int(11) NOT NULL,
  `sub2` int(11) NOT NULL,
  `sub3` int(11) NOT NULL,
  `sub4` int(11) NOT NULL,
  `sub5` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `tops` varchar(255) NOT NULL,
  `date_title_6_day` datetime NOT NULL,
  `views` varchar(30) NOT NULL,
  `date_time_shtap` datetime NOT NULL,
  `date_time_shtap_6_day` datetime NOT NULL,
  `date_time_hatuk` datetime NOT NULL,
  `date_time_hatuk_6_day` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `title`, `image`, `parentId`, `price`, `currency`, `category`, `catalog`, `description`, `region`, `status`, `d_s`, `likes`, `order_id`, `city`, `date_time`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `type`, `tops`, `date_title_6_day`, `views`, `date_time_shtap`, `date_time_shtap_6_day`, `date_time_hatuk`, `date_time_hatuk_6_day`) VALUES
(319, 'Vacharvum e wolsvagen vento 1993 tiv', '/images/items/18/22/6132711e0ae2d/6a294358579240936bf4d66151e6e720.webp', '6132711e0ae2d', 500000, 'AMD', 22, '18', 'Vacharvum e wolsvagen vento 1993 tiv sakarkeli', 'Արարատ', 'Շտապ', '', 0, 95, 'Արտաշատ', '2021-09-03 22:01:53', 17, 18, 0, 0, 0, '0', '', '2021-09-09 22:01:53', '7', '2021-09-03 22:02:25', '2021-09-09 22:02:25', '2021-09-03 22:01:53', '2021-09-09 22:01:53'),
(320, 'Vacharvum e Sony dsc-h100 modeli foto aparan', '/images/items/46/47/61327401289e3/6a294358579240936bf4d66151e6e720.webp', '61327401289e3', 80000, 'AMD', 47, '46', 'Vacharvum e Sony dsc-h100 modeli foto aparan giny sakarkeli', 'Արարատ', '', '', 0, 95, 'Արտաշատ', '2021-09-03 22:14:10', 32, 46, 0, 0, 0, '0', '', '2021-09-09 22:14:10', '2', '2021-09-03 22:14:10', '2021-09-09 22:14:10', '2021-09-03 22:14:10', '2021-09-09 22:14:10'),
(321, 'HONDA FIT 2009-2008թ, restayling, japan, POXANAKUM', '/images/items/18/22/61327775e9922/6a294358579240936bf4d66151e6e720.webp', '61327775e9922', 5000, 'AMD', 22, '18', 'Meqenan anteri vijakum e, lriv gorcaranayin vijak, gaz 1.3,DIGI TRONIC, kondicioner, klimat control, GRUIZ CONTROL, DVD, CD, MP3,MEC MONITOR, zadni kamera, luysi sensor, elektrakan apakiner u haeliner, ruyl@ sharjakan, ABS, SRS, sport rejim, PAKOVI CHI VAJARVUM, poxanakum em.', 'Երևան', '', '', 0, 96, 'Էրեբունի', '2021-09-03 22:28:54', 17, 18, 0, 0, 0, '0', '', '2021-09-09 22:28:54', '4', '2021-09-03 22:28:54', '2021-09-09 22:28:54', '2021-09-03 22:28:54', '2021-09-09 22:28:54'),
(322, 'Lexus IS, 2.5 լ, 2012 թ.', '/images/items/18/22/613278d6b3f0c/6a294358579240936bf4d66151e6e720.webp', '613278d6b3f0c', 12500, 'USD', 22, '18', 'Meqenan gtnvum e idealakan vichakum xndir chuni hayastanum chi shahagorcvel anvadoxery ev anvahecery nor enn\nMICHELIN zangaharenn real gnoxnery (sakarkeli) nayev poxanakum dzer koxmic havelavcharov', 'Արագածոտն', '', '', 0, 97, 'Բյուրական', '2021-09-03 22:34:46', 17, 18, 0, 0, 0, '0', '', '2021-09-09 22:34:46', '2', '2021-09-03 22:34:46', '2021-09-09 22:34:46', '2021-09-03 22:34:46', '2021-09-09 22:34:46'),
(323, 'Toyota Sienna Sport SE', '/images/items/18/22/61327a5ab8fcc/6a294358579240936bf4d66151e6e720.webp', '61327a5ab8fcc', 15500, 'USD', 22, '18', 'Megenan gtnvum e idealakan vichakum. Xazer chkan srah@ nori nman. Nermucvel e AMN ic, Hayastanum shahagorcvac che! Sport package! Sharjich@ 3.5 vazq@ irakan 110000ml. Vacharvum e miayn kanxik gumarov. Manramasner@ heraxosov. (optima camry corolla sonata altima alphard Honda Odyssey siena)', 'Երևան', '', '', 0, 98, 'Արաբկիր', '2021-09-03 22:41:15', 17, 18, 0, 0, 0, '0', '', '2021-09-09 22:41:15', '5', '2021-09-03 22:41:15', '2021-09-09 22:41:15', '2021-09-03 22:41:15', '2021-09-09 22:41:15'),
(324, 'Mercedes e 2003 թ. Avangard W211 E500 POLNI FULL', '/images/items/18/22/61327bfe181e6/6a294358579240936bf4d66151e6e720.webp', '61327bfe181e6', 8700, 'USD', 22, '18', 'Продается Mercedes E500. Привезена из Германии. Находится в идеальном состоянии. Машина польный фул-понорама, крыша солнечная батарея, функция distronic, функция режим пробки, режим hold, адаптивные фары, старт-стоп, smart key. Задный-передный патроник, сидельник динамик драйв с массажерами и охлаждаюший. Mercedes e 500 5L. Vin kod wdb2110701a308416', 'Երևան', '', '', 0, 99, 'Էրեբունի', '2021-09-03 22:48:14', 17, 18, 0, 0, 0, '0', '', '2021-09-09 22:48:14', '5', '2021-09-03 22:48:14', '2021-09-09 22:48:14', '2021-09-03 22:48:14', '2021-09-09 22:48:14'),
(325, 'MacBook Pro MVVJ2 (2019) &gt; Core i7 պչոցեսորով, 512GB ssd * Երաշխիք 12 ամիս + ապառիկ վաճառք', '/images/items/50/52/61327de873452/6a294358579240936bf4d66151e6e720.webp', '61327de873452', 1199900, 'AMD', 52, '50', 'Հարցեր, որոնք միշտ առաջանում են.\n1. Գնել օգտագործված հեռախոս, թե՞ ոչ\n2. Ի՞սկ, եթե գնեմ և շուտ փչանա\n3. Ավելի լավ է ռիսկի չդիմել...\n\nՇտապում ենք պատասխանել. Մենք Ձեզ առաջարկում ենք օրիգինալ տեխնիկա, որը երբեք չի քանդվել, մասեր չեն փոխվել, գտնվում է իր գործարանային վիճակում:\nԵրաշխի՞ք, ԱՆՊԱՅՄԱՆ))', 'Երևան', '', 'Կազմակերպություն', 0, 100, 'Կենտրոն', '2021-09-03 22:56:24', 32, 50, 0, 0, 0, '0', '', '2021-09-09 22:56:24', '2', '2021-09-03 22:56:24', '2021-09-09 22:56:24', '2021-09-03 22:56:24', '2021-09-09 22:56:24'),
(326, 'Samsung Galaxy S21 Plus, 256 GB &gt; Առկա են բոլոր գույները / 1տարի երաշխիքով + ապառիկ վաճառք', '/images/items/33/34/61327ea580a9d/6a294358579240936bf4d66151e6e720.webp', '61327ea580a9d', 529900, 'AMD', 34, '33', 'Նշված արժեքները գործում են կանխիկ վաճառքի դեպքում:\nՏրվում է 1 տարի երաշխիքային սպասարկում։\nՀամագործակցում ենք լավագույն բանկերի հետ,\nՍպառման ժամկետը 3-36 ամիս,\nԳործում է առաքում անվճար Երևանի տարածքում։\nՍպասում ենք ձեզ մեր խանութ սրահում․\nՄեզ կարող եք գտնել facebook instagram 》》Phone LAB Armenia\nամենօրյա գներին տեղեկացված լինելու համար', 'Երևան', '', 'Կազմակերպություն', 0, 100, 'Կենտրոն', '2021-09-03 22:59:33', 32, 33, 0, 0, 0, '0', '', '2021-09-09 22:59:33', '1', '2021-09-03 22:59:33', '2021-09-09 22:59:33', '2021-09-03 22:59:33', '2021-09-09 22:59:33'),
(327, 'Watch 4 Series 40mm Nike &gt; Գերազանց նորի պես լավ վիճակում / Կա երաշխիք նաև ապառիկ', '/images/items/33/37/61327f7b03678/6a294358579240936bf4d66151e6e720.webp', '61327f7b03678', 134900, 'AMD', 37, '33', 'Հարցեր, որոնք միշտ առաջանում են.\n1. Գնել օգտագործված հեռախոս, թե՞ ոչ\n2. Ի՞սկ, եթե գնեմ և շուտ փչանա\n3. Ավելի լավ է ռիսկի չդիմել...\n\nՇտապում ենք պատասխանել. Մենք Ձեզ առաջարկում ենք օրիգինալ տեխնիկա, որը երբեք չի քանդվել, մասեր չեն փոխվել, գտնվում է իր գործարանային վիճակում:\nԵրաշխի՞ք, ԱՆՊԱՅՄԱՆ))', 'Երևան', '', '', 0, 100, 'Կենտրոն', '2021-09-03 23:03:07', 32, 33, 0, 0, 0, '0', '', '2021-09-09 23:03:07', '2', '2021-09-03 23:03:07', '2021-09-09 23:03:07', '2021-09-03 23:03:07', '2021-09-09 23:03:07'),
(328, 'IPhone X 64GB Silver &gt; Գտնվում է լավ վիճակում, խազեր չկան / հետը երաշխիք նաև կա', '/images/items/33/34/61328062e6bb2/6a294358579240936bf4d66151e6e720.webp', '61328062e6bb2', 209900, 'AMD', 34, '33', 'Հարցեր, որոնք միշտ առաջանում են.\n1. Գնել օգտագործված հեռախոս, թե՞ ոչ\n2. Ի՞սկ, եթե գնեմ և շուտ փչանա\n3. Ավելի լավ է ռիսկի չդիմել...\n\nՇտապում ենք պատասխանել. Մենք Ձեզ առաջարկում ենք օրիգինալ տեխնիկա, որը երբեք չի քանդվել, մասեր չեն փոխվել, գտնվում է իր գործարանային վիճակում:\nԵրաշխի՞ք, ԱՆՊԱՅՄԱՆ))', 'Երևան', '', 'Կազմակերպություն', 0, 100, 'Կենտրոն', '2021-09-03 23:06:59', 32, 33, 0, 0, 0, '0', '', '2021-09-09 23:06:59', '2', '2021-09-03 23:06:59', '2021-09-09 23:06:59', '2021-09-03 23:06:59', '2021-09-09 23:06:59'),
(329, 'Airpods 2 Wireless * Նրբաճաշակ նաուշնիկներ օրիգինալ / Տրվում է երաշխիք գործում է ապառիկ 0%', '/images/items/33/37/613280fec75fc/6a294358579240936bf4d66151e6e720.webp', '613280fec75fc', 91900, 'AMD', 37, '33', 'Նշված արժեքները գործում են կանխիկ վաճառքի դեպքում:\nՏրվում է 1 տարի երաշխիքային սպասարկում։\nՀամագործակցում ենք լավագույն բանկերի հետ,\nՍպառման ժամկետը 3-36 ամիս,\nԳործում է առաքում անվճար Երևանի տարածքում։\nՍպասում ենք ձեզ մեր խանութ սրահում․\nՄեզ կարող եք գտնել facebook instagram 》》Phone LAB Armenia\nամենօրյա գներին տեղեկացված լինելու համար', 'Երևան', '', '', 0, 100, 'Կենտրոն', '2021-09-03 23:09:34', 32, 33, 0, 0, 0, '0', '0', '2021-09-09 23:09:34', '1', '2021-09-03 23:09:34', '2021-09-09 23:09:34', '2021-09-03 23:09:34', '2021-09-09 23:09:34');

-- --------------------------------------------------------

--
-- Структура таблицы `product_by_category`
--

CREATE TABLE `product_by_category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `parentId` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `senyakner`
--

CREATE TABLE `senyakner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `senyakner`
--

INSERT INTO `senyakner` (`id`, `title`, `parentId`) VALUES
(1, '1 Սենյականոց', 0),
(2, '2 Սենյականոց', 0),
(3, '3 Սենյականոց', 0),
(4, '4 Սենյականոց', 0),
(5, '5 Սենյականոց', 0),
(6, '6 Սենյականոց', 0),
(7, '6+ Սենյականոց', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `shintypes`
--

CREATE TABLE `shintypes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shintypes`
--

INSERT INTO `shintypes` (`id`, `title`, `parentId`) VALUES
(1, 'քարե', 0),
(2, 'պանելային', 0),
(3, 'մոնոլիտ', 0),
(4, 'կասետային', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `state`
--

INSERT INTO `state` (`id`, `title`, `parentId`) VALUES
(1, 'Երևան', 0),
(2, 'Արագածոտն', 0),
(3, 'Արարատ', 0),
(4, 'Արմավիր', 0),
(5, 'Արցախ', 0),
(6, 'Գեղարքունիք', 0),
(7, 'Կոտայք', 0),
(8, 'Լոռի', 0),
(9, 'Սյունիք', 0),
(10, 'Տավուշ', 0),
(11, 'Վայոց Ձոր', 0),
(12, 'Հայաստանից դուրս', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `parentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `types`
--

INSERT INTO `types` (`id`, `title`, `parentId`) VALUES
(1, 'Վաճառք', 0),
(2, 'Վարձակալություն', 0),
(3, 'Օրավարձով', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `displayName` varchar(255) NOT NULL,
  `photoUrl` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `other_phone` varchar(255) NOT NULL,
  `date_time` datetime NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `whatsapp` varchar(60) NOT NULL,
  `viber` varchar(60) NOT NULL,
  `original_pass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `displayName`, `photoUrl`, `phone`, `other_phone`, `date_time`, `password`, `code`, `whatsapp`, `viber`, `original_pass`) VALUES
(95, 'hayko1988hayko@mail.ru', 'Hayko Yeghoyan', '/public/images/users/95/67c6a1e7ce56d3d6fa748ab6d9af3fd7.webp', '044469567', '', '2021-09-03 21:50:45', '827ccb0eea8a706c4c34a16891f84e7b', '90805', '', '098469567', '12345'),
(96, 'hayko1988hayko_______1@mail.ru', 'Avo Apreyan', '/public/images/users/96/9bf31c7ff062936a96d3c8bd1f8f2ff3.webp', '096050450', '', '2021-09-03 22:25:21', '827ccb0eea8a706c4c34a16891f84e7b', '96086', '', '', '12345'),
(97, 'hayko1988hayko_______2@mail.ru', 'Aghasy Galstyan', '/public/images/users/default.png', '077114517', '', '2021-09-03 22:31:39', '827ccb0eea8a706c4c34a16891f84e7b', '42205', '', '', '12345'),
(98, 'hayko1988hayko_______3@mail.ru', 'Hayk Manukyan', '/public/images/users/default.png', '091419139', '', '2021-09-03 22:38:27', '827ccb0eea8a706c4c34a16891f84e7b', '59835', '', '', '12345'),
(99, 'hayko1988hayko_______4@mail.ru', 'Levon', '/public/images/users/default.png', '093861735', '', '2021-09-03 22:45:59', '827ccb0eea8a706c4c34a16891f84e7b', '95284', '091777880', '091777880', '12345'),
(100, 'hayko1988hayko_______5@mail.ru', 'Phone LAB Armenia', '/public/images/users/100/66f041e16a60928b05a7e228a89c3799.webp', '093067708', '', '2021-09-03 22:53:28', '827ccb0eea8a706c4c34a16891f84e7b', '50668', '093067708', '093067708', '12345');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `code_mony`
--
ALTER TABLE `code_mony`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `like_product_list`
--
ALTER TABLE `like_product_list`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `limitproduct`
--
ALTER TABLE `limitproduct`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `online`
--
ALTER TABLE `online`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_user`
--
ALTER TABLE `order_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_by_category`
--
ALTER TABLE `product_by_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `senyakner`
--
ALTER TABLE `senyakner`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shintypes`
--
ALTER TABLE `shintypes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT для таблицы `code_mony`
--
ALTER TABLE `code_mony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=871;

--
-- AUTO_INCREMENT для таблицы `like_product_list`
--
ALTER TABLE `like_product_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT для таблицы `limitproduct`
--
ALTER TABLE `limitproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `online`
--
ALTER TABLE `online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `order_user`
--
ALTER TABLE `order_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT для таблицы `product_by_category`
--
ALTER TABLE `product_by_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `senyakner`
--
ALTER TABLE `senyakner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `shintypes`
--
ALTER TABLE `shintypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
