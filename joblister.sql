-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2021 at 10:50 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joblister`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(5, 'Arts and culture'),
(6, 'Health'),
(7, 'Sales and service'),
(8, 'Management'),
(9, 'Manufacturing'),
(10, 'Government'),
(11, 'Engineering'),
(12, 'Finance'),
(13, 'Business'),
(14, 'Programming');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `salary` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `contact_user` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `cat_id`, `company`, `job_title`, `description`, `salary`, `location`, `contact_user`, `contact_email`, `date`) VALUES
(7, '5', 'Telecom Egypt', 'Administrative Assistant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:39'),
(8, '6', 'Commercial International Bank – CIB', 'Receptionist', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:39'),
(9, '7', 'National Société Générale – NSGB', 'Office Manager', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:39'),
(10, '8', 'TMG Holding', 'Auditing Clerk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:39'),
(11, '9', 'Eastern Tobacco', 'Bookkeeper', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:41'),
(12, '10', 'Suez Cement', 'Account Executive', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:42'),
(13, '11', 'ElSewedy Electric', 'Branch Manager', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:43'),
(14, '12', 'GB Auto', 'Business Manager', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:43'),
(15, '13', 'Sidi Kerir Petrochemicals', 'Quality Control Coordinator', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:43'),
(16, '14', 'EFG Hermes Holding', 'Administrative Manager', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:43'),
(17, '5', 'Credit Agricole Egypt', 'Chief Executive Officer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:44'),
(18, '6', 'Oriental Weavers', 'Business Analyst', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:44'),
(19, '7', 'Faisal Islamic Bank', 'Risk Manager', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:44'),
(20, '8', 'Alexandria Cement', 'Human Resources', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:44'),
(21, '9', 'Six of October Development and Investment', 'Office Assistant', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:44'),
(22, '10', 'Amer Group Holding', 'Secretary', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:44'),
(23, '11', 'Delta Sugar', 'Office Clerk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:45'),
(24, '12', 'Cairo Poultry', 'File Clerk', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:45'),
(25, '13', 'Sinai Cement', 'Account Collector', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:45'),
(26, '14', 'Lecico Egypt', 'Administrative Specialist', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam quis imperdiet dui. Phasellus mauris mauris, vulputate ultricies augue non, vehicula elementum nisl. Phasellus congue dictum magna, id blandit magna. Mauris ut lorem sollicitudin, dapibus mauris et, congue velit. Ut et dignissim tellus, a mollis ex. Fusce justo sapien, dignissim eu fringilla eget, porttitor a ligula. Nullam congue tortor in rhoncus efficitur. Fusce tristique, neque efficitur vehicula efficitur, arcu magna sagittis urna, non placerat purus augue ut tellus. In pretium fringilla hendrerit. Maecenas maximus augue id hendrerit tincidunt. Ut porttitor velit quis varius tempor. Cras consequat risus elit. Nam sollicitudin nisl quis pellentesque laoreet. Donec a mauris vel diam feugiat vulputate sit amet at nibh.', '15K', 'Cairo,EG', 'Mohamed', 'm@m.com', '2021-01-10 21:37:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
