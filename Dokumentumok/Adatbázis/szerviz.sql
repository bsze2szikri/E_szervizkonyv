-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Nov 28. 11:34
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `eszerviz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `auto`
--

CREATE TABLE IF NOT EXISTS `auto` (
  `auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `rendszam` varchar(7) NOT NULL,
  `alvazszam` varchar(17) NOT NULL,
  `marka` varchar(15) NOT NULL,
  `modell` varchar(15) NOT NULL,
  `evjarat` int(11) NOT NULL,
  `kivitel` varchar(15) NOT NULL,
  `uzemanyag` varchar(15) NOT NULL,
  `hengerurtartalom` int(11) NOT NULL,
  `szin` varchar(10) NOT NULL,
  `tulaj_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto_id`),
  KEY `tulaj_id` (`tulaj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `auto`
--

INSERT INTO `auto` (`auto_id`, `rendszam`, `alvazszam`, `marka`, `modell`, `evjarat`, `kivitel`, `uzemanyag`, `hengerurtartalom`, `szin`, `tulaj_id`) VALUES
(1, 'ABHC134', '3JGBH41JXMN309186', 'Honda', 'Civic', 2020, 'Sedan', 'Benzin', 1800, 'Ezüst', NULL),
(2, 'XAYF567', '7BGBH41JXMN709186', 'Toyota', 'Corolla', 2019, 'Hatchback', 'Dízel', 2000, 'Fehér', NULL),
(3, 'DFEF901', '2MGBH41JXMN609186', 'Ford', 'Focus', 2022, 'Sedan', 'Benzin', 1600, 'Kék', NULL),
(4, 'JNKL234', '1LGBH41JXMN509186', 'Audi', 'A4', 2018, 'Sedan', 'Dízel', 2200, 'Piros', NULL),
(5, 'MNDO567', '9NGBH41JXMN709186', 'BMW', 'Series 5', 2023, 'Sedan', 'Benzin', 2500, 'Fekete', NULL),
(6, 'PQRK890', '4PGBH41JXMN809186', 'Mercedes', 'C-Class', 2021, 'Sedan', 'Dízel', 1900, 'Zöld', NULL),
(7, 'STUB123', '5SGBH41JXMN909186', 'Volkswagen', 'Golf', 2017, 'Hatchback', 'Benzin', 1500, 'Narancs', NULL),
(8, 'VWXC456', '6VGBH41JXMN009186', 'Peugeot', '308', 2020, 'Hatchback', 'Dízel', 1700, 'Barna', NULL),
(9, 'YZAR789', '8YGBH41JXMN109186', 'Renault', 'Megane', 2019, 'Sedan', 'Benzin', 2000, 'Ezüst', NULL),
(10, 'BCDW012', '0BGBH41JXMN209186', 'Fiat', '500', 2024, 'Hatchback', 'Benzin', 1200, 'Fehér', NULL),
(11, 'EFGA345', '2EGBH41JXMN309186', 'Skoda', 'Octavia', 2018, 'Sedan', 'Benzin', 1800, 'Kék', NULL),
(12, 'HIJF678', '3HGBH41JXMN409186', 'Hyundai', 'i30', 2022, 'Hatchback', 'Dízel', 1400, 'Piros', NULL),
(13, 'KLMC901', '4KGBH41JXMN509186', 'Opel', 'Astra', 2016, 'Hatchback', 'Benzin', 2000, 'Sárga', NULL),
(14, 'NODP234', '5NGBH41JXMN609186', 'Mazda', '3', 2023, 'Sedan', 'Dízel', 2200, 'Zöld', NULL),
(15, 'QRSC567', '6QGBH41JXMN709186', 'Subaru', 'Impreza', 2017, 'Hatchback', 'Benzin', 1600, 'Fekete', NULL),
(16, 'TUVJ890', '7TGBH41JXMN809186', 'Citroen', 'C3', 2021, 'Hatchback', 'Benzin', 1900, 'Ezüst', NULL),
(17, 'VWXL123', '8VGBH41JXMN909186', 'Kia', 'Rio', 2019, 'Sedan', 'Dízel', 1800, 'Kék', NULL),
(18, 'YZAU456', '9YGBH41JXMN009186', 'Suzuki', 'Swift', 2018, 'Hatchback', 'Benzin', 1500, 'Fehér', NULL),
(19, 'BCDQ789', '0BGBH41JXMN109186', 'Volvo', 'V40', 2022, 'Sedan', 'Dízel', 1700, 'Fekete', NULL),
(20, 'EFGA012', '1EGBH41JXMN209186', 'Dacia', 'Logan', 2017, 'Hatchback', 'Benzin', 1600, 'Narancs', NULL),
(21, 'HIJS345', '2HGBH41JXMN309186', 'Nissan', 'Micra', 2020, 'Hatchback', 'Benzin', 1800, 'Barna', NULL);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerviz`
--

CREATE TABLE IF NOT EXISTS `szerviz` (
  `szerviz_id` int(11) NOT NULL AUTO_INCREMENT,
  `varos` varchar(20) NOT NULL,
  `ugyvezeto` varchar(20) NOT NULL,
  `telefon` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`szerviz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szervizbejegyzes`
--

CREATE TABLE IF NOT EXISTS `szervizbejegyzes` (
  `szervizbejegyzes_id` int(11) NOT NULL AUTO_INCREMENT,
  `idopont` date NOT NULL,
  `megjegyzes` varchar(200) NOT NULL,
  `ar` int(11) NOT NULL,
  `fizetve` binary(1) NOT NULL,
  `km_ora` int(11) NOT NULL,
  `szerviz_id` int(11) NOT NULL,
  `auto_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`szervizbejegyzes_id`),
  KEY `szerviz_id` (`szerviz_id`),
  KEY `auto_id` (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ugyfel`
--

CREATE TABLE IF NOT EXISTS `ugyfel` (
  `ugyfel_id` int(11) NOT NULL AUTO_INCREMENT,
  `nev` varchar(20) NOT NULL,
  `anyja_neve` varchar(20) NOT NULL,
  `szul_ido` date NOT NULL,
  `telefon` int(11) NOT NULL,
  `szemelyi_szam` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `jelszo` varchar(20) NOT NULL,
  `lakcim` varchar(40) NOT NULL,
  PRIMARY KEY (`ugyfel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `auto`
--
ALTER TABLE `auto`
  ADD CONSTRAINT `auto_ibfk_2` FOREIGN KEY (`tulaj_id`) REFERENCES `ugyfel` (`ugyfel_id`);

--
-- Megkötések a táblához `szervizbejegyzes`
--
ALTER TABLE `szervizbejegyzes`
  ADD CONSTRAINT `szervizbejegyzes_ibfk_1` FOREIGN KEY (`szerviz_id`) REFERENCES `szerviz` (`szerviz_id`),
  ADD CONSTRAINT `szervizbejegyzes_ibfk_2` FOREIGN KEY (`auto_id`) REFERENCES `auto` (`auto_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
