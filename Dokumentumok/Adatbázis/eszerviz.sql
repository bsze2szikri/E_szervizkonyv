-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Dec 03. 20:35
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szervizbejegyzes`
--

INSERT INTO `szervizbejegyzes` (`szervizbejegyzes_id`, `idopont`, `megjegyzes`, `ar`, `fizetve`, `km_ora`, `szerviz_id`, `auto_id`) VALUES
(1, '2020-01-01', 'Fékjavítás, Olajcsere', 80000, 0x31, 12000, 3, 1),
(2, '2020-04-11', 'Karosszéria javítás', 150000, 0x31, 18000, 3, 1),
(3, '2020-07-20', 'Lökhárító csere, Elektromos javítás', 300000, 0x31, 25000, 3, 1),
(4, '2020-01-01', 'Motorolaj cseréje, Légszűrő csere', 50000, 0x31, 10000, 3, 2),
(5, '2020-04-21', 'Fékrendszer javítása, Lökhárító csere', 180000, 0x31, 18000, 3, 2),
(6, '2020-08-08', 'Elektromos rendszer javítása, Lámpa csere', 280000, 0x31, 25000, 3, 2),
(7, '2020-01-01', 'Motorolaj cseréje, Légszűrő csere', 80000, 0x31, 12000, 3, 3),
(8, '2020-04-28', 'Fékrendszer javítása, Karosszéria festés', 420000, 0x31, 25000, 3, 3),
(9, '2020-09-24', 'Elektromos rendszer javítása, Lámpa csere, Lökhárító csere', 180000, 0x31, 35000, 3, 3),
(10, '2020-01-01', 'Olajcsere, Légszűrő csere', 90000, 0x31, 15000, 1, 4),
(11, '2020-04-25', 'Fékrendszer ellenőrzés, Motorhibák javítása', 350000, 0x31, 22000, 1, 4),
(12, '2020-10-21', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 550000, 0x31, 38000, 1, 4),
(13, '2020-01-01', 'Olajcsere, Légszűrő csere', 120000, 0x31, 12000, 3, 5),
(14, '2020-05-01', 'Fékrendszer ellenőrzés, Motorhibák javítása', 400000, 0x31, 20000, 3, 5),
(15, '2020-09-19', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 580000, 0x31, 32000, 3, 5),
(16, '2020-01-01', 'Motorolaj csere, Légszűrő csere', 150000, 0x31, 12000, 4, 6),
(17, '2020-05-01', 'Fékrendszer ellenőrzés, Motorhibák javítása', 450000, 0x31, 20000, 4, 6),
(18, '2020-09-18', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 560000, 0x31, 32000, 4, 6),
(19, '2020-01-01', 'Olajcsere, Légszűrő csere', 120000, 0x31, 12000, 1, 7),
(20, '2020-05-20', 'Fékrendszer ellenőrzés, Motorhibák javítása', 450000, 0x31, 20000, 1, 7),
(21, '2020-10-16', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 550000, 0x31, 32000, 1, 7),
(22, '2020-01-01', 'Olajcsere, Légszűrő csere', 140000, 0x31, 11234, 4, 8),
(23, '2020-05-21', 'Fékrendszer ellenőrzés, Motorhibák javítása', 510000, 0x31, 21234, 4, 8),
(24, '2020-11-17', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 590000, 0x31, 32456, 4, 8),
(25, '2020-01-01', 'Motorolaj cseréje, Légszűrő csere', 180000, 0x31, 11324, 1, 9),
(26, '2020-05-19', 'Fékrendszer ellenőrzés, Motorhibák javítása', 410000, 0x31, 21456, 1, 9),
(27, '2020-11-16', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 550000, 0x31, 32789, 1, 9),
(28, '2020-01-01', 'Fékrendszer ellenőrzése, Olajcsere', 220000, 0x31, 10123, 4, 10),
(29, '2020-05-22', 'Motorhibák javítása, Lökhárító javítás', 480000, 0x31, 21123, 4, 10),
(30, '2020-11-19', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 580000, 0x31, 32567, 4, 10),
(31, '2020-01-01', 'Fékrendszer ellenőrzése, Olajcsere', 180000, 0x31, 10456, 4, 11),
(32, '2020-05-21', 'Motorhibák javítása, Lökhárító javítás', 440000, 0x31, 21678, 4, 11),
(33, '2020-11-17', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 580000, 0x31, 33001, 4, 11),
(34, '2020-01-01', 'Fékrendszer ellenőrzése, Olajcsere', 200000, 0x31, 10543, 2, 12),
(35, '2020-05-21', 'Motorhibák javítása, Lökhárító javítás', 480000, 0x31, 21876, 2, 12),
(36, '2020-11-17', 'Elektromos rendszer diagnosztizálása, Lámpa csere, Karosszéria javítás', 580000, 0x31, 33201, 2, 12),
(37, '2020-01-01', 'Olajcsere, légszűrő csere', 180000, 0x31, 11050, 4, 13),
(38, '2020-05-19', 'Fékrendszer ellenőrzése, motorhibák javítása', 420000, 0x31, 22025, 4, 13),
(39, '2020-11-16', 'Elektromos rendszer diagnosztizálása, lámpa csere, karosszéria javítás', 550000, 0x31, 33012, 4, 13),
(40, '2020-01-01', 'Olajcsere, légszűrő csere', 160000, 0x31, 10324, 2, 14),
(41, '2020-05-20', 'Fékrendszer ellenőrzése, motorhibák javítása', 420000, 0x31, 21500, 2, 14),
(42, '2020-11-15', 'Elektromos rendszer diagnosztizálása, lámpa csere, karosszéria javítás', 550000, 0x31, 32789, 2, 14),
(43, '2020-01-01', 'Motorolaj cseréje, légzsírő csere', 160000, 0x31, 10234, 4, 15),
(44, '2020-05-20', 'Fékrendszer ellenőrzése, motorhibák javítása', 420000, 0x31, 21250, 4, 15),
(45, '2020-11-15', 'Elektromos rendszer diagnosztizálása, lámpa csere, karosszéria javítás', 570000, 0x31, 32789, 4, 15),
(46, '2020-01-01', 'Olajcsere, légszűrő csere', 160000, 0x31, 10250, 2, 16),
(47, '2020-05-20', 'Fékrendszer ellenőrzése, motorhibák javítása', 420000, 0x31, 21500, 2, 16),
(48, '2020-11-15', 'Elektromos rendszer diagnosztizálása, lámpa csere, karosszéria javítás', 550000, 0x31, 32789, 2, 16),
(49, '2020-01-01', 'Fékrendszer ellenőrzése, motorolaj cseréje', 160000, 0x31, 10456, 2, 17),
(50, '2020-05-20', 'Karbantartás, fékbetét csere', 420000, 0x31, 21678, 2, 17),
(51, '2020-11-15', 'Karbantartás, motorhibák javítása', 550000, 0x31, 33012, 2, 17),
(52, '2020-01-01', 'Olajcsere, szűrők cseréje', 180000, 0x31, 10543, 2, 18),
(53, '2020-05-21', 'Fékrendszer ellenőrzése, motorhibák javítása', 420000, 0x31, 21876, 2, 18),
(54, '2020-11-17', 'Elektromos rendszer diagnosztizálása, lámpa csere, karosszéria javítás', 550000, 0x31, 33001, 2, 18),
(55, '2020-01-01', 'Motorolaj és légszűrő cseréje', 160000, 0x31, 10450, 1, 19),
(56, '2020-05-20', 'Fékrendszer ellenőrzése és javítása', 420000, 0x31, 21500, 1, 19),
(57, '2020-11-15', 'Elektromos rendszer javítása és lámpák cseréje', 550000, 0x31, 32700, 1, 19),
(58, '2020-01-01', 'Olajcsere és szűrők cseréje', 160000, 0x31, 10230, 4, 20),
(59, '2020-05-20', 'Fékrendszer ellenőrzése, motorhibák javítása', 420000, 0x31, 21550, 4, 20),
(60, '2020-11-15', 'Elektromos rendszer diagnosztizálása és javítása, karosszéria munkák', 550000, 0x31, 33000, 4, 20),
(61, '2020-01-01', 'Motorolaj és légszűrő cseréje', 160000, 0x31, 10300, 4, 21),
(62, '2020-05-20', 'Fékrendszer ellenőrzése, motorhibák javítása', 420000, 0x31, 21750, 4, 21),
(63, '2020-11-15', 'Elektromos rendszer diagnosztizálása és javítása, karosszéria javítás', 550000, 0x31, 32800, 4, 21);

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
(6, 'Szabó András', 'Szabóné Judit', '1980-12-15', 363056789, '820412AJ', 'andras.szabo@example.com', 'szabo1980', '6720 Szeged Kék út 10'),
(7, 'Farkas Krisztina', 'Farkasné Erzsébet', '1992-04-30', 361234567, '940430FE', 'krisztina.farkas@example.com', 'farkaskrisz', '6728 Szeged Napfény köz 17'),
(8, 'Varga Balázs', 'Vargáné Klára', '1987-07-22', 362045678, '870722VK', 'balazs.varga@example.com', 'vargab', '6726 Szeged Rózsaszín sor 33'),
(9, 'Molnár Dóra', 'Molnárné Petra', '1983-03-18', 363056789, '830318MP', 'dora.molnar@example.com', 'molnardora', '6722 Szeged Arany János út 25'),
(10, 'Kovács Balázs', 'Kovácsné Anna', '1998-11-09', 361234567, '981109KA', 'balazs.kovacs@example.com', 'kovacsbalazs', '6720 Szeged Kéktó utca 12'),
(11, 'Németh Anna', 'Némethné Eszter', '1986-05-25', 362045678, '860525NE', 'anna.nemeth@example.com', 'nemethanna', '7623 Pécs Zöldfa utca 22'),
(12, 'Fekete Zoltán', 'Feketéné Júlia', '1994-09-10', 363056789, '940910FJ', 'zoltan.fekete@example.com', 'feketezoli', '7622 Pécs Arany tér 10'),
(13, 'Takács Péter', 'Takácsné Erzsébet', '1977-12-04', 361234567, '771204TE', 'peter.takacs@example.com', 'takacspeter', '7621 Pécs Kék utca 5'),
(14, 'Simon Ágnes', 'Simonné Klára', '1989-08-14', 362045678, '890814SK', 'agnes.simon@example.com', 'simonagnes', '4034 Debrecen Rózsaszín sor 18'),
(15, 'Balogh Gábor', 'Baloghné Irén', '1975-01-30', 363056789, '750130BI', 'gabor.balogh@example.com', 'baloghgabor', '4032 Debrecen Zöldfa út 29'),
(16, 'Török Edit', 'Törökné Eszter', '1984-07-08', 361234567, '840708TE', 'edit.torok@example.com', 'törökedit', '4030 Debrecen Arany tér 14'),
(17, 'Hegedűs Zsuzsa', 'Hegedűsné Ilona', '1991-02-12', 362045678, '910212HI', 'zsuzsa.hegedus@example.com', 'hegeduszsu', '4024 Debrecen Kék utca 7');

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
