-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  9 апр 2022 в 10:05
-- Версия на сървъра: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final-task`
--

-- --------------------------------------------------------

--
-- Структура на таблица `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_description` varchar(255) NOT NULL,
  `post_image` varchar(100) NOT NULL,
  `post_upload` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_description`, `post_image`, `post_upload`) VALUES
(1, 'Added Cool Features', 'Duis orci nisl, ornare non diam id, dapibus faucibus urna. Vestibulum tristique posuere iaculis. Suspendisse orci tortor, auctor non luctus sed, vulputate sit amet libero. Maecenas congue fringilla justo molestie dapibus. Cras quis erat in velit rhoncus m', '/img/blogImage.c3d32f4f.png', ''),
(2, 'Looking cool at Pink', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage1.3df261e3.png', '41 min ago'),
(3, 'Looking awesome with new update', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage2.42cea8b2.png', '1 hr ago'),
(4, 'Suspendisse orci tortor,\r\nauctor non luctus', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage9.1457a8dc.png', '2 hrs ago'),
(5, 'Morbi vitae mi at nisi tinci\r\ndunt maximus', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage3.14b736a5.png', '7hrs ago'),
(6, 'Vestibulum tristique posuere', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage4.39d8d5d9.png', 'July 21,2021'),
(7, 'Etiam eget vehicula dolor', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage5.9c7c3bac.png', 'June 23,2021'),
(8, 'Looking awesome with new update', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage6.9f18875f.png', 'March 21,2021'),
(9, 'fringilla bibendum sem ultret', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage7.1d63b08e.png', 'Feb 12,2021'),
(10, 'Looking cool at Pink', 'Nullam tincidunt, purus sit amet viverra auctor, quamque incidunt, puincidunt, Vestibulum tristique posuere iaculis. Sus.', '/img/blogImage8.b525586a.png', 'Jan 1,2021');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `token`) VALUES
(6, 'user5', 'user5@abv.bg', '111', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
