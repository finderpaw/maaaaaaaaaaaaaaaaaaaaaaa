-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2026 at 04:44 PM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawfinder_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_attempts`
--

CREATE TABLE `admin_login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `attempted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adoption_applications`
--

CREATE TABLE `adoption_applications` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_file` varchar(255) NOT NULL,
  `home_photo` varchar(255) NOT NULL DEFAULT '',
  `answers` longtext NOT NULL,
  `flags` text NOT NULL,
  `signature_name` varchar(150) NOT NULL,
  `ip_address` varchar(45) NOT NULL DEFAULT '',
  `agreed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_applications`
--

INSERT INTO `adoption_applications` (`id`, `request_id`, `user_id`, `pet_id`, `id_type`, `id_file`, `home_photo`, `answers`, `flags`, `signature_name`, `ip_address`, `agreed_at`) VALUES
(1, 16, 2, 1, 'PhilSys National ID', '6a3cb3fd13250dfcd9cb4f5b85e2e8da.jpg', '', '[{\"s\":\"Applicant\",\"q\":\"Full name (account)\",\"a\":\"rhencelpogi\"},{\"s\":\"Applicant\",\"q\":\"Email (account)\",\"a\":\"rhenceljohnyalung@gmail.com\"},{\"s\":\"Applicant\",\"q\":\"Contact (account)\",\"a\":\"09923669239\"},{\"s\":\"Applicant\",\"q\":\"Address (account)\",\"a\":\"mabalacat city\"},{\"s\":\"Applicant\",\"q\":\"Birthdate\",\"a\":\"2007-07-08 (age 19)\"},{\"s\":\"Applicant\",\"q\":\"Occupation\",\"a\":\"call center\"},{\"s\":\"Applicant\",\"q\":\"Facebook \\/ social media link\",\"a\":\"https:\\/\\/www.facebook.com\\/aaron.garcia.821172\"},{\"s\":\"Household\",\"q\":\"Type of housing\",\"a\":\"I own my home\"},{\"s\":\"Household\",\"q\":\"Landlord allows pets\",\"a\":\"-\"},{\"s\":\"Household\",\"q\":\"People in the household\",\"a\":\"2\"},{\"s\":\"Household\",\"q\":\"Ages of children\",\"a\":\"-\"},{\"s\":\"Household\",\"q\":\"All household members agree to adopt\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Anyone with pet allergies\",\"a\":\"No\"},{\"s\":\"Household\",\"q\":\"Other pets at home\",\"a\":\"Yes\"},{\"s\":\"Household\",\"q\":\"Other pets details (vaccinated\\/neutered?)\",\"a\":\"dog, 1 vaccinated\"},{\"s\":\"Experience\",\"q\":\"Has had pets before\",\"a\":\"Yes\"},{\"s\":\"Experience\",\"q\":\"What happened to previous pets\",\"a\":\"still with me\"},{\"s\":\"Experience\",\"q\":\"Ever gave away, sold, or lost a pet\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Explanation\",\"a\":\"-\"},{\"s\":\"Experience\",\"q\":\"Ever reported\\/charged for animal cruelty (self or household)\",\"a\":\"No\"},{\"s\":\"Experience\",\"q\":\"Veterinarian \\/ clinic\",\"a\":\"none yet\"},{\"s\":\"Care plan\",\"q\":\"Why adopt this pet\",\"a\":\"my dog need like a buddy, i felt it because everytime he wants to play, sometimes we can\'t play with him because i need to take care of the baby\"},{\"s\":\"Care plan\",\"q\":\"Where the pet will stay\",\"a\":\"Inside the house\"},{\"s\":\"Care plan\",\"q\":\"Hours alone per day\",\"a\":\"4 to 8 hours\"},{\"s\":\"Care plan\",\"q\":\"Who cares for the pet when away\",\"a\":\"i have my friend who lives just next to my house\"},{\"s\":\"Care plan\",\"q\":\"Monthly budget for the pet\",\"a\":\"PHP 1,000 to 3,000\"},{\"s\":\"Care plan\",\"q\":\"Will complete vaccines, deworming, spay\\/neuter\",\"a\":\"Yes\"},{\"s\":\"Care plan\",\"q\":\"Commits to keep the pet for life\",\"a\":\"Yes\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT kill, cook, eat, or serve this animal as food.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT feed this animal to other animals (including snakes, reptiles, or other pets).\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT use this animal for fighting, baiting, experiments, or any form of cruelty.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I will NOT sell, trade, breed for profit, or give away this animal to anyone else.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"If I can no longer keep this animal, I will return it to Pawfinder and will not abandon or rehome it myself.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I allow Pawfinder to do follow-up checks, including photo\\/video updates and home visits, after adoption.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I have read and agree to the Adoption Agreement and Liability Waiver below.\",\"a\":\"Agreed\"},{\"s\":\"Declarations & consent\",\"q\":\"I consent to Pawfinder collecting and keeping my ID and personal data for adoption verification (Data Privacy Act of 2012, RA 10173).\",\"a\":\"Agreed\"},{\"s\":\"Verification\",\"q\":\"ID type\",\"a\":\"PhilSys National ID\"}]', '[\"Typed signature does not match account name\"]', 'Rhencel Yalung', '127.0.0.1', '2026-11-14 10:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `adoption_requests`
--

CREATE TABLE `adoption_requests` (
  `id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adoption_requests`
--

INSERT INTO `adoption_requests` (`id`, `pet_id`, `user_id`, `status`, `created_at`) VALUES
(10, 6, 2, 'Rejected', '2026-11-13 08:48:10'),
(11, 7, 2, 'Approved', '2026-11-13 08:58:01'),
(12, 8, 2, 'Approved', '2026-11-13 09:17:15'),
(13, 3, 2, 'Approved', '2026-11-13 09:17:53'),
(14, 2, 2, 'Approved', '2026-11-13 09:19:47'),
(15, 5, 2, 'Approved', '2026-11-13 09:56:22'),
(16, 1, 2, 'Rejected', '2026-11-14 10:05:15');

--
-- Triggers `adoption_requests`
--
DELIMITER $$
CREATE TRIGGER `trg_adoption_status_notify` AFTER UPDATE ON `adoption_requests` FOR EACH ROW INSERT INTO user_notifications (user_id, message, link)
SELECT NEW.user_id,
       CONCAT('Your adoption request for ',
              COALESCE(p.pet_name, 'the pet'),
              IF(NEW.status = 'Approved', ' was approved!', ' was not approved.')),
       CONCAT('my_application.php?request_id=', NEW.id)
FROM (SELECT 1) d
LEFT JOIN pets p ON p.id = NEW.pet_id
WHERE NEW.status <> OLD.status
  AND NEW.status IN ('Approved', 'Rejected')
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `health_drive`
--

CREATE TABLE `health_drive` (
  `id` int(11) NOT NULL,
  `event_name` varchar(150) NOT NULL,
  `owner_name` varchar(150) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_drive`
--

INSERT INTO `health_drive` (`id`, `event_name`, `owner_name`, `contact_number`, `pet_name`, `pet_type`, `registration_date`) VALUES
(1, 'Free Anti-Rabies Vaccination Drive', 'Mikhaela Villanueva', '09054970091', 'Lorenz', 'Dog', '2026-11-06 08:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `health_drives`
--

CREATE TABLE `health_drives` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Upcoming','Ongoing','Completed','Cancelled') DEFAULT 'Upcoming',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `health_drives`
--

INSERT INTO `health_drives` (`id`, `name`, `event_date`, `event_time`, `location`, `description`, `image`, `status`, `created_at`) VALUES
(1, 'Free Anti-Rabies Vaccination Drive', '2026-11-15', '8:00 AM - 4:00 PM', 'Community Pet Center', 'Free anti-rabies vaccination for dogs and cats.', 'image/vacine.jpg', 'Upcoming', '2026-11-06 08:11:06'),
(2, 'Free Pet Health Checkup', '2026-11-20', '9:00 AM - 3:00 PM', 'Barangay Hall', 'Basic physical examination and health assessment.', 'image/checkup.jpg', 'Upcoming', '2026-11-06 08:11:06'),
(3, 'Pet Deworming Program', '2026-11-25', '8:00 AM - 2:00 PM', 'Pawfinder Partner Shelter', 'Free deworming services for rescued pets.', 'image/deworm.png', 'Upcoming', '2026-11-06 08:11:06'),
(4, 'Spay and Neuter Mission', '2026-12-05', '8:00 AM - 5:00 PM', 'Community Veterinary Center', 'Affordable spaying and neutering services.', 'image/spay.jpg', 'Upcoming', '2026-11-06 08:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `audience` varchar(20) NOT NULL DEFAULT 'all',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `request_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `title`, `message`, `audience`, `created_at`, `request_id`) VALUES
(2, 'New Adoption Request: sda', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt sda (dog, bullshit).', 'admin', '2026-11-13 08:58:01', 11),
(3, 'New Adoption Request: sdsad', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt sdsad (aasdfas, sdfd).', 'admin', '2026-11-13 09:17:15', 12),
(4, 'New Adoption Request: brixers', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt brixers (dog, bullshit).', 'admin', '2026-11-13 09:17:53', 13),
(5, 'New Adoption Request: brixers', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt brixers (dog, bullshit).', 'admin', '2026-11-13 09:19:47', 14),
(6, 'New Adoption Request: sda', 'rhencelpogi (rhenceljohnyalung@gmail.com) wants to adopt sda (asda, asda).', 'admin', '2026-11-13 09:56:22', 15),
(7, 'New Adoption Application: Shan', 'rhencelpogi (rhenceljohnyalung@gmail.com) applied to adopt Shan (dog, Golden Retriever). 1 red flag(s) to review.', 'admin', '2026-11-14 10:05:15', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notification_reads`
--

CREATE TABLE `notification_reads` (
  `id` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `rescuer_username` varchar(100) NOT NULL,
  `read_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_reads`
--

INSERT INTO `notification_reads` (`id`, `notification_id`, `rescuer_username`, `read_at`) VALUES
(1, 6, 'jena22', '2026-11-14 09:26:45'),
(2, 5, 'jena22', '2026-11-14 09:26:47');

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(11) NOT NULL,
  `pet_name` varchar(100) NOT NULL,
  `pet_species` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL DEFAULT 'Unknown',
  `breed` varchar(100) NOT NULL,
  `age` varchar(50) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `pet_photo` varchar(255) NOT NULL,
  `adoption_reason` text NOT NULL,
  `health_issues` text DEFAULT NULL,
  `pet_details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Available','Pending','Adopted') NOT NULL DEFAULT 'Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `pet_name`, `pet_species`, `gender`, `breed`, `age`, `barangay`, `pet_photo`, `adoption_reason`, `health_issues`, `pet_details`, `created_at`, `status`) VALUES
(1, 'Shan', 'dog', 'Male', 'Golden Retriever', '2 Years', 'Brgy. Lakandula, Mabalacat City', 'uploads/1793951044_dog1.jpg', 'Unable to care', '', 'Minsan suplado pero makulit', '2026-11-06 07:44:04', 'Available'),
(2, 'brixers', 'dog', 'Female', 'bullshit', '19 years', 'barangay ginebra', 'uploads/1794474935_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'she is clingy', '2026-11-12 09:15:35', 'Adopted'),
(3, 'brixers', 'dog', 'Female', 'bullshit', '19 years', 'barangay ginebra', 'uploads/1794475181_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'she is clingy', '2026-11-12 09:19:41', 'Adopted'),
(4, 'Lorenz', 'dog', 'Unknown', 'bullshit', '19 years', 'Brgy. Lakandula, Mabalacat ity', 'uploads/1794558250_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'malibi', '2026-11-13 08:24:10', 'Available'),
(5, 'sda', 'asda', 'Unknown', 'asda', 'asdas', 'asdasd', 'uploads/1794558478_thumbnail_image.png', 'asdas', 'daasd', 'asdasdasd', '2026-11-13 08:27:58', 'Adopted'),
(6, 'hgcjyg', 'dog', 'Unknown', 'Golden Retriever', '2 Years', 'Brgy. Lakandula, Mabalacat ity', 'uploads/1794558758_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'f.y', '2026-11-13 08:32:38', 'Available'),
(7, 'sda', 'dog', 'Unknown', 'bullshit', '19 years', 'Brgy. Lakandula, Mabalacat ity', 'uploads/1794559128_thumbnail_image.png', 'Unable to care', 'fully vacinated', 'rgerg', '2026-11-13 08:38:48', 'Adopted'),
(8, 'sdsad', 'aasdfas', 'Unknown', 'sdfd', 'hftjt', 'kyukyuk', 'uploads/1794559371_thumbnail_image.png', 'yyty', 'tyhty', 'titeeeeeeeeeeeeeeeeeeee', '2026-11-13 08:42:51', 'Pending'),
(9, 'fer', 'ferf', 'Unknown', 'erfe', 'ferfer', 'rgerg', 'uploads/1794651243_images.jpg', 'efe', 'fef', 'wefwefw', '2026-11-14 10:14:03', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE `registered` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `role` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rescue_reports`
--

CREATE TABLE `rescue_reports` (
  `id` int(11) NOT NULL,
  `reporter_name` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `location` varchar(255) NOT NULL,
  `pet_type` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Unknown') NOT NULL DEFAULT 'Unknown',
  `pet_condition` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Pending','In Progress','Rescued','Rejected') DEFAULT 'Pending',
  `report_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rescue_reports`
--

INSERT INTO `rescue_reports` (`id`, `reporter_name`, `contact_number`, `location`, `pet_type`, `gender`, `pet_condition`, `description`, `status`, `report_date`) VALUES
(1, 'Ela Villanueva', '09054970091', 'Brgy. Lakandula', 'Dog', 'Unknown', 'Abandoned', 'huhu', 'Pending', '2026-11-06 09:38:50');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(100) NOT NULL,
  `barangay` varchar(100) NOT NULL,
  `venue` varchar(150) NOT NULL,
  `services` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `organizer` varchar(150) NOT NULL,
  `reminders` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`setting_key`, `setting_value`) VALUES
('address', ''),
('adoptions_open', '1'),
('contact_email', ''),
('contact_phone', ''),
('rescue_alerts', '1'),
('site_name', 'PAWFINDER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'Local',
  `account_status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Approved',
  `created_at` datetime DEFAULT current_timestamp(),
  `rescuer_status` varchar(20) DEFAULT NULL,
  `rescuer_token` varchar(64) DEFAULT NULL,
  `rescuer_token_expires` datetime DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `address`, `contact`, `password`, `role`, `account_status`, `created_at`, `rescuer_status`, `rescuer_token`, `rescuer_token_expires`, `profile_photo`) VALUES
(2, 'rhencelpogi', 'rhencel', 'rhenceljohnyalung@gmail.com', 'mabalacat city', '09923669239', '$2y$10$tTx7K4uyGRbslgWdpQJfK.8.d9JRvY8Y.ERatowCMjWVtB231xSRK', 'Local', 'Approved', '2026-11-10 11:08:59', NULL, NULL, NULL, 'uploads/avatars/u2_a2f152817232.jpg'),
(3, 'Aaron', 'adopter', 'aggarcia0807@gmail.com', 'Mabalacat', '09287486958', '$2y$10$N6LpQYvAv7AOMrAT37lKL.VakRcvOxjV1nPAIHHqDKzLYEl9Lt702', 'Rescuer', 'Pending', '2026-11-10 11:23:54', NULL, NULL, NULL, NULL),
(4, 'Ela', 'rescuer', 'mikhaelavillanueva06@gmail.com', 'Lakandula Villa Riles', '09054970091', '$2y$10$MZ2ITBSyOAjqYLXYsA0j8O2SvWG0cCZ4tWymfn./.TZv6sGB2kKKC', 'Rescuer', 'Pending', '2026-11-10 15:29:19', NULL, NULL, NULL, NULL),
(5, 'rhencels', 'rj123', 'juan@gmail.com', 'Mabalacat City', '09456621533', '$2y$10$02r9OQHVVgkpt437u0IhX.HzyadhJCTbbp.2vnzB34W2Y3oewky2K', 'Local', 'Approved', '2026-11-10 16:25:54', 'Pending', '49b037266484807780054e6fbc63c48941277dd9d4cebfcba18bc2be9a7ba6ea', '2026-11-13 10:34:16', NULL),
(6, 'brix', 'brix', 'asdadasda@gmai.com', 'asd123', '09578534567', '$2y$10$E8w9VX32WHhMO/pRqUaXGeKg8r2e/rsR6LsUx1.zB9PHr6I6bOBfW', 'Local', 'Approved', '2026-11-10 16:28:59', 'Pending', NULL, NULL, NULL),
(7, 'aaron23', 'jena123', 'antoniojena77@gmail.com', 'Mabalacat City', '09857463521', '$2y$10$XUXJOx5gtNRk84mgZDBAz.r7yygzK1MhQL3Kuoc3blT4I8xDhQUES', 'Local', 'Approved', '2026-11-10 17:39:50', 'Pending', '5cf4a5acad3976552e4e9d7e16d749a2a43610823af60e2a2f152f6bb5298f9b', '2026-11-13 10:40:07', NULL),
(8, 'Mikhaela Villanueva', 'inong123', 'finderpaw96@gmail.com', 'Lakandula St 8 Villa Riles', '09378593857', '$2y$10$DjB.YZFsedozCy7Otxd95OGjq3ZPOjx.6iQzpEh28xfQ45.wAtRYi', 'Rescuer', 'Approved', '2026-11-10 17:51:17', 'Approved', NULL, NULL, NULL),
(9, 'Mikhaela Villanueva', 'jena22', 'iuhefwerg9213@gmail.com', 'Lakandula St 8 Villa Riles', '09054970091', '$2y$10$NtjzSDpBr9pUIF4Bhs8Ga.ES0uhsPO5.64NoEgpY2pdCSijsXFlb.', 'Rescuer', 'Approved', '2026-11-10 18:04:27', 'Approved', NULL, NULL, NULL),
(12, '', 'admin', 'finderpaw9346@gmail.com', '', '', '$2y$10$3vqfpb4Z69TSR4nBZYMMue8vzuBOC4gMFOa3YuuSwCWsA8JUFplDG', 'admin', 'Approved', '2026-11-12 17:04:15', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `user_id`, `message`, `link`, `is_read`, `created_at`) VALUES
(1, 2, 'Your adoption request for Shan was not approved.', 'pet_details.php?id=1', 1, '2026-11-14 10:13:38'),
(2, 2, 'Your adoption request for sdsad was approved!', 'pet_details.php?id=8', 1, '2026-11-14 10:17:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_time` (`ip`,`attempted_at`);

--
-- Indexes for table `adoption_applications`
--
ALTER TABLE `adoption_applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_request` (`request_id`);

--
-- Indexes for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_drive`
--
ALTER TABLE `health_drive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_drives`
--
ALTER TABLE `health_drives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_reads`
--
ALTER TABLE `notification_reads`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_rescuer_notification` (`notification_id`,`rescuer_username`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered`
--
ALTER TABLE `registered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `rescue_reports`
--
ALTER TABLE `rescue_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_key`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_read` (`user_id`,`is_read`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `adoption_applications`
--
ALTER TABLE `adoption_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `adoption_requests`
--
ALTER TABLE `adoption_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `health_drive`
--
ALTER TABLE `health_drive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `health_drives`
--
ALTER TABLE `health_drives`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notification_reads`
--
ALTER TABLE `notification_reads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registered`
--
ALTER TABLE `registered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rescue_reports`
--
ALTER TABLE `rescue_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
