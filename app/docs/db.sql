-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Mai 11, 2021 kell 01:11 PL
-- Serveri versioon: 10.4.18-MariaDB
-- PHP versioon: 7.4.16

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Andmebaas: `kpr`
--
CREATE DATABASE IF NOT EXISTS `kpr` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `kpr`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `activity`
--

DROP TABLE IF EXISTS `activity`;
CREATE TABLE IF NOT EXISTS `activity` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `activity`
--

INSERT INTO `activity` (`id`, `name`) VALUES
(1, 'seinad'),
(2, 'aknad');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `activity_details`
--

DROP TABLE IF EXISTS `activity_details`;
CREATE TABLE IF NOT EXISTS `activity_details` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `activity_details`
--

INSERT INTO `activity_details` (`id`, `name`) VALUES
(1, 'kipsseinad'),
(2, 'puitseinad'),
(3, 'plastaknad'),
(4, 'puitaknad');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `partners`
--

DROP TABLE IF EXISTS `partners`;
CREATE TABLE IF NOT EXISTS `partners` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) NOT NULL,
    `reg_nr` int(11) UNSIGNED NOT NULL,
    `email` varchar(255) NOT NULL,
    `phone` varchar(255) NOT NULL,
    `activity` int(11) NOT NULL,
    `location` varchar(255) NOT NULL,
    PRIMARY KEY (`id`),
    KEY `activity` (`activity`)
    ) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `partners`
--

INSERT INTO `partners` (`id`, `name`, `reg_nr`, `email`, `phone`, `activity`, `location`) VALUES
(6, 'Mark Otto', 12345, 'mark@otto.com', '1234567', 1, 'üle Eesti'),
(7, 'Margaret Hamilton', 12345, 'info@hamilton.com', '1234567', 2, 'Tartumaa'),
(8, 'John Klark', 12345, 'john@clark.com', '1234567', 2, 'Võrumaa');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `partner_activity`
--

DROP TABLE IF EXISTS `partner_activity`;
CREATE TABLE IF NOT EXISTS `partner_activity` (
    `partner_id` int(11) NOT NULL,
    `activity_id` int(11) NOT NULL,
    `activity_details_id` int(11) NOT NULL,
    KEY `activity_id` (`activity_id`),
    KEY `activity_details_id` (`activity_details_id`),
    KEY `partner_id` (`partner_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Andmete tõmmistamine tabelile `partner_activity`
--

INSERT INTO `partner_activity` (`partner_id`, `activity_id`, `activity_details_id`) VALUES
(7, 2, 3),
(7, 2, 4);

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `partners`
--
ALTER TABLE `partners`
    ADD CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`activity`) REFERENCES `activity` (`id`);

--
-- Piirangud tabelile `partner_activity`
--
ALTER TABLE `partner_activity`
    ADD CONSTRAINT `partner_activity_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activity` (`id`),
  ADD CONSTRAINT `partner_activity_ibfk_2` FOREIGN KEY (`activity_details_id`) REFERENCES `activity_details` (`id`),
  ADD CONSTRAINT `partner_activity_ibfk_3` FOREIGN KEY (`partner_id`) REFERENCES `partners` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
