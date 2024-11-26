-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 26, 2024 at 12:10 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep_vinyle`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artyści`
--

CREATE TABLE `artyści` (
  `artysta_id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL,
  `gatunek` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artyści`
--

INSERT INTO `artyści` (`artysta_id`, `nazwa`, `gatunek`) VALUES
(1, 'Drake', '3'),
(2, 'Justin Bieber', '2'),
(3, 'The Weeknd', '7'),
(4, 'Daft Punk', '4'),
(5, 'Taylor Swift', '2'),
(6, 'Nirvana', '6'),
(7, 'Eminem', '3'),
(8, 'Daniel Ceasar', '7'),
(9, 'Tame Impala', '6'),
(10, 'David Guetta', '4'),
(11, 'The Beattles', '1'),
(12, 'Kanye West', '3'),
(13, 'Mitski', '5'),
(14, 'Steve Lacy', '5'),
(15, 'SZA', '7'),
(16, 'TvGirl', '5'),
(17, 'Arctic Monkeys', '6'),
(18, 'Travis Scott', '3'),
(19, 'RadioHead', '6'),
(20, 'Lady Gaga', '2'),
(21, 'Frank Ocean', '7'),
(22, 'Queen', '1'),
(23, 'David Bowie', '6');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `gatunek_id` int(11) NOT NULL,
  `nazwa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gatunki`
--

INSERT INTO `gatunki` (`gatunek_id`, `nazwa`) VALUES
(6, 'Alternative'),
(4, 'Elektronika'),
(3, 'HipHop'),
(5, 'Indie'),
(2, 'Pop'),
(7, 'R&b'),
(1, 'Rock');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adres` varchar(255) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `pracownik_id` int(11) NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`pracownik_id`, `imie`, `nazwisko`, `email`, `telefon`) VALUES
(1, 'Jan', 'Kowalski', 'jan.kowalski@gmail.com', '765-456-897'),
(2, 'Ola', 'Kwiat', 'ola.kwiat@gmail.com', '547-689-190'),
(3, 'Michal', 'Probierz', 'michal.prob@gmail.com', '515-515-212'),
(4, 'Mateusz', 'Nowak', 'anna.nowak@gmail.com', '987-654-334');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `płyty`
--

CREATE TABLE `płyty` (
  `płyta_id` int(11) NOT NULL,
  `tytul` varchar(100) NOT NULL,
  `artysta_id` int(11) DEFAULT NULL,
  `gatunek_id` int(11) DEFAULT NULL,
  `cena` decimal(10,2) NOT NULL,
  `rok_wydania` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `płyty`
--

INSERT INTO `płyty` (`płyta_id`, `tytul`, `artysta_id`, `gatunek_id`, `cena`, `rok_wydania`) VALUES
(1, 'Nevermind', 6, 6, 79.00, '1991'),
(2, 'Blonde', 21, 7, 99.00, '2016'),
(3, 'Graduation', 12, 3, 119.00, '2007'),
(4, 'Abbey Road', 11, 1, 55.00, '1969'),
(5, 'Views', 1, 3, 79.00, '2016'),
(6, 'Justice', 2, 2, 69.00, '2021'),
(7, 'Currents', 9, 6, 109.00, '2015'),
(8, 'SOS', 15, 7, 99.00, '2022'),
(9, 'OK Computer', 19, 6, 95.00, '1994'),
(10, 'Utopia', 18, 3, 109.00, '2023'),
(11, 'Who Really Cares', 16, 5, 99.00, '2016'),
(12, 'AM', 17, 6, 89.00, '2013'),
(13, 'Lover', 5, 2, 69.00, '2019'),
(14, 'Starboy', 3, 7, 125.00, '2016'),
(15, 'Gemini Rights', 14, 5, 99.00, '2022'),
(16, 'Freudian', 8, 7, 99.00, '2017'),
(17, 'Random Access Memories', 4, 4, 79.00, '2013'),
(18, 'The Collage Dropout', 12, 3, 85.00, '2004'),
(19, 'In Rainbows', 19, 6, 109.00, '2007'),
(20, 'Puberty 2', 13, 5, 89.00, '2016'),
(21, 'After Hours', 3, 7, 129.00, '2020'),
(22, 'The Eminem Show', 7, 3, 109.00, '2002');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamówienia`
--

CREATE TABLE `zamówienia` (
  `zamówienie_id` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `pracownik_id` int(11) DEFAULT NULL,
  `data_zamówienia` datetime NOT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamówienia_płyty`
--

CREATE TABLE `zamówienia_płyty` (
  `zamówienie_id` int(11) NOT NULL,
  `płyta_id` int(11) NOT NULL,
  `ilość` int(11) NOT NULL,
  `cena_jednostkowa` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `artyści`
--
ALTER TABLE `artyści`
  ADD PRIMARY KEY (`artysta_id`);

--
-- Indeksy dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`gatunek_id`),
  ADD UNIQUE KEY `nazwa` (`nazwa`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`pracownik_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeksy dla tabeli `płyty`
--
ALTER TABLE `płyty`
  ADD PRIMARY KEY (`płyta_id`),
  ADD KEY `artysta_id` (`artysta_id`),
  ADD KEY `gatunek_id` (`gatunek_id`);

--
-- Indeksy dla tabeli `zamówienia`
--
ALTER TABLE `zamówienia`
  ADD PRIMARY KEY (`zamówienie_id`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `pracownik_id` (`pracownik_id`);

--
-- Indeksy dla tabeli `zamówienia_płyty`
--
ALTER TABLE `zamówienia_płyty`
  ADD PRIMARY KEY (`zamówienie_id`,`płyta_id`),
  ADD KEY `płyta_id` (`płyta_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artyści`
--
ALTER TABLE `artyści`
  MODIFY `artysta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `gatunek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id_klienta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `pracownik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `płyty`
--
ALTER TABLE `płyty`
  MODIFY `płyta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zamówienia`
--
ALTER TABLE `zamówienia`
  MODIFY `zamówienie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `płyty`
--
ALTER TABLE `płyty`
  ADD CONSTRAINT `płyty_ibfk_1` FOREIGN KEY (`artysta_id`) REFERENCES `artyści` (`artysta_id`),
  ADD CONSTRAINT `płyty_ibfk_2` FOREIGN KEY (`gatunek_id`) REFERENCES `gatunki` (`gatunek_id`);

--
-- Constraints for table `zamówienia`
--
ALTER TABLE `zamówienia`
  ADD CONSTRAINT `zamówienia_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`),
  ADD CONSTRAINT `zamówienia_ibfk_2` FOREIGN KEY (`pracownik_id`) REFERENCES `pracownicy` (`pracownik_id`);

--
-- Constraints for table `zamówienia_płyty`
--
ALTER TABLE `zamówienia_płyty`
  ADD CONSTRAINT `zamówienia_płyty_ibfk_1` FOREIGN KEY (`zamówienie_id`) REFERENCES `zamówienia` (`zamówienie_id`),
  ADD CONSTRAINT `zamówienia_płyty_ibfk_2` FOREIGN KEY (`płyta_id`) REFERENCES `płyty` (`płyta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
