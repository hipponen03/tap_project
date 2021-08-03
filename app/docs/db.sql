-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 12:41 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `kpr`
--
CREATE DATABASE IF NOT EXISTS `kpr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kpr`;

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`id`, `name`) VALUES
(1, 'seinad'),
(2, 'aknad');

-- --------------------------------------------------------

--
-- Table structure for table `activity_details`
--

DROP TABLE IF EXISTS `activity_details`;
CREATE TABLE IF NOT EXISTS `activity_details` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activity_details`
--

INSERT INTO `activity_details` (`id`, `name`) VALUES
(1, 'kipsseinad'),
(2, 'puitseinad'),
(3, 'plastaknad'),
(4, 'puitaknad');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `reg_nr` int(50) NOT NULL,
    `email` varchar(100) NOT NULL,
    `phone` int(50) NOT NULL,
    `activity` int(11) NOT NULL,
    `location` varchar(50) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `activity` (`activity`)
    ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `reg_nr`, `email`, `phone`, `activity`, `location`) VALUES
(2, 'Mark Otto', 12345, 'mark@otto.com', 1234567, 1, 'Eesti'),
(3, 'Margaret Hamilton', 12345, 'Hamilton@gmail.com', 1234567, 2, 'Tartumaa'),
(4, 'John Clarke', 12345, 'john@prodigy-agency.com', 1234567, 2, 'Võrumaa');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `partners`
--
ALTER TABLE `partners`
    ADD CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
