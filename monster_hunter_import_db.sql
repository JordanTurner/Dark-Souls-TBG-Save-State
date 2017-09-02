-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2017 at 09:50 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


-- --------------------------------------------------------

--
-- Table structure for table `login_log`
--

CREATE TABLE `login_log` (
  `user_id` int(11) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_log`
--

INSERT INTO `login_log` (`user_id`, `time`) VALUES
(2, '2017-07-22 23:07:06'),
(2, '2017-07-22 23:20:03'),
(2, '2017-07-22 23:20:35');



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` char(128) NOT NULL,
  `email` varchar(50) NOT NULL,
  `confirmed` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `email`, `confirmed`) VALUES
(2, 'jordan', '$2y$10$6tIXDBiJv5gtBuKxWtOoX.ZJzxPhbnjZWuJpYV9d9Z.Nm5L3.weLW', '1@1.com', 0),
(3, 'regtester', '$2y$10$9pAUJ4YLahF2KcIOysGCFulQZpvB107B66XLd24DTJkcu/wlNNCVW', 'jturner@videotile.co.uk', 0),
(4, 'jordanturner', '$2y$10$eJJ7xfFzIx8KZnXi7gHlZ.wa4ctt5wz/wkige8Op.AtgH5g1wSio6', 'turnerjordan855@gmail.com', 0);

-- --------------------------------------------------------


ALTER TABLE `login_log`
  ADD PRIMARY KEY (`user_id`,`time`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `userid` (`userid`);


ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
