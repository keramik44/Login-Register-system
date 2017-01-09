-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 07 Sie 2016, 11:21
-- Wersja serwera: 10.1.13-MariaDB
-- Wersja PHP: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `lr`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', ''),
(2, 'Administrator', '{"admin:1"}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `userGroup` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `userGroup`) VALUES
(7, 'marek123', '4e6657387a99f849f764c3b6f01dfcca19215597a63a3f7364021b59bdb2f53c', '‰™sZòtÒaáh!C´Z¡‘AÿŸþÄ"ïã]gn~H', 'marek123', '2016-07-18 01:18:16', 1),
(8, 'keramik', 'e10deae9628d70fa7e13bd63bc28ce582140ab7d5462a27c498218d8d13363b8', 'ñÔê<¾º â	ß¦íÐˆPØYªŒ.Zª‰©Ôø\\uÑ½', 'marek123', '2016-07-18 22:53:40', 2),
(9, 'Patka123', '7775cde18b7b8436ca84480dba931243f6025c5501a6421e437b81a4285da7de', 'p×˜øH"Ÿ~4æ€yRe¶ÙžTÞšƒú`º<>&', 'patka123', '2016-07-18 23:26:33', 1),
(10, 'Ania123', '0e011583ec0b7e50df910609a6a8771ce58ed225b15cb113444d206dbf0a23b0', '·se¤	ÏäÛ^wäS–ûFv''VÛy"yU0ÌöwË', 'ania123', '2016-07-18 23:34:55', 1),
(11, 'alexy', 'c68b397654be7dedcf51e929ebc00485e72ac9f6917bf2e04b8e9cefe7d98da9', '¯ø%œÿ½ÿ¦þ¶°¦…ú9Ë­­oó±;Ã`bÍCØ', 'mistrz milek', '2016-07-18 23:36:15', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users_sessions`
--

CREATE TABLE `users_sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `users_sessions`
--

INSERT INTO `users_sessions` (`id`, `user_id`, `hash`) VALUES
(19, 8, 'c86739f3543f1f2b8065f08096f49d91aa7ffd169d16caa619bd1f53a2ebe6ee');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_sessions`
--
ALTER TABLE `users_sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT dla tabeli `users_sessions`
--
ALTER TABLE `users_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
