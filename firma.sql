-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Cze 2020, 22:50
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `firma`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `material`
--

CREATE TABLE `material` (
  `ID` int(11) NOT NULL,
  `material` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `kategoria` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `cena_jednostkowa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `material`
--

INSERT INTO `material` (`ID`, `material`, `kategoria`, `cena_jednostkowa`) VALUES
(1, 'Styropian', 'Ocieplenie', 34),
(2, 'Wełna szklana', 'Ocieplenie', 41),
(3, 'Wiązka kabli elektrycznych', 'Instalacja elektryczna', 13),
(4, 'Cement', 'Konstrukcje', 39),
(5, 'Płytki ceramiczne', 'Wykończenie', 132),
(6, 'Regips', 'Wykończenie', 45),
(7, 'Blacha dachowa', 'Konstrukcje', 102),
(8, 'Farba malarska', 'Wykończenie', 45),
(9, 'Piasek', 'Konstrukcje', 54),
(10, 'Żwir', 'Konstrukcje', 56),
(11, 'Listwy wykończeniowe', 'Wykończenie', 19),
(12, 'Tynk', 'Wykończenie', 21),
(13, 'Szpachla malarska', 'Wykończenie', 17),
(14, 'Pręty stalowe', 'Konstrukcje', 34),
(15, 'Kołki mocujące', 'Wykończenie', 7);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownik`
--

CREATE TABLE `pracownik` (
  `ID` int(11) NOT NULL,
  `Imie` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `Nazwisko` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `Rola` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `Stanowisko` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `Pensja` int(11) NOT NULL,
  `Kod` int(11) NOT NULL,
  `Kontakt` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `Email` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `Haslo` varchar(512) COLLATE utf8mb4_polish_ci NOT NULL,
  `czy_istnieje` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `pracownik`
--

INSERT INTO `pracownik` (`ID`, `Imie`, `Nazwisko`, `Rola`, `Stanowisko`, `Pensja`, `Kod`, `Kontakt`, `Email`, `Haslo`, `czy_istnieje`) VALUES
(1, 'Jan', 'Kowalski', 'kierownik', 'Właściciel', 0, 10000, '0', 'jan@kowalski.pl', '$2y$10$IvjxJDB/jmIC.xRgN0YseutodWw.Ngq5Gbd22lmnOT/HZK2WAU1Hm', 1),
(7, 'Marcin', 'Knapik', 'pracownik', 'Tynkarz', 3641, 21000, '907415236', 'mknapik@interia.pl', '$2y$10$gmi.U3/8Auy.wTlKvaG.L.Uh0k9I42ctiqTj0QWeUzPrLMynZf64e', 1),
(10, 'Tomasz', 'Madziarczyk', 'brygadzista', 'Brygadzista', 7989, 31000, '+48652147896', 'tomasz@onet.pl', '$2y$10$7/DnDHYps2fHNqmo5HM7uu.1B19WhxueeMQSdzSh7yNFjJTgjFlm2', 1),
(11, 'Andrzej', 'Wielki', 'pracownik', 'Elektryk', 4561, 31001, '664789123', 'andrzej@wielki.com', '$2y$10$J3AgtR1tW5blmvQCkb8Sxe1XK1Zu/PEOl8p4PPh/2VSQDAeMKQSKK', 1),
(13, 'Łukasz', 'Szczęsny', 'brygadzista', 'Brygadzista', 7890, 32149, '789123091', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(14, 'Tadeusz', 'Ostrowski', 'brygadzista', 'Brygadzista', 7821, 45678, '456213478', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(15, 'Julian', 'Tomczyk', 'brygadzista', 'Brygadzista', 7891, 98321, '998123678', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(17, 'Antoni', 'Pacześ', 'brygadzista', 'Brygadzista', 7891, 31002, '345671245', 'antoni@paczes.pl', '$2y$10$6mQ/JCtymNQ9HqDLPYMKW.vs2VGJMwSMdcU4Pe2FirkGzXRPCYKBW', 1),
(18, 'Maciej', 'Michnik', 'brygadzista', 'Brygadzista', 6781, 31003, '789234045', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(19, 'Łukasz', 'Jeziorek', 'pracownik', 'Murarz', 4210, 31004, '890341267', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(20, 'Tomasz', 'Niesiołek', 'pracownik', 'Elektryk', 5021, 31005, '789123410', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(21, 'Alfred', 'Malinowski', 'pracownik', 'Kierowca', 4210, 31006, '178345216', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(22, 'Zygfryd ', 'Mustalski', 'pracownik', 'Dekarz', 3891, 31007, '789234567', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(24, 'Marcin', 'Lodomir', 'pracownik', 'Kierowca', 4210, 31008, '567901234', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(25, 'Tobiasz', 'Międzierski', 'pracownik', 'Spawacz', 8901, 31009, '554328965', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(27, 'Alfred', 'Wieluski', 'pracownik', 'Dekarz', 3456, 31010, '902789123', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(28, 'Ignacy', 'Niedzierski', 'pracownik', 'Kierowca', 4021, 31011, '890123432', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(29, 'Łukasz', 'Maciaszczyk', 'pracownik', 'Tynkarz', 3451, 31012, '661234012', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(30, 'Michał', 'Tomaszewski', 'pracownik', 'Elektryk', 4213, 31013, '891567345', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(31, 'Bogdan', 'Zalewski', 'pracownik', 'Spawacz', 8010, 31014, '553210966', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(32, 'Tycjan', 'Idoński', 'pracownik', 'Kierowca', 4021, 31015, '6783209999', 'tycjan@idonski.pl', '$2y$10$ZmDHgV2Gm2G7zzQrTDSVLejHYg.fGb2DCtqMOMiNkKQkB7EzkgDm2', 1),
(33, 'Bartosz', 'Kozera', 'pracownik', 'Malarz', 4002, 31016, '771200312', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(34, 'Lucjan', 'Tomborski', 'pracownik', 'Glazurnik', 6254, 31017, '990123771', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(35, 'Adam', 'Top', 'pracownik', 'Stolarz', 5531, 31020, '789010231', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(36, 'Piotr', 'Ludzki', 'pracownik', 'Dekarz', 3021, 30021, '661234567', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0),
(37, 'Krzystof', 'Zygmunt', 'pracownik', 'Murarz', 3671, 31091, '775213809', '', '$2y$10$eqq7sFg6JBGAGStqj3iONOi/DkgjtmTWp9Lh6ddYoW5ObUa.V6RfG', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przydzial_materialow`
--

CREATE TABLE `przydzial_materialow` (
  `ID` int(11) NOT NULL,
  `ID_zlecenia` int(11) NOT NULL,
  `ID_materialu` int(11) NOT NULL,
  `ilosc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `przydzial_materialow`
--

INSERT INTO `przydzial_materialow` (`ID`, `ID_zlecenia`, `ID_materialu`, `ilosc`) VALUES
(53, 20, 12, 56),
(54, 20, 2, 22),
(55, 19, 7, 13),
(56, 19, 1, 17),
(57, 21, 4, 16),
(58, 21, 9, 36),
(59, 21, 14, 39),
(60, 22, 8, 4),
(61, 22, 6, 25),
(62, 22, 11, 7),
(63, 23, 1, 16),
(64, 23, 2, 31),
(65, 24, 4, 16),
(66, 24, 9, 12),
(67, 24, 14, 16),
(68, 24, 12, 17);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przydzial_pracownikow`
--

CREATE TABLE `przydzial_pracownikow` (
  `ID` int(11) NOT NULL,
  `ID_pracownika` int(11) NOT NULL,
  `ID_zlecenia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `przydzial_pracownikow`
--

INSERT INTO `przydzial_pracownikow` (`ID`, `ID_pracownika`, `ID_zlecenia`) VALUES
(33, 10, 19),
(34, 22, 19),
(35, 11, 19),
(36, 13, 20),
(38, 34, 20),
(39, 14, 21),
(40, 28, 21),
(41, 31, 21),
(42, 15, 22),
(43, 30, 22),
(44, 7, 22),
(45, 17, 23),
(46, 32, 23),
(47, 37, 23),
(48, 18, 24),
(49, 7, 24),
(50, 35, 24),
(51, 32, 20);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `urlop`
--

CREATE TABLE `urlop` (
  `ID` int(11) NOT NULL,
  `ID_pracownika` int(11) NOT NULL,
  `Opis` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `Do_kiedy` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `urlop`
--

INSERT INTO `urlop` (`ID`, `ID_pracownika`, `Opis`, `Do_kiedy`) VALUES
(18, 32, 'wypoczynkowy', '2020-07-10');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zlecenie`
--

CREATE TABLE `zlecenie` (
  `ID` int(11) NOT NULL,
  `Adres` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `Typ_prac` varchar(100) COLLATE utf8mb4_polish_ci NOT NULL,
  `Metraz` int(11) NOT NULL,
  `Ustalona_cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `zlecenie`
--

INSERT INTO `zlecenie` (`ID`, `Adres`, `Typ_prac`, `Metraz`, `Ustalona_cena`) VALUES
(19, 'ul. Kwiatowa 34 Kraków', 'Ocieplenie poddasza', 47, 17889),
(20, 'ul. Barbackiego 76 Łącko', 'Elewacja zewnętrzna', 102, 31091),
(21, 'ul. Partyzancka 34 Sosnowiec', 'Remont ogólny', 121, 102345),
(22, 'ul. Miękka 45 Nowy Targ', 'Wykończenie wnętrza', 56, 80456),
(23, 'ul. Ciekawa 23 Kraków', 'Ocieplenie budynku', 132, 132091),
(24, 'ul. Łąkowa 32 Kraków', 'Remont ogólny', 47, 15021);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Kod` (`Kod`);

--
-- Indeksy dla tabeli `przydzial_materialow`
--
ALTER TABLE `przydzial_materialow`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `przydzial_materialow_ibfk_1` (`ID_materialu`),
  ADD KEY `przydzial_materialow_ibfk_2` (`ID_zlecenia`);

--
-- Indeksy dla tabeli `przydzial_pracownikow`
--
ALTER TABLE `przydzial_pracownikow`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_pracownika` (`ID_pracownika`),
  ADD KEY `ID_zlecenia` (`ID_zlecenia`);

--
-- Indeksy dla tabeli `urlop`
--
ALTER TABLE `urlop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `urlop_ibfk_1` (`ID_pracownika`);

--
-- Indeksy dla tabeli `zlecenie`
--
ALTER TABLE `zlecenie`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `pracownik`
--
ALTER TABLE `pracownik`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT dla tabeli `przydzial_materialow`
--
ALTER TABLE `przydzial_materialow`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT dla tabeli `przydzial_pracownikow`
--
ALTER TABLE `przydzial_pracownikow`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT dla tabeli `urlop`
--
ALTER TABLE `urlop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT dla tabeli `zlecenie`
--
ALTER TABLE `zlecenie`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `przydzial_materialow`
--
ALTER TABLE `przydzial_materialow`
  ADD CONSTRAINT `przydzial_materialow_ibfk_1` FOREIGN KEY (`ID_materialu`) REFERENCES `material` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `przydzial_materialow_ibfk_2` FOREIGN KEY (`ID_zlecenia`) REFERENCES `zlecenie` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `przydzial_pracownikow`
--
ALTER TABLE `przydzial_pracownikow`
  ADD CONSTRAINT `przydzial_pracownikow_ibfk_1` FOREIGN KEY (`ID_pracownika`) REFERENCES `pracownik` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `przydzial_pracownikow_ibfk_2` FOREIGN KEY (`ID_zlecenia`) REFERENCES `zlecenie` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `urlop`
--
ALTER TABLE `urlop`
  ADD CONSTRAINT `urlop_ibfk_1` FOREIGN KEY (`ID_pracownika`) REFERENCES `pracownik` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
