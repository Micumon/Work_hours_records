-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 01 Mar 2024, 21:59
-- Wersja serwera: 10.5.8-MariaDB-log
-- Wersja PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `att_list`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `calendar`
--

CREATE TABLE `calendar` (
  `entry_id` int(11) NOT NULL,
  `day` int(2) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `arrival` time DEFAULT NULL,
  `departure` time DEFAULT NULL,
  `add_hours` time DEFAULT NULL,
  `occasion` enum('urlop','zwolnienie','dzien na dziecko','urlop okolicznosciowy','urlop bezplatny') COLLATE utf8_bin DEFAULT NULL,
  `worker` int(11) NOT NULL,
  `edited` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `calendar`
--

INSERT INTO `calendar` (`entry_id`, `day`, `month`, `year`, `arrival`, `departure`, `add_hours`, `occasion`, `worker`, `edited`) VALUES
(2, 1, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(3, 2, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(4, 3, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(5, 4, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(6, 5, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(7, 6, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(8, 7, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(9, 8, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(10, 9, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(11, 10, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(12, 11, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(13, 12, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(14, 13, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(15, 14, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(16, 15, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(17, 16, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(18, 17, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(19, 18, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(20, 19, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(21, 20, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(22, 21, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(23, 22, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(24, 23, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(25, 24, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(26, 25, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(27, 26, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(28, 27, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(29, 28, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(30, 29, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(31, 30, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(32, 31, 3, 2024, NULL, NULL, NULL, NULL, 1, '2024-03-01 13:14:20'),
(33, 1, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(34, 2, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(35, 3, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(36, 4, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(37, 5, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(38, 6, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(39, 7, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(40, 8, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(41, 9, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(42, 10, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(43, 11, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(44, 12, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(45, 13, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(46, 14, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(47, 15, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(48, 16, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(49, 17, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(50, 18, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(51, 19, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(52, 20, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(53, 21, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(54, 22, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(55, 23, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(56, 24, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(57, 25, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(58, 26, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(59, 27, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(60, 28, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(61, 29, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(62, 30, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(63, 31, 3, 2024, NULL, NULL, NULL, NULL, 2, '2024-03-01 13:14:20'),
(64, 1, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(65, 2, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(66, 3, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(67, 4, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(68, 5, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(69, 6, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(70, 7, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(71, 8, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(72, 9, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(73, 10, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(74, 11, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(75, 12, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(76, 13, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(77, 14, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(78, 15, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(79, 16, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(80, 17, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(81, 18, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(82, 19, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(83, 20, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(84, 21, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(85, 22, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(86, 23, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(87, 24, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(88, 25, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(89, 26, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(90, 27, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(91, 28, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(92, 29, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(93, 30, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20'),
(94, 31, 3, 2024, NULL, NULL, NULL, NULL, 3, '2024-03-01 13:14:20');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `workers`
--

CREATE TABLE `workers` (
  `worker_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(20) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `workers`
--

INSERT INTO `workers` (`worker_id`, `name`, `last_name`) VALUES
(1, 'Michał', 'Kondek'),
(2, 'Robert', 'Jałmużny'),
(3, 'Sandra', 'Wójcik');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`entry_id`),
  ADD KEY `for_key` (`worker`);

--
-- Indeksy dla tabeli `workers`
--
ALTER TABLE `workers`
  ADD PRIMARY KEY (`worker_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `calendar`
--
ALTER TABLE `calendar`
  MODIFY `entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT dla tabeli `workers`
--
ALTER TABLE `workers`
  MODIFY `worker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
