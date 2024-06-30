-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 30 Haz 2024, 13:32:40
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `adresdb`
--

-- --------------------------------------------------------

--
-- Görünüm yapısı `streets_view`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `streets_view`  AS SELECT `s`.`id` AS `street_id`, `s`.`name` AS `street_name`, `n`.`id` AS `neighborhood_id`, `n`.`name` AS `neighborhood_name`, `n`.`district_id` AS `district_id`, `d`.`name` AS `district_name`, `d`.`city_id` AS `city_id`, `c`.`name` AS `city_name` FROM (((`streets` `s` join `neighborhoods` `n` on(`s`.`neighborhoods_id` = `n`.`id`)) join `districts` `d` on(`n`.`district_id` = `d`.`id`)) join `cities` `c` on(`d`.`city_id` = `c`.`id`)) ;

--
-- VIEW `streets_view`
-- Veri: Yok
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
