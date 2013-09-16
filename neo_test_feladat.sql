-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Hoszt: localhost
-- Létrehozás ideje: 2013. Sze 10. 16:08
-- Szerver verzió: 5.5.29
-- PHP verzió: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Adatbázis: `neo_test_feladat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tree_source`
--

CREATE TABLE IF NOT EXISTS `tree_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- A tábla adatainak kiíratása `tree_source`
--

INSERT INTO `tree_source` (`id`, `name`, `parent_id`, `sort`) VALUES
(1, 'elem 1', 0, 1),
(2, 'elem 1.1', 1, 1),
(3, 'elem 1.2', 1, 2),
(4, 'elem 2', 0, 3),
(5, 'elem 1.2.1', 3, 1),
(6, 'elem 2.1', 4, 1),
(7, 'elem 3', 0, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
