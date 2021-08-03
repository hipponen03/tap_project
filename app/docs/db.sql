-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2021 at 12:12 PM
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
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    `reg_nr` int(50) NOT NULL,
    `email` varchar(100) NOT NULL,
    `phone` int(50) NOT NULL,
    `activity` varchar(50) NOT NULL,
    `activity_details` varchar(50) NOT NULL,
    `location` varchar(50) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `reg_nr`, `email`, `phone`, `activity`, `activity_details`, `location`) VALUES
(1, 'Mark Otto', 12345, 'mark@otto.com', 76543421, 'seinad', 'kipsseinad', 'Eesti'),
(2, 'Taavi Mark', 12345, 'mark@taavi.com', 1234567, 'seinad', 'puitseinad', 'Eesti'),
(3, 'Margaret Hamilton', 12345, 'Hamilton@gmail.com', 123567, 'aknad', 'plastaknad', 'Tartumaa'),
(4, 'John Clarke', 12345, 'john@prodigy-agency.com', 123567, 'aknad', 'puitaknad', 'Leedu');
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
