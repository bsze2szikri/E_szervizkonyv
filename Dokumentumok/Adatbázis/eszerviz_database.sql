-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Dec 01. 13:28
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
CREATE DATABASE IF NOT EXISTS `eszerviz` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `eszerviz`;

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
(1, 'ABHC134', '3JGBH41JXMN309186', 'Honda', 'Civic', 2020, 'Sedan', 'Benzin', 1800, 'Ezüst', 17),
(2, 'XAYF567', '7BGBH41JXMN709186', 'Toyota', 'Corolla', 2019, 'Hatchback', 'Dízel', 2000, 'Fehér', 16),
(3, 'DFEF901', '2MGBH41JXMN609186', 'Ford', 'Focus', 2022, 'Sedan', 'Benzin', 1600, 'Kék', 15),
(4, 'JNKL234', '1LGBH41JXMN509186', 'Audi', 'A4', 2018, 'Sedan', 'Dízel', 2200, 'Piros', 13),
(5, 'MNDO567', '9NGBH41JXMN709186', 'BMW', 'Series 5', 2023, 'Sedan', 'Benzin', 2500, 'Fekete', 14),
(6, 'PQRK890', '4PGBH41JXMN809186', 'Mercedes', 'C-Class', 2021, 'Sedan', 'Dízel', 1900, 'Zöld', 10),
(7, 'STUB123', '5SGBH41JXMN909186', 'Volkswagen', 'Golf', 2017, 'Hatchback', 'Benzin', 1500, 'Narancs', 12),
(8, 'VWXC456', '6VGBH41JXMN009186', 'Peugeot', '308', 2020, 'Hatchback', 'Dízel', 1700, 'Barna', 9),
(9, 'YZAR789', '8YGBH41JXMN109186', 'Renault', 'Megane', 2019, 'Sedan', 'Benzin', 2000, 'Ezüst', 11),
(10, 'BCDW012', '0BGBH41JXMN209186', 'Fiat', '500', 2024, 'Hatchback', 'Benzin', 1200, 'Fehér', 10),
(11, 'EFGA345', '2EGBH41JXMN309186', 'Skoda', 'Octavia', 2018, 'Sedan', 'Benzin', 1800, 'Kék', 8),
(12, 'HIJF678', '3HGBH41JXMN409186', 'Hyundai', 'i30', 2022, 'Hatchback', 'Dízel', 1400, 'Piros', 5),
(13, 'KLMC901', '4KGBH41JXMN509186', 'Opel', 'Astra', 2016, 'Hatchback', 'Benzin', 2000, 'Sárga', 7),
(14, 'NODP234', '5NGBH41JXMN609186', 'Mazda', '3', 2023, 'Sedan', 'Dízel', 2200, 'Zöld', 4),
(15, 'QRSC567', '6QGBH41JXMN709186', 'Subaru', 'Impreza', 2017, 'Hatchback', 'Benzin', 1600, 'Fekete', 6),
(16, 'TUVJ890', '7TGBH41JXMN809186', 'Citroen', 'C3', 2021, 'Hatchback', 'Benzin', 1900, 'Ezüst', 3),
(17, 'VWXL123', '8VGBH41JXMN909186', 'Kia', 'Rio', 2019, 'Sedan', 'Dízel', 1800, 'Kék', 1),
(18, 'YZAU456', '9YGBH41JXMN009186', 'Suzuki', 'Swift', 2018, 'Hatchback', 'Benzin', 1500, 'Fehér', 2),
(19, 'BCDQ789', '0BGBH41JXMN109186', 'Volvo', 'V40', 2022, 'Sedan', 'Dízel', 1700, 'Fekete', 12),
(20, 'EFGA012', '1EGBH41JXMN209186', 'Dacia', 'Logan', 2017, 'Hatchback', 'Benzin', 1600, 'Narancs', 6),
(21, 'HIJS345', '2HGBH41JXMN309186', 'Nissan', 'Micra', 2020, 'Hatchback', 'Benzin', 1800, 'Barna', 9);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerviz`
--

CREATE TABLE IF NOT EXISTS `szerviz` (
  `szerviz_id` int(11) NOT NULL AUTO_INCREMENT,
  `varos` varchar(20) NOT NULL,
  `ugyvezeto` varchar(20) NOT NULL,
  `telefon` int(11) NOT NULL,
  `email` varchar(35) NOT NULL,
  PRIMARY KEY (`szerviz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szerviz`
--

INSERT INTO `szerviz` (`szerviz_id`, `varos`, `ugyvezeto`, `telefon`, `email`) VALUES
(1, 'Pécs', 'Kovács János', 301234567, 'kovacs.janos@example.com'),
(2, 'Budapest', 'Nagy Anna', 209876543, 'nagy.anna@example.com'),
(3, 'Debrecen', 'Kiss Péter', 705551234, 'kiss.peter@example.com'),
(4, 'Szeged', 'Tóth Éva', 302227890, 'toth.eva@example.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szervizbejegyzes`
--

INSERT INTO `szervizbejegyzes` (`szervizbejegyzes_id`, `idopont`, `megjegyzes`, `ar`, `fizetve`, `km_ora`, `szerviz_id`, `auto_id`) VALUES
(1, '2023-01-01', 'Motorolaj és légszűrő cseréje', 33000, 0x31, 210000, 1, 1),
(2, '2023-02-02', 'Váltóolaj és fékolaj cseréje', 39000, 0x31, 150000, 2, 2),
(3, '2023-03-03', 'Fékbetétek és féktárcsa cseréje', 32000, 0x31, 80000, 3, 3),
(4, '2023-04-04', 'Motorolaj és gyújtógyertya cseréje', 40000, 0x31, 250000, 4, 4),
(5, '2023-05-05', 'Váltóolaj és hűtőfolyadék cseréje', 37000, 0x31, 120000, 1, 5),
(6, '2023-06-06', 'Fékbetétek és üzemanyagszűrő cseréje', 35000, 0x31, 320000, 2, 6),
(7, '2023-07-07', 'Motorolaj és légszűrő cseréje', 32000, 0x31, 100000, 3, 7),
(8, '2023-08-08', 'Váltóolaj és fékolaj cseréje', 38000, 0x31, 420000, 4, 8),
(9, '2023-09-09', 'Fékbetétek és féktárcsa cseréje', 33000, 0x31, 50000, 1, 9),
(10, '2023-10-10', 'Motorolaj és gyújtógyertya cseréje', 42000, 0x31, 270000, 2, 10),
(11, '2023-01-01', 'Motorolaj és légszűrő cseréje', 35000, 0x31, 240000, 1, 1),
(12, '2023-01-02', 'Váltóolaj és fékolaj cseréje', 38000, 0x31, 160000, 2, 2),
(13, '2023-01-03', 'Fékbetétek és féktárcsa cseréje', 32000, 0x31, 80000, 3, 3),
(14, '2023-01-04', 'Motorolaj és gyújtógyertya cseréje', 39000, 0x31, 200000, 4, 4),
(15, '2023-01-05', 'Váltóolaj és hűtőfolyadék cseréje', 36000, 0x31, 120000, 1, 5),
(16, '2023-01-06', 'Fékbetétek és üzemanyagszűrő cseréje', 37000, 0x31, 300000, 2, 6),
(17, '2023-01-07', 'Motorolaj és légszűrő cseréje', 34000, 0x31, 100000, 3, 7),
(18, '2023-01-08', 'Váltóolaj és fékolaj cseréje', 38000, 0x31, 350000, 4, 8),
(19, '2023-01-09', 'Fékbetétek és féktárcsa cseréje', 32000, 0x31, 50000, 1, 9),
(20, '2023-01-10', 'Motorolaj és gyújtógyertya cseréje', 39000, 0x31, 270000, 2, 10),
(21, '2023-01-01', 'Motorolaj és légszűrő cseréje', 35000, 0x31, 240000, 1, 9),
(22, '2023-02-05', 'Váltóolaj és fékolaj cseréje', 38000, 0x31, 160000, 2, 2),
(23, '2023-03-15', 'Fékbetétek és féktárcsa cseréje', 32000, 0x31, 80000, 3, 3),
(24, '2023-04-20', 'Motorolaj és gyújtógyertya cseréje', 39000, 0x31, 200000, 4, 4),
(25, '2023-06-01', 'Váltóolaj és hűtőfolyadék cseréje', 36000, 0x31, 120000, 1, 5),
(26, '2023-08-11', 'Fékbetétek és üzemanyagszűrő cseréje', 37000, 0x31, 300000, 2, 6),
(27, '2023-10-19', 'Motorolaj és légszűrő cseréje', 34000, 0x31, 100000, 3, 7),
(28, '2023-11-25', 'Váltóolaj és fékolaj cseréje', 38000, 0x31, 350000, 4, 8),
(29, '2024-01-02', 'Fékbetétek és féktárcsa cseréje', 32000, 0x31, 50000, 1, 9),
(30, '2024-02-29', 'Motorolaj és gyújtógyertya cseréje', 39000, 0x31, 270000, 2, 10),
(31, '2023-01-05', 'Fékolaj és légszűrő csere', 45000, 0x31, 18000, 1, 11),
(32, '2023-02-10', 'Vezérműszíj csere', 60000, 0x31, 25000, 2, 12),
(33, '2023-03-15', 'Fékbetét és fékolaj csere', 53000, 0x31, 33000, 3, 13),
(34, '2023-04-20', 'Motorolaj csere', 70000, 0x31, 38000, 4, 14),
(35, '2023-05-25', 'Üzemanyagszűrő cseréje', 55000, 0x31, 42000, 1, 15),
(36, '2023-06-30', 'Fényszóró és olajszűrő csere', 62000, 0x31, 47000, 2, 16),
(37, '2023-07-05', 'Légkondicionáló töltés', 58000, 0x31, 52000, 3, 17),
(38, '2023-08-10', 'Motorolaj és vezérműszíj csere', 80000, 0x31, 56000, 4, 10),
(39, '2023-09-15', 'Fékbetét cseréje', 64000, 0x31, 61000, 1, 11),
(40, '2023-10-20', 'Légszűrő és fékolaj csere', 53000, 0x31, 68000, 2, 12),
(41, '2023-11-25', 'Fékolaj csere', 55000, 0x31, 25000, 1, 13),
(42, '2023-10-20', 'Fékbetét cseréje', 63000, 0x31, 28000, 2, 14),
(43, '2023-09-15', 'Motorolaj és vezérműszíj csere', 72000, 0x31, 33000, 3, 15),
(44, '2023-08-10', 'Légkondicionáló töltés', 60000, 0x31, 38000, 4, 16),
(45, '2023-07-05', 'Fényszóró és olajszűrő csere', 67000, 0x31, 42000, 1, 17),
(46, '2023-06-30', 'Üzemanyagszűrő cseréje', 54000, 0x31, 45000, 2, 10),
(47, '2023-05-25', 'Légszűrő és fékolaj csere', 59000, 0x31, 49000, 3, 11),
(48, '2023-04-20', 'Fékolaj és légszűrő csere', 65000, 0x31, 52000, 4, 12),
(49, '2023-03-15', 'Vezérműszíj csere', 69000, 0x31, 55000, 1, 13),
(50, '2023-02-10', 'Fékbetét és fékolaj csere', 60000, 0x31, 58000, 2, 14),
(51, '2023-01-05', 'Fékolaj és olajszűrő csere', 58000, 0x31, 31000, 1, 15),
(52, '2023-02-20', 'Vezérműszíj cseréje', 69000, 0x31, 34000, 2, 16),
(53, '2023-03-30', 'Fékbetét cseréje', 62000, 0x31, 38000, 3, 17),
(54, '2023-04-10', 'Légszűrő cseréje', 54000, 0x31, 42000, 4, 10),
(55, '2023-05-15', 'Fékolaj csere', 59000, 0x31, 45000, 1, 11),
(56, '2023-06-25', 'Motorolaj és vezérműszíj csere', 72000, 0x31, 49000, 2, 12),
(57, '2023-07-10', 'Fényszóró és olajszűrő csere', 64000, 0x31, 52000, 3, 13),
(58, '2023-08-20', 'Üzemanyagszűrő cseréje', 61000, 0x31, 55000, 4, 14),
(59, '2023-09-05', 'Légszűrő és fékolaj csere', 68000, 0x31, 58000, 1, 15),
(60, '2023-10-10', 'Fékolaj és fékbetét csere', 70000, 0x31, 61000, 2, 16);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ugyfel`
--

INSERT INTO `ugyfel` (`ugyfel_id`, `nev`, `anyja_neve`, `szul_ido`, `telefon`, `szemelyi_szam`, `email`, `jelszo`, `lakcim`) VALUES
(1, 'Kovács János', 'Kovácsné Mária', '1985-10-12', 361234567, '910089CE', 'kovacs.janos@example.com', 'titkos123', '1024 Budapest, Kossuth 12'),
(2, 'Nagy Éva', 'Nagyné Klára', '1990-08-27', 362045678, '880707LK', 'eva.nagy@example.hu', 'biztonsagos', '1030 Budapest, Rákóczi 8'),
(3, 'Kiss Gábor', 'Kissné Ilona', '1979-11-05', 363056789, '750523MK', 'gabor.kiss@example.com', 'titkosabc', '1137 Budapest, Váci út 22'),
(4, 'Horváth Anna', 'Horváthné Eszter', '1988-06-20', 361234567, '900612NE', 'anna.horvath@example.com', 'jelszo123', '1111 Budapest, Bartók 3'),
(5, 'Tóth Péter', 'Tóthné Zsuzsa', '1995-09-03', 362045678, '931019ZZ', 'peter.toth@example.hu', 'biztonsagos', '1165 Budapest, Fő út 16'),
(6, 'Szabó András', 'Szabóné Judit', '1980-12-15', 363056789, '820412AJ', 'andras.szabo@example.com', 'szabo1980', '1047 Budapest, Duna sor 20'),
(7, 'Farkas Krisztina', 'Farkasné Erzsébet', '1992-04-30', 361234567, '940430FE', 'krisztina.farkas@example.com', 'farkaskrisz', '1106 Budapest, Káposztásmegyer 3'),
(8, 'Varga Balázs', 'Vargáné Klára', '1987-07-22', 362045678, '870722VK', 'balazs.varga@example.com', 'vargab', '1052 Budapest, Bajcsy-Zsilinszky út 12'),
(9, 'Molnár Dóra', 'Molnárné Petra', '1983-03-18', 363056789, '830318MP', 'dora.molnar@example.com', 'molnardora', '1098 Budapest, Üllői út 9'),
(10, 'Kovács Balázs', 'Kovácsné Anna', '1998-11-09', 361234567, '981109KA', 'balazs.kovacs@example.com', 'kovacsbalazs', '1132 Budapest, Visegrádi utca 5'),
(11, 'Németh Anna', 'Némethné Eszter', '1986-05-25', 362045678, '860525NE', 'anna.nemeth@example.com', 'nemethanna', '1141 Budapest, Egressy út 18'),
(12, 'Fekete Zoltán', 'Feketéné Júlia', '1994-09-10', 363056789, '940910FJ', 'zoltan.fekete@example.com', 'feketezoli', '1174 Budapest, Szabadkai utca 32'),
(13, 'Takács Péter', 'Takácsné Erzsébet', '1977-12-04', 361234567, '771204TE', 'peter.takacs@example.com', 'takacspeter', '1043 Budapest, Dózsa György út 11'),
(14, 'Simon Ágnes', 'Simonné Klára', '1989-08-14', 362045678, '890814SK', 'agnes.simon@example.com', 'simonagnes', '1122 Budapest, Béla tér 4'),
(15, 'Balogh Gábor', 'Baloghné Irén', '1975-01-30', 363056789, '750130BI', 'gabor.balogh@example.com', 'baloghgabor', '1066 Budapest, Teréz körút 22'),
(16, 'Török Edit', 'Törökné Eszter', '1984-07-08', 361234567, '840708TE', 'edit.torok@example.com', 'törökedit', '1158 Budapest, Körvasút sor 6'),
(17, 'Hegedűs Zsuzsa', 'Hegedűsné Ilona', '1991-02-12', 362045678, '910212HI', 'zsuzsa.hegedus@example.com', 'hegeduszsu', '1186 Budapest, Örs vezér tere 14');

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
