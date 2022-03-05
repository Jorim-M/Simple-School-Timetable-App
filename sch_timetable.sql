-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2022 at 01:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sch_timetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `grade1`
--

CREATE TABLE `grade1` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade1`
--

INSERT INTO `grade1` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

-- --------------------------------------------------------

--
-- Table structure for table `grade2`
--

CREATE TABLE `grade2` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade2`
--

INSERT INTO `grade2` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

-- --------------------------------------------------------

--
-- Table structure for table `grade3`
--

CREATE TABLE `grade3` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade3`
--

INSERT INTO `grade3` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

-- --------------------------------------------------------

--
-- Table structure for table `grade4`
--

CREATE TABLE `grade4` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade4`
--

INSERT INTO `grade4` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

-- --------------------------------------------------------

--
-- Table structure for table `grade5`
--

CREATE TABLE `grade5` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade5`
--

INSERT INTO `grade5` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

-- --------------------------------------------------------

--
-- Table structure for table `grade6`
--

CREATE TABLE `grade6` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade6`
--

INSERT INTO `grade6` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

-- --------------------------------------------------------

--
-- Table structure for table `grade7`
--

CREATE TABLE `grade7` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade7`
--

INSERT INTO `grade7` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

-- --------------------------------------------------------

--
-- Table structure for table `grade8`
--

CREATE TABLE `grade8` (
  `id` int(10) NOT NULL,
  `time_slot` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mon_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tue_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `wed_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `thur_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fri_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_subject` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_time` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sat_teacher` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `create_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade8`
--

INSERT INTO `grade8` (`id`, `time_slot`, `mon_subject`, `mon_time`, `mon_teacher`, `tue_subject`, `tue_time`, `tue_teacher`, `wed_subject`, `wed_time`, `wed_teacher`, `thur_subject`, `thur_time`, `thur_teacher`, `fri_subject`, `fri_time`, `fri_teacher`, `sat_subject`, `sat_time`, `sat_teacher`, `create_at`) VALUES
(2, '5:30am', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', 'Prep Time', '5:30-7:00', 'Mr. Ben', '2020-10-05 21:25:20.031084'),
(4, '9:00am', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Kiswahili', '9:00-10:00', 'Mrs. Beatrice', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'Mathematics', '9:00-10:00', 'Mr. Tony', 'English', '9:00-10:00', 'Ms. Sharon', 'Sports', '9:00-10:00', 'Mr. Reuben', '2020-10-06 04:51:22.766419'),
(5, '10:00am', 'Science', '10:00-11:00', 'Mr. Ben', 'English', '10:00-11:00', 'Ms. Sharon', 'Environment', '10:00-11:00', 'Mr. James', 'Mathematics', '10:00-11:00', 'Mr. Tony', 'Kiswahili', '10:00-11:00', 'Mrs. Beatrice', 'Sports', '10:00-11:00', 'Mr. Reuben', '2020-10-06 04:59:51.009449'),
(6, '11:00am', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', 'Break', '11:00-12:00', 'None', '2020-10-06 05:07:49.754252'),
(7, '12:00am', 'Mathematics', '12:00-1:00', 'Mr. Tony', 'Kiswahili', '12:00-1:00', 'Mrs. Beatrice', 'English', '12:00-1:00', 'Ms. Sharon', 'Environment', '12:00-1:00', 'Mr. James', 'Religious Studies', '12:00-1:00', 'Mrs. Rita', 'Sports', '12:00-1:00', 'Mr. Reuben', '2020-10-06 05:11:02.539637'),
(8, '1:00pm', 'Lunch', '1:00-2:00', 'None', 'Break', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', 'Lunch', '1:00-2:00', 'None', '2020-10-06 05:14:17.361858'),
(9, '2:00pm', 'Science', '2:00-3:00', 'Mr. Ben', 'Religious Studies', '2:00-3:00', 'Mrs. Rita', 'Kiswahili', '2:00-3:00', 'Mrs. Beatrice', 'Science', '2:00-3:00', 'Mr. Ben', 'Sports', '2:00-3:00', 'Mr. Reuben', 'Sports', '2:00-3:00', 'Mr. Reuben', '2020-10-06 05:17:32.060785'),
(10, '3:00pm', 'Environment', '3:00-4:00', 'Mr. James', 'Religious Studies', '3:00-4:00', 'Mrs. Rita', 'Environment', '3:00-4:00', 'Mr. James', 'Science', '3:00-4:00', 'Mr. Ben', 'Sports', '3:00-4:00', 'Mr. Reuben', 'Free Time', '3:00-4:00', 'None', '2020-10-06 05:21:38.395724'),
(11, '7:00pm', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', 'Prep Time', '7:00-9:00', 'None', '2020-10-06 05:23:44.830581');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grade1`
--
ALTER TABLE `grade1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade2`
--
ALTER TABLE `grade2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade3`
--
ALTER TABLE `grade3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade4`
--
ALTER TABLE `grade4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade5`
--
ALTER TABLE `grade5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade6`
--
ALTER TABLE `grade6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade7`
--
ALTER TABLE `grade7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grade8`
--
ALTER TABLE `grade8`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grade1`
--
ALTER TABLE `grade1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade2`
--
ALTER TABLE `grade2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade3`
--
ALTER TABLE `grade3`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade4`
--
ALTER TABLE `grade4`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade5`
--
ALTER TABLE `grade5`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade6`
--
ALTER TABLE `grade6`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade7`
--
ALTER TABLE `grade7`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `grade8`
--
ALTER TABLE `grade8`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
