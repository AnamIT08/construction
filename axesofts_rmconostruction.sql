-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2021 at 01:46 AM
-- Server version: 10.3.28-MariaDB-log-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `axesofts_rmconostruction`
--

DELIMITER $$
--
-- Functions
--
$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_acgroup`
--

CREATE TABLE `tbl_acgroup` (
  `id` int(11) NOT NULL,
  `clsid` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_acgroup`
--

INSERT INTO `tbl_acgroup` (`id`, `clsid`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, 1, 'Non Current Assets', NULL, '', 1, '2020-04-09 02:06:49'),
(2, 1, 'Current Assets', NULL, '', 1, '2020-04-09 02:07:07'),
(3, 3, 'Owners\' Equity', NULL, '', 1, '2020-04-09 02:08:07'),
(4, 2, 'Non Current Liabilities', NULL, '', 1, '2020-04-09 02:08:38'),
(5, 2, 'Current Liabilities', NULL, '', 1, '2020-04-09 02:08:54'),
(6, 5, 'Operating Revenue', NULL, '', 1, '2020-04-09 02:09:13'),
(7, 5, 'Non Operating Revenue', NULL, '', 1, '2020-04-09 02:09:30'),
(8, 4, 'Direct Expense', NULL, '', 1, '2020-04-09 02:09:49'),
(9, 4, 'Indirect Expenses', NULL, '', 1, '2020-04-09 02:10:10'),
(10, 1, 'Cash In Bank', NULL, '', 1, '2021-05-25 05:41:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aclass`
--

CREATE TABLE `tbl_aclass` (
  `id` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_aclass`
--

INSERT INTO `tbl_aclass` (`id`, `name`, `bname`, `description`) VALUES
(1, 'Assets', '', 'Accounts represent the different types of economic resources owned or controlled by an entity. Common examples of asset accounts are cash in hand, cash in bank, real estate, inventory, prepaid expenses, goodwill, and accounts receivable.'),
(2, 'Liabilities', '', 'Accounts represent the different types of economic obligations of an entity, such as accounts payable, bank loans, bonds payable, and accrued expenses.'),
(3, 'Owner\'s Equity', '', 'Accounts represent the residual equity of an entity (the value of assets after deducting the value of all liabilities). Equity accounts include common stock, paid-in capital, and retained earnings. The type and captions used for equity accounts are d'),
(4, 'Expenses', '', 'Accounts represent the company\'s expenditures. Common examples are utilities, rents, depreciation, interest, and insurance.'),
(5, 'Revenue', '', 'Accounts represent the company\'s earnings and common examples include sales, service revenue and interest income.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_acledger`
--

CREATE TABLE `tbl_acledger` (
  `id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `grid` int(11) NOT NULL,
  `sgrid` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `loc` int(1) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_acledger`
--

INSERT INTO `tbl_acledger` (`id`, `code`, `grid`, `sgrid`, `name`, `bname`, `description`, `loc`, `uid`, `date`) VALUES
(1, '200001', 2, 1, 'Petty Cash', NULL, 'Every Days Official Expenses Amount', 1, 1, '2020-04-22 12:22:21'),
(2, '200002', 2, 1, 'Cash', NULL, 'Income Form Sales Or Other Income', 1, 1, '2020-04-22 12:23:22'),
(3, '100001', 1, 6, 'Service Tools &amp; Equipment', NULL, '', 1, 1, '2020-04-22 12:30:58'),
(4, '100002', 1, 6, 'Furniture, Fixture &amp; Interiors', NULL, '', 1, 1, '2020-04-22 12:33:37'),
(5, '300001', 3, 30, 'Capital', NULL, '', 1, 1, '2020-04-22 12:41:21'),
(6, '300002', 3, 31, 'Cash Withdrawal', NULL, '', 1, 1, '2020-04-22 12:41:42'),
(7, '300003', 3, 32, 'Retained Earnings', NULL, '', 1, 1, '2020-04-22 12:42:12'),
(8, '300004', 3, 32, 'VAT Reimbursement Account', NULL, '', 1, 1, '2020-04-22 12:43:15'),
(9, '500001', 5, 14, 'VAT On Commission Payable', NULL, '', 1, 1, '2020-04-22 12:44:09'),
(10, '500002', 5, 14, 'VAT On Sales Payable', NULL, '', 1, 1, '2020-04-22 12:44:48'),
(11, '700001', 7, 27, 'Interest On FDR', NULL, '', 1, 1, '2020-04-22 12:46:31'),
(12, '700002', 7, 28, 'Freight Receipt', NULL, '', 1, 1, '2020-04-22 12:47:09'),
(13, '900021', 9, 21, 'Bank Charges', 'ব্যাংক চার্জ', '', 1, 1, '2020-04-22 12:48:48'),
(14, '600001', 6, 25, 'Cost Of Good Sold', NULL, '', 1, 1, '2020-04-22 12:50:22'),
(15, '900032', 9, 21, 'Telephones &amp; Mobile Bill', 'টেলিফোন এবং মোবাইল বিল', '', 1, 1, '2020-04-22 12:48:04'),
(16, '900022', 9, 21, 'Electricity Bills', 'বিদ্যুৎ বিল', '', 1, 1, '2020-04-22 12:48:32'),
(17, '900023', 9, 21, 'Food, Lunch &amp; Entertainments', 'খাবার, দুপুরের খাবার এবং অন্যান্য', '', 1, 1, '2020-04-22 12:48:49'),
(18, '500007', 5, 16, 'Supplier Previous Balance', NULL, '', 1, 1, '2020-04-22 12:49:09'),
(19, '900019', 9, 21, 'Conveyances', 'যাতায়াত খরচ', '', 1, 1, '2020-04-22 12:49:41'),
(20, '900027', 9, 21, 'Office Stationeries', 'কার্যালয়ের নিশ্চল খরচ', '', 1, 1, '2020-04-22 12:50:34'),
(21, '900020', 9, 21, 'Internet &amp; IT Expenses', 'ইন্টারনেট ও আইটির খরচ', '', 1, 1, '2020-04-22 12:50:56'),
(22, '900034', 9, 21, 'Sundry Expenses', 'বিবিধ খরচ', '', 1, 1, '2020-04-22 12:51:20'),
(23, '900025', 9, 21, 'Licences &amp; Renewals', 'লাইছেঞ্ছ নবায়ন খরচ', '', 1, 1, '2020-04-22 12:51:43'),
(24, '900029', 9, 21, 'Sales Commission', 'বিক্রয় কমিশন', '', 1, 1, '2020-04-22 12:52:17'),
(25, '800015', 8, 20, 'VAT On Purchase', 'ক্রয়ের উপর ভ্যাট', '', 1, 1, '2020-04-22 12:53:00'),
(26, '800014', 8, 20, 'Tax On Purchase', 'ক্রয়ের উপর ট্যাক্স', '', 1, 1, '2020-04-22 12:53:14'),
(27, '800013', 8, 20, 'Other Direct Expenses', 'অন্যান্য পরিচালন খরচ', '', 1, 1, '2020-04-22 12:53:29'),
(28, '900033', 9, 21, 'Tips &amp; Donations', 'টিপস এবং ডোনেশন', '', 1, 1, '2020-04-22 12:54:02'),
(29, '900028', 9, 21, 'Personal Expenses', 'ব্যাক্তিগত খরচ', 'All personal Expenses of Owner', 1, 1, '2020-04-22 12:54:48'),
(30, '900024', 9, 21, 'Home Delivery', 'হোম ডেলিভারি', '', 1, 1, '2020-04-22 01:08:31'),
(31, '900026', 9, 21, 'Office Rent', 'কার্যালয়ের ভাড়া', '', 1, 1, '2020-04-27 10:35:17'),
(32, '700003', 7, 26, 'Commission Income', NULL, '', 1, 1, '2020-04-27 10:45:27'),
(33, '100003', 1, 12, 'Customer Opening Balance', NULL, '', 1, 1, '2020-04-27 10:54:57'),
(34, '600002', 6, 23, 'Sales Revenue', NULL, '', 1, 1, '2020-04-28 02:20:11'),
(35, '900031', 9, 21, 'Water Bill', 'পানির বিল', 'Welcome Test', 1, 1, '2020-04-29 11:29:35'),
(36, '800010', 8, 20, 'Discount On Sales', 'বিক্রয়ের ডিসকাউন্ট', '', 1, 1, '2020-06-11 07:58:38'),
(37, '800009', 8, 20, 'Discount On Item', 'আইটেমে ডিসকাউন্ট', '', 1, 1, '2020-06-11 08:00:10'),
(38, '500003', 5, 14, 'AIT On Sales Payable', NULL, '', 1, 1, '2020-06-11 08:03:40'),
(39, '700004', 7, 28, 'Service Charges Receipts', NULL, '', 1, 1, '2020-06-11 08:06:32'),
(40, '800011', 8, 20, 'Less Given On Sales', 'বিক্রয়ের উপর কমিশন', '', 1, 1, '2020-06-11 08:09:58'),
(41, '500005', 5, 16, 'Discount Reserves On Purchase', NULL, '', 1, 1, '2020-06-16 11:25:15'),
(42, '500004', 5, 16, 'Discount Item On Purchase', NULL, '', 1, 1, '2020-06-16 11:25:59'),
(43, '700007', 7, 28, 'Less Paid On Purchase', NULL, '', 1, 1, '2020-06-16 11:29:10'),
(44, '900018', 9, 21, 'Labour &amp; Transportation', 'লেবার এবং ট্রান্সপোর্টেশন', '', 1, 1, '2020-06-16 11:41:50'),
(45, '800012', 8, 20, 'Less Receive On Purchase Return', 'ক্রয়কৃত পন্য ফেরতের উপর ছাড়', '', 1, 1, '2020-06-17 02:56:32'),
(46, '700008', 7, 28, 'Less Paid On Sales Return', NULL, '', 1, 1, '2020-06-17 11:29:43'),
(47, '300005', 3, 30, 'Receive/Payable Adjustment Account', NULL, 'Customer And Supplier Opening Balance', 1, 1, '2020-07-07 12:43:41'),
(48, '500006', 5, 33, 'Salaries,Wages And Allowance', NULL, 'Employee Salary', 1, 1, '2020-07-23 11:01:51'),
(49, '800016', 8, 20, 'Product Adjustment', NULL, 'Product witch are damage, stolen, miss use etc...', 1, 1, '2020-08-25 01:35:32'),
(50, '800017', 8, 37, 'Cost Of Good Damage', NULL, '', 1, 1, '2020-08-25 02:13:42'),
(51, '600003', 6, 38, 'Damage Revenue', NULL, 'Product witch are damage, stolen, miss use etc...', 1, 1, '2020-08-25 02:28:47'),
(52, '800018', 8, 20, 'Business Promotion Expenses', NULL, 'All Kind of Business Promotion and Marketing Expenses  ', 1, 1, '2020-10-28 11:29:34'),
(53, '800019', 8, 20, 'Documents Section', '', '', 0, 1, '2021-01-27 05:00:56'),
(54, '800020', 8, 20, 'Media Commision', 'Media Commision', '', 0, 1, '2021-02-02 07:54:35'),
(55, '800021', 8, 20, 'Land Registration', 'Land Registration', '', 0, 1, '2021-02-02 07:55:49'),
(56, '800022', 8, 20, 'Rajuk Plan Pass', 'Rajuk Plan Pass', '', 0, 1, '2021-02-02 07:56:43'),
(57, '800023', 8, 20, 'R &amp; H Plan Pass', 'R & H Plan Pass', '', 0, 1, '2021-02-02 07:57:28'),
(58, '900035', 9, 21, 'Advertisement', 'Advertisement', '', 0, 1, '2021-02-02 07:58:05'),
(59, '900036', 9, 21, 'Vat &amp; Tax Commission', 'Vat & Tax Commission', '', 0, 1, '2021-02-02 07:59:08'),
(60, '800024', 8, 20, 'Swift Charge', 'Swift Charge', '', 0, 1, '2021-02-02 07:59:38'),
(61, '800025', 8, 20, 'Stuff Expense', 'Stuff Expense', '', 0, 1, '2021-02-02 08:00:09'),
(62, '800026', 8, 20, 'Insurance', 'Insurance', '', 0, 1, '2021-02-02 08:00:40'),
(63, '800027', 8, 20, 'Credit Report Committee', 'Credit Report Committee', '', 0, 1, '2021-02-02 08:01:25'),
(64, '800028', 8, 20, 'Visa, Ticket, Entertainment Expens ', 'Visa, Ticket, Entertainment Expens ', '', 0, 1, '2021-02-02 08:02:42'),
(65, '800029', 8, 20, 'Office Tips_1% Against Work', 'Office tips_1% against work_Via Bariq', '', 0, 1, '2021-02-23 08:01:06'),
(66, '800030', 8, 20, 'Application &amp; Conveyance', 'Application & Conveyance', '', 0, 1, '2021-02-23 08:01:32'),
(67, '800031', 8, 20, 'For Issuing Guarantee Charge_LGED ', ' For issuing Guarantee charge_LGED ID:342392_03 Quarter', '', 0, 1, '2021-02-23 08:02:08'),
(68, '800032', 8, 20, 'LGED Office', 'LGED Office', '', 0, 1, '2021-02-23 08:02:27'),
(69, '800033', 8, 20, 'Rod Test Purpose', 'Rod test purpose', '', 0, 1, '2021-02-23 08:02:53'),
(70, '800034', 8, 20, 'LGED Tender Expense', 'LGED Tender Expense', 'LGED Tender Expense', 0, 1, '2021-02-25 04:19:38'),
(71, '300006', 3, 30, 'Alfaj', NULL, '', 0, 1, '2021-02-25 04:40:56'),
(72, '300007', 3, 40, 'Project Sub Contract', NULL, 'Project Sub contract', 0, 1, '2021-03-03 04:55:30'),
(74, '800072', 8, 20, 'Md. Amin Uddin', NULL, '', 0, 1, '2021-03-24 02:37:16'),
(75, '800036', 8, 20, 'Md. Abdul Latif', NULL, '', 0, 1, '2021-03-24 03:56:40'),
(76, '800037', 8, 20, 'Tech. Abu Taleb', NULL, '', 0, 1, '2021-03-24 03:57:25'),
(77, '800038', 8, 20, 'Tech. Taraq', NULL, '', 0, 1, '2021-03-24 03:57:48'),
(78, '900037', 9, 21, 'Drawing', NULL, '', 0, 1, '2021-03-24 03:58:14'),
(79, '800039', 8, 20, 'Tech. Sr. Enamul', NULL, '', 0, 1, '2021-03-24 03:58:40'),
(80, '800040', 8, 20, 'Md. Benzir Ahmed', NULL, '', 0, 1, '2021-03-24 03:59:24'),
(81, '800041', 8, 20, 'Md. Shahin Sarker', NULL, '', 0, 1, '2021-03-24 03:59:49'),
(82, '800042', 8, 20, 'Md. Liton Hasan', NULL, '', 0, 1, '2021-03-24 04:00:02'),
(83, '900038', 9, 21, 'Fire Extinguisher', NULL, '', 0, 1, '2021-03-24 04:34:26'),
(84, '900039', 9, 21, 'Name Plate', NULL, '', 0, 1, '2021-03-24 06:12:33'),
(85, '800043', 8, 20, 'Mollik Nobir', NULL, '', 0, 1, '2021-03-31 04:14:36'),
(86, '800044', 8, 20, 'Tech. Nazmul', NULL, '', 0, 1, '2021-03-31 04:31:44'),
(87, '800045', 8, 20, 'Md. Sabbir Hossain', NULL, '', 0, 1, '2021-03-31 04:46:54'),
(88, '800046', 8, 20, 'Md. Rakib Shikder', NULL, '', 0, 1, '2021-03-31 04:47:13'),
(89, '900040', 9, 21, 'Truck Rent', NULL, '', 0, 1, '2021-03-31 05:02:37'),
(90, '800047', 8, 20, 'Md. Zahidul Islam Samrat', NULL, '', 0, 1, '2021-03-31 06:09:15'),
(91, '800048', 8, 20, 'Abdul Bariq', NULL, '', 0, 1, '2021-03-31 06:52:26'),
(92, '800049', 8, 20, 'Tushar Kumar Paul', NULL, '', 0, 1, '2021-03-31 06:52:56'),
(93, '800050', 8, 20, 'Md. Bellal Hossain', NULL, '', 0, 1, '2021-03-31 06:53:18'),
(94, '800051', 8, 20, 'Md. Shahin Alam', NULL, '', 0, 1, '2021-03-31 06:53:35'),
(95, '800052', 8, 20, 'Md. Hasmot Ali', NULL, '', 0, 1, '2021-03-31 06:53:55'),
(97, '800054', 8, 20, 'Md. Abu Sayed', NULL, '', 0, 1, '2021-03-31 06:54:30'),
(98, '800055', 8, 20, 'Metthun Halder', NULL, '', 0, 1, '2021-03-31 06:54:53'),
(99, '800056', 8, 20, 'Md. Rabiul Alam', NULL, '', 0, 1, '2021-03-31 06:55:11'),
(101, '800058', 8, 20, 'Suruzzaman', NULL, '', 0, 1, '2021-03-31 06:55:49'),
(102, '800059', 8, 20, 'Md. Nahidul Islam', NULL, '', 0, 1, '2021-03-31 06:56:14'),
(103, '800060', 8, 20, 'Md. Arif Hossain', NULL, '', 0, 1, '2021-03-31 06:56:41'),
(104, '800061', 8, 20, 'Md. Abu Bakar Biswas', NULL, '', 0, 1, '2021-03-31 06:57:24'),
(105, '800062', 8, 20, 'Md. Aminul Islam', NULL, '', 0, 1, '2021-03-31 06:57:37'),
(106, '800063', 8, 20, 'Md. Yousuf Ali', NULL, '', 0, 1, '2021-03-31 06:57:50'),
(107, '800064', 8, 20, 'Abdur Razzak', NULL, '', 0, 1, '2021-03-31 06:58:06'),
(108, '800065', 8, 20, 'A.N.M Salauddin', NULL, '', 0, 1, '2021-03-31 06:58:23'),
(109, '800066', 8, 20, 'Md. Al Amin Mia', NULL, '', 0, 1, '2021-03-31 06:58:35'),
(110, '800067', 8, 20, 'Md. Yousub Ali', NULL, '', 0, 1, '2021-03-31 06:59:07'),
(111, '800068', 8, 20, 'Md. Amir Hamza', NULL, '', 0, 1, '2021-03-31 06:59:27'),
(112, '800069', 8, 20, 'Md. Haydar Ali', NULL, '', 0, 1, '2021-03-31 06:59:39'),
(114, '800071', 8, 20, 'Md. Faruq', NULL, '', 0, 1, '2021-03-31 07:00:43'),
(115, '800073', 8, 20, 'Md. Nayemul Islam ', NULL, '', 0, 2, '2021-04-06 06:53:02'),
(116, '800074', 8, 20, 'Md. Mahabur Rahman', NULL, '', 0, 2, '2021-04-07 03:39:27'),
(117, '900041', 9, 21, 'Office Expense', NULL, '', 0, 2, '2021-04-07 03:45:42'),
(118, '900042', 9, 21, 'Refreshment', NULL, '', 0, 2, '2021-04-07 03:46:29'),
(119, '800075', 8, 20, 'Md. Reja Rakib', NULL, '', 0, 2, '2021-04-07 04:39:36'),
(120, '800076', 8, 20, 'Md. Mubin', NULL, '', 0, 2, '2021-04-08 04:43:31'),
(121, '800077', 8, 20, 'Md. Lekhan Ali', NULL, '', 0, 2, '2021-04-10 04:18:20'),
(122, '800078', 8, 20, 'Razoni Kanto Paul', NULL, '', 0, 2, '2021-04-10 04:46:35'),
(123, '800079', 8, 20, 'Room Rent', NULL, '', 0, 2, '2021-04-19 02:27:45'),
(124, '800080', 8, 20, 'Bedding', NULL, '', 0, 2, '2021-04-19 02:28:10'),
(125, '800081', 8, 20, 'Sub Contractor ', NULL, '', 0, 2, '2021-04-19 02:28:55'),
(126, '800082', 8, 20, 'Tirpal ', NULL, '', 0, 2, '2021-04-19 02:30:06'),
(127, '800083', 8, 20, 'Document Print', NULL, '', 0, 2, '2021-04-19 02:41:31'),
(128, '800084', 8, 20, 'Power Apply', NULL, '', 0, 2, '2021-04-19 02:41:41'),
(129, '800085', 8, 20, 'Rope', NULL, '', 0, 2, '2021-04-19 02:41:56'),
(130, '800086', 8, 20, 'Rod ', NULL, '', 0, 2, '2021-04-19 02:42:29'),
(131, '800087', 8, 20, 'Daily Labour', NULL, '', 0, 2, '2021-04-19 02:42:42'),
(132, '800088', 8, 20, 'Rod Carrying', NULL, '', 0, 2, '2021-04-19 02:42:56'),
(133, '800089', 8, 20, 'Brick Chips', NULL, '', 0, 2, '2021-04-19 02:44:21'),
(134, '800090', 8, 20, 'Brick Chips Carrying', NULL, '', 0, 2, '2021-04-19 02:44:45'),
(135, '800091', 8, 20, 'Local Sand ', NULL, '', 0, 2, '2021-04-19 02:45:11'),
(136, '800092', 8, 20, 'Local Sand  Carrying', NULL, '', 0, 2, '2021-04-19 02:45:26'),
(137, '800093', 8, 20, 'Sylhet Sand ', NULL, '', 0, 2, '2021-04-19 02:45:43'),
(138, '800094', 8, 20, 'Sylhet Sand  Carrying', NULL, '', 0, 2, '2021-04-19 02:45:57'),
(139, '800095', 8, 20, 'Cement ', NULL, '', 0, 2, '2021-04-19 02:46:15'),
(140, '800096', 8, 20, 'Cement  Carrying', NULL, '', 0, 2, '2021-04-19 02:46:30'),
(141, '800097', 8, 20, 'Welding', NULL, '', 0, 2, '2021-04-19 02:46:49'),
(142, '800098', 8, 20, 'Bkash Charge', NULL, '', 0, 2, '2021-04-19 02:47:11'),
(143, '800099', 8, 20, 'Template Carrying ', NULL, '', 0, 2, '2021-04-19 02:47:48'),
(144, '800100', 8, 20, 'Admixer', NULL, '', 0, 2, '2021-04-19 02:48:41'),
(145, '800101', 8, 20, 'Labour Tips', NULL, '', 0, 2, '2021-04-19 02:49:33'),
(146, '800102', 8, 20, 'Pipe', NULL, '', 0, 2, '2021-04-19 02:50:24'),
(147, '800103', 8, 20, 'Electric Materials Carrying', NULL, '', 0, 2, '2021-04-19 02:51:18'),
(148, '800104', 8, 20, 'Boring', NULL, '', 0, 2, '2021-04-19 02:52:06'),
(149, '800105', 8, 20, 'Paint', NULL, '', 0, 2, '2021-04-19 02:52:15'),
(150, '800106', 8, 20, 'Technician', NULL, '', 0, 2, '2021-04-19 02:52:39'),
(151, '800107', 8, 20, 'Mistry', NULL, '', 0, 2, '2021-04-19 02:52:49'),
(152, '800108', 8, 20, 'Line Man', NULL, '', 0, 2, '2021-04-19 02:53:12'),
(153, '800109', 8, 20, 'Electric Bill', NULL, '', 0, 2, '2021-04-19 02:53:28'),
(154, '800110', 8, 20, 'Lock &amp; Key', NULL, '', 0, 2, '2021-04-19 02:53:46'),
(155, '800111', 8, 20, 'Demand Note', NULL, '', 0, 2, '2021-04-19 02:54:37'),
(156, '100001', 10, 41, 'Petty Cash', NULL, '', 0, 1, '2021-05-25 05:48:48'),
(157, '100002', 10, 41, 'Tasma Amat Eva', NULL, '', 0, 1, '2021-05-25 05:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_acmobile`
--

CREATE TABLE `tbl_acmobile` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `mobile` varchar(18) NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_acmobile`
--

INSERT INTO `tbl_acmobile` (`id`, `name`, `bname`, `mobile`, `brid`, `uid`, `date`) VALUES
(1, 'bKash', NULL, '01616170070', 0, 1, '2020-06-09 03:04:51'),
(2, 'bKash', NULL, '01706144766', 0, 1, '2020-06-09 03:13:34'),
(3, 'bKash Sohel (Personal)', NULL, '01727368164', 0, 1, '2020-09-19 01:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_acsubgroup`
--

CREATE TABLE `tbl_acsubgroup` (
  `id` int(11) NOT NULL,
  `grid` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_acsubgroup`
--

INSERT INTO `tbl_acsubgroup` (`id`, `grid`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, 2, 'Cash At Hand', NULL, '', 1, '2020-04-09 03:07:03'),
(2, 2, 'Cash At Bank', NULL, '', 1, '2020-04-09 03:07:36'),
(3, 2, 'Inventory', NULL, 'All Kind Of Purchase Product', 1, '2020-04-09 03:19:39'),
(4, 2, 'Account Receivables', NULL, '', 1, '2020-04-21 08:51:00'),
(5, 2, 'Other Current Assets', NULL, '', 1, '2020-04-21 08:52:10'),
(6, 1, 'Fixed Assets', NULL, '', 1, '2020-04-21 08:54:06'),
(7, 1, 'Investments', NULL, '', 1, '2020-04-21 09:01:44'),
(8, 1, 'Advances, Deposits &amp; Prepayment', NULL, '', 1, '2020-04-21 09:02:06'),
(9, 1, 'Intangible Assets', NULL, '', 1, '2020-04-21 09:02:32'),
(10, 1, 'Tangible Asset', NULL, '', 1, '2020-04-21 09:05:15'),
(11, 1, 'Other Non Current Assets', NULL, '', 1, '2020-04-21 09:05:44'),
(12, 1, 'Customer Previous Balance', NULL, '', 1, '2020-04-21 09:08:59'),
(13, 5, 'Account Payable', NULL, '', 1, '2020-04-21 09:10:38'),
(14, 5, 'Liability For Expenses', NULL, '', 1, '2020-04-21 09:11:58'),
(15, 5, 'Liability For Other Finance', NULL, '', 1, '2020-04-21 09:12:22'),
(16, 5, 'Other Current Liabilities', NULL, '', 1, '2020-04-21 09:12:47'),
(17, 4, 'Long Term Borrowings', NULL, '', 1, '2020-04-21 09:13:45'),
(18, 4, 'Institutional Borrowings', NULL, '', 1, '2020-04-21 09:15:54'),
(19, 4, 'Other Non Current Liabilities', NULL, '', 1, '2020-04-21 09:21:52'),
(20, 8, 'Operating Expenses', NULL, '', 1, '2020-04-21 09:23:30'),
(21, 9, 'Administrative Expenses', NULL, '', 1, '2020-04-21 09:25:41'),
(22, 9, 'Selling Expenses', NULL, '', 1, '2020-04-21 09:25:58'),
(23, 6, 'Goods Sales', NULL, '', 1, '2020-04-21 09:29:07'),
(24, 6, 'Other Operating Sales', NULL, '', 1, '2020-04-21 09:31:58'),
(25, 6, 'Cost Of Goods Sold', NULL, '', 1, '2020-04-21 09:39:26'),
(26, 7, 'Service Income', NULL, '', 1, '2020-04-21 09:39:56'),
(27, 7, 'Interest Income', NULL, '', 1, '2020-04-21 09:40:18'),
(28, 7, 'Other Income', NULL, '', 1, '2020-04-21 09:43:05'),
(29, 7, 'Incentive Income', NULL, '', 1, '2020-04-21 09:43:24'),
(30, 3, 'Share Capital', NULL, '', 1, '2020-04-21 09:44:27'),
(31, 3, 'Drawings', NULL, '', 1, '2020-04-21 09:44:58'),
(32, 3, 'Reserves &amp; Surplus', NULL, '', 1, '2020-04-21 09:45:33'),
(33, 5, 'Salaries,Wages &amp; Allowance Paya', NULL, '', 1, '2020-04-21 10:26:31'),
(34, 2, 'Cash At Mobile Account', NULL, '', 1, '2020-06-13 06:45:20'),
(35, 4, 'Bank &amp; Over Draft', NULL, '', 1, '2020-06-13 09:35:22'),
(36, 4, 'Other Loan &amp; Mortgage', NULL, '', 1, '2020-06-13 09:35:37'),
(37, 8, 'Product Adjust', NULL, '', 1, '2020-08-25 02:12:43'),
(38, 6, 'Damage Recover', NULL, '', 1, '2020-08-25 02:26:35'),
(39, 5, 'Account Payable Contructor', NULL, '', 1, '2021-02-26 06:53:10'),
(40, 3, 'Project And Tender', NULL, 'Project and Tender', 1, '2021-03-03 04:51:42'),
(41, 10, 'Cash', NULL, '', 1, '2021-05-25 05:43:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity`
--

CREATE TABLE `tbl_activity` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `filds` varchar(3) NOT NULL,
  `title` varchar(45) NOT NULL,
  `btitle` varchar(120) DEFAULT NULL,
  `activity` varchar(350) NOT NULL,
  `bactivity` varchar(650) DEFAULT NULL,
  `acdtime` datetime NOT NULL,
  `brid` int(11) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `mac` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_activity`
--

INSERT INTO `tbl_activity` (`id`, `uid`, `filds`, `title`, `btitle`, `activity`, `bactivity`, `acdtime`, `brid`, `ip`, `mac`) VALUES
(1, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-03 18:28:10', 0, '::1', '34-E6-AD-CC-0D-FC'),
(2, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-09 11:41:11', 0, '::1', '34-E6-AD-CC-0D-FC'),
(3, 1, 'BRN', 'New branch has been Added', NULL, 'Branch name: Gdsgfdg', NULL, '2021-03-09 11:50:24', 0, '::1', '34-E6-AD-CC-0D-FC'),
(4, 1, 'BRN', 'Branch has been Updated', NULL, 'Branch name: Nagdarpar', NULL, '2021-03-09 11:50:59', 0, '::1', '34-E6-AD-CC-0D-FC'),
(5, 1, 'WAR', 'Warehouse has been Updated', NULL, 'Warehouse name: Agargaon Warehouse', NULL, '2021-03-09 13:44:43', 0, '::1', '34-E6-AD-CC-0D-FC'),
(6, 1, 'WAR', 'New werhouse has been Added', NULL, 'Werhouse name: Dfgfdgfdg', NULL, '2021-03-09 13:49:21', 0, '::1', '34-E6-AD-CC-0D-FC'),
(7, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-09 15:07:32', 0, '::1', '34-E6-AD-CC-0D-FC'),
(8, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-11 16:32:58', 0, '::1', '34-E6-AD-CC-0D-F8'),
(9, 1, 'COM', 'Companyt has been Updated', NULL, 'Company Update: RMC', NULL, '2021-03-11 16:39:40', 0, '::1', '34-E6-AD-CC-0D-F8'),
(10, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-11 16:55:24', 0, '::1', '34-E6-AD-CC-0D-F8'),
(11, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-12 17:39:42', 0, '::1', '34-E6-AD-CC-0D-FC'),
(12, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-12 17:44:18', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(13, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Asdf', 'খরচ খাতের নামঃ ', '2021-03-12 17:45:21', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(14, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Axc', 'খরচ খাতের নামঃ ', '2021-03-12 17:46:36', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(15, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Mnb', 'খরচ খাতের নামঃ ', '2021-03-12 17:46:55', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(16, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Utyytutyuytuyt', 'খরচ খাতের নামঃ ', '2021-03-12 17:47:11', 0, '::1', '34-E6-AD-CC-0D-FC'),
(17, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tryrtyrytrjkhk', 'খরচ খাতের নামঃ ', '2021-03-12 17:47:57', 0, '::1', '34-E6-AD-CC-0D-FC'),
(18, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Asd', 'খরচ খাতের নামঃ Asd', '2021-03-12 17:52:13', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(19, 1, 'EXP', 'Expenses Head has been deleted', NULL, 'Expenses Head name: Asd', NULL, '2021-03-12 17:59:09', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(20, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-12 18:01:51', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(21, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-12 18:24:01', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(22, 1, 'WAR', 'Warehouse has been deleted', NULL, 'Warehouse name: Dfgfdgfdg', NULL, '2021-03-12 18:24:35', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(23, 1, 'TRB', 'New Transfer has been Created', NULL, 'Transfer No: TRB120321101', NULL, '2021-03-12 18:25:17', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(24, 1, 'WAR', 'Warehouse has been deleted', NULL, 'Warehouse name: Arshinagor Ware House', NULL, '2021-03-12 18:25:43', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(25, 1, 'TRB', 'Transfer challan has been deleted', NULL, 'Transfer Challan: TRB120321101', NULL, '2021-03-12 18:26:28', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(26, 1, 'WAR', 'Warehouse has been deleted', NULL, 'Warehouse name: Agargaon Warehouse', NULL, '2021-03-12 18:26:38', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(27, 1, 'EXL', 'Expenses has been Added', NULL, 'Expenses No: EXP120321101', NULL, '2021-03-12 18:27:34', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(28, 1, 'EXL', 'Expenses has been Added', NULL, 'Expenses No: EXP120321102', NULL, '2021-03-12 18:27:53', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(29, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-12 18:38:39', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(30, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-12 18:40:20', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(31, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-12 18:41:01', 0, '::1', '34-E6-AD-CC-0D-FC'),
(32, 6, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-12 18:41:07', 2, '::1', '34-E6-AD-CC-0D-FC'),
(33, 6, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-12 18:43:22', 2, '::1', '34-E6-AD-CC-0D-FC'),
(34, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-12 18:43:28', 0, '::1', '34-E6-AD-CC-0D-FC'),
(35, 1, 'REC', 'Receipt has been Added', NULL, 'Receipt No: REV120321101', NULL, '2021-03-12 19:00:09', 0, '192.168.0.193', '34-E6-AD-CC-0D-FC'),
(36, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-13 12:45:05', 0, '::1', '34-E6-AD-CC-0D-F8'),
(37, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-13 13:29:11', 0, '::1', '34-E6-AD-CC-0D-F8'),
(38, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-13 13:36:01', 0, '::1', '34-E6-AD-CC-0D-F8'),
(39, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-13 14:05:29', 0, '::1', '34-E6-AD-CC-0D-F8'),
(40, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-17 15:43:42', 0, '::1', '34-E6-AD-CC-0D-FC'),
(41, 1, 'CHA', 'New Challan has been Created', NULL, 'Challan No: CHA170321101', NULL, '2021-03-17 15:44:20', 0, '::1', '34-E6-AD-CC-0D-FC'),
(42, 1, 'CHA', 'Challan has been deleted', NULL, 'Challan No: CHA170321101', NULL, '2021-03-17 15:52:32', 0, '::1', '34-E6-AD-CC-0D-FC'),
(43, 1, 'PUR', 'New purchase invoice has been Created', NULL, 'Purchase Invoice: PUR170321101', NULL, '2021-03-17 15:53:51', 0, '::1', '34-E6-AD-CC-0D-FC'),
(44, 1, 'PUR', 'New purchase invoice has been Created', NULL, 'Purchase Invoice: PUR170321102', NULL, '2021-03-17 15:56:22', 0, '::1', '34-E6-AD-CC-0D-FC'),
(45, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR250221101', NULL, '2021-03-17 15:57:08', 0, '::1', '34-E6-AD-CC-0D-FC'),
(46, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR250221102', NULL, '2021-03-17 15:57:14', 0, '::1', '34-E6-AD-CC-0D-FC'),
(47, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR170321102', NULL, '2021-03-17 15:57:19', 0, '::1', '34-E6-AD-CC-0D-FC'),
(48, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR170321101', NULL, '2021-03-17 15:57:24', 0, '::1', '34-E6-AD-CC-0D-FC'),
(49, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR230221101', NULL, '2021-03-17 15:57:29', 0, '::1', '34-E6-AD-CC-0D-FC'),
(50, 1, 'PUR', 'New purchase invoice has been Created', NULL, 'Purchase Invoice: PUR170321101', NULL, '2021-03-17 15:59:14', 0, '::1', '34-E6-AD-CC-0D-FC'),
(51, 1, 'CHA', 'New Challan has been Created', NULL, 'Challan No: CHA170321101', NULL, '2021-03-17 16:01:13', 0, '::1', '34-E6-AD-CC-0D-FC'),
(52, 1, 'CHA', 'Challan has been deleted', NULL, 'Challan No: CHA170321101', NULL, '2021-03-17 16:01:30', 0, '::1', '34-E6-AD-CC-0D-FC'),
(53, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-17 16:16:47', 0, '::1', '34-E6-AD-CC-0D-FC'),
(54, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-17 16:21:53', 0, '::1', '34-E6-AD-CC-0D-FC'),
(55, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-17 16:41:57', 0, '::1', '34-E6-AD-CC-0D-FC'),
(56, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-22 10:43:59', 0, '::1', '34-E6-AD-CC-0D-FC'),
(57, 1, 'TYP', 'New Type has been created', NULL, 'Type name: Civil Work', NULL, '2021-03-22 13:04:42', 0, '::1', '34-E6-AD-CC-0D-FC'),
(58, 1, 'TYP', 'New Type has been created', NULL, 'Type name: Power Work', NULL, '2021-03-22 13:05:09', 0, '::1', '34-E6-AD-CC-0D-FC'),
(59, 1, 'TYP', 'New Type has been created', NULL, 'Type name: Dfgfdg', NULL, '2021-03-22 13:15:25', 0, '::1', '34-E6-AD-CC-0D-FC'),
(60, 1, 'TYP', 'Type has been Update', NULL, 'Type name: Other Job', NULL, '2021-03-22 13:15:54', 0, '::1', '34-E6-AD-CC-0D-FC'),
(61, 1, 'TYP', 'Type has been deleted', NULL, 'Type name: Other Job', NULL, '2021-03-22 13:16:01', 0, '::1', '34-E6-AD-CC-0D-FC'),
(62, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-22 18:49:14', 0, '::1', '34-E6-AD-CC-0D-FC'),
(63, 1, 'PRJ', 'Project has been updated', NULL, 'Project ID: RTY-FGH-4563', NULL, '2021-03-22 19:10:06', 0, '::1', '34-E6-AD-CC-0D-FC'),
(64, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-22 20:17:19', 0, '::1', '34-E6-AD-CC-0D-FC'),
(65, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-23 10:53:55', 0, '::1', '34-E6-AD-CC-0D-FC'),
(66, 1, 'PUR', 'New purchase invoice has been Created', NULL, 'Purchase Invoice: PUR230321101', NULL, '2021-03-23 18:25:31', 0, '::1', '34-E6-AD-CC-0D-FC'),
(67, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-23 19:47:25', 0, '::1', '34-E6-AD-CC-0D-F8'),
(68, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-23 19:50:52', 0, '192.168.0.113', '34-E6-AD-CC-0D-F8'),
(69, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-24 11:24:16', 0, '103.144.48.210', ''),
(70, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-03-24 11:26:54', 0, '103.144.48.210', ''),
(71, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-24 14:15:03', 0, '144.48.112.54', ''),
(72, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP120321102', NULL, '2021-03-24 14:22:12', 0, '144.48.112.54', ''),
(73, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP120321101', NULL, '2021-03-24 14:22:23', 0, '144.48.112.54', ''),
(74, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP230221101', NULL, '2021-03-24 14:22:53', 0, '144.48.112.54', ''),
(75, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP230221102', NULL, '2021-03-24 14:23:05', 0, '144.48.112.54', ''),
(76, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP230221103', NULL, '2021-03-24 14:23:19', 0, '144.48.112.54', ''),
(77, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP020221101', NULL, '2021-03-24 14:23:29', 0, '144.48.112.54', ''),
(78, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP020221102', NULL, '2021-03-24 14:23:38', 0, '144.48.112.54', ''),
(79, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV260221101', NULL, '2021-03-24 14:24:11', 0, '144.48.112.54', ''),
(80, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV250221101', NULL, '2021-03-24 14:24:16', 0, '144.48.112.54', ''),
(81, 1, 'REC', 'Receipt has been deleted', NULL, 'Receipt no: REV120321101', NULL, '2021-03-24 14:24:26', 0, '144.48.112.54', ''),
(82, 1, 'REC', 'Receipt has been deleted', NULL, 'Receipt no: REV260221101', NULL, '2021-03-24 14:24:30', 0, '144.48.112.54', ''),
(83, 1, 'REC', 'Receipt has been deleted', NULL, 'Receipt no: REV250221101', NULL, '2021-03-24 14:24:36', 0, '144.48.112.54', ''),
(84, 1, 'REC', 'Receipt has been deleted', NULL, 'Receipt no: REV230221101', NULL, '2021-03-24 14:24:40', 0, '144.48.112.54', ''),
(85, 1, 'REC', 'Receipt has been deleted', NULL, 'Receipt no: REV230221102', NULL, '2021-03-24 14:24:44', 0, '144.48.112.54', ''),
(86, 1, 'JOU', 'Journal has been deleted', NULL, 'Journal no: JOU260221101', NULL, '2021-03-24 14:24:58', 0, '144.48.112.54', ''),
(87, 1, 'TYP', 'New Type has been created', NULL, 'Type name: Edot Co Power Upgradation ', NULL, '2021-03-24 14:26:11', 0, '144.48.112.54', ''),
(88, 1, 'TYP', 'New Type has been created', NULL, 'Type name: GP Power Upgradation ', NULL, '2021-03-24 14:26:25', 0, '144.48.112.54', ''),
(89, 1, 'COT', 'Contractor has been deleted', NULL, 'Contractor name: Shiraju7l Islam', NULL, '2021-03-24 14:27:02', 0, '144.48.112.54', ''),
(90, 1, 'COT', 'Contractor has been deleted', NULL, 'Contractor name: Md. Saiful', NULL, '2021-03-24 14:27:30', 0, '144.48.112.54', ''),
(91, 1, 'COT', 'Contractor has been deleted', NULL, 'Contractor name: Sattar Ali', NULL, '2021-03-24 14:27:36', 0, '144.48.112.54', ''),
(92, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR230321101', NULL, '2021-03-24 14:28:02', 0, '144.48.112.54', ''),
(93, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR170321101', NULL, '2021-03-24 14:28:07', 0, '144.48.112.54', ''),
(94, 1, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Md. Saddam', NULL, '2021-03-24 14:31:47', 0, '144.48.112.54', ''),
(95, 1, 'SGP', 'New Sub-Group has been created', NULL, 'Sub-Group name: Edot Co &amp;amp; GP Combined Project', NULL, '2021-03-24 14:33:23', 0, '144.48.112.54', ''),
(96, 1, 'PRJ', 'New project has been created', NULL, 'Project ID: MBPNS1', NULL, '2021-03-24 14:34:57', 0, '144.48.112.54', ''),
(97, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md, Amin Uddin', 'খরচ খাতের নামঃ Md, Amin Uddin', '2021-03-24 14:37:16', 0, '144.48.112.54', ''),
(98, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321101', NULL, '2021-03-24 14:38:43', 0, '144.48.112.54', ''),
(99, 1, 'REC', 'Receipt has been Added', NULL, 'Receipt No: REV240321101', NULL, '2021-03-24 14:49:47', 0, '144.48.112.54', ''),
(100, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-24 15:00:20', 0, '144.48.112.54', ''),
(101, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Abdul Latif', 'খরচ খাতের নামঃ Md. Abdul Latif', '2021-03-24 15:56:40', 0, '144.48.112.54', ''),
(102, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tech. Abu Taleb', 'খরচ খাতের নামঃ Tech. Abu Taleb', '2021-03-24 15:57:25', 0, '144.48.112.54', ''),
(103, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tech. Taraq', 'খরচ খাতের নামঃ Tech. Taraq', '2021-03-24 15:57:48', 0, '144.48.112.54', ''),
(104, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Drawing', 'খরচ খাতের নামঃ Drawing', '2021-03-24 15:58:14', 0, '144.48.112.54', ''),
(105, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tech. Sr. Enamul', 'খরচ খাতের নামঃ Tech. Sr. Enamul', '2021-03-24 15:58:40', 0, '144.48.112.54', ''),
(106, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Benzir Ahmed', 'খরচ খাতের নামঃ Md. Benzir Ahmed', '2021-03-24 15:59:25', 0, '144.48.112.54', ''),
(107, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Shahin Sarker', 'খরচ খাতের নামঃ Md. Shahin Sarker', '2021-03-24 15:59:49', 0, '144.48.112.54', ''),
(108, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Liton Hasan', 'খরচ খাতের নামঃ Md. Liton Hasan', '2021-03-24 16:00:02', 0, '144.48.112.54', ''),
(109, 1, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Alim', NULL, '2021-03-24 16:15:39', 0, '144.48.112.54', ''),
(110, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321101', NULL, '2021-03-24 16:19:16', 0, '144.48.112.54', ''),
(111, 1, 'REC', 'Receipt has been deleted', NULL, 'Receipt no: REV240321101', NULL, '2021-03-24 16:20:15', 0, '144.48.112.54', ''),
(112, 1, 'PRJ', 'New project has been created', NULL, 'Project ID: DHUAA4', NULL, '2021-03-24 16:23:38', 0, '144.48.112.54', ''),
(113, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321101', NULL, '2021-03-24 16:24:24', 0, '144.48.112.54', ''),
(114, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321102', NULL, '2021-03-24 16:25:26', 0, '144.48.112.54', ''),
(115, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321103', NULL, '2021-03-24 16:26:38', 0, '144.48.112.54', ''),
(116, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321104', NULL, '2021-03-24 16:27:27', 0, '144.48.112.54', ''),
(117, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321105', NULL, '2021-03-24 16:28:43', 0, '144.48.112.54', ''),
(118, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321106', NULL, '2021-03-24 16:29:42', 0, '144.48.112.54', ''),
(119, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321107', NULL, '2021-03-24 16:30:23', 0, '144.48.112.54', ''),
(120, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321108', NULL, '2021-03-24 16:30:52', 0, '144.48.112.54', ''),
(121, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321109', NULL, '2021-03-24 16:31:33', 0, '144.48.112.54', ''),
(122, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321110', NULL, '2021-03-24 16:32:03', 0, '144.48.112.54', ''),
(123, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321111', NULL, '2021-03-24 16:32:42', 0, '144.48.112.54', ''),
(124, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321112', NULL, '2021-03-24 16:33:56', 0, '144.48.112.54', ''),
(125, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Fire Extinguisher', 'খরচ খাতের নামঃ Fire Extinguisher', '2021-03-24 16:34:26', 0, '144.48.112.54', ''),
(126, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321113', NULL, '2021-03-24 16:36:07', 0, '144.48.112.54', ''),
(127, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321114', NULL, '2021-03-24 16:37:14', 0, '144.48.112.54', ''),
(128, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321115', NULL, '2021-03-24 16:42:33', 0, '144.48.112.54', ''),
(129, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-24 17:47:48', 0, '144.48.112.54', ''),
(130, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321116', NULL, '2021-03-24 17:49:37', 0, '144.48.112.54', ''),
(131, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321117', NULL, '2021-03-24 17:50:16', 0, '144.48.112.54', ''),
(132, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321118', NULL, '2021-03-24 17:51:02', 0, '144.48.112.54', ''),
(133, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321119', NULL, '2021-03-24 17:52:07', 0, '144.48.112.54', ''),
(134, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321120', NULL, '2021-03-24 17:52:38', 0, '144.48.112.54', ''),
(135, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321121', NULL, '2021-03-24 18:09:04', 0, '144.48.112.54', ''),
(136, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321122', NULL, '2021-03-24 18:09:57', 0, '144.48.112.54', ''),
(137, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321123', NULL, '2021-03-24 18:10:33', 0, '144.48.112.54', ''),
(138, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321124', NULL, '2021-03-24 18:11:18', 0, '144.48.112.54', ''),
(139, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321125', NULL, '2021-03-24 18:12:02', 0, '144.48.112.54', ''),
(140, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Name Plate', 'খরচ খাতের নামঃ Name Plate', '2021-03-24 18:12:33', 0, '144.48.112.54', ''),
(141, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321126', NULL, '2021-03-24 18:14:12', 0, '144.48.112.54', ''),
(142, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321127', NULL, '2021-03-24 18:16:12', 0, '144.48.112.54', ''),
(143, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV240321128', NULL, '2021-03-24 18:19:19', 0, '144.48.112.54', ''),
(144, 1, 'DIS', 'New designation has been Added', NULL, 'Designation name: Site Engineer ', NULL, '2021-03-24 18:21:02', 0, '144.48.112.54', ''),
(145, 1, 'DIS', 'New designation has been Added', NULL, 'Designation name: Site Manager', NULL, '2021-03-24 18:21:17', 0, '144.48.112.54', ''),
(146, 1, 'DIS', 'New designation has been Added', NULL, 'Designation name: Project Engineer', NULL, '2021-03-24 18:21:40', 0, '144.48.112.54', ''),
(147, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-25 10:11:52', 0, '103.60.175.238', ''),
(148, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-25 19:17:53', 0, '27.147.204.42', ''),
(149, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-31 14:56:58', 0, '144.48.112.54', ''),
(150, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-31 16:13:49', 0, '144.48.112.54', ''),
(151, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Mollik Nobir', 'খরচ খাতের নামঃ Mollik Nobir', '2021-03-31 16:14:36', 0, '144.48.112.54', ''),
(152, 1, 'PRJ', 'New project has been created', NULL, 'Project ID: BRKRK1', NULL, '2021-03-31 16:16:55', 0, '144.48.112.54', ''),
(153, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321101', NULL, '2021-03-31 16:18:13', 0, '144.48.112.54', ''),
(154, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321102', NULL, '2021-03-31 16:19:28', 0, '144.48.112.54', ''),
(155, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321103', NULL, '2021-03-31 16:20:02', 0, '144.48.112.54', ''),
(156, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321104', NULL, '2021-03-31 16:21:00', 0, '144.48.112.54', ''),
(157, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321105', NULL, '2021-03-31 16:22:06', 0, '144.48.112.54', ''),
(158, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321106', NULL, '2021-03-31 16:22:34', 0, '144.48.112.54', ''),
(159, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321107', NULL, '2021-03-31 16:23:05', 0, '144.48.112.54', ''),
(160, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321108', NULL, '2021-03-31 16:25:20', 0, '144.48.112.54', ''),
(161, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321109', NULL, '2021-03-31 16:25:55', 0, '144.48.112.54', ''),
(162, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321110', NULL, '2021-03-31 16:27:03', 0, '144.48.112.54', ''),
(163, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321111', NULL, '2021-03-31 16:27:46', 0, '144.48.112.54', ''),
(164, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321112', NULL, '2021-03-31 16:28:17', 0, '144.48.112.54', ''),
(165, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321113', NULL, '2021-03-31 16:28:48', 0, '144.48.112.54', ''),
(166, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321114', NULL, '2021-03-31 16:29:15', 0, '144.48.112.54', ''),
(167, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321115', NULL, '2021-03-31 16:29:41', 0, '144.48.112.54', ''),
(168, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321116', NULL, '2021-03-31 16:31:08', 0, '144.48.112.54', ''),
(169, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tech. Nazmul', 'খরচ খাতের নামঃ Tech. Nazmul', '2021-03-31 16:31:44', 0, '144.48.112.54', ''),
(170, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321117', NULL, '2021-03-31 16:32:25', 0, '144.48.112.54', ''),
(171, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321118', NULL, '2021-03-31 16:32:50', 0, '144.48.112.54', ''),
(172, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321119', NULL, '2021-03-31 16:33:24', 0, '144.48.112.54', ''),
(173, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321120', NULL, '2021-03-31 16:33:44', 0, '144.48.112.54', ''),
(174, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321121', NULL, '2021-03-31 16:34:23', 0, '144.48.112.54', ''),
(175, 1, 'BRN', 'Branch has been Updated', NULL, 'Branch name: Tower', NULL, '2021-03-31 16:38:01', 0, '144.48.112.54', ''),
(176, 1, 'BRN', 'Branch has been Updated', NULL, 'Branch name: Govt.', NULL, '2021-03-31 16:38:40', 0, '144.48.112.54', ''),
(177, 1, 'BRN', 'Branch has been Updated', NULL, 'Branch name: RHEL', NULL, '2021-03-31 16:38:56', 0, '144.48.112.54', ''),
(178, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Mollik Nobir', NULL, '2021-03-31 16:40:04', 0, '144.48.112.54', ''),
(179, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321122', NULL, '2021-03-31 16:41:34', 0, '144.48.112.54', ''),
(180, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321123', NULL, '2021-03-31 16:42:10', 0, '144.48.112.54', ''),
(181, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321124', NULL, '2021-03-31 16:42:59', 0, '144.48.112.54', ''),
(182, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321125', NULL, '2021-03-31 16:43:58', 0, '144.48.112.54', ''),
(183, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321126', NULL, '2021-03-31 16:45:09', 0, '144.48.112.54', ''),
(184, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Sabbir Hossain', 'খরচ খাতের নামঃ Md. Sabbir Hossain', '2021-03-31 16:46:54', 0, '144.48.112.54', ''),
(185, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Rakib Shikder', 'খরচ খাতের নামঃ Md. Rakib Shikder', '2021-03-31 16:47:13', 0, '144.48.112.54', ''),
(186, 1, 'PRJ', 'New project has been created', NULL, 'Project ID: PTAGR2', NULL, '2021-03-31 16:48:14', 0, '144.48.112.54', ''),
(187, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321127', NULL, '2021-03-31 16:49:45', 0, '144.48.112.54', ''),
(188, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321128', NULL, '2021-03-31 16:50:40', 0, '144.48.112.54', ''),
(189, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321129', NULL, '2021-03-31 16:51:46', 0, '144.48.112.54', ''),
(190, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321130', NULL, '2021-03-31 16:53:14', 0, '144.48.112.54', ''),
(191, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321131', NULL, '2021-03-31 16:54:33', 0, '144.48.112.54', ''),
(192, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321132', NULL, '2021-03-31 17:00:21', 0, '144.48.112.54', ''),
(193, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321133', NULL, '2021-03-31 17:01:54', 0, '144.48.112.54', ''),
(194, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Truck Rent', 'খরচ খাতের নামঃ Truck Rent', '2021-03-31 17:02:37', 0, '144.48.112.54', ''),
(195, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321134', NULL, '2021-03-31 17:03:15', 0, '144.48.112.54', ''),
(196, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321135', NULL, '2021-03-31 17:03:48', 0, '144.48.112.54', ''),
(197, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321136', NULL, '2021-03-31 17:05:51', 0, '144.48.112.54', ''),
(198, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321137', NULL, '2021-03-31 17:07:40', 0, '144.48.112.54', ''),
(199, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321138', NULL, '2021-03-31 17:08:09', 0, '144.48.112.54', ''),
(200, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321139', NULL, '2021-03-31 17:08:33', 0, '144.48.112.54', ''),
(201, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321140', NULL, '2021-03-31 17:08:55', 0, '144.48.112.54', ''),
(202, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321141', NULL, '2021-03-31 17:10:39', 0, '144.48.112.54', ''),
(203, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321142', NULL, '2021-03-31 17:11:02', 0, '144.48.112.54', ''),
(204, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321142', NULL, '2021-03-31 17:11:20', 0, '144.48.112.54', ''),
(205, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321142', NULL, '2021-03-31 17:11:46', 0, '144.48.112.54', ''),
(206, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321143', NULL, '2021-03-31 17:12:16', 0, '144.48.112.54', ''),
(207, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321144', NULL, '2021-03-31 17:12:46', 0, '144.48.112.54', ''),
(208, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321145', NULL, '2021-03-31 17:13:16', 0, '144.48.112.54', ''),
(209, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-03-31 18:08:33', 0, '144.48.112.54', ''),
(210, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Zahidul Islam Samrat', 'খরচ খাতের নামঃ Md. Zahidul Islam Samrat', '2021-03-31 18:09:15', 0, '144.48.112.54', ''),
(211, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321146', NULL, '2021-03-31 18:10:14', 0, '144.48.112.54', ''),
(212, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321147', NULL, '2021-03-31 18:10:41', 0, '144.48.112.54', ''),
(213, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321148', NULL, '2021-03-31 18:11:16', 0, '144.48.112.54', ''),
(214, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321149', NULL, '2021-03-31 18:11:37', 0, '144.48.112.54', ''),
(215, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321150', NULL, '2021-03-31 18:12:24', 0, '144.48.112.54', ''),
(216, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321151', NULL, '2021-03-31 18:15:02', 0, '144.48.112.54', ''),
(217, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321152', NULL, '2021-03-31 18:15:45', 0, '144.48.112.54', ''),
(218, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321153', NULL, '2021-03-31 18:16:35', 0, '144.48.112.54', ''),
(219, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321154', NULL, '2021-03-31 18:17:06', 0, '144.48.112.54', ''),
(220, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Sabbir Hossain', NULL, '2021-03-31 18:18:52', 0, '144.48.112.54', ''),
(221, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321155', NULL, '2021-03-31 18:19:52', 0, '144.48.112.54', ''),
(222, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321156', NULL, '2021-03-31 18:21:04', 0, '144.48.112.54', ''),
(223, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321157', NULL, '2021-03-31 18:21:57', 0, '144.48.112.54', ''),
(224, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321158', NULL, '2021-03-31 18:22:32', 0, '144.48.112.54', ''),
(225, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321159', NULL, '2021-03-31 18:23:05', 0, '144.48.112.54', ''),
(226, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321160', NULL, '2021-03-31 18:23:59', 0, '144.48.112.54', ''),
(227, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321161', NULL, '2021-03-31 18:24:31', 0, '144.48.112.54', ''),
(228, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321162', NULL, '2021-03-31 18:24:55', 0, '144.48.112.54', ''),
(229, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321163', NULL, '2021-03-31 18:25:25', 0, '144.48.112.54', ''),
(230, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321164', NULL, '2021-03-31 18:38:33', 0, '144.48.112.54', ''),
(231, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321165', NULL, '2021-03-31 18:39:15', 0, '144.48.112.54', ''),
(232, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321166', NULL, '2021-03-31 18:39:40', 0, '144.48.112.54', ''),
(233, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321167', NULL, '2021-03-31 18:40:15', 0, '144.48.112.54', ''),
(234, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321168', NULL, '2021-03-31 18:40:49', 0, '144.48.112.54', ''),
(235, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321169', NULL, '2021-03-31 18:41:40', 0, '144.48.112.54', ''),
(236, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321170', NULL, '2021-03-31 18:42:10', 0, '144.48.112.54', ''),
(237, 1, 'SUP', 'New supplier has been Added', NULL, 'Supplier name: Perform Engineering Ltd', NULL, '2021-03-31 18:45:30', 0, '144.48.112.54', ''),
(238, 1, 'SUP', 'New supplier has been Added', NULL, 'Supplier name: Legal Electric Co', NULL, '2021-03-31 18:46:28', 0, '144.48.112.54', ''),
(239, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321171', NULL, '2021-03-31 18:48:01', 0, '144.48.112.54', ''),
(240, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321172', NULL, '2021-03-31 18:48:50', 0, '144.48.112.54', ''),
(241, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Abdul Bariq', 'খরচ খাতের নামঃ Abdul Bariq', '2021-03-31 18:52:26', 0, '144.48.112.54', ''),
(242, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tushar Kumar Paul', 'খরচ খাতের নামঃ Tushar Kumar Paul', '2021-03-31 18:52:56', 0, '144.48.112.54', ''),
(243, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Bellal Hossain', 'খরচ খাতের নামঃ Md. Bellal Hossain', '2021-03-31 18:53:18', 0, '144.48.112.54', ''),
(244, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Shahin Alam', 'খরচ খাতের নামঃ Md. Shahin Alam', '2021-03-31 18:53:35', 0, '144.48.112.54', ''),
(245, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Hasmot Ali', 'খরচ খাতের নামঃ Md. Hasmot Ali', '2021-03-31 18:53:55', 0, '144.48.112.54', ''),
(246, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Amin Uddin', 'খরচ খাতের নামঃ Md. Amin Uddin', '2021-03-31 18:54:12', 0, '144.48.112.54', ''),
(247, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Abu Sayed', 'খরচ খাতের নামঃ Md. Abu Sayed', '2021-03-31 18:54:31', 0, '144.48.112.54', ''),
(248, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Metthun Halder', 'খরচ খাতের নামঃ Metthun Halder', '2021-03-31 18:54:53', 0, '144.48.112.54', ''),
(249, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Rabiul Alam', 'খরচ খাতের নামঃ Md. Rabiul Alam', '2021-03-31 18:55:11', 0, '144.48.112.54', ''),
(250, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Zelhaq Rahman', 'খরচ খাতের নামঃ Zelhaq Rahman', '2021-03-31 18:55:29', 0, '144.48.112.54', ''),
(251, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Suruzzaman', 'খরচ খাতের নামঃ Suruzzaman', '2021-03-31 18:55:49', 0, '144.48.112.54', ''),
(252, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Nahidul Islam', 'খরচ খাতের নামঃ Md. Nahidul Islam', '2021-03-31 18:56:14', 0, '144.48.112.54', ''),
(253, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Arif Hossain', 'খরচ খাতের নামঃ Md. Arif Hossain', '2021-03-31 18:56:41', 0, '144.48.112.54', ''),
(254, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Abu Bakar Biswas', 'খরচ খাতের নামঃ Md. Abu Bakar Biswas', '2021-03-31 18:57:24', 0, '144.48.112.54', ''),
(255, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Aminul Islam', 'খরচ খাতের নামঃ Md. Aminul Islam', '2021-03-31 18:57:37', 0, '144.48.112.54', ''),
(256, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Yousuf Ali', 'খরচ খাতের নামঃ Md. Yousuf Ali', '2021-03-31 18:57:50', 0, '144.48.112.54', ''),
(257, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Abdur Razzak', 'খরচ খাতের নামঃ Abdur Razzak', '2021-03-31 18:58:06', 0, '144.48.112.54', ''),
(258, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: A.N.M Salauddin', 'খরচ খাতের নামঃ A.N.M Salauddin', '2021-03-31 18:58:23', 0, '144.48.112.54', ''),
(259, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Al Amin Mia', 'খরচ খাতের নামঃ Md. Al Amin Mia', '2021-03-31 18:58:36', 0, '144.48.112.54', ''),
(260, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Yousub Ali', 'খরচ খাতের নামঃ Md. Yousub Ali', '2021-03-31 18:59:07', 0, '144.48.112.54', ''),
(261, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Amir Hamza', 'খরচ খাতের নামঃ Md. Amir Hamza', '2021-03-31 18:59:27', 0, '144.48.112.54', ''),
(262, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Haydar Ali', 'খরচ খাতের নামঃ Md. Haydar Ali', '2021-03-31 18:59:39', 0, '144.48.112.54', ''),
(263, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tech. Sr. Md. Enamul', 'খরচ খাতের নামঃ Tech. Sr. Md. Enamul', '2021-03-31 19:00:31', 0, '144.48.112.54', ''),
(264, 1, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Faruq', 'খরচ খাতের নামঃ Md. Faruq', '2021-03-31 19:00:43', 0, '144.48.112.54', ''),
(265, 1, 'PRJ', 'New project has been created', NULL, 'Project ID: PTDKL2', NULL, '2021-03-31 19:03:59', 0, '144.48.112.54', ''),
(266, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321173', NULL, '2021-03-31 19:05:47', 0, '144.48.112.54', ''),
(267, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321174', NULL, '2021-03-31 19:06:18', 0, '144.48.112.54', ''),
(268, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321175', NULL, '2021-03-31 19:08:02', 0, '144.48.112.54', ''),
(269, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321176', NULL, '2021-03-31 19:08:34', 0, '144.48.112.54', ''),
(270, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321177', NULL, '2021-03-31 19:09:31', 0, '144.48.112.54', ''),
(271, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321178', NULL, '2021-03-31 19:10:35', 0, '144.48.112.54', ''),
(272, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321179', NULL, '2021-03-31 19:11:06', 0, '144.48.112.54', ''),
(273, 1, 'EXP', 'Expenses Head has been deleted', NULL, 'Expenses Head name: Md. Amin Uddin', NULL, '2021-03-31 19:12:49', 0, '144.48.112.54', ''),
(274, 1, 'EXP', 'New Expenses Head has been updated', 'খরচের খাত হালনাগাদ করেছেন', 'Expenses Head name: Md. Amin Uddin', 'খরচ খাতের নামঃ Md. Amin Uddin', '2021-03-31 19:13:14', 0, '144.48.112.54', ''),
(275, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321180', NULL, '2021-03-31 19:14:16', 0, '144.48.112.54', ''),
(276, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321181', NULL, '2021-03-31 19:14:46', 0, '144.48.112.54', ''),
(277, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321182', NULL, '2021-03-31 19:15:45', 0, '144.48.112.54', ''),
(278, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV310321183', NULL, '2021-03-31 19:16:39', 0, '144.48.112.54', ''),
(279, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-01 18:55:52', 0, '144.48.112.54', ''),
(280, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-02 10:46:31', 0, '144.48.112.54', ''),
(281, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321183', NULL, '2021-04-02 10:50:58', 0, '144.48.112.54', ''),
(282, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421101', NULL, '2021-04-02 10:51:50', 0, '144.48.112.54', ''),
(283, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421102', NULL, '2021-04-02 10:52:37', 0, '144.48.112.54', ''),
(284, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421103', NULL, '2021-04-02 10:53:41', 0, '144.48.112.54', ''),
(285, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421104', NULL, '2021-04-02 10:54:17', 0, '144.48.112.54', ''),
(286, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421105', NULL, '2021-04-02 10:54:46', 0, '144.48.112.54', ''),
(287, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421106', NULL, '2021-04-02 10:55:50', 0, '144.48.112.54', ''),
(288, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421107', NULL, '2021-04-02 10:57:12', 0, '144.48.112.54', ''),
(289, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421108', NULL, '2021-04-02 11:00:15', 0, '144.48.112.54', ''),
(290, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421109', NULL, '2021-04-02 11:05:32', 0, '144.48.112.54', ''),
(291, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421110', NULL, '2021-04-02 11:07:40', 0, '144.48.112.54', ''),
(292, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421111', NULL, '2021-04-02 11:09:10', 0, '144.48.112.54', ''),
(293, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421112', NULL, '2021-04-02 11:09:57', 0, '144.48.112.54', ''),
(294, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421113', NULL, '2021-04-02 11:10:54', 0, '144.48.112.54', ''),
(295, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV020421114', NULL, '2021-04-02 11:13:51', 0, '144.48.112.54', ''),
(296, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-03 09:47:57', 0, '144.48.112.54', ''),
(297, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Bellal Hossain', NULL, '2021-04-03 09:57:06', 0, '144.48.112.54', ''),
(298, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421101', NULL, '2021-04-03 09:58:59', 0, '144.48.112.54', ''),
(299, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421102', NULL, '2021-04-03 09:59:46', 0, '144.48.112.54', ''),
(300, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421103', NULL, '2021-04-03 10:00:27', 0, '144.48.112.54', ''),
(301, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421104', NULL, '2021-04-03 10:00:56', 0, '144.48.112.54', ''),
(302, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421105', NULL, '2021-04-03 10:01:32', 0, '144.48.112.54', ''),
(303, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421106', NULL, '2021-04-03 10:03:03', 0, '144.48.112.54', ''),
(304, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421107', NULL, '2021-04-03 10:03:47', 0, '144.48.112.54', ''),
(305, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421108', NULL, '2021-04-03 10:04:18', 0, '144.48.112.54', ''),
(306, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421109', NULL, '2021-04-03 10:04:45', 0, '144.48.112.54', ''),
(307, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421110', NULL, '2021-04-03 10:05:23', 0, '144.48.112.54', ''),
(308, 1, 'DIS', 'New designation has been Added', NULL, 'Designation name: Technician', NULL, '2021-04-03 10:06:59', 0, '144.48.112.54', ''),
(309, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Tech. Md. Nazmul', NULL, '2021-04-03 10:08:50', 0, '144.48.112.54', ''),
(310, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421111', NULL, '2021-04-03 10:10:19', 0, '144.48.112.54', ''),
(311, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421112', NULL, '2021-04-03 10:11:27', 0, '144.48.112.54', ''),
(312, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421113', NULL, '2021-04-03 10:17:14', 0, '144.48.112.54', ''),
(313, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421114', NULL, '2021-04-03 10:17:59', 0, '144.48.112.54', ''),
(314, 1, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Sub Cont. Azmot', NULL, '2021-04-03 10:35:31', 0, '144.48.112.54', ''),
(315, 1, 'PRJ', 'New project has been created', NULL, 'Project ID: SNSRH1', NULL, '2021-04-03 10:36:47', 0, '144.48.112.54', ''),
(316, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421115', NULL, '2021-04-03 10:37:53', 0, '144.48.112.54', ''),
(317, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421116', NULL, '2021-04-03 10:38:26', 0, '144.48.112.54', ''),
(318, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421117', NULL, '2021-04-03 10:38:57', 0, '144.48.112.54', ''),
(319, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421118', NULL, '2021-04-03 10:39:37', 0, '144.48.112.54', ''),
(320, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421119', NULL, '2021-04-03 10:40:15', 0, '144.48.112.54', ''),
(321, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421120', NULL, '2021-04-03 10:41:29', 0, '144.48.112.54', ''),
(322, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421121', NULL, '2021-04-03 10:42:05', 0, '144.48.112.54', ''),
(323, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421122', NULL, '2021-04-03 10:46:11', 0, '144.48.112.54', ''),
(324, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421123', NULL, '2021-04-03 10:46:41', 0, '144.48.112.54', ''),
(325, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421124', NULL, '2021-04-03 10:47:14', 0, '144.48.112.54', ''),
(326, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421125', NULL, '2021-04-03 10:48:14', 0, '144.48.112.54', ''),
(327, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421126', NULL, '2021-04-03 10:48:39', 0, '144.48.112.54', ''),
(328, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421127', NULL, '2021-04-03 10:49:35', 0, '144.48.112.54', ''),
(329, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421128', NULL, '2021-04-03 10:50:02', 0, '144.48.112.54', ''),
(330, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421129', NULL, '2021-04-03 10:52:08', 0, '144.48.112.54', ''),
(331, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421130', NULL, '2021-04-03 10:52:45', 0, '144.48.112.54', ''),
(332, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421131', NULL, '2021-04-03 10:53:39', 0, '144.48.112.54', ''),
(333, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421132', NULL, '2021-04-03 10:54:15', 0, '144.48.112.54', ''),
(334, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421133', NULL, '2021-04-03 10:54:40', 0, '144.48.112.54', ''),
(335, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421134', NULL, '2021-04-03 10:55:06', 0, '144.48.112.54', ''),
(336, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421135', NULL, '2021-04-03 10:55:33', 0, '144.48.112.54', ''),
(337, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421136', NULL, '2021-04-03 10:55:55', 0, '144.48.112.54', ''),
(338, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421137', NULL, '2021-04-03 10:56:21', 0, '144.48.112.54', ''),
(339, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Suruzzaman', NULL, '2021-04-03 10:58:48', 0, '144.48.112.54', ''),
(340, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421138', NULL, '2021-04-03 10:59:33', 0, '144.48.112.54', ''),
(341, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421139', NULL, '2021-04-03 11:01:45', 0, '144.48.112.54', ''),
(342, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421140', NULL, '2021-04-03 11:02:25', 0, '144.48.112.54', ''),
(343, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421141', NULL, '2021-04-03 11:02:55', 0, '144.48.112.54', ''),
(344, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421142', NULL, '2021-04-03 11:03:47', 0, '144.48.112.54', ''),
(345, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421143', NULL, '2021-04-03 11:04:11', 0, '144.48.112.54', ''),
(346, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421144', NULL, '2021-04-03 11:14:28', 0, '144.48.112.54', ''),
(347, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421145', NULL, '2021-04-03 11:15:01', 0, '144.48.112.54', ''),
(348, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421146', NULL, '2021-04-03 11:15:23', 0, '144.48.112.54', ''),
(349, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421147', NULL, '2021-04-03 11:15:48', 0, '144.48.112.54', ''),
(350, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421148', NULL, '2021-04-03 11:16:27', 0, '144.48.112.54', ''),
(351, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421149', NULL, '2021-04-03 11:18:39', 0, '144.48.112.54', ''),
(352, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421130', NULL, '2021-04-03 11:22:09', 0, '144.48.112.54', '');
INSERT INTO `tbl_activity` (`id`, `uid`, `filds`, `title`, `btitle`, `activity`, `bactivity`, `acdtime`, `brid`, `ip`, `mac`) VALUES
(353, 1, 'PRJ', 'New project has been created', NULL, 'Project ID: SNSPB1', NULL, '2021-04-03 11:33:36', 0, '144.48.112.54', ''),
(354, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421150', NULL, '2021-04-03 12:21:46', 0, '144.48.112.54', ''),
(355, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421151', NULL, '2021-04-03 12:22:16', 0, '144.48.112.54', ''),
(356, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421152', NULL, '2021-04-03 12:24:09', 0, '144.48.112.54', ''),
(357, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421153', NULL, '2021-04-03 12:24:45', 0, '144.48.112.54', ''),
(358, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421154', NULL, '2021-04-03 12:26:06', 0, '144.48.112.54', ''),
(359, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421155', NULL, '2021-04-03 12:26:58', 0, '144.48.112.54', ''),
(360, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421156', NULL, '2021-04-03 12:27:56', 0, '144.48.112.54', ''),
(361, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421157', NULL, '2021-04-03 12:29:39', 0, '144.48.112.54', ''),
(362, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-03 18:10:30', 0, '144.48.112.54', ''),
(363, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421157', NULL, '2021-04-03 18:11:36', 0, '144.48.112.54', ''),
(364, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421157', NULL, '2021-04-03 18:12:31', 0, '144.48.112.54', ''),
(365, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421158', NULL, '2021-04-03 18:13:28', 0, '144.48.112.54', ''),
(366, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421159', NULL, '2021-04-03 18:14:13', 0, '144.48.112.54', ''),
(367, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421160', NULL, '2021-04-03 18:14:55', 0, '144.48.112.54', ''),
(368, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421161', NULL, '2021-04-03 18:15:32', 0, '144.48.112.54', ''),
(369, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421162', NULL, '2021-04-03 18:16:04', 0, '144.48.112.54', ''),
(370, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421163', NULL, '2021-04-03 18:17:26', 0, '144.48.112.54', ''),
(371, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421164', NULL, '2021-04-03 18:18:18', 0, '144.48.112.54', ''),
(372, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV030421165', NULL, '2021-04-03 18:19:17', 0, '144.48.112.54', ''),
(373, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-03 19:01:19', 0, '144.48.112.54', ''),
(374, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 16:43:02', 0, '144.48.112.54', ''),
(375, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 16:46:46', 0, '144.48.112.54', ''),
(376, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 16:47:19', 0, '144.48.112.54', ''),
(377, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: Aminul Amin', NULL, '2021-04-06 16:49:03', 0, '144.48.112.54', ''),
(378, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: ariful', NULL, '2021-04-06 16:49:08', 0, '144.48.112.54', ''),
(379, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: Md. Bellal Hossain', NULL, '2021-04-06 16:49:13', 0, '144.48.112.54', ''),
(380, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: Md. Sabbir Hossain', NULL, '2021-04-06 16:49:17', 0, '144.48.112.54', ''),
(381, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: Mollik Nobir', NULL, '2021-04-06 16:49:21', 0, '144.48.112.54', ''),
(382, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: Suruzzaman', NULL, '2021-04-06 16:49:38', 0, '144.48.112.54', ''),
(383, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: Tech. Md. Nazmul', NULL, '2021-04-06 16:49:42', 0, '144.48.112.54', ''),
(384, 1, 'BRN', 'Branch has been Updated', NULL, 'Branch name: Rm Construction', NULL, '2021-04-06 16:51:15', 0, '144.48.112.54', ''),
(385, 1, 'BRN', 'Branch has been Updated', NULL, 'Branch name: Regency Homes &amp;amp; Engineering Ltd.', NULL, '2021-04-06 16:52:37', 0, '144.48.112.54', ''),
(386, 1, 'BRN', 'Branch has been Updated', NULL, 'Branch name: Lightmix BD Ltd.', NULL, '2021-04-06 16:53:38', 0, '144.48.112.54', ''),
(387, 1, 'USR', 'User has been Added', NULL, 'New User Add: RM Construction', NULL, '2021-04-06 16:56:01', 0, '144.48.112.54', ''),
(388, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 16:56:09', 0, '144.48.112.54', ''),
(389, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 16:56:40', 3, '144.48.112.54', ''),
(390, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 16:56:55', 3, '144.48.112.54', ''),
(391, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 16:56:59', 3, '144.48.112.54', ''),
(392, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 16:57:05', 3, '144.48.112.54', ''),
(393, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 16:57:10', 0, '144.48.112.54', ''),
(394, 1, 'USR', 'User has been Added', NULL, 'New User Add: Lightmix BD Ltd', NULL, '2021-04-06 17:02:21', 0, '144.48.112.54', ''),
(395, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 17:02:25', 0, '144.48.112.54', ''),
(396, 3, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 17:02:39', 1, '144.48.112.54', ''),
(397, 3, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 17:02:44', 1, '144.48.112.54', ''),
(398, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 17:02:48', 0, '144.48.112.54', ''),
(399, 1, 'USR', 'User has been Added', NULL, 'New User Add: Regency Homes &amp;amp; Engineering Ltd.', NULL, '2021-04-06 17:04:52', 0, '144.48.112.54', ''),
(400, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 17:04:55', 0, '144.48.112.54', ''),
(401, 4, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 17:05:20', 2, '144.48.112.54', ''),
(402, 4, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-06 17:05:35', 2, '144.48.112.54', ''),
(403, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 17:05:40', 3, '144.48.112.54', ''),
(404, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Yeakub', NULL, '2021-04-06 17:09:33', 3, '144.48.112.54', ''),
(405, 2, 'CUS', 'Customer has been Updated', NULL, 'Customer name: Edot Co &amp;amp; GP Combined  ', NULL, '2021-04-06 17:14:58', 3, '144.48.112.54', ''),
(406, 2, 'CUS', 'New customer has been Added', NULL, 'Customer name: Edot Co Power Upgradation ', NULL, '2021-04-06 17:18:13', 3, '144.48.112.54', ''),
(407, 2, 'CUS', 'Customer has been Updated', NULL, 'Customer name: Edot Co &amp;amp; Banglalink Combined', NULL, '2021-04-06 17:19:49', 3, '144.48.112.54', ''),
(408, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: HGANP1', NULL, '2021-04-06 17:21:38', 3, '144.48.112.54', ''),
(409, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421101', NULL, '2021-04-06 17:22:52', 3, '144.48.112.54', ''),
(410, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-06 17:50:55', 3, '144.48.112.54', ''),
(411, 2, 'REC', 'Receipt has been Added', NULL, 'Receipt No: REV060421101', NULL, '2021-04-06 17:52:27', 3, '144.48.112.54', ''),
(412, 2, 'LON', 'Loan account has been created', NULL, 'Loan Account: Azad Sir-\'01711556644\'', NULL, '2021-04-06 17:53:27', 3, '144.48.112.54', ''),
(413, 2, 'REC', 'Receipt has been Added', NULL, 'Receipt No: REV060421102', NULL, '2021-04-06 17:54:16', 3, '144.48.112.54', ''),
(414, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Saddam', NULL, '2021-04-06 17:57:40', 3, '144.48.112.54', ''),
(415, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: SYBLG06', NULL, '2021-04-06 17:58:33', 3, '144.48.112.54', ''),
(416, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421102', NULL, '2021-04-06 17:59:15', 3, '144.48.112.54', ''),
(417, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Nobir', NULL, '2021-04-06 18:03:14', 3, '144.48.112.54', ''),
(418, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: PTDGB1', NULL, '2021-04-06 18:04:01', 3, '144.48.112.54', ''),
(419, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421103', NULL, '2021-04-06 18:04:46', 3, '144.48.112.54', ''),
(420, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Nazir', NULL, '2021-04-06 18:05:27', 3, '144.48.112.54', ''),
(421, 2, 'SGP', 'New Sub-Group has been created', NULL, 'Sub-Group name: Edot Co &amp;amp; Banglalink Combined', NULL, '2021-04-06 18:06:39', 3, '144.48.112.54', ''),
(422, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: DHK6095', NULL, '2021-04-06 18:11:44', 3, '144.48.112.54', ''),
(423, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421104', NULL, '2021-04-06 18:12:19', 3, '144.48.112.54', ''),
(424, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421105', NULL, '2021-04-06 18:16:07', 3, '144.48.112.54', ''),
(425, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: JSSWP1', NULL, '2021-04-06 18:17:40', 3, '144.48.112.54', ''),
(426, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421106', NULL, '2021-04-06 18:18:25', 3, '144.48.112.54', ''),
(427, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: KHU2176', NULL, '2021-04-06 18:19:59', 3, '144.48.112.54', ''),
(428, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421107', NULL, '2021-04-06 18:20:50', 3, '144.48.112.54', ''),
(429, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: JSVRG1', NULL, '2021-04-06 18:21:47', 3, '144.48.112.54', ''),
(430, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421108', NULL, '2021-04-06 18:22:21', 3, '144.48.112.54', ''),
(431, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: HGAGB1', NULL, '2021-04-06 18:24:44', 3, '144.48.112.54', ''),
(432, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: NPBKB1', NULL, '2021-04-06 18:27:08', 3, '144.48.112.54', ''),
(433, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421109', NULL, '2021-04-06 18:27:22', 3, '144.48.112.54', ''),
(434, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421110', NULL, '2021-04-06 18:27:50', 3, '144.48.112.54', ''),
(435, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Shohidul', NULL, '2021-04-06 18:29:39', 3, '144.48.112.54', ''),
(436, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: MBPNS1', NULL, '2021-04-06 18:30:25', 3, '144.48.112.54', ''),
(437, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421111', NULL, '2021-04-06 18:30:55', 3, '144.48.112.54', ''),
(438, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Mostofa', NULL, '2021-04-06 18:32:40', 3, '144.48.112.54', ''),
(439, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: MBADA4', NULL, '2021-04-06 18:33:25', 3, '144.48.112.54', ''),
(440, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421112', NULL, '2021-04-06 18:34:23', 3, '144.48.112.54', ''),
(441, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Mostofa', NULL, '2021-04-06 18:47:49', 3, '144.48.112.54', ''),
(442, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: HGNAR1', NULL, '2021-04-06 18:49:30', 3, '144.48.112.54', ''),
(443, 2, 'COT', 'Contractor has been deleted', NULL, 'Contractor name: Cont. Mostofa', NULL, '2021-04-06 18:49:47', 3, '144.48.112.54', ''),
(444, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421113', NULL, '2021-04-06 18:50:17', 3, '144.48.112.54', ''),
(445, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: NPHTK1', NULL, '2021-04-06 18:51:46', 3, '144.48.112.54', ''),
(446, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Nayemul Islam ', 'খরচ খাতের নামঃ Md. Nayemul Islam ', '2021-04-06 18:53:02', 3, '144.48.112.54', ''),
(447, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421114', NULL, '2021-04-06 18:53:28', 3, '144.48.112.54', ''),
(448, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: BMKSB42', NULL, '2021-04-06 18:55:28', 3, '144.48.112.54', ''),
(449, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421115', NULL, '2021-04-06 18:56:18', 3, '144.48.112.54', ''),
(450, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: PBBBT1', NULL, '2021-04-06 19:01:26', 3, '144.48.112.54', ''),
(451, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421116', NULL, '2021-04-06 19:01:53', 3, '144.48.112.54', ''),
(452, 2, 'COT', 'Contractor has been Updated', NULL, 'Contractor name: Cont. Mansur', NULL, '2021-04-06 19:04:13', 3, '144.48.112.54', ''),
(453, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: SNMRL1', NULL, '2021-04-06 19:05:11', 3, '144.48.112.54', ''),
(454, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421117', NULL, '2021-04-06 19:05:41', 3, '144.48.112.54', ''),
(455, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: HGUHP1', NULL, '2021-04-06 19:06:48', 3, '144.48.112.54', ''),
(456, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421118', NULL, '2021-04-06 19:07:16', 3, '144.48.112.54', ''),
(457, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: SYKHB1', NULL, '2021-04-06 19:14:46', 3, '144.48.112.54', ''),
(458, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV060421119', NULL, '2021-04-06 19:15:15', 3, '144.48.112.54', ''),
(459, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: HGAJK1', NULL, '2021-04-06 19:17:27', 3, '144.48.112.54', ''),
(460, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-07 11:31:46', 3, '144.48.112.54', ''),
(461, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-07 15:32:08', 3, '144.48.112.54', ''),
(462, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421101', NULL, '2021-04-07 15:33:44', 3, '144.48.112.54', ''),
(463, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Faruk', NULL, '2021-04-07 15:37:09', 3, '144.48.112.54', ''),
(464, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: HGUMD1', NULL, '2021-04-07 15:38:25', 3, '144.48.112.54', ''),
(465, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Mahabur Rahman', 'খরচ খাতের নামঃ Md. Mahabur Rahman', '2021-04-07 15:39:27', 3, '144.48.112.54', ''),
(466, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421102', NULL, '2021-04-07 15:40:14', 3, '144.48.112.54', ''),
(467, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: KCMKC21', NULL, '2021-04-07 15:42:44', 3, '144.48.112.54', ''),
(468, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421103', NULL, '2021-04-07 15:43:19', 3, '144.48.112.54', ''),
(469, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421104', NULL, '2021-04-07 15:44:48', 3, '144.48.112.54', ''),
(470, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Office Expense', 'খরচ খাতের নামঃ Office Expense', '2021-04-07 15:45:43', 3, '144.48.112.54', ''),
(471, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Refreshment', 'খরচ খাতের নামঃ Refreshment', '2021-04-07 15:46:29', 3, '144.48.112.54', ''),
(472, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421105', NULL, '2021-04-07 15:47:44', 3, '144.48.112.54', ''),
(473, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421106', NULL, '2021-04-07 15:48:04', 3, '144.48.112.54', ''),
(474, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421107', NULL, '2021-04-07 15:48:29', 3, '144.48.112.54', ''),
(475, 2, 'SGP', 'New Sub-Group has been created', NULL, 'Sub-Group name: PWD FST', NULL, '2021-04-07 15:50:23', 3, '144.48.112.54', ''),
(476, 2, 'SGP', 'New Sub-Group has been created', NULL, 'Sub-Group name: CHMES', NULL, '2021-04-07 15:50:48', 3, '144.48.112.54', ''),
(477, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Kobir', NULL, '2021-04-07 15:54:16', 3, '144.48.112.54', ''),
(478, 2, 'CUS', 'New customer has been Added', NULL, 'Customer name: PWD ', NULL, '2021-04-07 15:57:28', 3, '144.48.112.54', ''),
(479, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: 327886', NULL, '2021-04-07 15:58:22', 3, '144.48.112.54', ''),
(480, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421108', NULL, '2021-04-07 15:59:50', 3, '144.48.112.54', ''),
(481, 2, 'SUP', 'New supplier has been Added', NULL, 'Supplier name: Anwar Cement Ltd.', NULL, '2021-04-07 16:07:05', 3, '144.48.112.54', ''),
(482, 2, 'PUR', 'New purchase invoice has been Created', NULL, 'Purchase Invoice: PUR070421101', NULL, '2021-04-07 16:10:04', 3, '144.48.112.54', ''),
(483, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Shamim', NULL, '2021-04-07 16:14:22', 3, '144.48.112.54', ''),
(484, 2, 'CUS', 'New customer has been Added', NULL, 'Customer name: CHMES', NULL, '2021-04-07 16:15:50', 3, '144.48.112.54', ''),
(485, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: DRAIN 4A', NULL, '2021-04-07 16:16:47', 3, '144.48.112.54', ''),
(486, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421109', NULL, '2021-04-07 16:17:42', 3, '144.48.112.54', ''),
(487, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Nur Islam', NULL, '2021-04-07 16:25:50', 3, '144.48.112.54', ''),
(488, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: NWMRL1', NULL, '2021-04-07 16:27:35', 3, '144.48.112.54', ''),
(489, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: DHBA4M', NULL, '2021-04-07 16:32:29', 3, '144.48.112.54', ''),
(490, 2, 'SUP', 'Supplier has been Updated', NULL, 'Supplier name: Macca Madina  ', NULL, '2021-04-07 16:35:24', 3, '144.48.112.54', ''),
(491, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421110', NULL, '2021-04-07 16:36:27', 3, '144.48.112.54', ''),
(492, 2, 'EXP', 'Expenses Head has been deleted', NULL, 'Expenses Head name: Tech. Sr. Md. Enamul', NULL, '2021-04-07 16:38:03', 3, '144.48.112.54', ''),
(493, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421111', NULL, '2021-04-07 16:38:51', 3, '144.48.112.54', ''),
(494, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Reja Rakib', 'খরচ খাতের নামঃ Md. Reja Rakib', '2021-04-07 16:39:36', 3, '144.48.112.54', ''),
(495, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421112', NULL, '2021-04-07 16:40:25', 3, '144.48.112.54', ''),
(496, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: N/A', NULL, '2021-04-07 16:49:09', 3, '144.48.112.54', ''),
(497, 2, 'CUS', 'New customer has been Added', NULL, 'Customer name: Grameen Phone Ltd.', NULL, '2021-04-07 16:50:40', 3, '144.48.112.54', ''),
(498, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: DHBA4M', NULL, '2021-04-07 16:51:46', 3, '144.48.112.54', ''),
(499, 2, 'PRJ', 'Project has been updated', NULL, 'Project ID: DHBA4M', NULL, '2021-04-07 16:54:49', 3, '144.48.112.54', ''),
(500, 2, 'PRJ', 'Project has been updated', NULL, 'Project ID: N/A', NULL, '2021-04-07 16:55:35', 3, '144.48.112.54', ''),
(501, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421113', NULL, '2021-04-07 16:56:15', 3, '144.48.112.54', ''),
(502, 2, 'COT', 'New contractor has been Added', NULL, 'Contractor name: Cont. Milkhan', NULL, '2021-04-07 16:57:28', 3, '144.48.112.54', ''),
(503, 2, 'PRJ', 'Project has been updated', NULL, 'Project ID: SYTGG1', NULL, '2021-04-07 16:58:44', 3, '144.48.112.54', ''),
(504, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421114', NULL, '2021-04-07 16:59:35', 3, '144.48.112.54', ''),
(505, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421103', NULL, '2021-04-07 17:00:49', 3, '144.48.112.54', ''),
(506, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421115', NULL, '2021-04-07 17:01:40', 3, '144.48.112.54', ''),
(507, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421106', NULL, '2021-04-07 17:01:50', 3, '144.48.112.54', ''),
(508, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421116', NULL, '2021-04-07 17:02:22', 3, '144.48.112.54', ''),
(509, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421115', NULL, '2021-04-07 17:02:37', 3, '144.48.112.54', ''),
(510, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV070421117', NULL, '2021-04-07 17:03:09', 3, '144.48.112.54', ''),
(511, 2, 'LON', 'Loan account has been created', NULL, 'Loan Account: Md. Shahin Sardar-\'0191817171\'', NULL, '2021-04-07 17:05:04', 3, '144.48.112.54', ''),
(512, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-08 16:34:26', 3, '144.48.112.54', ''),
(513, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421101', NULL, '2021-04-08 16:37:28', 3, '144.48.112.54', ''),
(514, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: DHK6970', NULL, '2021-04-08 16:39:51', 3, '144.48.112.54', ''),
(515, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421102', NULL, '2021-04-08 16:40:31', 3, '144.48.112.54', ''),
(516, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421103', NULL, '2021-04-08 16:41:22', 3, '144.48.112.54', ''),
(517, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421104', NULL, '2021-04-08 16:42:00', 3, '144.48.112.54', ''),
(518, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421105', NULL, '2021-04-08 16:43:08', 3, '144.48.112.54', ''),
(519, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Mubin', 'খরচ খাতের নামঃ Md. Mubin', '2021-04-08 16:43:31', 3, '144.48.112.54', ''),
(520, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421106', NULL, '2021-04-08 16:44:03', 3, '144.48.112.54', ''),
(521, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: JSHFP1', NULL, '2021-04-08 16:45:24', 3, '144.48.112.54', ''),
(522, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421107', NULL, '2021-04-08 16:46:35', 3, '144.48.112.54', ''),
(523, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421108', NULL, '2021-04-08 16:48:08', 3, '144.48.112.54', ''),
(524, 2, 'COT', 'Contractor has been Updated', NULL, 'Contractor name: Cont. Abdur Rouf', NULL, '2021-04-08 16:51:41', 3, '144.48.112.54', ''),
(525, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: MBBSP1', NULL, '2021-04-08 16:53:27', 3, '144.48.112.54', ''),
(526, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421109', NULL, '2021-04-08 16:54:26', 3, '144.48.112.54', ''),
(527, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: SNKLK1', NULL, '2021-04-08 16:55:53', 3, '144.48.112.54', ''),
(528, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421110', NULL, '2021-04-08 16:56:42', 3, '144.48.112.54', ''),
(529, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: SNUZP1', NULL, '2021-04-08 16:58:08', 3, '144.48.112.54', ''),
(530, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421111', NULL, '2021-04-08 16:59:01', 3, '144.48.112.54', ''),
(531, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421112', NULL, '2021-04-08 17:07:55', 3, '144.48.112.54', ''),
(532, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421113', NULL, '2021-04-08 17:08:41', 3, '144.48.112.54', ''),
(533, 2, 'PRJ', 'Project has been updated', NULL, 'Project ID: NWMRP1', NULL, '2021-04-08 17:11:30', 3, '144.48.112.54', ''),
(534, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421114', NULL, '2021-04-08 17:12:22', 3, '144.48.112.54', ''),
(535, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421115', NULL, '2021-04-08 17:13:00', 3, '144.48.112.54', ''),
(536, 2, 'PRJ', 'Project has been updated', NULL, 'Project ID: HGGUM1', NULL, '2021-04-08 17:58:09', 3, '144.48.112.54', ''),
(537, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421116', NULL, '2021-04-08 18:00:27', 3, '144.48.112.54', ''),
(538, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421117', NULL, '2021-04-08 18:01:10', 3, '144.48.112.54', ''),
(539, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421118', NULL, '2021-04-08 18:02:03', 3, '144.48.112.54', ''),
(540, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421119', NULL, '2021-04-08 18:02:41', 3, '144.48.112.54', ''),
(541, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421120', NULL, '2021-04-08 18:03:22', 3, '144.48.112.54', ''),
(542, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421121', NULL, '2021-04-08 18:03:58', 3, '144.48.112.54', ''),
(543, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421122', NULL, '2021-04-08 18:05:02', 3, '144.48.112.54', ''),
(544, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421123', NULL, '2021-04-08 18:06:07', 3, '144.48.112.54', ''),
(545, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421124', NULL, '2021-04-08 18:07:00', 3, '144.48.112.54', ''),
(546, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421125', NULL, '2021-04-08 18:09:11', 3, '144.48.112.54', ''),
(547, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421126', NULL, '2021-04-08 18:09:49', 3, '144.48.112.54', ''),
(548, 2, 'SGP', 'New Sub-Group has been created', NULL, 'Sub-Group name: Edot Co Power Upgradation', NULL, '2021-04-08 18:15:26', 3, '144.48.112.54', ''),
(549, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: EDOTCO CPUPGRADATION', NULL, '2021-04-08 18:24:14', 3, '144.48.112.54', ''),
(550, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV080421127', NULL, '2021-04-08 18:25:23', 3, '144.48.112.54', ''),
(551, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-10 09:59:38', 3, '144.48.112.54', ''),
(552, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-10 12:37:56', 3, '144.48.112.54', ''),
(553, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-10 14:45:34', 3, '144.48.112.54', ''),
(554, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-10 16:16:30', 3, '144.48.112.54', ''),
(555, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: BRBTG12', NULL, '2021-04-10 16:17:21', 3, '144.48.112.54', ''),
(556, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Md. Lekhan Ali', 'খরচ খাতের নামঃ Md. Lekhan Ali', '2021-04-10 16:18:20', 3, '144.48.112.54', ''),
(557, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421101', NULL, '2021-04-10 16:18:50', 3, '144.48.112.54', ''),
(558, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421102', NULL, '2021-04-10 16:19:41', 3, '144.48.112.54', ''),
(559, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421103', NULL, '2021-04-10 16:20:23', 3, '144.48.112.54', ''),
(560, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421104', NULL, '2021-04-10 16:21:00', 3, '144.48.112.54', ''),
(561, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421105', NULL, '2021-04-10 16:23:26', 3, '144.48.112.54', ''),
(562, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421106', NULL, '2021-04-10 16:32:48', 3, '144.48.112.54', ''),
(563, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421107', NULL, '2021-04-10 16:36:00', 3, '144.48.112.54', ''),
(564, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421108', NULL, '2021-04-10 16:37:04', 3, '144.48.112.54', ''),
(565, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421109', NULL, '2021-04-10 16:39:39', 3, '144.48.112.54', ''),
(566, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421110', NULL, '2021-04-10 16:43:13', 3, '144.48.112.54', ''),
(567, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421111', NULL, '2021-04-10 16:44:15', 3, '144.48.112.54', ''),
(568, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421112', NULL, '2021-04-10 16:44:40', 3, '144.48.112.54', ''),
(569, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Razoni Kanto Paul', 'খরচ খাতের নামঃ Razoni Kanto Paul', '2021-04-10 16:46:35', 3, '144.48.112.54', ''),
(570, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: HGSDS1', NULL, '2021-04-10 16:47:13', 3, '144.48.112.54', ''),
(571, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV100421113', NULL, '2021-04-10 16:47:49', 3, '144.48.112.54', ''),
(572, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-11 11:51:55', 0, '103.60.175.216', ''),
(573, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-11 11:54:17', 0, '103.66.177.1', ''),
(574, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV110421101', NULL, '2021-04-11 11:56:21', 0, '103.66.177.1', ''),
(575, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV110421101', NULL, '2021-04-11 11:56:36', 0, '103.66.177.1', ''),
(576, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: asdfghj', NULL, '2021-04-11 12:00:04', 0, '103.66.177.1', ''),
(577, 1, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV110421101', NULL, '2021-04-11 12:01:13', 0, '103.66.177.1', ''),
(578, 1, 'EXL', 'Expenses has been Added', NULL, 'Expenses No: EXP110421101', NULL, '2021-04-11 12:04:34', 0, '103.66.177.1', ''),
(579, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV110421101', NULL, '2021-04-11 12:05:34', 0, '103.66.177.1', ''),
(580, 1, 'EXL', 'Expenses has been deleted', NULL, 'Expenses no: EXP110421101', NULL, '2021-04-11 12:05:50', 0, '103.66.177.1', ''),
(581, 1, 'EMP', 'Employee has been deleted', NULL, 'Employee name: asdfghj', NULL, '2021-04-11 12:06:07', 0, '103.66.177.1', ''),
(582, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-11 16:22:20', 3, '144.48.112.54', ''),
(583, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-17 13:12:36', 3, '144.48.112.38', ''),
(584, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421109', NULL, '2021-04-17 13:17:27', 3, '144.48.112.38', ''),
(585, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV170421101', NULL, '2021-04-17 13:18:13', 3, '144.48.112.38', ''),
(586, 2, 'PRJ', 'New project has been created', NULL, 'Project ID: 542821', NULL, '2021-04-17 13:26:52', 3, '144.48.112.38', ''),
(587, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV170421102', NULL, '2021-04-17 13:28:08', 3, '144.48.112.38', ''),
(588, 2, 'LON', 'Loan account has been created', NULL, 'Loan Account: Shahin Sir-\'01711562431\'', NULL, '2021-04-17 13:29:28', 3, '144.48.112.38', ''),
(589, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV170421103', NULL, '2021-04-17 13:30:28', 3, '144.48.112.38', ''),
(590, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV170421104', NULL, '2021-04-17 13:31:56', 3, '144.48.112.38', ''),
(591, 2, 'PAY', 'Payment has been Added', NULL, 'Payment No: PAV170421105', NULL, '2021-04-17 13:32:29', 3, '144.48.112.38', ''),
(592, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-19 14:14:37', 3, '144.48.112.38', ''),
(593, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Room Rent', 'খরচ খাতের নামঃ Room Rent', '2021-04-19 14:27:45', 3, '144.48.112.38', ''),
(594, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Bedding', 'খরচ খাতের নামঃ Bedding', '2021-04-19 14:28:10', 3, '144.48.112.38', ''),
(595, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Sub Contractor ', 'খরচ খাতের নামঃ Sub Contractor ', '2021-04-19 14:28:56', 3, '144.48.112.38', ''),
(596, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Tirpal ', 'খরচ খাতের নামঃ Tirpal ', '2021-04-19 14:30:06', 3, '144.48.112.38', ''),
(597, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Document Print', 'খরচ খাতের নামঃ Document Print', '2021-04-19 14:41:31', 3, '144.48.112.38', ''),
(598, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Power Apply', 'খরচ খাতের নামঃ Power Apply', '2021-04-19 14:41:41', 3, '144.48.112.38', ''),
(599, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Rope', 'খরচ খাতের নামঃ Rope', '2021-04-19 14:41:56', 3, '144.48.112.38', ''),
(600, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Rod ', 'খরচ খাতের নামঃ Rod ', '2021-04-19 14:42:29', 3, '144.48.112.38', ''),
(601, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Daily Labour', 'খরচ খাতের নামঃ Daily Labour', '2021-04-19 14:42:42', 3, '144.48.112.38', ''),
(602, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Rod Carrying', 'খরচ খাতের নামঃ Rod Carrying', '2021-04-19 14:42:56', 3, '144.48.112.38', ''),
(603, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Brick Chips', 'খরচ খাতের নামঃ Brick Chips', '2021-04-19 14:44:22', 3, '144.48.112.38', ''),
(604, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Brick Chips Carrying', 'খরচ খাতের নামঃ Brick Chips Carrying', '2021-04-19 14:44:45', 3, '144.48.112.38', ''),
(605, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Local Sand ', 'খরচ খাতের নামঃ Local Sand ', '2021-04-19 14:45:11', 3, '144.48.112.38', ''),
(606, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Local Sand  Carrying', 'খরচ খাতের নামঃ Local Sand  Carrying', '2021-04-19 14:45:26', 3, '144.48.112.38', ''),
(607, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Sylhet Sand ', 'খরচ খাতের নামঃ Sylhet Sand ', '2021-04-19 14:45:44', 3, '144.48.112.38', ''),
(608, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Sylhet Sand  Carrying', 'খরচ খাতের নামঃ Sylhet Sand  Carrying', '2021-04-19 14:45:57', 3, '144.48.112.38', ''),
(609, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Cement ', 'খরচ খাতের নামঃ Cement ', '2021-04-19 14:46:15', 3, '144.48.112.38', ''),
(610, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Cement  Carrying', 'খরচ খাতের নামঃ Cement  Carrying', '2021-04-19 14:46:30', 3, '144.48.112.38', ''),
(611, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Welding', 'খরচ খাতের নামঃ Welding', '2021-04-19 14:46:49', 3, '144.48.112.38', ''),
(612, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Bkash Charge', 'খরচ খাতের নামঃ Bkash Charge', '2021-04-19 14:47:11', 3, '144.48.112.38', ''),
(613, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Template Carrying ', 'খরচ খাতের নামঃ Template Carrying ', '2021-04-19 14:47:48', 3, '144.48.112.38', ''),
(614, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Admixer', 'খরচ খাতের নামঃ Admixer', '2021-04-19 14:48:41', 3, '144.48.112.38', ''),
(615, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Labour Tips', 'খরচ খাতের নামঃ Labour Tips', '2021-04-19 14:49:33', 3, '144.48.112.38', ''),
(616, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Pipe', 'খরচ খাতের নামঃ Pipe', '2021-04-19 14:50:24', 3, '144.48.112.38', ''),
(617, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Electric Materials Carrying', 'খরচ খাতের নামঃ Electric Materials Carrying', '2021-04-19 14:51:18', 3, '144.48.112.38', ''),
(618, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Boring', 'খরচ খাতের নামঃ Boring', '2021-04-19 14:52:06', 3, '144.48.112.38', ''),
(619, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Paint', 'খরচ খাতের নামঃ Paint', '2021-04-19 14:52:15', 3, '144.48.112.38', ''),
(620, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Technician', 'খরচ খাতের নামঃ Technician', '2021-04-19 14:52:39', 3, '144.48.112.38', ''),
(621, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Mistry', 'খরচ খাতের নামঃ Mistry', '2021-04-19 14:52:49', 3, '144.48.112.38', ''),
(622, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Line Man', 'খরচ খাতের নামঃ Line Man', '2021-04-19 14:53:12', 3, '144.48.112.38', ''),
(623, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Electric Bill', 'খরচ খাতের নামঃ Electric Bill', '2021-04-19 14:53:28', 3, '144.48.112.38', ''),
(624, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Lock &amp;amp; Key', 'খরচ খাতের নামঃ Lock &amp;amp; Key', '2021-04-19 14:53:46', 3, '144.48.112.38', ''),
(625, 2, 'EXP', 'New Expenses Head has been created', 'নতুন খরচ খাত যোগ করেছেন', 'Expenses Head name: Demand Note', 'খরচ খাতের নামঃ Demand Note', '2021-04-19 14:54:37', 3, '144.48.112.38', ''),
(626, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-19 16:11:10', 3, '144.48.112.38', ''),
(627, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421118', NULL, '2021-04-19 16:11:52', 3, '144.48.112.38', ''),
(628, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421117', NULL, '2021-04-19 16:11:56', 3, '144.48.112.38', ''),
(629, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421121', NULL, '2021-04-19 16:12:00', 3, '144.48.112.38', ''),
(630, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421127', NULL, '2021-04-19 16:12:05', 3, '144.48.112.38', ''),
(631, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421126', NULL, '2021-04-19 16:12:09', 3, '144.48.112.38', ''),
(632, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV170421105', NULL, '2021-04-19 16:12:13', 3, '144.48.112.38', ''),
(633, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV170421104', NULL, '2021-04-19 16:12:17', 3, '144.48.112.38', ''),
(634, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV170421103', NULL, '2021-04-19 16:12:26', 3, '144.48.112.38', ''),
(635, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV170421102', NULL, '2021-04-19 16:12:30', 3, '144.48.112.38', ''),
(636, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV170421101', NULL, '2021-04-19 16:12:35', 3, '144.48.112.38', ''),
(637, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421113', NULL, '2021-04-19 16:12:39', 3, '144.48.112.38', ''),
(638, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421112', NULL, '2021-04-19 16:12:44', 3, '144.48.112.38', ''),
(639, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421111', NULL, '2021-04-19 16:12:49', 3, '144.48.112.38', ''),
(640, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421110', NULL, '2021-04-19 16:12:54', 3, '144.48.112.38', ''),
(641, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421108', NULL, '2021-04-19 16:12:58', 3, '144.48.112.38', ''),
(642, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421107', NULL, '2021-04-19 16:13:02', 3, '144.48.112.38', ''),
(643, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421106', NULL, '2021-04-19 16:13:06', 3, '144.48.112.38', ''),
(644, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421105', NULL, '2021-04-19 16:13:10', 3, '144.48.112.38', ''),
(645, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421104', NULL, '2021-04-19 16:13:14', 3, '144.48.112.38', ''),
(646, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421112', NULL, '2021-04-19 16:13:18', 3, '144.48.112.38', ''),
(647, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421115', NULL, '2021-04-19 16:13:24', 3, '144.48.112.38', ''),
(648, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421116', NULL, '2021-04-19 16:13:28', 3, '144.48.112.38', ''),
(649, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421114', NULL, '2021-04-19 16:13:33', 3, '144.48.112.38', ''),
(650, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421103', NULL, '2021-04-19 16:13:37', 3, '144.48.112.38', ''),
(651, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421119', NULL, '2021-04-19 16:13:41', 3, '144.48.112.38', ''),
(652, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421102', NULL, '2021-04-19 16:13:51', 3, '144.48.112.38', ''),
(653, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV100421101', NULL, '2021-04-19 16:13:56', 3, '144.48.112.38', ''),
(654, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421125', NULL, '2021-04-19 16:14:02', 3, '144.48.112.38', ''),
(655, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421124', NULL, '2021-04-19 16:14:07', 3, '144.48.112.38', ''),
(656, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421123', NULL, '2021-04-19 16:14:11', 3, '144.48.112.38', ''),
(657, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421122', NULL, '2021-04-19 16:14:16', 3, '144.48.112.38', ''),
(658, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421120', NULL, '2021-04-19 16:14:20', 3, '144.48.112.38', ''),
(659, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421113', NULL, '2021-04-19 16:14:25', 3, '144.48.112.38', ''),
(660, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421111', NULL, '2021-04-19 16:14:29', 3, '144.48.112.38', ''),
(661, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421110', NULL, '2021-04-19 16:14:34', 3, '144.48.112.38', ''),
(662, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421109', NULL, '2021-04-19 16:14:40', 3, '144.48.112.38', ''),
(663, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421108', NULL, '2021-04-19 16:14:45', 3, '144.48.112.38', ''),
(664, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421107', NULL, '2021-04-19 16:14:48', 3, '144.48.112.38', ''),
(665, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421106', NULL, '2021-04-19 16:14:53', 3, '144.48.112.38', ''),
(666, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421105', NULL, '2021-04-19 16:14:59', 3, '144.48.112.38', ''),
(667, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421104', NULL, '2021-04-19 16:15:10', 3, '144.48.112.38', ''),
(668, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421103', NULL, '2021-04-19 16:15:15', 3, '144.48.112.38', ''),
(669, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421102', NULL, '2021-04-19 16:15:18', 3, '144.48.112.38', ''),
(670, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV080421101', NULL, '2021-04-19 16:15:22', 3, '144.48.112.38', ''),
(671, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421111', NULL, '2021-04-19 16:15:26', 3, '144.48.112.38', ''),
(672, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421110', NULL, '2021-04-19 16:15:31', 3, '144.48.112.38', ''),
(673, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421114', NULL, '2021-04-19 16:15:35', 3, '144.48.112.38', ''),
(674, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421113', NULL, '2021-04-19 16:15:39', 3, '144.48.112.38', ''),
(675, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421112', NULL, '2021-04-19 16:15:43', 3, '144.48.112.38', ''),
(676, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421101', NULL, '2021-04-19 16:15:46', 3, '144.48.112.38', ''),
(677, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421102', NULL, '2021-04-19 16:15:50', 3, '144.48.112.38', ''),
(678, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421103', NULL, '2021-04-19 16:15:53', 3, '144.48.112.38', ''),
(679, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421104', NULL, '2021-04-19 16:15:57', 3, '144.48.112.38', ''),
(680, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421105', NULL, '2021-04-19 16:16:01', 3, '144.48.112.38', ''),
(681, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421106', NULL, '2021-04-19 16:16:06', 3, '144.48.112.38', ''),
(682, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421107', NULL, '2021-04-19 16:16:31', 3, '144.48.112.38', ''),
(683, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421108', NULL, '2021-04-19 16:16:37', 3, '144.48.112.38', ''),
(684, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421109', NULL, '2021-04-19 16:16:40', 3, '144.48.112.38', ''),
(685, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421110', NULL, '2021-04-19 16:16:45', 3, '144.48.112.38', ''),
(686, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421111', NULL, '2021-04-19 16:16:48', 3, '144.48.112.38', ''),
(687, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421112', NULL, '2021-04-19 16:16:52', 3, '144.48.112.38', ''),
(688, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421113', NULL, '2021-04-19 16:16:56', 3, '144.48.112.38', ''),
(689, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421114', NULL, '2021-04-19 16:17:00', 3, '144.48.112.38', ''),
(690, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421115', NULL, '2021-04-19 16:17:03', 3, '144.48.112.38', ''),
(691, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421116', NULL, '2021-04-19 16:17:08', 3, '144.48.112.38', ''),
(692, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421117', NULL, '2021-04-19 16:17:13', 3, '144.48.112.38', ''),
(693, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421118', NULL, '2021-04-19 16:17:17', 3, '144.48.112.38', ''),
(694, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV060421119', NULL, '2021-04-19 16:17:21', 3, '144.48.112.38', ''),
(695, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421101', NULL, '2021-04-19 16:17:25', 3, '144.48.112.38', ''),
(696, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421102', NULL, '2021-04-19 16:17:29', 3, '144.48.112.38', ''),
(697, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421104', NULL, '2021-04-19 16:17:36', 3, '144.48.112.38', ''),
(698, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421105', NULL, '2021-04-19 16:17:40', 3, '144.48.112.38', ''),
(699, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421107', NULL, '2021-04-19 16:17:46', 3, '144.48.112.38', ''),
(700, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421108', NULL, '2021-04-19 16:17:50', 3, '144.48.112.38', ''),
(701, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421109', NULL, '2021-04-19 16:17:55', 3, '144.48.112.38', ''),
(702, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421116', NULL, '2021-04-19 16:17:59', 3, '144.48.112.38', ''),
(703, 2, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV070421117', NULL, '2021-04-19 16:18:03', 3, '144.48.112.38', ''),
(704, 2, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Mahbubul Alam ', NULL, '2021-04-19 16:40:48', 3, '144.48.112.38', ''),
(705, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-19 16:43:51', 3, '144.48.112.38', ''),
(706, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-19 16:43:58', 0, '144.48.112.38', ''),
(707, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Altaf Hossain   ', NULL, '2021-04-19 16:51:16', 0, '144.48.112.38', ''),
(708, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Ifat Ara', NULL, '2021-04-19 16:57:34', 0, '144.48.112.38', ''),
(709, 1, 'DIS', 'New designation has been Added', NULL, 'Designation name: Project Co-Ordinator', NULL, '2021-04-19 17:00:56', 0, '144.48.112.38', ''),
(710, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Benzer Ahmed', NULL, '2021-04-19 17:02:55', 0, '144.48.112.38', ''),
(711, 1, 'DIS', 'New designation has been Added', NULL, 'Designation name: Asst. Project Manager', NULL, '2021-04-19 17:05:43', 0, '144.48.112.38', '');
INSERT INTO `tbl_activity` (`id`, `uid`, `filds`, `title`, `btitle`, `activity`, `bactivity`, `acdtime`, `brid`, `ip`, `mac`) VALUES
(712, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Shahin Sarder', NULL, '2021-04-19 17:08:44', 0, '144.48.112.38', ''),
(713, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Liton Hasan', NULL, '2021-04-19 17:10:10', 0, '144.48.112.38', ''),
(714, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Abdul Bariq', NULL, '2021-04-19 17:13:22', 0, '144.48.112.38', ''),
(715, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Mollik Nobir', NULL, '2021-04-19 17:39:01', 0, '144.48.112.38', ''),
(716, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Tusher Kumar Paul', NULL, '2021-04-19 17:42:50', 0, '144.48.112.38', ''),
(717, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Shahin Alam', NULL, '2021-04-19 17:45:04', 0, '144.48.112.38', ''),
(718, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Hasmat Ali', NULL, '2021-04-19 17:46:39', 0, '144.48.112.38', ''),
(719, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Amin Uddin', NULL, '2021-04-19 17:49:27', 0, '144.48.112.38', ''),
(720, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Abdul Latif', NULL, '2021-04-19 17:51:41', 0, '144.48.112.38', ''),
(721, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Abu Sayed', NULL, '2021-04-19 17:54:36', 0, '144.48.112.38', ''),
(722, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Rabiul Alom', NULL, '2021-04-19 17:57:02', 0, '144.48.112.38', ''),
(723, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Zelhaq Rahman', NULL, '2021-04-19 17:59:06', 0, '144.48.112.38', ''),
(724, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Suruzzaman', NULL, '2021-04-19 18:01:49', 0, '144.48.112.38', ''),
(725, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Sabbir Hossain', NULL, '2021-04-19 18:03:19', 0, '144.48.112.38', ''),
(726, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Nahidul Islam', NULL, '2021-04-19 18:05:20', 0, '144.48.112.38', ''),
(727, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Arif Hossain', NULL, '2021-04-19 18:06:56', 0, '144.48.112.38', ''),
(728, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-19 19:08:29', 0, '144.48.112.38', ''),
(729, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-20 11:26:00', 0, '103.237.78.66', ''),
(730, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-04-20 11:29:33', 0, '103.237.78.66', ''),
(731, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-24 10:49:05', 0, '144.48.112.38', ''),
(732, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Aminul Islam', NULL, '2021-04-24 10:54:31', 0, '144.48.112.38', ''),
(733, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Abdur Razzak', NULL, '2021-04-24 10:56:22', 0, '144.48.112.38', ''),
(734, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Jahidul Islam Samrat', NULL, '2021-04-24 10:57:55', 0, '144.48.112.38', ''),
(735, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: A.N.M Salauddin', NULL, '2021-04-24 10:59:34', 0, '144.48.112.38', ''),
(736, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Mahbub Hasan Sawan', NULL, '2021-04-24 11:02:49', 0, '144.48.112.38', ''),
(737, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-24 13:42:18', 0, '144.48.112.38', ''),
(738, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-24 15:38:36', 0, '144.48.112.38', ''),
(739, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-26 14:56:40', 0, '144.48.112.38', ''),
(740, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Lekhan Ali', NULL, '2021-04-26 15:03:13', 0, '144.48.112.38', ''),
(741, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Manik Mia', NULL, '2021-04-26 15:04:38', 0, '144.48.112.38', ''),
(742, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Mahabur Rahman', NULL, '2021-04-26 15:10:03', 0, '144.48.112.38', ''),
(743, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: K M Nayemul Islam', NULL, '2021-04-26 15:12:56', 0, '144.48.112.38', ''),
(744, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Al Amin Mia', NULL, '2021-04-26 15:16:30', 0, '144.48.112.38', ''),
(745, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Guard (Munshiganj)', NULL, '2021-04-26 15:18:24', 0, '144.48.112.38', ''),
(746, 1, 'EMP', 'New employee has been Added', NULL, 'Employee name: Md. Yousub Ali', NULL, '2021-04-26 15:20:16', 0, '144.48.112.38', ''),
(747, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-04-27 14:40:42', 0, '144.48.112.38', ''),
(748, 1, 'EXP', 'Expenses Head has been deleted', NULL, 'Expenses Head name: Zelhaq Rahman', NULL, '2021-04-27 14:42:34', 0, '144.48.112.38', ''),
(749, 1, 'PUR', 'Purchase has been deleted', NULL, 'Purchase invoice: PUR070421101', NULL, '2021-04-27 15:00:48', 0, '144.48.112.38', ''),
(750, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321101', NULL, '2021-04-27 15:01:35', 0, '144.48.112.38', ''),
(751, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321102', NULL, '2021-04-27 15:01:40', 0, '144.48.112.38', ''),
(752, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321103', NULL, '2021-04-27 15:01:45', 0, '144.48.112.38', ''),
(753, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321104', NULL, '2021-04-27 15:01:49', 0, '144.48.112.38', ''),
(754, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321105', NULL, '2021-04-27 15:01:57', 0, '144.48.112.38', ''),
(755, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321128', NULL, '2021-04-27 15:02:02', 0, '144.48.112.38', ''),
(756, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321106', NULL, '2021-04-27 15:02:08', 0, '144.48.112.38', ''),
(757, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321127', NULL, '2021-04-27 15:02:13', 0, '144.48.112.38', ''),
(758, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321169', NULL, '2021-04-27 15:02:25', 0, '144.48.112.38', ''),
(759, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421111', NULL, '2021-04-27 15:02:31', 0, '144.48.112.38', ''),
(760, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321128', NULL, '2021-04-27 15:02:36', 0, '144.48.112.38', ''),
(761, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321168', NULL, '2021-04-27 15:02:40', 0, '144.48.112.38', ''),
(762, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321127', NULL, '2021-04-27 15:02:45', 0, '144.48.112.38', ''),
(763, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421110', NULL, '2021-04-27 15:03:07', 0, '144.48.112.38', ''),
(764, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321167', NULL, '2021-04-27 15:03:12', 0, '144.48.112.38', ''),
(765, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321166', NULL, '2021-04-27 15:03:18', 0, '144.48.112.38', ''),
(766, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421109', NULL, '2021-04-27 15:03:29', 0, '144.48.112.38', ''),
(767, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321126', NULL, '2021-04-27 15:03:55', 0, '144.48.112.38', ''),
(768, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421108', NULL, '2021-04-27 15:04:01', 0, '144.48.112.38', ''),
(769, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321165', NULL, '2021-04-27 15:04:06', 0, '144.48.112.38', ''),
(770, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321126', NULL, '2021-04-27 15:04:11', 0, '144.48.112.38', ''),
(771, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321164', NULL, '2021-04-27 15:04:15', 0, '144.48.112.38', ''),
(772, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321124', NULL, '2021-04-27 15:04:20', 0, '144.48.112.38', ''),
(773, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421148', NULL, '2021-04-27 15:04:25', 0, '144.48.112.38', ''),
(774, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321123', NULL, '2021-04-27 15:04:33', 0, '144.48.112.38', ''),
(775, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421113', NULL, '2021-04-27 15:04:38', 0, '144.48.112.38', ''),
(776, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421105', NULL, '2021-04-27 15:04:43', 0, '144.48.112.38', ''),
(777, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321172', NULL, '2021-04-27 15:04:48', 0, '144.48.112.38', ''),
(778, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321125', NULL, '2021-04-27 15:04:53', 0, '144.48.112.38', ''),
(779, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321171', NULL, '2021-04-27 15:04:57', 0, '144.48.112.38', ''),
(780, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421149', NULL, '2021-04-27 15:05:06', 0, '144.48.112.38', ''),
(781, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421114', NULL, '2021-04-27 15:05:21', 0, '144.48.112.38', ''),
(782, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321170', NULL, '2021-04-27 15:05:26', 0, '144.48.112.38', ''),
(783, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421112', NULL, '2021-04-27 15:05:30', 0, '144.48.112.38', ''),
(784, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321163', NULL, '2021-04-27 15:05:35', 0, '144.48.112.38', ''),
(785, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421147', NULL, '2021-04-27 15:05:39', 0, '144.48.112.38', ''),
(786, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321122', NULL, '2021-04-27 15:05:44', 0, '144.48.112.38', ''),
(787, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421107', NULL, '2021-04-27 15:05:49', 0, '144.48.112.38', ''),
(788, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321162', NULL, '2021-04-27 15:05:54', 0, '144.48.112.38', ''),
(789, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321161', NULL, '2021-04-27 15:05:58', 0, '144.48.112.38', ''),
(790, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321121', NULL, '2021-04-27 15:06:02', 0, '144.48.112.38', ''),
(791, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321120', NULL, '2021-04-27 15:06:06', 0, '144.48.112.38', ''),
(792, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321119', NULL, '2021-04-27 15:06:11', 0, '144.48.112.38', ''),
(793, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321160', NULL, '2021-04-27 15:06:15', 0, '144.48.112.38', ''),
(794, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421146', NULL, '2021-04-27 15:06:19', 0, '144.48.112.38', ''),
(795, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421106', NULL, '2021-04-27 15:06:27', 0, '144.48.112.38', ''),
(796, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321118', NULL, '2021-04-27 15:06:30', 0, '144.48.112.38', ''),
(797, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421144', NULL, '2021-04-27 15:06:35', 0, '144.48.112.38', ''),
(798, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421145', NULL, '2021-04-27 15:06:39', 0, '144.48.112.38', ''),
(799, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421143', NULL, '2021-04-27 15:06:43', 0, '144.48.112.38', ''),
(800, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321117', NULL, '2021-04-27 15:06:46', 0, '144.48.112.38', ''),
(801, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321115', NULL, '2021-04-27 15:06:50', 0, '144.48.112.38', ''),
(802, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321159', NULL, '2021-04-27 15:06:55', 0, '144.48.112.38', ''),
(803, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321116', NULL, '2021-04-27 15:07:03', 0, '144.48.112.38', ''),
(804, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421142', NULL, '2021-04-27 15:07:08', 0, '144.48.112.38', ''),
(805, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421141', NULL, '2021-04-27 15:07:12', 0, '144.48.112.38', ''),
(806, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321114', NULL, '2021-04-27 15:07:16', 0, '144.48.112.38', ''),
(807, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321158', NULL, '2021-04-27 15:07:20', 0, '144.48.112.38', ''),
(808, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321113', NULL, '2021-04-27 15:07:24', 0, '144.48.112.38', ''),
(809, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321112', NULL, '2021-04-27 15:07:27', 0, '144.48.112.38', ''),
(810, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321111', NULL, '2021-04-27 15:07:32', 0, '144.48.112.38', ''),
(811, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421104', NULL, '2021-04-27 15:07:36', 0, '144.48.112.38', ''),
(812, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421140', NULL, '2021-04-27 15:07:40', 0, '144.48.112.38', ''),
(813, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321110', NULL, '2021-04-27 15:07:45', 0, '144.48.112.38', ''),
(814, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321124', NULL, '2021-04-27 15:07:49', 0, '144.48.112.38', ''),
(815, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321125', NULL, '2021-04-27 15:07:53', 0, '144.48.112.38', ''),
(816, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321123', NULL, '2021-04-27 15:07:57', 0, '144.48.112.38', ''),
(817, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421102', NULL, '2021-04-27 15:08:03', 0, '144.48.112.38', ''),
(818, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321109', NULL, '2021-04-27 15:08:07', 0, '144.48.112.38', ''),
(819, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421103', NULL, '2021-04-27 15:08:12', 0, '144.48.112.38', ''),
(820, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421137', NULL, '2021-04-27 15:08:38', 0, '144.48.112.38', ''),
(821, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421112', NULL, '2021-04-27 15:08:46', 0, '144.48.112.38', ''),
(822, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321121', NULL, '2021-04-27 15:08:52', 0, '144.48.112.38', ''),
(823, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321157', NULL, '2021-04-27 15:08:56', 0, '144.48.112.38', ''),
(824, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321108', NULL, '2021-04-27 15:09:02', 0, '144.48.112.38', ''),
(825, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421139', NULL, '2021-04-27 15:09:06', 0, '144.48.112.38', ''),
(826, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321155', NULL, '2021-04-27 15:09:10', 0, '144.48.112.38', ''),
(827, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421101', NULL, '2021-04-27 15:09:15', 0, '144.48.112.38', ''),
(828, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421114', NULL, '2021-04-27 15:09:18', 0, '144.48.112.38', ''),
(829, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421109', NULL, '2021-04-27 15:09:32', 0, '144.48.112.38', ''),
(830, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421138', NULL, '2021-04-27 15:09:36', 0, '144.48.112.38', ''),
(831, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421136', NULL, '2021-04-27 15:09:40', 0, '144.48.112.38', ''),
(832, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421113', NULL, '2021-04-27 15:09:45', 0, '144.48.112.38', ''),
(833, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321107', NULL, '2021-04-27 15:09:48', 0, '144.48.112.38', ''),
(834, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321106', NULL, '2021-04-27 15:09:52', 0, '144.48.112.38', ''),
(835, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321154', NULL, '2021-04-27 15:09:55', 0, '144.48.112.38', ''),
(836, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421110', NULL, '2021-04-27 15:10:01', 0, '144.48.112.38', ''),
(837, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321153', NULL, '2021-04-27 15:10:05', 0, '144.48.112.38', ''),
(838, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421165', NULL, '2021-04-27 15:10:09', 0, '144.48.112.38', ''),
(839, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421135', NULL, '2021-04-27 15:10:13', 0, '144.48.112.38', ''),
(840, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321120', NULL, '2021-04-27 15:10:22', 0, '144.48.112.38', ''),
(841, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421111', NULL, '2021-04-27 15:10:26', 0, '144.48.112.38', ''),
(842, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321151', NULL, '2021-04-27 15:10:29', 0, '144.48.112.38', ''),
(843, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421108', NULL, '2021-04-27 15:10:33', 0, '144.48.112.38', ''),
(844, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321105', NULL, '2021-04-27 15:10:37', 0, '144.48.112.38', ''),
(845, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321152', NULL, '2021-04-27 15:10:42', 0, '144.48.112.38', ''),
(846, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321104', NULL, '2021-04-27 15:10:46', 0, '144.48.112.38', ''),
(847, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421134', NULL, '2021-04-27 15:10:51', 0, '144.48.112.38', ''),
(848, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421133', NULL, '2021-04-27 15:10:57', 0, '144.48.112.38', ''),
(849, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421164', NULL, '2021-04-27 15:11:02', 0, '144.48.112.38', ''),
(850, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421106', NULL, '2021-04-27 15:11:06', 0, '144.48.112.38', ''),
(851, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321156', NULL, '2021-04-27 15:11:10', 0, '144.48.112.38', ''),
(852, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421107', NULL, '2021-04-27 15:11:14', 0, '144.48.112.38', ''),
(853, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321102', NULL, '2021-04-27 15:11:18', 0, '144.48.112.38', ''),
(854, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321103', NULL, '2021-04-27 15:11:22', 0, '144.48.112.38', ''),
(855, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321149', NULL, '2021-04-27 15:11:27', 0, '144.48.112.38', ''),
(856, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321150', NULL, '2021-04-27 15:11:32', 0, '144.48.112.38', ''),
(857, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421105', NULL, '2021-04-27 15:11:36', 0, '144.48.112.38', ''),
(858, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421162', NULL, '2021-04-27 15:11:40', 0, '144.48.112.38', ''),
(859, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321119', NULL, '2021-04-27 15:11:44', 0, '144.48.112.38', ''),
(860, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421104', NULL, '2021-04-27 15:11:49', 0, '144.48.112.38', ''),
(861, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421131', NULL, '2021-04-27 15:11:53', 0, '144.48.112.38', ''),
(862, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421163', NULL, '2021-04-27 15:11:57', 0, '144.48.112.38', ''),
(863, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421132', NULL, '2021-04-27 15:12:01', 0, '144.48.112.38', ''),
(864, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321148', NULL, '2021-04-27 15:12:07', 0, '144.48.112.38', ''),
(865, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421129', NULL, '2021-04-27 15:12:28', 0, '144.48.112.38', ''),
(866, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321182', NULL, '2021-04-27 15:12:37', 0, '144.48.112.38', ''),
(867, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421160', NULL, '2021-04-27 15:12:45', 0, '144.48.112.38', ''),
(868, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421103', NULL, '2021-04-27 15:12:53', 0, '144.48.112.38', ''),
(869, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321147', NULL, '2021-04-27 15:13:02', 0, '144.48.112.38', ''),
(870, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321122', NULL, '2021-04-27 15:13:07', 0, '144.48.112.38', ''),
(871, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421102', NULL, '2021-04-27 15:13:15', 0, '144.48.112.38', ''),
(872, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321118', NULL, '2021-04-27 15:13:23', 0, '144.48.112.38', ''),
(873, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321145', NULL, '2021-04-27 15:13:29', 0, '144.48.112.38', ''),
(874, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321116', NULL, '2021-04-27 15:13:37', 0, '144.48.112.38', ''),
(875, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV020421101', NULL, '2021-04-27 15:13:43', 0, '144.48.112.38', ''),
(876, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321146', NULL, '2021-04-27 15:13:48', 0, '144.48.112.38', ''),
(877, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321117', NULL, '2021-04-27 15:13:52', 0, '144.48.112.38', ''),
(878, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421159', NULL, '2021-04-27 15:13:57', 0, '144.48.112.38', ''),
(879, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421128', NULL, '2021-04-27 15:14:03', 0, '144.48.112.38', ''),
(880, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421161', NULL, '2021-04-27 15:14:07', 0, '144.48.112.38', ''),
(881, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421158', NULL, '2021-04-27 15:14:59', 0, '144.48.112.38', ''),
(882, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV240321101', NULL, '2021-04-27 15:15:07', 0, '144.48.112.38', ''),
(883, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421156', NULL, '2021-04-27 15:15:10', 0, '144.48.112.38', ''),
(884, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321144', NULL, '2021-04-27 15:15:16', 0, '144.48.112.38', ''),
(885, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321181', NULL, '2021-04-27 15:15:20', 0, '144.48.112.38', ''),
(886, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421157', NULL, '2021-04-27 15:15:26', 0, '144.48.112.38', ''),
(887, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421127', NULL, '2021-04-27 15:15:30', 0, '144.48.112.38', ''),
(888, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421126', NULL, '2021-04-27 15:15:33', 0, '144.48.112.38', ''),
(889, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321115', NULL, '2021-04-27 15:15:40', 0, '144.48.112.38', ''),
(890, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321178', NULL, '2021-04-27 15:15:45', 0, '144.48.112.38', ''),
(891, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321179', NULL, '2021-04-27 15:16:02', 0, '144.48.112.38', ''),
(892, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321180', NULL, '2021-04-27 15:16:06', 0, '144.48.112.38', ''),
(893, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421154', NULL, '2021-04-27 15:16:12', 0, '144.48.112.38', ''),
(894, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421153', NULL, '2021-04-27 15:16:22', 0, '144.48.112.38', ''),
(895, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421121', NULL, '2021-04-27 15:28:26', 0, '144.48.112.38', ''),
(896, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321142', NULL, '2021-04-27 15:28:30', 0, '144.48.112.38', ''),
(897, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421125', NULL, '2021-04-27 15:28:33', 0, '144.48.112.38', ''),
(898, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421123', NULL, '2021-04-27 15:28:37', 0, '144.48.112.38', ''),
(899, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321114', NULL, '2021-04-27 15:28:51', 0, '144.48.112.38', ''),
(900, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321143', NULL, '2021-04-27 15:28:55', 0, '144.48.112.38', ''),
(901, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421124', NULL, '2021-04-27 15:28:59', 0, '144.48.112.38', ''),
(902, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321177', NULL, '2021-04-27 15:29:04', 0, '144.48.112.38', ''),
(903, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421152', NULL, '2021-04-27 15:29:28', 0, '144.48.112.38', ''),
(904, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321176', NULL, '2021-04-27 15:29:33', 0, '144.48.112.38', ''),
(905, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421120', NULL, '2021-04-27 15:29:48', 0, '144.48.112.38', ''),
(906, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321140', NULL, '2021-04-27 15:29:54', 0, '144.48.112.38', ''),
(907, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421155', NULL, '2021-04-27 15:29:59', 0, '144.48.112.38', ''),
(908, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421119', NULL, '2021-04-27 15:30:03', 0, '144.48.112.38', ''),
(909, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421117', NULL, '2021-04-27 15:30:24', 0, '144.48.112.38', ''),
(910, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321141', NULL, '2021-04-27 15:30:27', 0, '144.48.112.38', ''),
(911, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421151', NULL, '2021-04-27 15:30:31', 0, '144.48.112.38', ''),
(912, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421150', NULL, '2021-04-27 15:30:36', 0, '144.48.112.38', ''),
(913, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421116', NULL, '2021-04-27 15:30:40', 0, '144.48.112.38', ''),
(914, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421122', NULL, '2021-04-27 15:30:44', 0, '144.48.112.38', ''),
(915, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421118', NULL, '2021-04-27 15:30:50', 0, '144.48.112.38', ''),
(916, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321113', NULL, '2021-04-27 15:30:55', 0, '144.48.112.38', ''),
(917, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321175', NULL, '2021-04-27 15:31:00', 0, '144.48.112.38', ''),
(918, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321112', NULL, '2021-04-27 15:31:05', 0, '144.48.112.38', ''),
(919, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321139', NULL, '2021-04-27 15:31:09', 0, '144.48.112.38', ''),
(920, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321174', NULL, '2021-04-27 15:31:13', 0, '144.48.112.38', ''),
(921, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321138', NULL, '2021-04-27 15:31:17', 0, '144.48.112.38', ''),
(922, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321111', NULL, '2021-04-27 15:31:21', 0, '144.48.112.38', ''),
(923, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV030421115', NULL, '2021-04-27 15:31:27', 0, '144.48.112.38', ''),
(924, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321173', NULL, '2021-04-27 15:31:30', 0, '144.48.112.38', ''),
(925, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321109', NULL, '2021-04-27 15:31:36', 0, '144.48.112.38', ''),
(926, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321137', NULL, '2021-04-27 15:31:44', 0, '144.48.112.38', ''),
(927, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321136', NULL, '2021-04-27 15:31:50', 0, '144.48.112.38', ''),
(928, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321110', NULL, '2021-04-27 15:31:55', 0, '144.48.112.38', ''),
(929, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321132', NULL, '2021-04-27 15:32:02', 0, '144.48.112.38', ''),
(930, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321133', NULL, '2021-04-27 15:32:12', 0, '144.48.112.38', ''),
(931, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321134', NULL, '2021-04-27 15:32:16', 0, '144.48.112.38', ''),
(932, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321135', NULL, '2021-04-27 15:32:21', 0, '144.48.112.38', ''),
(933, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321108', NULL, '2021-04-27 15:32:25', 0, '144.48.112.38', ''),
(934, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321130', NULL, '2021-04-27 15:32:29', 0, '144.48.112.38', ''),
(935, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321131', NULL, '2021-04-27 15:32:35', 0, '144.48.112.38', ''),
(936, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321107', NULL, '2021-04-27 15:32:39', 0, '144.48.112.38', ''),
(937, 1, 'PAY', 'Payment has been deleted', NULL, 'Payment no: PAV310321129', NULL, '2021-04-27 15:32:48', 0, '144.48.112.38', ''),
(938, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-01 11:06:28', 0, '144.48.112.38', ''),
(939, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-01 11:56:10', 0, '144.48.112.38', ''),
(940, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-05-01 11:56:38', 0, '144.48.112.38', ''),
(941, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-01 11:57:04', 3, '144.48.112.38', ''),
(942, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-03 16:04:28', 0, '144.48.112.38', ''),
(943, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-05 03:45:20', 0, '103.237.78.66', ''),
(944, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully logout', 'বাহির সফল হয়েছে।', '2021-05-05 03:46:37', 0, '103.237.78.66', ''),
(945, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-13 23:39:53', 0, '43.246.201.250', ''),
(946, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-14 00:03:28', 0, '43.246.201.250', ''),
(947, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-14 08:43:48', 0, '43.246.201.255', ''),
(948, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-16 11:59:09', 0, '43.246.201.245', ''),
(949, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-20 21:22:56', 0, '103.60.175.252', ''),
(950, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-25 11:13:39', 0, '103.147.166.32', ''),
(951, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-25 12:25:44', 0, '103.147.166.32', ''),
(952, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-25 17:17:22', 0, '103.147.166.32', ''),
(953, 1, 'GRO', 'New account group has been created', NULL, 'Account Group name: Cash In Bank', NULL, '2021-05-25 17:41:56', 0, '103.147.166.32', ''),
(954, 1, 'ASG', 'New account sub-group has been created', NULL, 'Account Sub-Group name: Cash', NULL, '2021-05-25 17:43:35', 0, '103.147.166.32', ''),
(955, 1, 'LED', 'New ledger has been created', NULL, 'Ledger name: Petty Cash', NULL, '2021-05-25 17:48:48', 0, '103.147.166.32', ''),
(956, 1, 'LED', 'New ledger has been created', NULL, 'Ledger name: Tasma Amat Eva', NULL, '2021-05-25 17:52:37', 0, '103.147.166.32', ''),
(957, 1, 'JOU', 'Journal has been Added', NULL, 'Journal No: JOU250521101', NULL, '2021-05-25 17:54:41', 0, '103.147.166.32', ''),
(958, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-26 21:46:12', 0, '180.211.242.108', ''),
(959, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-29 10:35:57', 0, '103.60.175.222', ''),
(960, 1, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-29 10:36:06', 0, '103.60.175.222', ''),
(961, 2, 'LOG', 'Login Record', 'লগইন রেকর্ড', 'Successfully login.', 'প্রবেশ সফল হয়েছে।', '2021-05-29 11:15:31', 3, '144.48.112.38', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bacount`
--

CREATE TABLE `tbl_bacount` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `branch` varchar(45) DEFAULT NULL,
  `bbranch` varchar(255) DEFAULT NULL,
  `acno` varchar(25) NOT NULL,
  `title` varchar(45) NOT NULL,
  `location` varchar(250) NOT NULL,
  `brcode` varchar(6) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bacount`
--

INSERT INTO `tbl_bacount` (`id`, `bid`, `branch`, `bbranch`, `acno`, `title`, `location`, `brcode`, `uid`, `date`) VALUES
(1, 2, 'Khilgaon Taltola SME Branch', NULL, '1529101961870001', 'Md.Nur-e-Alam Bhuiyan', 'Khilgaon Taltola', '1529', 1, '2020-04-07 11:17:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_badstockclaim`
--

CREATE TABLE `tbl_badstockclaim` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `type` varchar(2) NOT NULL,
  `supid` int(11) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `note` varchar(255) NOT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id` int(11) NOT NULL,
  `sort` varchar(6) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`id`, `sort`, `name`, `bname`, `uid`, `date`) VALUES
(1, 'DBBL', 'Dutch-Bangla Bank', NULL, 1, '2020-04-07 07:49:54'),
(2, 'BBL', 'BRAC Bank Limited', NULL, 1, '2020-04-07 08:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banktra`
--

CREATE TABLE `tbl_banktra` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `amount` double(12,2) NOT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banktrade`
--

CREATE TABLE `tbl_banktrade` (
  `id` int(11) NOT NULL,
  `seid` int(11) NOT NULL,
  `brid` int(11) DEFAULT 0,
  `cid` int(11) NOT NULL,
  `cty` varchar(2) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `did` int(11) NOT NULL,
  `dty` varchar(2) NOT NULL,
  `cheno` varchar(20) DEFAULT NULL,
  `chedt` date DEFAULT NULL,
  `chest` int(11) DEFAULT NULL,
  `ref` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

CREATE TABLE `tbl_branch` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `phone` varchar(18) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_branch`
--

INSERT INTO `tbl_branch` (`id`, `name`, `bname`, `address`, `baddress`, `phone`, `email`, `image`, `uid`, `date`) VALUES
(1, 'Lightmix BD Ltd.', 'আগারগাঁও', '44/27, North Dhanmondi, Dhaka', 'বি-৩৫০, মারপুর  আগারগাঁও, ঢাকা-১০১৪', '01727368164', '', NULL, 1, '2020-05-09 06:30:59'),
(2, 'Regency Homes &amp; Engineering Ltd.', 'আরশিনগর', '56/F1, Box Culvert Road, Kalabagan Dhaka', '১০০/৬, জাওচর, কেরানিগন্জ, ঢাকা।', '01920729893', '', NULL, 1, '2020-05-31 07:22:33'),
(3, 'Rm Construction', NULL, '44/27, North Dhanmondi, Dhaka-1205.', NULL, '0165478453', '', NULL, 1, '2021-03-09 11:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `id` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`id`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, 'Samsung', NULL, 'Multi kind Electronics Product\r\n', 1, '2020-04-05 04:55:08'),
(2, 'Sony', NULL, 'Multi Type of Product', 1, '2020-04-05 04:55:32'),
(4, 'LG', NULL, 'Life is Good', 1, '2020-04-05 05:19:35'),
(5, 'Asus', NULL, 'Asus', 1, '2020-05-03 05:02:28'),
(6, 'Dell', NULL, 'Dell', 1, '2020-05-03 05:03:10'),
(7, 'Transcend', NULL, 'Transcend', 1, '2020-05-03 05:03:44'),
(8, 'A4 Tech', NULL, 'A4 Tech', 1, '2020-05-07 03:57:06'),
(9, 'A. TECH', NULL, 'A. TECH', 1, '2020-05-07 04:00:01'),
(10, 'A ONE TECH', NULL, 'A ONE TECH', 1, '2020-05-07 04:01:03'),
(11, 'ADATA', NULL, 'ADATA', 1, '2020-05-07 04:01:30'),
(12, 'ACER', NULL, 'ACER', 1, '2020-05-07 04:01:59'),
(13, 'AC-NET', NULL, 'AC-NET', 1, '2020-05-07 04:02:52'),
(14, 'ADP', NULL, 'ADP', 1, '2020-05-07 04:03:22'),
(15, 'AIR MEDIA', NULL, 'AIR MEDIA', 1, '2020-05-07 04:03:58'),
(16, 'ALIEN', NULL, 'ALIEN', 1, '2020-05-07 04:04:32'),
(17, 'AMP', NULL, 'AMP', 1, '2020-05-07 04:04:59'),
(18, 'ANTEC', NULL, 'ANTEC', 1, '2020-05-07 04:05:53'),
(19, 'ALTECH LANSING', NULL, 'ALTECH LANSING', 1, '2020-05-07 04:06:48'),
(20, 'AMD', NULL, 'AMD', 1, '2020-05-07 04:07:30'),
(21, 'AOC', NULL, 'AOC', 1, '2020-05-07 04:07:55'),
(22, 'APACER', NULL, 'APACER', 1, '2020-05-07 04:08:19'),
(23, 'APOLLO', NULL, 'APOLLO', 1, '2020-05-07 04:08:38'),
(24, 'APPLE', NULL, 'APPLE', 1, '2020-05-07 04:09:04'),
(25, 'APTECH', NULL, 'APTECH', 1, '2020-05-07 04:09:28'),
(26, 'ASROCK', NULL, 'ASROCK', 1, '2020-05-07 04:10:03'),
(27, 'ATS', NULL, 'ATS', 1, '2020-05-07 04:12:02'),
(28, 'AVER MEDIA', NULL, 'AVER MEDIA', 1, '2020-05-07 04:12:35'),
(29, 'BANGLALION WI MAX', NULL, 'BANGLALION WI MAX', 1, '2020-05-07 04:13:01'),
(30, 'BANGO', NULL, 'BANGO', 1, '2020-05-07 04:13:35'),
(31, 'BRB', NULL, 'BRB', 1, '2020-05-07 04:13:59'),
(32, 'BEATS', NULL, 'BEATS', 1, '2020-05-07 04:17:19'),
(33, 'BELKIN', NULL, 'BELKIN', 1, '2020-05-07 04:17:43'),
(34, 'BENQ', NULL, 'BENQ', 1, '2020-05-07 04:18:24'),
(35, 'BIOSTAR', NULL, 'BIOSTAR', 1, '2020-05-07 04:18:54'),
(36, 'BITDEFENDER', NULL, 'BITDEFENDER', 1, '2020-05-07 04:19:50'),
(37, 'BLACK CAT', NULL, 'BLACK CAT', 1, '2020-05-07 04:20:14'),
(38, 'BLUE SKY', NULL, 'BLUE SKY', 1, '2020-05-07 04:20:43'),
(39, 'BOSS', NULL, 'BOSS', 1, '2020-05-07 04:21:31'),
(40, 'CAMRY', NULL, 'CAMRY', 1, '2020-05-07 04:22:12'),
(41, 'CANON', NULL, 'CANON', 1, '2020-05-07 04:25:31'),
(42, 'CHAVER', NULL, 'CHAVER', 1, '2020-05-07 04:25:58'),
(43, 'CISCO', NULL, 'CISCO', 1, '2020-05-07 04:26:24'),
(44, 'CLASSIC', NULL, 'CLASSIC', 1, '2020-05-07 04:26:55'),
(45, 'COLORFUL', NULL, 'COLORFUL', 1, '2020-05-07 04:27:21'),
(46, 'COLORZER', NULL, 'COLORZER', 1, '2020-05-07 04:27:50'),
(47, 'COOLER MASTER', NULL, 'COOLER MASTER', 1, '2020-05-07 04:28:25'),
(48, 'COMPRO', NULL, 'COMPRO', 1, '2020-05-07 04:28:51'),
(49, 'CORSAIR', NULL, 'CORSAIR', 1, '2020-05-07 04:32:10'),
(50, 'COSONIC', NULL, 'COSONIC', 1, '2020-05-07 04:32:35'),
(51, 'CREATIVE', NULL, 'CREATIVE', 1, '2020-05-07 04:32:55'),
(52, 'CROSS', NULL, 'CROSS', 1, '2020-05-07 04:33:20'),
(53, 'DAHUA', NULL, 'DAHUA', 1, '2020-05-07 04:34:53'),
(54, 'DANIEL', NULL, 'DANIEL', 1, '2020-05-07 04:35:22'),
(55, 'DIAMAC', NULL, 'DIAMAC', 1, '2020-05-07 04:36:10'),
(56, 'DIAMOND', NULL, 'DIAMOND', 1, '2020-05-07 04:36:37'),
(57, 'DIGILINK', NULL, 'DIGILINK', 1, '2020-05-07 04:37:03'),
(58, 'DIGITECH', NULL, 'DIGITECH', 1, '2020-05-07 04:37:28'),
(59, 'D-LINK', NULL, 'D-LINK', 1, '2020-05-07 04:37:50'),
(60, 'DTECH', NULL, 'DTECH', 1, '2020-05-07 04:38:21'),
(61, 'EPSON', NULL, 'EPSON', 1, '2020-05-07 04:38:57'),
(62, 'ESONIC', NULL, 'ESONIC', 1, '2020-05-07 04:39:22'),
(63, 'ESET', NULL, 'ESET', 1, '2020-05-07 04:39:51'),
(64, 'EURO', NULL, 'EURO', 1, '2020-05-07 04:40:25'),
(65, 'EXPRESS', NULL, 'EXPRESS', 1, '2020-05-07 04:40:46'),
(66, 'EYESEE', NULL, 'EYESEE', 1, '2020-05-07 04:41:13'),
(68, 'FANTECH', NULL, 'FANTECH', 1, '2020-05-07 04:42:01'),
(69, 'FAST POWER', NULL, 'FAST POWER', 1, '2020-05-07 04:42:21'),
(70, 'FAST PRINT', NULL, 'FAST PRINT', 1, '2020-05-07 04:42:42'),
(71, 'FINE PIXEL', NULL, 'FINE PIXEL', 1, '2020-05-07 04:43:01'),
(72, 'FINE PRINT', NULL, 'FINE PRINT', 1, '2020-05-07 04:43:25'),
(73, 'FUJITSU', NULL, 'FUJITSU', 1, '2020-05-07 04:43:55'),
(74, 'FULLMARK', NULL, 'FULLMARK', 1, '2020-05-07 04:44:34'),
(75, 'GADMEI', NULL, 'GADMEI', 1, '2020-05-07 04:44:56'),
(76, 'GIGABYTE', NULL, 'GIGABYTE', 1, '2020-05-07 04:45:17'),
(77, 'GAMDIAS', NULL, 'GAMDIAS', 1, '2020-05-07 04:45:38'),
(78, 'G &amp; G', NULL, 'G &amp; G', 1, '2020-05-07 04:46:06'),
(79, 'GP', NULL, 'GP', 1, '2020-05-07 04:46:26'),
(80, 'GATEWAY', NULL, 'GATEWAY', 1, '2020-05-07 04:46:50'),
(81, 'GEIL', NULL, 'GEIL', 1, '2020-05-07 04:47:26'),
(82, 'GENERAL', NULL, 'GENERAL', 1, '2020-05-07 04:47:47'),
(83, 'GOLDEN FIELD', NULL, 'GOLDEN FIELD', 1, '2020-05-07 04:48:10'),
(84, 'G.SKILL', NULL, 'G.SKILL', 1, '2020-05-07 04:48:35'),
(85, 'HAVIT', NULL, 'HAVIT', 1, '2020-05-07 04:49:16'),
(86, 'HELLO BAGS', NULL, 'HELLO BAGS', 1, '2020-05-07 04:50:08'),
(87, 'HGST', NULL, 'HGST', 1, '2020-05-07 05:24:14'),
(88, 'HI-SPEED', NULL, 'HI-SPEED', 1, '2020-05-07 05:24:42'),
(89, 'HIKVISION', NULL, 'HIKVISION', 1, '2020-05-07 06:04:55'),
(90, 'HITACHE', NULL, 'HITACHE', 1, '2020-05-07 06:05:09'),
(91, 'HONEY WELL', NULL, 'HONEY WELL', 1, '2020-05-07 06:05:23'),
(92, 'HUNTKEY', NULL, 'HUNTKEY', 1, '2020-05-07 06:05:36'),
(93, 'HP', NULL, 'HP', 1, '2020-05-07 06:05:49'),
(94, 'HUAWEI', NULL, 'HUAWEI', 1, '2020-05-07 06:05:59'),
(95, 'HYNIX', NULL, 'HYNIX', 1, '2020-05-07 06:06:11'),
(96, 'IBM', NULL, 'IBM', 1, '2020-05-07 06:06:24'),
(97, 'INFORMATE', NULL, 'INFORMATE', 1, '2020-05-07 06:06:36'),
(98, 'INTEX', NULL, 'INTEX', 1, '2020-05-07 06:06:48'),
(99, 'IVERSION', NULL, 'IVERSION', 1, '2020-05-07 06:07:02'),
(100, 'IVOOMI', NULL, 'IVOOMI', 1, '2020-05-07 06:07:15'),
(101, 'INTEL', NULL, 'INTEL', 1, '2020-05-07 06:07:32'),
(102, 'JOVISION', NULL, 'JOVISION', 1, '2020-05-07 06:07:48'),
(103, 'JBL', NULL, 'JBL', 1, '2020-05-07 06:08:09'),
(104, 'JTEC', NULL, 'JTEC', 1, '2020-05-07 06:08:25'),
(105, 'KASPARSKY', NULL, 'KASPARSKY', 1, '2020-05-07 06:08:40'),
(106, 'KANGAROO', NULL, 'KANGAROO', 1, '2020-05-07 06:08:58'),
(107, 'KINGSTONE', NULL, 'KINGSTONE', 1, '2020-05-07 06:09:09'),
(108, 'LANOVO', NULL, 'LANOVO', 1, '2020-05-07 06:10:23'),
(109, 'LITON', NULL, 'LITON', 1, '2020-05-07 06:10:47'),
(110, 'LITHIUM', NULL, 'LITHIUM', 1, '2020-05-07 06:11:20'),
(111, 'LONG', NULL, 'LONG', 1, '2020-05-07 06:11:31'),
(112, 'LOGITECH', NULL, 'LOGITECH', 1, '2020-05-07 06:11:45'),
(113, 'MAXELL', NULL, 'MAXELL', 1, '2020-05-07 06:12:00'),
(114, 'MICRONET', NULL, 'MICRONET', 1, '2020-05-07 06:12:13'),
(115, 'MICROLAB', NULL, 'MICROLAB', 1, '2020-05-07 06:12:26'),
(116, 'MICROSOFT', NULL, 'MICROSOFT', 1, '2020-05-07 06:12:49'),
(117, 'MAC BOOK', NULL, 'MAC BOOK', 1, '2020-05-07 06:13:02'),
(118, 'MANGO', NULL, 'MANGO', 1, '2020-05-07 06:13:17'),
(119, 'NETGEAR', NULL, 'NETGEAR', 1, '2020-05-07 06:13:37'),
(120, 'NEWMAN', NULL, 'NEWMAN', 1, '2020-05-07 06:22:44'),
(121, 'NICE POWER', NULL, 'NICE POWER', 1, '2020-05-07 06:23:00'),
(122, 'NICE PRINT', NULL, 'NICE PRINT', 1, '2020-05-07 06:23:24'),
(123, 'NORTON', NULL, 'NORTON', 1, '2020-05-07 06:23:43'),
(124, 'OLIMPUS', NULL, 'OLIMPUS', 1, '2020-05-07 06:24:00'),
(125, 'OPENTECH', NULL, 'OPENTECH', 1, '2020-05-07 06:24:19'),
(126, 'ORANGE', NULL, 'ORANGE', 1, '2020-05-07 06:24:30'),
(127, 'ORICO', NULL, 'ORICO', 1, '2020-05-07 06:24:43'),
(128, 'OVO', NULL, 'OVO', 1, '2020-05-07 06:25:03'),
(129, 'OSAKA', NULL, 'OSAKA', 1, '2020-05-07 06:25:14'),
(130, 'OTG', NULL, 'OTG', 1, '2020-05-07 06:25:27'),
(131, 'PANDA', NULL, 'PANDA', 1, '2020-05-07 06:25:42'),
(132, 'PARFECT', NULL, 'PARFECT', 1, '2020-05-07 06:25:54'),
(133, 'PATRIOT', NULL, 'PATRIOT', 1, '2020-05-07 06:26:07'),
(134, 'PC POWER', NULL, 'PC POWER', 1, '2020-05-07 06:26:26'),
(135, 'PANASONIC', NULL, 'PANASONIC', 1, '2020-05-07 06:26:43'),
(136, 'PHILIPS', NULL, 'PHILIPS', 1, '2020-05-07 06:26:54'),
(137, 'PNY', NULL, 'PNY', 1, '2020-05-07 06:29:26'),
(138, 'POWER BANK', NULL, 'POWER BANK', 1, '2020-05-07 06:29:38'),
(139, 'POWER PAC', NULL, 'POWER PAC', 1, '2020-05-07 06:29:50'),
(140, 'POWER GUARD', NULL, 'POWER GUARD', 1, '2020-05-07 06:30:03'),
(141, 'POWER PRINT', NULL, 'POWER PRINT', 1, '2020-05-07 06:30:15'),
(142, 'POWER VOULT', NULL, 'POWER VOULT', 1, '2020-05-07 06:30:27'),
(143, 'PROLINK', NULL, 'PROLINK', 1, '2020-05-07 06:30:39'),
(144, 'QUBEE', NULL, 'QUBEE', 1, '2020-05-07 06:30:51'),
(145, 'QUEEN', NULL, 'QUEEN', 1, '2020-05-07 06:31:05'),
(146, 'RANGER', NULL, 'RANGER', 1, '2020-05-07 06:31:16'),
(147, 'RAPOO', NULL, 'RAPOO', 1, '2020-05-07 06:31:26'),
(148, 'REAL COLOR', NULL, 'REAL COLOR', 1, '2020-05-07 06:31:38'),
(149, 'REAL MEDIA', NULL, 'REAL MEDIA', 1, '2020-05-07 06:31:48'),
(150, 'REAL VIEW', NULL, 'REAL VIEW', 1, '2020-05-07 06:31:58'),
(151, 'SAFEWAY', NULL, 'SAFEWAY', 1, '2020-05-07 06:32:10'),
(152, 'SAPPHIR', NULL, 'SAPPHIR', 1, '2020-05-07 06:32:39'),
(153, 'SEAGATE', NULL, 'SEAGATE', 1, '2020-05-07 06:32:53'),
(154, 'SHARP', NULL, 'SHARP', 1, '2020-05-07 06:33:07'),
(155, 'SILICON POWER', NULL, 'SILICON POWER', 1, '2020-05-07 06:33:18'),
(156, 'SKY TECH', NULL, 'SKY TECH', 1, '2020-05-07 06:33:34'),
(157, 'SONIC GEAIR', NULL, 'SONIC GEAIR', 1, '2020-05-08 11:17:05'),
(158, 'SPACE', NULL, 'SPACE', 1, '2020-05-08 11:17:32'),
(159, 'SPEED', NULL, 'SPEED', 1, '2020-05-08 11:17:44'),
(160, 'STAR SONIC', NULL, 'STAR SONIC', 1, '2020-05-08 11:17:55'),
(161, 'SUPER SONIC', NULL, 'SUPER SONIC', 1, '2020-05-08 11:18:08'),
(162, 'TEAM', NULL, 'TEAM', 1, '2020-05-08 11:18:19'),
(163, 'TWINMOS', NULL, 'TWINMOS', 1, '2020-05-08 11:18:47'),
(164, 'THERMALTAKE', NULL, 'THERMALTAKE', 1, '2020-05-08 11:19:00'),
(165, 'TENDA', NULL, 'TENDA', 1, '2020-05-08 11:19:12'),
(166, 'TOTO LINK', NULL, 'TOTO LINK', 1, '2020-05-08 11:19:29'),
(167, 'TP-LINK', NULL, 'TP-LINK', 1, '2020-05-08 11:20:01'),
(168, 'TRENDNET', NULL, 'TRENDNET', 1, '2020-05-08 11:20:13'),
(169, 'TOSHIBA', NULL, 'TOSHIBA', 1, '2020-05-08 11:20:31'),
(170, 'UNITEK', NULL, 'UNITEK', 1, '2020-05-08 11:20:45'),
(171, 'VALUE-TOP', NULL, 'VALUE-TOP', 1, '2020-05-08 11:21:00'),
(172, 'VERBATIM', NULL, 'VERBATIM', 1, '2020-05-08 11:21:17'),
(173, 'VEWSONIC', NULL, 'VEWSONIC', 1, '2020-05-08 11:21:30'),
(174, 'VISION', NULL, 'VISION', 1, '2020-05-08 11:21:41'),
(175, 'VIVITECH', NULL, 'VIVITECH', 1, '2020-05-08 11:21:53'),
(176, 'WACOM', NULL, 'WACOM', 1, '2020-05-08 11:22:06'),
(177, 'WALTON', NULL, 'WALTON', 1, '2020-05-08 11:22:19'),
(178, 'WESTERN DIGITAL', NULL, 'WESTERN DIGITAL', 1, '2020-05-08 11:22:31'),
(179, 'WINDBIRD', NULL, 'WINDBIRD', 1, '2020-05-08 11:22:44'),
(180, 'XTREME', NULL, 'XTREME', 1, '2020-05-08 11:22:57'),
(181, 'X-LAB', NULL, 'X-LAB', 1, '2020-05-08 11:23:08'),
(182, 'YMAX', NULL, 'YMAX', 1, '2020-05-08 11:23:29'),
(183, 'ZEBEX', NULL, 'ZEBEX', 1, '2020-05-08 11:23:47'),
(184, 'ZEBRA', NULL, 'ZEBRA', 1, '2020-05-08 11:24:02'),
(185, 'ZOTEC', NULL, 'ZOTEC', 1, '2020-05-08 11:24:16'),
(186, 'LOGIC', NULL, 'LOGIC', 1, '2020-05-08 11:24:30'),
(187, 'NON BRAND', NULL, 'NON BRAND', 1, '2020-05-08 11:25:09'),
(188, 'FASTKEY', NULL, 'FASTKEY', 1, '2020-05-08 11:25:26'),
(189, 'DELUX', NULL, 'DELUX', 1, '2020-05-08 11:25:50'),
(190, 'LANJUE', NULL, 'LANJUE', 1, '2020-05-08 11:26:16'),
(191, 'THE BEST CHALLENGER', NULL, 'THE BEST CHALLENGER', 1, '2020-05-08 11:26:32'),
(192, 'MANY', NULL, 'MANY', 1, '2020-05-08 11:26:53'),
(193, 'OPULA', NULL, 'OPULA', 1, '2020-05-08 11:27:07'),
(194, 'NIKON', NULL, 'NIKON', 1, '2020-05-08 11:27:20'),
(195, 'YDD', NULL, 'YDD', 1, '2020-05-08 11:27:33'),
(196, 'COLOR LIFE', NULL, 'COLOR LIFE', 1, '2020-05-08 11:27:47'),
(197, 'AVIRA', NULL, 'AVIRA', 1, '2020-05-08 11:28:04'),
(198, 'ECS', NULL, 'ECS', 1, '2020-05-08 11:28:34'),
(199, 'ENERGIZER', NULL, 'ENERGIZER', 1, '2020-05-08 11:28:52'),
(200, 'DYNET', NULL, 'DYNET', 1, '2020-05-08 11:31:51'),
(201, 'REFILL INK', NULL, 'REFILL INK', 1, '2020-05-08 11:32:06'),
(202, 'INKJET REFILL INK', NULL, 'INKJET REFILL INK', 1, '2020-05-08 11:32:48'),
(203, 'MSI', NULL, 'MSI', 1, '2020-05-08 11:33:00'),
(204, 'XIONGYE', NULL, 'XIONGYE', 1, '2020-05-08 11:33:15'),
(205, 'ESCAN', NULL, 'ESCAN', 1, '2020-05-08 11:33:30'),
(206, 'ONE PLUS', NULL, 'ONE PLUS', 1, '2020-05-08 11:33:44'),
(207, 'SPEED STITCH', NULL, 'SPEED STITCH', 1, '2020-05-08 11:33:58'),
(208, 'NEW LEADER', NULL, 'NEW LEADER', 1, '2020-05-08 11:34:12'),
(209, 'SAN XUN', NULL, 'SAN XUN', 1, '2020-05-08 11:34:28'),
(210, 'WIRETEK', NULL, 'WIRETEK', 1, '2020-05-08 11:34:44'),
(211, 'WIN TECH', NULL, 'WIN TECH', 1, '2020-05-08 11:34:57'),
(212, 'COMMSCOPE', NULL, 'COMMSCOPE', 1, '2020-05-08 11:35:17'),
(213, 'SQUALL', NULL, 'SQUALL', 1, '2020-05-08 11:35:39'),
(214, 'SRC', NULL, 'SRC', 1, '2020-05-08 11:35:52'),
(215, 'ASTA', NULL, 'ASTA', 1, '2020-05-08 11:36:07'),
(216, 'COOLZER', NULL, 'COOLZER', 1, '2020-05-08 11:36:21'),
(217, 'LENOVO', NULL, 'LENOVO', 1, '2020-05-08 11:36:35'),
(218, 'COAXIAL CABLE', NULL, 'COAXIAL CABLE', 1, '2020-05-08 11:36:50'),
(219, 'SUNMOL', NULL, 'SUNMOL', 1, '2020-05-08 11:37:05'),
(220, '3G', NULL, '3G', 1, '2020-05-08 11:37:16'),
(221, 'SOSHINE', NULL, 'SOSHINE', 1, '2020-05-08 11:37:29'),
(222, 'F&amp;D', NULL, 'F&amp;D', 1, '2020-05-08 11:37:55'),
(223, 'SEWOO', NULL, 'SEWOO', 1, '2020-05-08 11:38:11'),
(224, 'CHINA', NULL, 'CHINA', 1, '2020-05-08 11:38:24'),
(225, 'PREMIUM', NULL, 'PREMIUM', 1, '2020-05-08 11:38:39'),
(226, 'MI', NULL, 'MI', 1, '2020-05-08 11:38:52'),
(227, 'SANDISK', NULL, 'SANDISK', 1, '2020-05-08 11:39:06'),
(228, 'PURPLE', NULL, 'PURPLE', 1, '2020-05-08 11:39:20'),
(229, 'KSTAR', NULL, 'KSTAR', 1, '2020-05-08 11:39:34'),
(230, 'PREMIER', NULL, 'PREMIER', 1, '2020-05-08 11:39:49'),
(231, 'ATOP', NULL, 'ATOP', 1, '2020-05-08 11:40:05'),
(232, 'NZXT', NULL, 'NZXT', 1, '2020-05-08 11:40:26'),
(233, 'UNIFI', NULL, 'UNIFI', 1, '2020-05-08 11:40:39'),
(234, 'SUPER VIEW', NULL, 'SUPER VIEW', 1, '2020-05-08 11:40:54'),
(235, 'UNICO', NULL, 'UNICO', 1, '2020-05-08 11:41:07'),
(236, 'FLOWER', NULL, 'FLOWER', 1, '2020-05-08 11:41:21'),
(237, 'CRYORIG', NULL, 'CRYORIG', 1, '2020-05-08 11:41:37'),
(238, 'HARMA', NULL, 'HARMA', 1, '2020-05-08 11:41:51'),
(239, 'MAX GREEN', NULL, 'MAX GREEN', 1, '2020-05-08 11:42:04'),
(240, 'THERMAL', NULL, 'THERMAL', 1, '2020-05-08 11:42:20'),
(241, 'LEVELONE', NULL, 'LEVELONE', 1, '2020-05-08 11:42:44'),
(242, 'MX', NULL, 'MX', 1, '2020-05-08 11:42:59'),
(243, 'TOTEN', NULL, 'TOTEN', 1, '2020-05-08 11:43:10'),
(244, 'EZVIZ', NULL, 'EZVIZ', 1, '2020-05-08 11:43:23'),
(245, 'UBUNTU', NULL, 'UBUNTU', 1, '2020-05-08 11:43:36'),
(246, 'WINDOWS', NULL, 'WINDOWS', 1, '2020-05-08 11:43:50'),
(247, 'MAC OS', NULL, 'MAC OS', 1, '2020-05-08 11:44:05'),
(248, 'OORINN', NULL, 'OORINN', 1, '2020-05-08 11:44:23'),
(249, 'SUPER', NULL, 'SUPER', 1, '2020-05-08 11:44:38'),
(250, 'MIKROTIK', NULL, 'MIKROTIK', 1, '2020-05-08 11:44:56'),
(251, 'VIVANCO', NULL, 'VIVANCO', 1, '2020-05-08 11:45:11'),
(252, 'SIYOTEAM', NULL, 'SIYOTEAM', 1, '2020-05-08 11:45:29'),
(253, 'IMOU', NULL, 'IMOU', 1, '2020-05-08 11:45:46'),
(254, 'TEUTONS', NULL, 'TEUTONS', 1, '2020-05-08 11:45:59'),
(255, 'DEEP', NULL, 'DEEP', 1, '2020-05-08 11:46:12'),
(256, 'BOSCH', NULL, 'BOSCH', 1, '2020-05-08 11:46:24'),
(257, 'DOPAH', NULL, 'DOPAH', 1, '2020-05-08 11:46:37'),
(258, 'Nestle', NULL, 'Nestle', 1, '2020-09-19 01:07:59'),
(259, 'Kodomo', NULL, 'Kodomo Baby Powder', 1, '2020-09-19 01:28:26'),
(260, 'Unilever', NULL, 'Unilever', 1, '2020-09-19 01:32:31'),
(261, 'Maxi', NULL, 'Maxi', 1, '2020-09-19 01:58:26'),
(262, 'Chu Chu', NULL, 'Chu Chu', 1, '2020-09-19 02:07:54'),
(263, 'Baby Wet Wipes', NULL, 'Baby Wet Wipes', 1, '2020-09-19 02:08:27'),
(264, 'CocaCola', NULL, 'CocaCola', 1, '2020-09-19 03:24:04');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tbl_brstock`
-- (See below for the actual view)
--
CREATE TABLE `tbl_brstock` (
`brid` int(11)
,`prjid` int(11)
,`pid` int(11)
,`name` varchar(65)
,`bname` varchar(255)
,`pcode` varchar(15)
,`image` varchar(50)
,`catid` int(11)
,`scatid` int(11)
,`brnid` int(11)
,`unqid` varchar(15)
,`code` varchar(15)
,`poqty` double
,`pqty` double
,`prqty` double
,`rcvqty` double
,`senqty` double
,`avpqty` double
,`soqty` double
,`sold` double
,`sloc` double
,`srqty` double
,`woqty` double
,`wrqty` double
,`fsqty` double
,`adjqty` double
,`avqty` double
,`status` int(1)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cashflow`
--

CREATE TABLE `tbl_cashflow` (
  `id` int(11) NOT NULL,
  `particular` varchar(45) DEFAULT NULL,
  `pino` varchar(25) DEFAULT NULL,
  `invno` varchar(25) DEFAULT NULL,
  `remarks` varchar(35) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `apdate` date NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `pid`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, NULL, 'Construction', NULL, '', 1, '2021-01-27 03:25:23'),
(2, NULL, 'Power', NULL, '', 1, '2021-01-27 03:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_chat`
--

CREATE TABLE `tbl_chat` (
  `id` int(11) NOT NULL,
  `joined` datetime NOT NULL,
  `online` tinyint(4) NOT NULL DEFAULT 1,
  `last_acive` datetime NOT NULL,
  `status` enum('0','1','2') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_color`
--

CREATE TABLE `tbl_color` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `sval` varchar(12) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_color`
--

INSERT INTO `tbl_color` (`id`, `name`, `bname`, `sval`, `uid`, `date`) VALUES
(1, 'Green', NULL, '#06e013', 1, '2020-04-10 11:14:49'),
(2, 'Red', NULL, '#f30c03', 1, '2020-04-10 11:16:11'),
(4, 'White', NULL, '#ffffff', 1, '2020-04-15 09:34:10'),
(5, 'Blue', NULL, '#0000ff', 1, '2020-04-15 09:34:57'),
(6, 'Lime', NULL, '#00ff00', 1, '2020-04-15 09:35:41'),
(7, 'Black', NULL, '#000000', 1, '2020-04-15 09:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `dialog` varchar(150) DEFAULT NULL,
  `bdialog` varchar(350) DEFAULT NULL,
  `mobile` varchar(18) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `web` varchar(35) DEFAULT NULL,
  `tin` varchar(15) DEFAULT NULL,
  `vat` varchar(15) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`id`, `name`, `bname`, `dialog`, `bdialog`, `mobile`, `phone`, `fax`, `email`, `web`, `tin`, `vat`, `address`, `baddress`, `logo`) VALUES
(1, 'RMC', 'RMC', 'A Comprehensive thought together, for better and individual growth.', NULL, '01616170070', '7217831', '7217831', 'RMConstruction@gmail.com', 'http://www.axesgl.com', '10-09-xxxxx', '', 'Panthopath', 'Panthopath', 'no_logo_1589308197.png');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tbl_comstock`
-- (See below for the actual view)
--
CREATE TABLE `tbl_comstock` (
`pid` int(11)
,`name` varchar(65)
,`bname` varchar(255)
,`code` varchar(15)
,`image` varchar(50)
,`poqty` double
,`pqty` double
,`prqty` double
,`soqty` double
,`sold` double
,`srqty` double
,`adjqty` double
,`avqty` double
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contractor`
--

CREATE TABLE `tbl_contractor` (
  `id` int(11) NOT NULL,
  `code` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 NOT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 DEFAULT NULL,
  `note` varchar(150) CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` int(11) NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contractor`
--

INSERT INTO `tbl_contractor` (`id`, `code`, `name`, `mobile`, `email`, `address`, `note`, `status`, `brid`, `uid`, `date`) VALUES
(3, 'ABA/CO/002', 'Cont. Abdur Rouf', '01712623126', '', 'chittagong', '', 1, 0, 1, '2021-02-23 03:47:34'),
(4, 'ABA/CO/003', 'Mizanur Rahman', '01812623126', '', 'Jessore', '', 1, 0, 1, '2021-02-23 03:48:40'),
(5, 'ABA/CO/004', 'Shahidullah Arefin', '01512623126', '', 'Khulna', '', 1, 0, 1, '2021-02-23 03:49:36'),
(6, 'ABA/CO/005', 'Jebel Goni', '153259900099', '', 'Dhaka', '', 1, 0, 1, '2021-02-23 07:45:35'),
(9, 'ABA/CO/006', 'Cont. Mansur', '018177199887', '', '', '', 1, 0, 1, '2021-03-24 02:31:47'),
(10, 'ABA/CO/007', 'Cont. Alim', '01716776655', '', '', '', 1, 0, 1, '2021-03-24 04:15:39'),
(11, 'ABA/CO/008', 'Sub Cont. Azmot', '01918776655', '', '', '', 1, 0, 1, '2021-04-03 10:35:31'),
(12, 'ABA/CO/009', 'Cont. Yeakub', '01917665544', '', '', '', 1, 3, 2, '2021-04-06 05:09:33'),
(13, 'ABA/CO/010', 'Cont. Saddam', '01871665544', '', '', '', 1, 3, 2, '2021-04-06 05:57:40'),
(14, 'ABA/CO/011', 'Cont. Nobir', '01819210671', '', '', '', 1, 3, 2, '2021-04-06 06:03:14'),
(15, 'ABA/CO/012', 'Cont. Nazir', '01819210670', '', '', '', 1, 3, 2, '2021-04-06 06:05:27'),
(16, 'ABA/CO/013', 'Cont. Shohidul', '01716554433', '', '', '', 1, 3, 2, '2021-04-06 06:29:39'),
(17, 'ABA/CO/014', 'Cont. Mostofa', '01765445566', '', '', '', 1, 3, 2, '2021-04-06 06:32:40'),
(19, 'ABA/CO/015', 'Cont. Faruk', '01817665544', '', '', '', 1, 3, 2, '2021-04-07 03:37:09'),
(20, 'ABA/CO/016', 'Cont. Kobir', '01716553322', '', '', '', 1, 3, 2, '2021-04-07 03:54:16'),
(21, 'ABA/CO/017', 'Cont. Shamim', '01917666669', '', '', '', 1, 3, 2, '2021-04-07 04:14:22'),
(22, 'ABA/CO/018', 'Cont. Nur Islam', '01716223151', '', '', '', 1, 3, 2, '2021-04-07 04:25:50'),
(23, 'ABA/CO/019', 'N/A', '01566151411', '', '', '', 1, 3, 2, '2021-04-07 04:49:09'),
(24, 'ABA/CO/020', 'Cont. Milkhan', '01817665511', '', '', '', 1, 3, 2, '2021-04-07 04:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int(11) NOT NULL,
  `name` varchar(65) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, 'Bangladesh', NULL, 'Bangladesh, to the east of India on the Bay of Bengal, is a South Asian country marked by lush greenery and many waterways. Its Padma (Ganges), Meghna and Jamuna rivers create fertile plains, and travel by boat is common. On the southern coast, the Sundarbans, an enormous mangrove forest shared with Eastern India, is home to the royal Bengal tiger.', 1, '2020-04-10 11:56:30'),
(2, 'China', NULL, 'China, officially the People\'s Republic of China, is a country in East Asia. It is the world\'s most populous country, with a population of around 1.428 billion in 2017. Covering approximately 9,600,000 square kilometers, it is the world\'s third-largest country by area.', 1, '2020-04-10 11:57:28'),
(3, 'Singapore', NULL, 'Singapore, an island city-state off southern Malaysia, is a global financial center with a tropical climate and multicultural population. Its colonial core centers on the Padang, a cricket field since the 1830s and now flanked by grand buildings such as City Hall, with its 18 Corinthian columns. ', 1, '2020-04-10 11:58:14'),
(4, 'United States', NULL, 'The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC.', 1, '2020-04-10 11:59:11'),
(5, 'Taiwan', NULL, 'Taiwan, officially the Republic of China, is a state in East Asia. Neighboring states include the People\'s Republic of China to the north-west, Japan to the north-east, and the Philippines to the south.', 1, '2020-04-10 12:10:19'),
(6, 'Hong Kong', NULL, 'Hong Kong, officially the Hong Kong Special Administrative Region of the People\'s Republic of China, is a city and special administrative region of China in the eastern Pearl River Delta by the South China Sea.', 1, '2020-04-10 12:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_currency`
--

CREATE TABLE `tbl_currency` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `sortn` varchar(4) NOT NULL,
  `symbol` varchar(12) NOT NULL,
  `xrate` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_currency`
--

INSERT INTO `tbl_currency` (`id`, `name`, `bname`, `sortn`, `symbol`, `xrate`, `status`, `uid`, `date`) VALUES
(1, 'Taka', 'টাকা', 'BDT', '৳', 1.00, 1, 1, '2020-04-09 08:56:40'),
(2, 'US Dollar', 'ইউ এস ডলার', 'USD', '$', 82.60, 0, 1, '2020-04-10 12:23:46'),
(3, 'Japan Yen', 'ইয়েন', 'JPY', '¥', 0.78, 0, 1, '2020-04-10 12:35:58'),
(4, 'Chinese Yuan', 'চাইনা ইউয়ান', 'CNY', '¥', 12.06, 0, 1, '2020-04-10 12:39:02'),
(5, 'Ringgit', 'রিংগিট', 'MYR', 'RM', 19.60, 0, 1, '2020-04-10 12:40:12'),
(6, ' Pound', 'পাউন্ড', 'GBP', '£', 105.83, 0, 1, '2020-04-10 12:41:30'),
(7, 'Euro', 'ইওরো', 'EUR', '€', 92.84, 0, 1, '2020-04-10 12:42:38'),
(8, 'Canadian Dollar', 'কানাডা ডলার', 'CAD', 'C$', 60.61, 0, 1, '2020-04-10 12:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `cperson` varchar(45) DEFAULT NULL,
  `bcperson` varchar(255) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `cnumber` varchar(18) NOT NULL,
  `cphone` varchar(14) DEFAULT NULL,
  `cemail` varchar(45) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `creditlimit` double DEFAULT 0,
  `crepreiod` int(11) NOT NULL DEFAULT 0,
  `address` varchar(200) DEFAULT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `saddress` varchar(200) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `zid` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `gid`, `code`, `name`, `bname`, `cperson`, `bcperson`, `mname`, `cnumber`, `cphone`, `cemail`, `nid`, `creditlimit`, `crepreiod`, `address`, `baddress`, `saddress`, `did`, `zid`, `rank`, `status`, `uid`, `date`) VALUES
(1, NULL, 'ABA/CU/001', 'Edot Co &amp; GP Combined  ', NULL, '', NULL, '', '01 871006767', '', '', NULL, 0, 0, '.Gulshan', NULL, '', NULL, NULL, 0, 1, 1, '2021-02-02 06:57:54'),
(2, NULL, 'ABA/CU/002', 'System BD', NULL, '', NULL, '', '01711694369', '', '', NULL, 0, 0, 'Banglamotor, Dhaka.', NULL, '', NULL, NULL, 0, 1, 1, '2021-02-02 06:59:15'),
(3, NULL, 'ABA/CU/003', 'Edot Co &amp; Banglalink Combined', NULL, '', NULL, '', '01711545699', '', '', NULL, 0, 0, 'Gulshan Dhaka.', NULL, '', NULL, NULL, 0, 1, 1, '2021-02-02 07:00:09'),
(4, NULL, 'ABA/CU/004', 'E.co', NULL, '', NULL, '', '0152369582', '', '', NULL, 0, 0, 'Dhaka', NULL, '', NULL, NULL, 0, 1, 1, '2021-02-23 06:46:22'),
(5, NULL, 'ABA/CU/005', 'R &amp; H', NULL, '', NULL, '', '0158625456', '', '', NULL, 0, 0, 'Dhaka.', NULL, '', NULL, NULL, 0, 1, 1, '2021-02-23 08:37:13'),
(6, NULL, 'ABA/CU/006', 'Edot Co Power Upgradation ', NULL, '', NULL, '', '01871006765', '', '', NULL, 0, 0, 'Gulshan-Dhaka', NULL, '', NULL, NULL, 0, 1, 2, '2021-04-06 05:18:13'),
(7, NULL, 'ABA/CU/007', 'PWD ', NULL, 'ABC', NULL, 'ABC', '019765433', '', '', NULL, 0, 0, 'ABC', NULL, 'ABC', NULL, NULL, 0, 1, 2, '2021-04-07 03:57:28'),
(8, NULL, 'ABA/CU/008', 'CHMES', NULL, 'ABC', NULL, 'ABC', '01614553344', '', '', NULL, 0, 0, 'ABC', NULL, '', NULL, NULL, 0, 1, 2, '2021-04-07 04:15:50'),
(9, NULL, 'ABA/CU/009', 'Grameen Phone Ltd.', NULL, 'ABC', NULL, 'ABC', '01615143141', '', '', NULL, 0, 0, 'ABC', NULL, '', NULL, NULL, 0, 1, 2, '2021-04-07 04:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_delivery`
--

CREATE TABLE `tbl_delivery` (
  `id` int(11) NOT NULL,
  `pino` varchar(25) DEFAULT NULL,
  `invno` varchar(25) NOT NULL,
  `esddate` date NOT NULL,
  `esadate` date NOT NULL,
  `blno` varchar(25) NOT NULL,
  `carrier` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, 'Marketing', NULL, 'Fro Expand Business Arena', 1, '2020-04-08 12:03:55'),
(2, 'Information Technology (IT)', NULL, 'For modern Information  and Technology', 1, '2020-04-08 12:04:19'),
(4, 'Sales', NULL, 'Sales', 7, '2020-07-23 04:34:36'),
(5, 'Accounts', NULL, 'Accounts', 7, '2020-07-23 04:35:00'),
(6, 'Administration', NULL, 'Administration', 7, '2020-07-23 05:22:38'),
(7, 'Engineering', NULL, 'Engineering', 1, '2021-02-25 04:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `id` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`id`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, 'Manager', NULL, 'Manage All Matter', 1, '2020-04-08 01:11:19'),
(3, 'Executive Officer', NULL, 'Execute All Order', 1, '2020-04-08 01:11:44'),
(4, 'IT Manager', NULL, 'IT Manager', 7, '2020-07-23 04:35:50'),
(5, 'IT Officer', NULL, 'IT Officer', 7, '2020-07-23 04:36:04'),
(6, 'Accounts Manager', NULL, 'Accounts Manager', 7, '2020-07-23 04:36:24'),
(7, 'Accounts Officer', NULL, 'Accounts Officer', 7, '2020-07-23 04:36:39'),
(8, 'Sales Executive', NULL, 'Sales Executive', 7, '2020-07-23 04:37:18'),
(9, 'Office Executive', NULL, 'Office Executive', 7, '2020-07-23 04:37:33'),
(10, 'Marketing Manager', NULL, 'Marketing Manager', 7, '2020-07-23 04:38:08'),
(11, 'Marketing Executive', NULL, 'Marketing Executive', 7, '2020-07-23 04:38:47'),
(12, 'Chairman', NULL, 'Chairman', 7, '2020-07-23 05:22:56'),
(13, 'Managing Director', NULL, 'Managing Director', 7, '2020-07-23 05:23:18'),
(14, 'General Manager', NULL, 'General Manager', 7, '2020-07-23 05:23:35'),
(15, 'Site Engineer ', NULL, '', 1, '2021-03-24 06:21:02'),
(16, 'Site Manager', NULL, '', 1, '2021-03-24 06:21:17'),
(17, 'Project Engineer', NULL, '', 1, '2021-03-24 06:21:40'),
(18, 'Technician', NULL, '', 1, '2021-04-03 10:06:58'),
(19, 'Project Co-Ordinator', NULL, '', 1, '2021-04-19 05:00:56'),
(20, 'Asst. Project Manager', NULL, '', 1, '2021-04-19 05:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposal`
--

CREATE TABLE `tbl_disposal` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `brwh` varchar(1) NOT NULL,
  `ibrid` int(11) NOT NULL,
  `type` varchar(2) DEFAULT NULL,
  `cusid` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `dtotal` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `note` varchar(350) NOT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `cid`, `name`, `bname`, `uid`, `date`) VALUES
(1, 1, 'Barguna', NULL, 6, '2020-07-12 03:11:57'),
(2, 1, 'Barisal', NULL, 6, '2020-07-12 03:12:22'),
(3, 1, 'Bhola', NULL, 6, '2020-07-12 03:12:46'),
(4, 1, 'Jhalokati', NULL, 6, '2020-07-12 03:13:17'),
(5, 1, 'Patuakhali', NULL, 6, '2020-07-12 03:13:45'),
(6, 1, 'Pirojpur', NULL, 6, '2020-07-12 03:14:11'),
(7, 1, 'Bandarban', NULL, 6, '2020-07-12 03:14:38'),
(8, 1, 'Brahmanbaria', NULL, 6, '2020-07-12 03:15:54'),
(9, 1, 'Chandpur', NULL, 6, '2020-07-12 03:16:26'),
(10, 1, 'Chittagong', NULL, 6, '2020-07-12 03:16:55'),
(11, 1, 'Comilla', NULL, 6, '2020-07-12 03:17:34'),
(12, 1, 'Cox\'s Bazar', NULL, 6, '2020-07-12 03:18:03'),
(13, 1, 'Feni', NULL, 6, '2020-07-12 03:18:29'),
(14, 1, 'Khagrachhari', NULL, 6, '2020-07-12 03:18:55'),
(15, 1, 'Lakshmipur', NULL, 6, '2020-07-12 03:19:19'),
(16, 1, 'Noakhali', NULL, 6, '2020-07-12 03:19:43'),
(17, 1, 'Rangamati', NULL, 6, '2020-07-12 03:20:13'),
(18, 1, 'Dhaka', NULL, 6, '2020-07-12 03:20:37'),
(19, 1, 'Faridpur', NULL, 6, '2020-07-12 03:20:57'),
(20, 1, 'Gazipur', NULL, 6, '2020-07-12 03:21:16'),
(21, 1, 'Gopalganj', NULL, 6, '2020-07-12 03:21:40'),
(22, 1, 'Kishoreganj', NULL, 6, '2020-07-12 03:22:20'),
(23, 1, 'Madaripur', NULL, 6, '2020-07-12 03:23:29'),
(24, 1, 'Manikganj', NULL, 6, '2020-07-12 03:23:56'),
(25, 1, 'Munshiganj', NULL, 6, '2020-07-12 03:24:17'),
(26, 1, 'Narayanganj', NULL, 6, '2020-07-12 03:24:37'),
(27, 1, 'Narsingdi ', NULL, 6, '2020-07-12 03:25:07'),
(28, 1, 'Rajbari', NULL, 6, '2020-07-12 03:25:31'),
(29, 1, 'Shariatpur', NULL, 6, '2020-07-12 03:25:58'),
(30, 1, 'Tangail', NULL, 6, '2020-07-12 03:28:13'),
(31, 1, 'Bagerhat', NULL, 6, '2020-07-12 03:28:36'),
(32, 1, 'Chuadanga', NULL, 6, '2020-07-12 03:29:16'),
(33, 1, 'Jessore', NULL, 6, '2020-07-12 03:30:02'),
(34, 1, 'Jhenaidah', NULL, 6, '2020-07-12 03:30:32'),
(35, 1, 'Khulna', NULL, 6, '2020-07-12 03:30:56'),
(36, 1, 'Kushtia', NULL, 6, '2020-07-12 03:31:37'),
(37, 1, 'Magura', NULL, 6, '2020-07-12 03:31:59'),
(38, 1, 'Meherpur', NULL, 6, '2020-07-12 03:32:20'),
(39, 1, 'Narail', NULL, 6, '2020-07-12 03:33:03'),
(40, 1, 'Satkhira', NULL, 6, '2020-07-12 03:33:32'),
(41, 1, 'Jamalpur', NULL, 6, '2020-07-12 03:33:53'),
(42, 1, 'Mymensingh', NULL, 6, '2020-07-12 03:34:12'),
(43, 1, 'Netrokona', NULL, 6, '2020-07-12 03:34:30'),
(44, 1, 'Sherpur', NULL, 6, '2020-07-12 03:34:49'),
(45, 1, 'Bogra', NULL, 6, '2020-07-12 03:35:07'),
(46, 1, 'Joypurhat', NULL, 6, '2020-07-12 03:35:32'),
(47, 1, 'Naogaon', NULL, 6, '2020-07-12 03:35:56'),
(48, 1, 'Natore', NULL, 6, '2020-07-12 03:36:19'),
(49, 1, 'Chapainawabganj', NULL, 6, '2020-07-12 03:36:50'),
(50, 1, 'Pabna', NULL, 6, '2020-07-12 03:37:05'),
(51, 1, 'Rajshahi', NULL, 6, '2020-07-12 03:37:27'),
(52, 1, 'Sirajgonj', NULL, 6, '2020-07-12 03:37:50'),
(53, 1, 'Dinajpur', NULL, 6, '2020-07-12 03:38:09'),
(54, 1, 'Gaibandha', NULL, 6, '2020-07-12 03:38:36'),
(55, 1, 'Kurigram', NULL, 6, '2020-07-12 03:38:58'),
(56, 1, 'Lalmonirhat', NULL, 6, '2020-07-12 03:39:21'),
(57, 1, 'Nilphamari', NULL, 6, '2020-07-12 03:39:43'),
(58, 1, 'Panchagarh', NULL, 6, '2020-07-12 03:40:28'),
(59, 1, 'Rangpur', NULL, 6, '2020-07-12 03:40:57'),
(60, 1, 'Thakurgaon', NULL, 6, '2020-07-12 03:41:20'),
(61, 1, 'Habiganj', NULL, 6, '2020-07-12 03:41:40'),
(62, 1, 'Moulvibazar', NULL, 6, '2020-07-12 03:42:09'),
(63, 1, 'Sunamganj', NULL, 6, '2020-07-12 03:42:33'),
(64, 1, 'Sylhet', NULL, 6, '2020-07-12 03:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employe`
--

CREATE TABLE `tbl_employe` (
  `id` int(11) NOT NULL,
  `dipid` int(11) NOT NULL,
  `desid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `bfname` varchar(255) DEFAULT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `bmname` varchar(255) DEFAULT NULL,
  `dob` date NOT NULL,
  `job` date NOT NULL,
  `code` varchar(8) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `address` varchar(250) DEFAULT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `paddress` varchar(250) DEFAULT NULL,
  `bpaddress` varchar(350) DEFAULT NULL,
  `mobile` varchar(18) NOT NULL,
  `phone` varchar(18) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `nidno` varchar(17) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `wbrid` int(11) DEFAULT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_employe`
--

INSERT INTO `tbl_employe` (`id`, `dipid`, `desid`, `name`, `bname`, `bfname`, `fname`, `mname`, `bmname`, `dob`, `job`, `code`, `salary`, `address`, `baddress`, `paddress`, `bpaddress`, `mobile`, `phone`, `email`, `nidno`, `image`, `status`, `wbrid`, `brid`, `uid`, `date`) VALUES
(9, 6, 13, 'Md. Mahbubul Alam ', NULL, NULL, 'Nur Hossain', 'Nur Jahan', NULL, '1971-01-02', '2010-03-02', 'EM-60001', 50000.00, '44/27 North Dhanmondi', NULL, 'Pachlia, Sirajgonj', NULL, '01713090680', '', '', '', NULL, 1, 0, 3, 2, '2021-04-19 04:40:48'),
(10, 7, 14, 'Md. Altaf Hossain   ', NULL, NULL, 'ABC', 'ABC', NULL, '1971-06-02', '2017-02-01', 'EM-70010', 60000.00, 'ABC', NULL, 'ABC', NULL, '01712096440', '', '', '', NULL, 1, 0, 0, 1, '2021-04-19 04:51:16'),
(11, 5, 14, 'Ifat Ara', NULL, NULL, 'Saleh Ahmed', 'Late. Tahura Akhter', NULL, '1975-02-06', '2020-09-01', 'EM-50011', 20000.00, '44/27, North Dhanmondi, Dhaka', NULL, '44/27, North Dhanmondi, Dhaka', NULL, '01711579312', '', '', '', NULL, 1, 0, 0, 1, '2021-04-19 04:57:34'),
(12, 7, 19, 'Md. Benzer Ahmed', NULL, NULL, 'ABC', 'ABC', NULL, '1989-03-01', '2018-02-01', 'EM-70012', 26000.00, 'ABC', NULL, 'ABC', NULL, '01828629519', '', '', '', NULL, 1, 0, 0, 1, '2021-04-19 05:02:55'),
(13, 7, 20, 'Md. Shahin Sarder', NULL, NULL, 'ABC', 'ABC', NULL, '1992-02-01', '2020-10-17', 'EM-70013', 20500.00, 'ABC', NULL, 'ABC', NULL, '01630941783', '', '', '', NULL, 1, 0, 0, 1, '2021-04-19 05:08:44'),
(14, 7, 20, 'Md. Liton Hasan', NULL, NULL, 'ABC', 'ABC', NULL, '1988-03-23', '2021-01-19', 'EM-70014', 20500.00, 'ABC', NULL, 'ABC', NULL, '01817223388', '', '', '', NULL, 1, 0, 0, 1, '2021-04-19 05:10:09'),
(15, 7, 16, 'Abdul Bariq', NULL, NULL, 'ABC', 'ABC', NULL, '1984-04-11', '2017-01-08', 'EM-70015', 14500.00, 'ABC', NULL, 'ABC', NULL, '01740566652', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:13:22'),
(16, 7, 16, 'Md. Mollik Nobir', NULL, NULL, 'ABC', 'ABC', NULL, '1989-02-01', '2018-02-20', 'EM-70016', 19000.00, 'ABC', NULL, 'ABC', NULL, '01742895959', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:39:01'),
(17, 7, 15, 'Tusher Kumar Paul', NULL, NULL, 'ABC', 'ABC', NULL, '1995-02-02', '2018-02-19', 'EM-70017', 14500.00, 'ABC', NULL, 'ABC', NULL, '01752962919', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:42:50'),
(18, 7, 15, 'Md. Shahin Alam', NULL, NULL, 'ABC', 'ABC', NULL, '1992-02-12', '2018-03-01', 'EM-70018', 15500.00, 'ABC', NULL, 'ABC', NULL, '01918177711', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:45:04'),
(19, 7, 15, 'Md. Hasmat Ali', NULL, NULL, 'ABC', 'ABC', NULL, '1989-02-16', '2020-01-06', 'EM-70019', 15500.00, 'ABC', NULL, 'ABC', NULL, '01738165299', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:46:39'),
(20, 7, 17, 'Md. Amin Uddin', NULL, NULL, 'ABC', 'ABC', NULL, '1986-02-01', '2020-02-24', 'EM-70020', 17500.00, 'ABC', NULL, 'ABC', NULL, '01757852128', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:49:27'),
(21, 7, 17, 'Abdul Latif', NULL, NULL, 'ABC', 'ABC', NULL, '1991-01-23', '2019-09-26', 'EM-70021', 17000.00, 'ABC', NULL, 'ABC', NULL, '01764747699', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:51:41'),
(22, 7, 17, 'Md. Abu Sayed', NULL, NULL, 'ABC', 'ABC', NULL, '1993-03-17', '2021-03-07', 'EM-70022', 18500.00, 'ABC', NULL, 'ABC', NULL, '01718617737', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:54:36'),
(23, 7, 15, 'Md. Rabiul Alom', NULL, NULL, 'ABC', 'ABC', NULL, '1993-02-04', '2020-01-23', 'EM-70023', 12500.00, 'ABC', NULL, 'ABC', NULL, '01774572818', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:57:02'),
(24, 7, 15, 'Zelhaq Rahman', NULL, NULL, 'ABC', 'ABC', NULL, '1996-02-13', '2020-02-08', 'EM-70024', 12500.00, 'ABC', NULL, 'ABC', NULL, '01788401003', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 05:59:06'),
(25, 7, 16, 'Suruzzaman', NULL, NULL, 'ABC', 'ABC', NULL, '1985-03-06', '2020-06-16', 'EM-70025', 16000.00, 'ABC', NULL, 'ABC', NULL, '01719270096', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 06:01:49'),
(26, 7, 15, 'Md. Sabbir Hossain', NULL, NULL, 'ABC', 'ABC', NULL, '1993-02-17', '2020-02-26', 'EM-70026', 12500.00, 'ABC', NULL, 'ABC', NULL, '01757959381', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 06:03:19'),
(27, 7, 15, 'Md. Nahidul Islam', NULL, NULL, 'ABC', 'ABC', NULL, '1993-01-13', '2019-09-08', 'EM-70027', 13000.00, 'ABC', NULL, 'ABC', NULL, '01727482804', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 06:05:20'),
(28, 7, 15, 'Md. Arif Hossain', NULL, NULL, 'ABC', 'ABC', NULL, '1991-02-12', '2020-10-29', 'EM-70028', 12500.00, 'ABC', NULL, 'ABC', NULL, '01861651056', '', '', '', NULL, 1, 3, 0, 1, '2021-04-19 06:06:56'),
(29, 7, 15, 'Md. Aminul Islam', NULL, NULL, 'ABC', 'ABC', NULL, '1989-12-07', '2020-12-25', 'EM-70029', 12500.00, 'ABC', NULL, 'ABC', NULL, '01716685188', '', '', '', NULL, 1, 3, 0, 1, '2021-04-24 10:54:31'),
(30, 7, 15, 'Abdur Razzak', NULL, NULL, 'ABC', 'ABC', NULL, '1993-02-16', '2020-11-25', 'EM-70030', 10500.00, 'ABC', NULL, 'ABC', NULL, '01984745950', '', '', '', NULL, 1, 3, 0, 1, '2021-04-24 10:56:22'),
(31, 7, 15, 'Md. Jahidul Islam Samrat', NULL, NULL, 'ABC', 'ABC', NULL, '1994-07-15', '2019-09-01', 'EM-70031', 10500.00, 'ABC', NULL, 'ABC', NULL, '01741537654', '', '', '', NULL, 1, 3, 0, 1, '2021-04-24 10:57:55'),
(32, 7, 15, 'A.N.M Salauddin', NULL, NULL, 'ABC', 'ABC', NULL, '1991-02-27', '2020-08-17', 'EM-70032', 14500.00, 'ABC', NULL, 'ABC', NULL, '01307455356', '', '', '', NULL, 1, 3, 0, 1, '2021-04-24 10:59:34'),
(33, 7, 15, 'Md. Mahbub Hasan Sawan', NULL, NULL, 'ABC', 'ABC', NULL, '1993-07-01', '2021-03-20', 'EM-70033', 13500.00, 'ABC', NULL, 'ABC', NULL, '01750685806', '', '', '', NULL, 1, 3, 0, 1, '2021-04-24 11:02:49'),
(34, 7, 15, 'Md. Lekhan Ali', NULL, NULL, 'ABC', 'ABC', NULL, '1995-06-01', '2021-03-08', 'EM-70034', 15500.00, 'ABC', NULL, 'ABC', NULL, '01738862583', '', '', '', NULL, 1, 3, 0, 1, '2021-04-26 03:03:13'),
(35, 7, 15, 'Md. Manik Mia', NULL, NULL, 'ABC', 'ABC', NULL, '1991-07-25', '2021-03-09', 'EM-70035', 10500.00, 'ABC', NULL, 'ABC', NULL, '01716554422', '', '', '', NULL, 1, 3, 0, 1, '2021-04-26 03:04:38'),
(36, 7, 15, 'Mahabur Rahman', NULL, NULL, 'ABC', 'ABC', NULL, '1993-05-04', '2021-03-16', 'EM-70036', 13500.00, 'ABC', NULL, 'ABC', NULL, '01764954900', '', '', '', NULL, 1, 3, 0, 1, '2021-04-26 03:10:02'),
(37, 7, 15, 'K M Nayemul Islam', NULL, NULL, 'ABC', 'ABC', NULL, '1991-02-03', '2021-03-23', 'EM-70037', 10500.00, 'ABC', NULL, 'ABC', NULL, '01783708310', '', '', '', NULL, 1, 3, 0, 1, '2021-04-26 03:12:56'),
(38, 7, 15, 'Md. Al Amin Mia', NULL, NULL, 'ABC', 'ABC', NULL, '1989-02-15', '2019-08-20', 'EM-70038', 20500.00, 'ABC', NULL, 'ABC', NULL, '01914451052', '', '', '', NULL, 1, 3, 0, 1, '2021-04-26 03:16:30'),
(39, 7, 9, 'Guard (Munshiganj)', NULL, NULL, 'ABC', 'ABC', NULL, '1983-06-15', '2019-08-17', 'EM-70039', 10000.00, 'ABC', NULL, 'ABC', NULL, '01918776622', '', '', '', NULL, 1, 3, 0, 1, '2021-04-26 03:18:24'),
(40, 7, 15, 'Md. Yousub Ali', NULL, NULL, 'ABC', 'ABC', NULL, '1989-02-02', '2020-03-10', 'EM-70040', 25000.00, 'ABC', NULL, 'ABC', NULL, '01738759375', '', '', '', NULL, 1, 3, 0, 1, '2021-04-26 03:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estimate`
--

CREATE TABLE `tbl_estimate` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `type` varchar(2) NOT NULL,
  `cusid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `itemdis` decimal(8,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(12,2) NOT NULL,
  `disp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `totdis` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `aitp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `aitamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `otname` varchar(35) NOT NULL,
  `otamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `freight` decimal(8,2) NOT NULL DEFAULT 0.00,
  `less` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL,
  `curid` int(11) NOT NULL,
  `ref` varchar(25) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `expdate` date DEFAULT NULL,
  `ocusname` varchar(35) DEFAULT NULL,
  `ocusmobile` varchar(18) DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `pdep` varchar(35) DEFAULT NULL,
  `paddress` varchar(150) DEFAULT NULL,
  `selp` int(11) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estimatede`
--

CREATE TABLE `tbl_estimatede` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `pid` int(11) NOT NULL,
  `unqid` varchar(15) NOT NULL,
  `colid` int(11) NOT NULL DEFAULT 0,
  `sizid` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(10,2) NOT NULL,
  `icdis` decimal(8,2) NOT NULL DEFAULT 0.00,
  `icinvdis` decimal(8,2) NOT NULL DEFAULT 0.00,
  `price` decimal(10,2) NOT NULL,
  `qty` double NOT NULL,
  `taxp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `taxamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `disp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `disf` decimal(8,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(12,2) NOT NULL,
  `wday` double NOT NULL DEFAULT 0,
  `pnote` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `apdate` datetime NOT NULL,
  `pjid` int(11) DEFAULT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_expenses`
--

INSERT INTO `tbl_expenses` (`id`, `invno`, `note`, `amount`, `apdate`, `pjid`, `brid`, `uid`, `date`) VALUES
(6, 'EXP250221101', '', 174810.00, '2020-12-17 00:00:00', NULL, 0, 1, '2021-02-25 04:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `id` int(11) NOT NULL,
  `invno` varchar(25) NOT NULL,
  `pino` varchar(25) NOT NULL,
  `curid` int(11) NOT NULL,
  `total` decimal(12,2) NOT NULL,
  `totcom` double(12,2) NOT NULL,
  `apdate` date NOT NULL,
  `packst` int(11) NOT NULL DEFAULT 0,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoicede`
--

CREATE TABLE `tbl_invoicede` (
  `id` int(11) NOT NULL,
  `brid` int(11) DEFAULT 0,
  `seid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `itemname` varchar(65) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `qty` double NOT NULL DEFAULT 0,
  `unit` int(11) NOT NULL,
  `subtot` decimal(12,2) NOT NULL DEFAULT 0.00,
  `cfamo` double NOT NULL DEFAULT 0,
  `tcamo` double NOT NULL DEFAULT 0,
  `ctns` double NOT NULL DEFAULT 0,
  `netw` double NOT NULL DEFAULT 0,
  `grow` decimal(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_item`
--

CREATE TABLE `tbl_item` (
  `id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(65) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `prid` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `scatid` int(11) DEFAULT NULL,
  `brid` int(11) DEFAULT NULL,
  `manid` int(11) DEFAULT NULL,
  `unid` int(11) DEFAULT NULL,
  `couid` int(11) DEFAULT NULL,
  `minstock` double NOT NULL DEFAULT 0,
  `barcode` varchar(25) DEFAULT NULL,
  `certificate` varchar(150) DEFAULT NULL,
  `modelno` varchar(25) DEFAULT NULL,
  `brandno` varchar(25) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `cost` decimal(12,2) NOT NULL DEFAULT 0.00,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `wday` double NOT NULL DEFAULT 0,
  `pmod` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_item`
--

INSERT INTO `tbl_item` (`id`, `code`, `name`, `bname`, `description`, `prid`, `catid`, `scatid`, `brid`, `manid`, `unid`, `couid`, `minstock`, `barcode`, `certificate`, `modelno`, `brandno`, `image`, `cost`, `price`, `wday`, `pmod`, `status`, `uid`, `date`) VALUES
(1, 'ABA001P', 'Brick', NULL, '', NULL, 1, NULL, NULL, NULL, 4, NULL, 0, '', '', '', '', NULL, 0.00, 0.00, 0, 0, 1, 1, '2021-01-27 03:28:08'),
(2, 'ABA002P', 'Sand', NULL, '', NULL, 1, NULL, NULL, NULL, 21, NULL, 0, '', '', '', '', NULL, 0.00, 0.00, 0, 0, 1, 1, '2021-01-27 03:29:22'),
(3, 'ABA003P', 'Khoa', NULL, '', NULL, 1, NULL, NULL, NULL, 22, NULL, 0, '', '', '', '', NULL, 0.00, 0.00, 0, 0, 1, 1, '2021-01-27 03:31:04'),
(4, 'ABA004P', 'Cement', NULL, '', NULL, 1, NULL, NULL, NULL, 23, NULL, 0, '', '', '', '', NULL, 0.00, 0.00, 0, 0, 1, 1, '2021-01-27 03:32:05'),
(5, 'ABA005P', 'Rod', NULL, '', NULL, 1, NULL, NULL, NULL, 24, NULL, 0, '', '', '', '', NULL, 0.00, 0.00, 0, 0, 1, 1, '2021-01-27 03:33:10'),
(8, 'ABA006P', 'Twill Tape', NULL, '', NULL, NULL, NULL, 25, NULL, 7, 2, 0, '', '', '', '', NULL, 0.00, 0.00, 0, 0, 1, 1, '2021-02-02 07:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_journal`
--

CREATE TABLE `tbl_journal` (
  `id` int(11) NOT NULL,
  `pjid` int(11) DEFAULT NULL,
  `invno` varchar(15) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_journal`
--

INSERT INTO `tbl_journal` (`id`, `pjid`, `invno`, `note`, `amount`, `apdate`, `brid`, `uid`, `date`) VALUES
(2, 44, 'JOU250521101', '', 5000.00, '2021-05-25', 0, 1, '2021-05-25 05:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_journalde`
--

CREATE TABLE `tbl_journalde` (
  `id` int(11) NOT NULL,
  `brid` int(11) DEFAULT 0,
  `seid` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `dtype` varchar(2) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `cid` int(11) NOT NULL,
  `ctype` varchar(2) NOT NULL,
  `cheno` varchar(20) DEFAULT NULL,
  `chedt` date DEFAULT NULL,
  `chest` int(11) DEFAULT NULL,
  `ref` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lcopen`
--

CREATE TABLE `tbl_lcopen` (
  `id` int(11) NOT NULL,
  `lcno` varchar(25) NOT NULL,
  `pino` varchar(25) NOT NULL,
  `doi` date NOT NULL,
  `expdate` date NOT NULL,
  `expdays` int(11) DEFAULT 0,
  `ldos` date NOT NULL,
  `apbank` varchar(150) NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave`
--

CREATE TABLE `tbl_leave` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_leave`
--

INSERT INTO `tbl_leave` (`id`, `name`, `bname`, `description`, `days`, `status`, `uid`, `date`) VALUES
(1, 'Casual Leave', NULL, 'Every Employee Get Maximum 15 Days Casual Leave', 15, 1, 1, '2020-04-08 10:48:30'),
(2, 'Holiday Leave', NULL, 'Every Employee Get Maximum 10 Days Holiday Leave', 10, 1, 1, '2020-04-08 10:48:30'),
(3, 'Sick Leave', NULL, '', 4, 1, 1, '2021-02-25 04:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leaverequest`
--

CREATE TABLE `tbl_leaverequest` (
  `id` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `lfrom` date NOT NULL,
  `lto` date NOT NULL,
  `ldays` int(11) NOT NULL DEFAULT 0,
  `empremarks` varchar(250) DEFAULT NULL,
  `adminremarks` varchar(250) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  `attfile` text NOT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tbl_ledger`
-- (See below for the actual view)
--
CREATE TABLE `tbl_ledger` (
`id` varchar(13)
,`code` varchar(15)
,`grid` int(11)
,`groups` varchar(35)
,`sgrid` int(11)
,`sgroup` varchar(35)
,`ledger` varchar(73)
,`clsid` int(11)
,`class` varchar(35)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_limitset`
--

CREATE TABLE `tbl_limitset` (
  `id` int(11) NOT NULL,
  `brlim` int(11) NOT NULL DEFAULT 0,
  `userlim` int(11) NOT NULL DEFAULT 5,
  `whlim` int(11) NOT NULL DEFAULT 1,
  `strDate` date NOT NULL,
  `expDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_limitset`
--

INSERT INTO `tbl_limitset` (`id`, `brlim`, `userlim`, `whlim`, `strDate`, `expDate`) VALUES
(1, 3, 5, 3, '2020-08-11', '2021-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loanid`
--

CREATE TABLE `tbl_loanid` (
  `id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `acno` varchar(25) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_loanid`
--

INSERT INTO `tbl_loanid` (`id`, `code`, `name`, `bname`, `type`, `acno`, `mobile`, `address`, `brid`, `uid`, `date`) VALUES
(1, 'LON001P', 'Azad Sir', '', 1, NULL, '01711556644', 'Dhaka', 3, 2, '2021-04-06 05:53:27'),
(2, 'LON002P', 'Md. Shahin Sardar', '', 1, NULL, '0191817171', '', 3, 2, '2021-04-07 05:05:04'),
(3, 'LON003P', 'Shahin Sir', '', 1, NULL, '01711562431', '', 3, 2, '2021-04-17 01:29:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manfacturer`
--

CREATE TABLE `tbl_manfacturer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `cperson` varchar(45) DEFAULT NULL,
  `bcperson` varchar(255) DEFAULT NULL,
  `cmobile` varchar(18) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `web` varchar(45) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `mainpro` varchar(350) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_messages`
--

CREATE TABLE `tbl_messages` (
  `message_id` int(11) NOT NULL,
  `from_id` varchar(40) NOT NULL,
  `to_id` varchar(50) NOT NULL,
  `from_uname` varchar(255) NOT NULL,
  `to_uname` varchar(255) NOT NULL,
  `message_content` text NOT NULL,
  `message_date` datetime NOT NULL,
  `recd` tinyint(4) NOT NULL DEFAULT 0,
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `message_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_note`
--

CREATE TABLE `tbl_note` (
  `id` int(11) NOT NULL,
  `title` varchar(35) NOT NULL,
  `note` varchar(250) NOT NULL,
  `isfav` varchar(1) NOT NULL DEFAULT 'N',
  `type` int(1) NOT NULL DEFAULT 0,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer`
--

CREATE TABLE `tbl_offer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(350) DEFAULT NULL,
  `percent` decimal(3,2) NOT NULL DEFAULT 0.00,
  `fixed` decimal(8,2) NOT NULL DEFAULT 0.00,
  `stdate` date NOT NULL,
  `endate` date NOT NULL,
  `aft` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_parent`
--

CREATE TABLE `tbl_parent` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payvoucher`
--

CREATE TABLE `tbl_payvoucher` (
  `id` int(11) NOT NULL,
  `pjid` int(11) DEFAULT NULL,
  `invno` varchar(15) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pdlirecord`
--

CREATE TABLE `tbl_pdlirecord` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) DEFAULT NULL,
  `ibrid` int(11) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_precrecord`
--

CREATE TABLE `tbl_precrecord` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) DEFAULT NULL,
  `ibrid` int(11) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_preturn`
--

CREATE TABLE `tbl_preturn` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) NOT NULL,
  `type` varchar(2) NOT NULL,
  `cusid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `itemdis` decimal(10,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(10,2) NOT NULL DEFAULT 0.00,
  `disp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(10,2) NOT NULL DEFAULT 0.00,
  `totdis` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `taxp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `taxamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `less` decimal(8,2) NOT NULL DEFAULT 0.00,
  `adjust` decimal(8,2) NOT NULL DEFAULT 0.00,
  `adamo` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `note` varchar(150) NOT NULL,
  `apdate` date NOT NULL,
  `nxtduedate` date DEFAULT NULL,
  `rawcash` decimal(12,2) NOT NULL DEFAULT 0.00,
  `changes` decimal(8,2) NOT NULL DEFAULT 0.00,
  `retp` int(11) DEFAULT NULL,
  `debitid` varchar(15) NOT NULL,
  `details` varchar(65) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prjtype`
--

CREATE TABLE `tbl_prjtype` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prjtype`
--

INSERT INTO `tbl_prjtype` (`id`, `name`, `description`, `brid`, `uid`, `date`) VALUES
(1, 'Civil Work', '', 0, 1, '2021-03-22 01:04:42'),
(2, 'Power Work', '', 0, 1, '2021-03-22 01:05:09'),
(4, 'Edot Co Power Upgradation ', '', 0, 1, '2021-03-24 02:26:11'),
(5, 'GP Power Upgradation ', '', 0, 1, '2021-03-24 02:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_procha`
--

CREATE TABLE `tbl_procha` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `pjid` int(11) NOT NULL,
  `prjid` int(11) NOT NULL,
  `name` varchar(65) CHARACTER SET utf8mb4 DEFAULT NULL,
  `amount` decimal(20,2) NOT NULL,
  `total` decimal(20,2) NOT NULL,
  `senderid` int(11) DEFAULT NULL,
  `note` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `ref` varchar(25) CHARACTER SET utf8mb4 DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_progroup`
--

CREATE TABLE `tbl_progroup` (
  `id` int(11) NOT NULL,
  `name` varchar(65) CHARACTER SET utf8mb4 NOT NULL,
  `code` varchar(6) CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_progroup`
--

INSERT INTO `tbl_progroup` (`id`, `name`, `code`, `description`, `brid`, `uid`, `date`) VALUES
(1, 'Tower', '', '', 0, 1, '2021-02-23 07:41:11'),
(2, 'Govt', '', '', 0, 1, '2021-02-23 07:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proinv`
--

CREATE TABLE `tbl_proinv` (
  `id` int(11) NOT NULL,
  `pino` varchar(25) NOT NULL,
  `cusid` int(11) NOT NULL,
  `cusname` varchar(45) NOT NULL,
  `supid` int(11) NOT NULL,
  `supname` varchar(45) NOT NULL,
  `curid` int(11) NOT NULL,
  `taxp` double NOT NULL DEFAULT 0,
  `taxamo` decimal(12,2) NOT NULL DEFAULT 0.00,
  `freight` decimal(12,2) NOT NULL DEFAULT 0.00,
  `insurance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `totcom` decimal(12,2) NOT NULL DEFAULT 0.00,
  `apdate` datetime NOT NULL,
  `dldate` date DEFAULT NULL,
  `dldays` int(11) DEFAULT 0,
  `country` int(11) DEFAULT NULL,
  `pofemb` varchar(150) DEFAULT NULL,
  `pofdis` varchar(150) DEFAULT NULL,
  `terms` varchar(650) DEFAULT NULL,
  `bfbank` varchar(45) DEFAULT NULL,
  `bfac` varchar(25) DEFAULT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proinvde`
--

CREATE TABLE `tbl_proinvde` (
  `id` int(11) NOT NULL,
  `brid` int(11) DEFAULT 0,
  `seid` int(11) NOT NULL,
  `itemid` int(11) DEFAULT NULL,
  `color` int(11) NOT NULL,
  `itemname` varchar(65) NOT NULL,
  `hscode` varchar(15) DEFAULT NULL,
  `qty` double NOT NULL DEFAULT 0,
  `unit` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(12,2) NOT NULL DEFAULT 0.00,
  `cfamo` decimal(12,2) NOT NULL DEFAULT 0.00,
  `cp` double NOT NULL DEFAULT 0,
  `tcamo` decimal(12,2) NOT NULL DEFAULT 0.00,
  `rcvqty` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `id` int(11) NOT NULL,
  `pgid` int(11) NOT NULL,
  `psgid` int(11) NOT NULL,
  `prjid` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `name` varchar(65) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cperson` varchar(35) CHARACTER SET utf8mb4 DEFAULT NULL,
  `cnumber` varchar(18) CHARACTER SET utf8mb4 DEFAULT NULL,
  `prjdetails` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `prjamount` decimal(20,2) NOT NULL DEFAULT 0.00,
  `prjexpamo` decimal(20,2) NOT NULL DEFAULT 0.00,
  `prjtype` int(1) DEFAULT 0,
  `coid` int(11) DEFAULT NULL,
  `coamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `client` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`id`, `pgid`, `psgid`, `prjid`, `name`, `address`, `cperson`, `cnumber`, `prjdetails`, `prjamount`, `prjexpamo`, `prjtype`, `coid`, `coamo`, `client`, `status`, `brid`, `uid`, `date`) VALUES
(1, 1, 1, '15462358IK', 'Townhall Road', 'Mohammadpur, Dhaka', 'Alim', '017825695', NULL, 3000000.00, 2500000.00, NULL, 3, 1000000.00, NULL, 0, 0, 1, '2021-02-23 07:49:16'),
(2, 1, 3, 'GP0001', 'M.pur Tower', 'Dhaka', 'Amaldin', '01712510050', NULL, 50000000.00, 6000000.00, NULL, 6, 40000000.00, NULL, 0, 0, 1, '2021-02-23 07:49:23'),
(3, 1, 1, 'RP0002', 'Rangpur Tower', 'Dhaka', 'abedin', '0171251000', NULL, 50000000.00, 7000000.00, NULL, 4, 350000000.00, NULL, 0, 0, 1, '2021-02-23 07:51:19'),
(4, 2, 7, '45896521', 'Golandomor To Rajbari', 'Rajbari', 'Anamul', '01712623126', NULL, 25000000.00, 20000000.00, NULL, 5, 15000000.00, NULL, 0, 0, 1, '2021-02-23 07:51:39'),
(5, 2, 6, '342392', 'LGED-Savar School', 'Savar', NULL, NULL, '342392,,,LGED-Savar School', 0.00, 0.00, NULL, 4, 900000.00, NULL, 0, 0, 1, '2021-02-25 04:09:21'),
(6, 2, 6, 'RTY-FGH-4563', 'Water Treatment', NULL, NULL, NULL, NULL, 750000.00, 650000.00, NULL, NULL, 0.00, 2, 3, 0, 1, '2021-03-03 03:08:21'),
(7, 1, 8, 'HGGUM1', 'Habiganj', NULL, 'Md. Rakib', NULL, NULL, 0.00, 0.00, NULL, 11, 100000.00, 1, 1, 0, 1, '2021-03-24 02:34:57'),
(8, 1, 8, 'DHUAA4', 'Dhaka Uttara', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 10, 140000.00, NULL, 1, 0, 1, '2021-03-24 04:23:38'),
(9, 1, 8, 'BRKRK1', 'Borguna', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 10, 100000.00, NULL, 1, 0, 1, '2021-03-31 04:16:55'),
(10, 1, 8, 'PTAGR2', 'Patuakhali', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 10, 117500.00, NULL, 1, 0, 1, '2021-03-31 04:48:14'),
(11, 1, 8, 'PTDKL2', 'Patuakhali', 'ABC', NULL, NULL, 'ABC', 0.00, 0.00, NULL, 10, 117500.00, NULL, 1, 0, 1, '2021-03-31 07:03:59'),
(12, 1, 8, 'SNSRH1', 'Sunamganj', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 11, 0.00, NULL, 1, 0, 1, '2021-04-03 10:36:47'),
(13, 1, 8, 'SNSPB1', 'Sunamganj', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 11, 0.00, NULL, 1, 0, 1, '2021-04-03 11:33:36'),
(14, 1, 8, 'HGANP1', 'Habiganj', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 12, 100000.00, 1, 1, 3, 2, '2021-04-06 05:21:38'),
(15, 1, 2, 'SYBLG06', 'Sylhet', NULL, 'Abu Sayed', NULL, NULL, 0.00, 0.00, NULL, 13, 0.00, 4, 1, 3, 2, '2021-04-06 05:58:33'),
(16, 1, 8, 'PTDGB1', 'Patuakhali', NULL, 'Md. Lekhan', NULL, NULL, 0.00, 0.00, NULL, 14, 0.00, 1, 1, 3, 2, '2021-04-06 06:04:01'),
(17, 1, 9, 'DHK6095', 'Dhaka', NULL, 'Abdur Razzak', NULL, NULL, 0.00, 0.00, NULL, 15, 105000.00, 3, 1, 3, 2, '2021-04-06 06:11:44'),
(18, 1, 8, 'JSSWP1', 'Jessore', NULL, 'Mollik Nobir', NULL, NULL, 0.00, 0.00, NULL, 14, 90000.00, 1, 1, 3, 2, '2021-04-06 06:17:40'),
(19, 1, 9, 'KHU2176', 'Khulna', NULL, 'Mollik Nobir', NULL, NULL, 0.00, 0.00, NULL, 14, 90000.00, 3, 1, 3, 2, '2021-04-06 06:19:59'),
(20, 1, 8, 'JSVRG1', 'Jessore', NULL, 'Mollik Nobir', NULL, NULL, 0.00, 0.00, NULL, 14, 90000.00, 1, 1, 3, 2, '2021-04-06 06:21:47'),
(21, 1, 8, 'HGAGB1', 'Habiganj', NULL, 'Md. Arif Hossain', NULL, NULL, 0.00, 0.00, NULL, 11, 100000.00, 1, 1, 3, 2, '2021-04-06 06:24:44'),
(22, 1, 8, 'NPBKB1', 'Nilphamari', NULL, 'Md. Rabiul Alam', NULL, NULL, 0.00, 0.00, NULL, 10, 90000.00, 1, 1, 3, 2, '2021-04-06 06:27:08'),
(23, 1, 8, 'MBPNS1', 'Mowlovibazar', NULL, 'Md. Amin Uddin', NULL, NULL, 0.00, 0.00, NULL, 16, 100000.00, 1, 1, 3, 2, '2021-04-06 06:30:25'),
(24, 1, 8, 'MBADA4', 'Mowlovibazar', NULL, 'Md. Zahidul Islam', NULL, NULL, 0.00, 0.00, NULL, 17, 100000.00, 1, 1, 3, 2, '2021-04-06 06:33:25'),
(25, 1, 8, 'HGNAR1', 'Habiganj', NULL, 'Md. Zahidul Islam', NULL, NULL, 0.00, 0.00, NULL, 17, 100000.00, 1, 1, 3, 2, '2021-04-06 06:49:30'),
(26, 1, 8, 'NPHTK1', 'Nilphamari', NULL, 'Md. Rabiul Alam', NULL, NULL, 0.00, 0.00, NULL, 10, 90000.00, 1, 1, 3, 2, '2021-04-06 06:51:46'),
(27, 1, 2, 'BMKSB42', 'Brahmanbaria', NULL, 'Abdur Razzak', NULL, NULL, 0.00, 0.00, NULL, 16, 100000.00, 4, 1, 3, 2, '2021-04-06 06:55:28'),
(28, 1, 8, 'PBBBT1', 'Pabna', NULL, 'Md. Nahidul Islam', NULL, NULL, 0.00, 0.00, NULL, 13, 95000.00, 1, 1, 3, 2, '2021-04-06 07:01:26'),
(29, 1, 8, 'SNMRL1', 'Sunamganj', NULL, 'Md. Hasmot Ali', NULL, NULL, 0.00, 0.00, NULL, 9, 124000.00, 1, 1, 3, 2, '2021-04-06 07:05:11'),
(30, 1, 8, 'HGUHP1', 'Habiganj', NULL, 'Md. Hasmot Ali', NULL, NULL, 0.00, 0.00, NULL, 11, 100000.00, 1, 1, 3, 2, '2021-04-06 07:06:48'),
(31, 1, 8, 'SYKHB1', 'Sylhet', NULL, 'Abdul Latif', NULL, NULL, 0.00, 0.00, NULL, 13, 90000.00, 1, 1, 3, 2, '2021-04-06 07:14:46'),
(32, 1, 8, 'HGAJK1', 'Habiganj', NULL, 'Md. Sabbir Hossain', NULL, NULL, 0.00, 0.00, NULL, 11, 100000.00, 1, 1, 3, 2, '2021-04-06 07:17:27'),
(33, 1, 8, 'HGUMD1', 'Habigonj', NULL, 'Md. Mahabur Rahman', NULL, NULL, 0.00, 0.00, NULL, 19, 130000.00, 1, 1, 3, 2, '2021-04-07 03:38:25'),
(34, 1, 2, 'KCMKC21', 'Khagrasori', NULL, 'Md. Zelhaq Rahman', NULL, NULL, 0.00, 0.00, NULL, 10, 100000.00, 4, 1, 3, 2, '2021-04-07 03:42:44'),
(35, 2, 10, '327886', 'Tongibari Upazilla Fire Service and Civil Defense Station', NULL, 'Md. Hayder Ali', NULL, NULL, 0.00, 0.00, NULL, 20, 0.00, 7, 1, 3, 2, '2021-04-07 03:58:22'),
(36, 2, 11, 'DRAIN 4A', 'CGS Clooney', NULL, 'Md. Yousub Ali', NULL, NULL, 0.00, 0.00, NULL, 21, 0.00, 8, 1, 3, 2, '2021-04-07 04:16:47'),
(37, 1, 8, 'NWMRP1', 'Mirpur Chapai', NULL, 'Md. Reja Rakib', NULL, NULL, 0.00, 0.00, NULL, 22, 90000.00, 1, 1, 3, 2, '2021-04-07 04:27:35'),
(38, 1, 8, 'SYTGG1', 'Sylhet', NULL, 'Suruzzaman', NULL, NULL, 0.00, 0.00, NULL, 24, 110000.00, 1, 1, 3, 2, '2021-04-07 04:32:29'),
(39, 1, 3, 'DHBA4M', 'Dhaka', NULL, 'Md. Liton Hasan', NULL, NULL, 0.00, 0.00, NULL, 23, 0.00, 9, 1, 3, 2, '2021-04-07 04:51:46'),
(40, 1, 9, 'DHK6970', 'Dhaka', NULL, 'Md. Zahidul Islam', NULL, NULL, 0.00, 0.00, NULL, 23, 0.00, 3, 1, 3, 2, '2021-04-08 04:39:51'),
(41, 1, 8, 'JSHFP1', 'Jessore', NULL, 'Mollik Nobir', NULL, NULL, 0.00, 0.00, NULL, 23, 90000.00, 1, 1, 3, 2, '2021-04-08 04:45:24'),
(42, 1, 8, 'MBBSP1', 'Mowlovibazar', NULL, 'Md. Yousuf Ali', NULL, NULL, 0.00, 0.00, NULL, 3, 100000.00, 1, 1, 3, 2, '2021-04-08 04:53:27'),
(43, 1, 8, 'SNKLK1', 'Sunamganj', NULL, 'Tushar Kumar Paul', NULL, NULL, 0.00, 0.00, NULL, 9, 100000.00, 1, 1, 3, 2, '2021-04-08 04:55:53'),
(44, 1, 8, 'SNUZP1', 'Sunamganj', NULL, 'Md. Shahin Alam', NULL, NULL, 0.00, 0.00, NULL, 12, 100000.00, 1, 1, 3, 2, '2021-04-08 04:58:08'),
(45, 1, 12, 'EDOTCO CPUPGRADATION', 'EdotCo CP Upgradation', NULL, 'Md. Aminul Islam', NULL, NULL, 0.00, 0.00, NULL, 23, 0.00, 6, 1, 3, 2, '2021-04-08 06:24:14'),
(46, 1, 2, 'BRBTG12', 'Borguna', NULL, 'Md. Likhan Ali', NULL, NULL, 0.00, 0.00, NULL, 23, 0.00, 4, 1, 3, 2, '2021-04-10 04:17:21'),
(47, 1, 8, 'HGSDS1', 'Habiganj', NULL, 'Razoni Kanto Paul', NULL, NULL, 0.00, 0.00, NULL, 23, 90000.00, 1, 1, 3, 2, '2021-04-10 04:47:13'),
(48, 2, 5, '542821', 'PFC &amp; RM JV', NULL, NULL, NULL, NULL, 0.00, 0.00, NULL, 23, 0.00, 7, 1, 3, 2, '2021-04-17 01:26:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proreturn`
--

CREATE TABLE `tbl_proreturn` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `refinv` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `note` varchar(250) CHARACTER SET utf8mb4 DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prosubgroup`
--

CREATE TABLE `tbl_prosubgroup` (
  `id` int(11) NOT NULL,
  `pgid` int(11) NOT NULL,
  `name` varchar(65) CHARACTER SET utf8mb4 NOT NULL,
  `code` varchar(6) CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_prosubgroup`
--

INSERT INTO `tbl_prosubgroup` (`id`, `pgid`, `name`, `code`, `description`, `brid`, `uid`, `date`) VALUES
(1, 1, 'Robi', NULL, '', 0, 1, '2021-02-23 07:42:12'),
(2, 1, 'E.co', NULL, '', 0, 1, '2021-02-23 07:42:13'),
(3, 1, 'Gp', NULL, '', 0, 1, '2021-02-23 07:42:28'),
(4, 1, 'Sumit', NULL, '', 0, 1, '2021-02-23 07:42:41'),
(5, 2, 'PWD', NULL, '', 0, 1, '2021-02-23 07:43:11'),
(6, 2, 'LGED', NULL, '', 0, 1, '2021-02-23 07:43:29'),
(7, 2, 'R &amp; H', NULL, '', 0, 1, '2021-02-23 07:44:00'),
(8, 1, 'Edot Co &amp; GP Combined Project', NULL, '', 0, 1, '2021-03-24 02:33:23'),
(9, 1, 'Edot Co &amp; Banglalink Combined', NULL, '', 3, 2, '2021-04-06 06:06:39'),
(10, 2, 'PWD FST', NULL, '', 3, 2, '2021-04-07 03:50:23'),
(11, 2, 'CHMES', NULL, '', 3, 2, '2021-04-07 03:50:48'),
(12, 1, 'Edot Co Power Upgradation', NULL, '', 3, 2, '2021-04-08 06:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purchase`
--

CREATE TABLE `tbl_purchase` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) DEFAULT NULL,
  `pjid` int(11) DEFAULT NULL,
  `type` varchar(2) NOT NULL,
  `supid` int(11) NOT NULL,
  `itemdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(20,2) NOT NULL,
  `disp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `totdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `taxp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `taxamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `spmoney` decimal(15,2) NOT NULL DEFAULT 0.00,
  `otname` varchar(35) NOT NULL,
  `otamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `freight` decimal(15,2) NOT NULL DEFAULT 0.00,
  `less` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adamo` decimal(20,2) DEFAULT 0.00,
  `total` decimal(20,2) NOT NULL,
  `curid` int(11) NOT NULL,
  `ref` varchar(25) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `nxtduedate` date DEFAULT NULL,
  `rawcash` decimal(20,2) NOT NULL DEFAULT 0.00,
  `changes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `purp` int(11) DEFAULT NULL,
  `creditid` varchar(15) NOT NULL,
  `details` varchar(65) DEFAULT NULL,
  `prjno` int(11) DEFAULT NULL,
  `lcno` varchar(25) DEFAULT NULL,
  `lcdate` date DEFAULT NULL,
  `pino` varchar(20) DEFAULT NULL,
  `pidate` date DEFAULT NULL,
  `lcbank` int(11) DEFAULT NULL,
  `lcvalu` decimal(20,2) DEFAULT 0.00,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purorder`
--

CREATE TABLE `tbl_purorder` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `type` varchar(2) NOT NULL,
  `supid` int(11) NOT NULL,
  `itemdis` decimal(8,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(12,2) NOT NULL,
  `disp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `totdis` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `taxp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `taxamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `spmoney` decimal(12,2) NOT NULL DEFAULT 0.00,
  `otname` varchar(35) NOT NULL,
  `otamo` decimal(8,2) NOT NULL DEFAULT 0.00,
  `freight` decimal(8,2) NOT NULL DEFAULT 0.00,
  `less` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total` decimal(12,2) NOT NULL,
  `curid` int(11) NOT NULL,
  `ref` varchar(25) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `expdate` date DEFAULT NULL,
  `purp` int(11) DEFAULT NULL,
  `ap` varchar(1) NOT NULL DEFAULT 'N',
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_purorderde`
--

CREATE TABLE `tbl_purorderde` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `pid` int(11) NOT NULL,
  `colid` int(11) DEFAULT NULL,
  `sizid` int(11) DEFAULT NULL,
  `exqty` double NOT NULL DEFAULT 0,
  `oldprice` decimal(10,2) NOT NULL DEFAULT 0.00,
  `cuqty` double NOT NULL,
  `cuprice` decimal(10,2) NOT NULL,
  `disp` double NOT NULL DEFAULT 0,
  `disf` decimal(8,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(10,2) NOT NULL DEFAULT 0.00,
  `taxp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `taxamo` decimal(12,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(8,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(12,2) NOT NULL DEFAULT 0.00,
  `wday` int(11) NOT NULL DEFAULT 0,
  `subtot` decimal(12,2) NOT NULL,
  `pnote` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rebeat`
--

CREATE TABLE `tbl_rebeat` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `supid` int(11) NOT NULL,
  `fdate` date NOT NULL,
  `tdate` date NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `note` varchar(350) DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recvoucher`
--

CREATE TABLE `tbl_recvoucher` (
  `id` int(11) NOT NULL,
  `pjid` int(11) DEFAULT NULL,
  `invno` varchar(15) NOT NULL,
  `note` varchar(150) DEFAULT NULL,
  `amount` decimal(20,2) NOT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_recvoucher`
--

INSERT INTO `tbl_recvoucher` (`id`, `pjid`, `invno`, `note`, `amount`, `apdate`, `brid`, `uid`, `date`) VALUES
(7, NULL, 'REV060421101', '', 40692.00, '2021-04-01', 3, 2, '2021-04-06 05:52:27'),
(8, NULL, 'REV060421102', '', 1200000.00, '2021-04-01', 3, 2, '2021-04-06 05:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salarysheet`
--

CREATE TABLE `tbl_salarysheet` (
  `id` int(11) NOT NULL,
  `empid` int(11) NOT NULL,
  `absent` int(2) NOT NULL,
  `late` int(2) NOT NULL,
  `lapid` int(11) DEFAULT NULL,
  `leaves` int(2) NOT NULL,
  `pday` int(2) NOT NULL,
  `pamo` double NOT NULL,
  `basic` double NOT NULL,
  `homeamo` double NOT NULL,
  `medical` double NOT NULL,
  `food` double NOT NULL,
  `comuni` double NOT NULL,
  `absamo` double NOT NULL,
  `lateamo` double NOT NULL,
  `levamo` double NOT NULL,
  `pdayamo` double NOT NULL,
  `jdamo` double NOT NULL,
  `bonus` double NOT NULL,
  `tsalary` double NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `paid` decimal(10,0) DEFAULT 0,
  `note` varchar(150) DEFAULT NULL,
  `pstatus` int(1) NOT NULL,
  `payslip` varchar(15) NOT NULL,
  `refno` varchar(15) DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sales`
--

CREATE TABLE `tbl_sales` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) DEFAULT NULL,
  `pjid` int(11) DEFAULT NULL,
  `type` varchar(2) NOT NULL,
  `cusid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  `zid` int(11) DEFAULT NULL,
  `itemdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(20,2) NOT NULL,
  `disp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `totdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `aitp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `aitamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `otname` varchar(35) NOT NULL,
  `otamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `freight` decimal(15,2) NOT NULL DEFAULT 0.00,
  `less` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adamo` decimal(20,2) DEFAULT 0.00,
  `total` decimal(20,2) NOT NULL,
  `curid` int(11) NOT NULL,
  `ref` varchar(25) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `nxtduedate` date DEFAULT NULL,
  `ocusname` varchar(35) DEFAULT NULL,
  `ocusmobile` varchar(18) DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `pdep` varchar(35) DEFAULT NULL,
  `paddress` varchar(150) DEFAULT NULL,
  `waddress` varchar(250) DEFAULT NULL,
  `wemail` varchar(50) DEFAULT NULL,
  `rawcash` decimal(20,2) NOT NULL DEFAULT 0.00,
  `changes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `selp` int(11) DEFAULT NULL,
  `debitid` varchar(15) NOT NULL,
  `details` varchar(65) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sercenter`
--

CREATE TABLE `tbl_sercenter` (
  `id` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `address` varchar(150) NOT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `mobile` varchar(18) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_serial`
--

CREATE TABLE `tbl_serial` (
  `id` int(11) NOT NULL,
  `purinv` varchar(15) NOT NULL,
  `reinvno` varchar(15) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `unqid` varchar(15) NOT NULL,
  `serial` varchar(45) NOT NULL,
  `rci` varchar(1) NOT NULL,
  `rcno` varchar(15) DEFAULT NULL,
  `disno` varchar(15) DEFAULT NULL,
  `brid` int(11) DEFAULT NULL,
  `whid` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_serialsale`
--

CREATE TABLE `tbl_serialsale` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `pid` varchar(10) NOT NULL,
  `unqid` varchar(15) NOT NULL,
  `serial` varchar(45) NOT NULL,
  `mods` varchar(1) NOT NULL,
  `dli` varchar(1) NOT NULL,
  `dlno` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_seritem`
--

CREATE TABLE `tbl_seritem` (
  `id` int(11) NOT NULL,
  `code` varchar(8) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `scatid` int(11) DEFAULT NULL,
  `cost` double(8,2) NOT NULL DEFAULT 0.00,
  `price` double(8,2) NOT NULL DEFAULT 0.00,
  `status` int(1) NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sersales`
--

CREATE TABLE `tbl_sersales` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) DEFAULT NULL,
  `type` varchar(2) NOT NULL,
  `cusid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `itemdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(20,2) NOT NULL,
  `disp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `totdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `aitp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `aitamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `otname` varchar(35) NOT NULL,
  `otamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `freight` decimal(15,2) NOT NULL DEFAULT 0.00,
  `less` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adamo` decimal(20,2) DEFAULT 0.00,
  `total` decimal(20,2) NOT NULL,
  `curid` int(11) NOT NULL,
  `ref` varchar(25) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `nxtduedate` date DEFAULT NULL,
  `ocusname` varchar(35) DEFAULT NULL,
  `ocusmobile` varchar(18) DEFAULT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `pdep` varchar(35) DEFAULT NULL,
  `paddress` varchar(150) DEFAULT NULL,
  `rawcash` decimal(20,2) NOT NULL DEFAULT 0.00,
  `changes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `selp` int(11) DEFAULT NULL,
  `debitid` varchar(15) NOT NULL,
  `details` varchar(65) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sersalesde`
--

CREATE TABLE `tbl_sersalesde` (
  `id` int(11) NOT NULL,
  `seid` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `sid` int(11) DEFAULT NULL,
  `code` varchar(8) DEFAULT NULL,
  `name` varchar(35) NOT NULL,
  `cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `qty` double NOT NULL DEFAULT 0,
  `disp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disf` double NOT NULL DEFAULT 0,
  `disamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `taxp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `taxamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(20,2) NOT NULL DEFAULT 0.00,
  `snote` varchar(65) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `stype` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `skey` varchar(35) NOT NULL,
  `sval` varchar(650) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `skey`, `sval`, `description`, `brid`, `uid`, `date`) VALUES
(1, 'LANGUES', '0', NULL, 0, 1, '0000-00-00 00:00:00'),
(2, 'PURCV', '0', NULL, 0, 1, '2020-08-02 00:00:00'),
(3, 'SELDLI', '0', NULL, 0, 1, '2020-08-02 00:00:00'),
(4, 'SHOCOST', '0', 'Show Purchase Cost', 0, 0, '2020-09-07 11:54:46'),
(5, 'INVDUE', '1', 'Show Previous Due On Sales Invoice', 0, 0, '2020-09-12 16:52:48'),
(6, 'INVDNOTE', '<p>This is your note where you can write your&nbsp;Note, Terms &amp; Condition&nbsp;</p>\r\n<ol>\r\n<li>VAT &amp; Taxes are not included in the above price.</li>\r\n<li>Read the Manual Book supplied with the vehicle with attention and follow the service instruction properly.</li>\r\n<li>Delivery of Registration Document is subject to clearance of all dues (if any).</li>\r\n</ol>', 'Invoice Default Note', 0, 0, '2020-09-12 16:53:00'),
(7, 'SHOINVNOT', '0', 'Sales Invoice Print With Terms &amp; Condition', 0, 0, '2020-09-12 16:26:42'),
(8, 'ENCHAT', '0', 'Enable Chat Internal Chat System ', 0, 1, '2020-09-22 17:06:44'),
(9, 'COSTSHOW', '0', 'Sales Price Update Time Show Cost', 0, 1, '2020-10-10 14:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipline`
--

CREATE TABLE `tbl_shipline` (
  `id` int(11) NOT NULL,
  `sortn` varchar(8) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `contact` varchar(18) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_size`
--

CREATE TABLE `tbl_size` (
  `id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `sval` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_size`
--

INSERT INTO `tbl_size` (`id`, `name`, `bname`, `sval`) VALUES
(2, 'Mes\'s Small', NULL, 'S'),
(3, 'Men\'s Medium', NULL, 'M'),
(4, 'Ladies Small', NULL, 'S'),
(5, 'Ladies Medium', NULL, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sreturn`
--

CREATE TABLE `tbl_sreturn` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) NOT NULL,
  `type` varchar(2) NOT NULL,
  `cusid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(18) DEFAULT NULL,
  `itemdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `totdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `vatamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `aitp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `aitamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `less` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adjust` decimal(15,2) NOT NULL DEFAULT 0.00,
  `adamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `total` decimal(20,2) NOT NULL DEFAULT 0.00,
  `note` varchar(150) NOT NULL,
  `apdate` date NOT NULL,
  `nxtduedate` date DEFAULT NULL,
  `rawcash` decimal(15,2) NOT NULL DEFAULT 0.00,
  `changes` decimal(15,2) NOT NULL DEFAULT 0.00,
  `retp` int(11) DEFAULT NULL,
  `creditid` varchar(15) NOT NULL,
  `details` varchar(65) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_stock`
--

CREATE TABLE `tbl_stock` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `prjid` int(11) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `unqid` varchar(15) NOT NULL,
  `code` varchar(15) NOT NULL,
  `icdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `icinvdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `cost` decimal(20,2) NOT NULL,
  `oldprice` decimal(15,2) NOT NULL DEFAULT 0.00,
  `pupdate` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `price` decimal(15,2) NOT NULL,
  `taxp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disf` decimal(15,2) NOT NULL DEFAULT 0.00,
  `wday` int(11) NOT NULL DEFAULT 0,
  `ofid` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_stock`
--

INSERT INTO `tbl_stock` (`id`, `invno`, `prjid`, `pid`, `unqid`, `code`, `icdis`, `icinvdis`, `cost`, `oldprice`, `pupdate`, `uid`, `price`, `taxp`, `disp`, `disf`, `wday`, `ofid`, `status`) VALUES
(1, 'PUR050221101', 3, 1, 'GP050221101', 'ABA001PB1', 0.00, 0.00, 2500.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(2, 'PUR050221101', 3, 4, 'GP050221102', 'ABA004PB1', 0.00, 0.00, 420.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(3, 'PUR050221101', 3, 3, 'GP050221103', 'ABA003PB1', 0.00, 0.00, 180.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(4, 'PUR050221101', 3, 5, 'GP050221104', 'ABA005PB1', 0.00, 0.00, 200.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(5, 'PUR050221101', 3, 2, 'GP050221105', 'ABA002PB1', 0.00, 0.00, 27.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(6, 'PUR050221101', 3, 8, 'GP050221106', 'ABA006PB1', 0.00, 0.00, 25.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(7, 'PUR050221102', 5, 4, 'GP050221107', 'ABA004PB2', 0.00, 0.00, 420.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(8, 'PUR050221102', 5, 5, 'GP050221108', 'ABA005PB2', 0.00, 0.00, 200.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(9, 'PUR050221102', 5, 3, 'GP050221109', 'ABA003PB2', 0.00, 0.00, 180.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(10, 'PUR050221103', 2, 3, 'GP050221110', 'ABA003PB3', 0.00, 0.00, 180.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1),
(11, 'PUR050221103', 2, 4, 'GP050221111', 'ABA004PB3', 0.00, 0.00, 420.00, 0.00, NULL, NULL, 0.00, 0.00, 0.00, 0.00, 0, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcat`
--

CREATE TABLE `tbl_subcat` (
  `id` int(11) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_supplier`
--

CREATE TABLE `tbl_supplier` (
  `id` int(11) NOT NULL,
  `gid` int(11) DEFAULT NULL,
  `susid` int(11) DEFAULT NULL,
  `code` varchar(15) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `cperson` varchar(45) DEFAULT NULL,
  `cnumber` varchar(18) NOT NULL,
  `cphone` varchar(14) DEFAULT NULL,
  `cemail` varchar(45) DEFAULT NULL,
  `creditlimit` double DEFAULT 0,
  `crepreiod` int(11) NOT NULL DEFAULT 0,
  `address` varchar(200) DEFAULT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `saddress` varchar(200) DEFAULT NULL,
  `bsaddress` varchar(350) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_supplier`
--

INSERT INTO `tbl_supplier` (`id`, `gid`, `susid`, `code`, `name`, `bname`, `cperson`, `cnumber`, `cphone`, `cemail`, `creditlimit`, `crepreiod`, `address`, `baddress`, `saddress`, `bsaddress`, `rank`, `status`, `uid`, `date`) VALUES
(1, NULL, NULL, 'ABA/SU/001', 'Star Bricks', NULL, '', '01456325698', NULL, '', 0, 0, 'Dhaka', NULL, NULL, NULL, NULL, 1, 1, '2021-01-27 03:49:15'),
(2, NULL, NULL, 'ABA/SU/002', 'Sylete Sand', NULL, '', '01712578952', '', '', 0, 0, 'Sylet.', NULL, '', NULL, 0, 1, 1, '2021-02-02 07:06:17'),
(3, NULL, 2, 'ABA/SU/003', 'Moshiur Rahman', NULL, '', '01712456987', '', '', 0, 0, 'dhaka.', NULL, '', NULL, 0, 1, 1, '2021-02-02 07:07:25'),
(4, NULL, NULL, 'ABA/SU/004', 'Macca Madina  ', NULL, 'Md, Dipu', '095689532657', '', '', 0, 0, 'Dhaka', NULL, '', NULL, 0, 1, 1, '2021-02-02 07:25:40'),
(5, NULL, NULL, 'ABA/SU/005', 'Star  Rod', NULL, 'rakesh', '01712510000', '', 'anamit08@gmail.com', 0, 0, '5/12', NULL, '5/12', NULL, 0, 1, 1, '2021-02-25 04:24:45'),
(6, NULL, NULL, 'ABA/SU/006', 'Perform Engineering Ltd', NULL, 'Habib', '01819210671', '', '', 0, 0, 'ABC', NULL, 'ABC', NULL, 0, 1, 1, '2021-03-31 06:45:30'),
(7, NULL, NULL, 'ABA/SU/007', 'Legal Electric Co', NULL, 'Sohel', '01751772434', '', '', 0, 0, 'ABC', NULL, 'ABC', NULL, 0, 1, 1, '2021-03-31 06:46:28'),
(8, NULL, NULL, 'ABA/SU/008', 'Anwar Cement Ltd.', NULL, 'Md. Emon', '01716554433', '', '', 0, 0, 'ABC', NULL, 'ABC', NULL, 0, 1, 2, '2021-04-07 04:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trafrbra`
--

CREATE TABLE `tbl_trafrbra` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `ftype` varchar(2) NOT NULL,
  `fsourch` int(11) NOT NULL,
  `ttype` varchar(2) NOT NULL,
  `tsourch` int(11) NOT NULL,
  `media` int(11) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trafrwho`
--

CREATE TABLE `tbl_trafrwho` (
  `id` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `ftype` varchar(2) NOT NULL,
  `fsourch` int(11) NOT NULL,
  `ttype` varchar(2) NOT NULL,
  `tsourch` int(11) NOT NULL,
  `media` int(11) DEFAULT NULL,
  `note` varchar(150) DEFAULT NULL,
  `apdate` date NOT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tbl_traledger`
-- (See below for the actual view)
--
CREATE TABLE `tbl_traledger` (
`id` int(11)
,`invno` varchar(25)
,`refinv` varchar(25)
,`pjid` int(11)
,`prjno` varchar(20)
,`mtype` varchar(11)
,`dty` varchar(255)
,`did` varchar(21)
,`amo` double
,`cid` varchar(21)
,`cty` varchar(255)
,`chkno` varchar(255)
,`chkdt` date
,`otnote` varchar(350)
,`recon` int(11)
,`ref` varchar(45)
,`curid` int(11)
,`xrate` decimal(10,2)
,`apdate` date
,`brid` int(11)
,`uid` int(11)
,`date` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_traproduct`
--

CREATE TABLE `tbl_traproduct` (
  `id` int(11) NOT NULL,
  `type` varchar(2) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) DEFAULT NULL,
  `pjid` int(11) DEFAULT NULL,
  `prjno` varchar(20) DEFAULT NULL,
  `mtype` int(11) NOT NULL DEFAULT 0,
  `pid` int(11) NOT NULL,
  `unqid` varchar(15) NOT NULL,
  `colid` int(11) DEFAULT NULL,
  `sizid` int(11) DEFAULT NULL,
  `cost` decimal(15,2) NOT NULL DEFAULT 0.00,
  `icdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `icinvdis` decimal(15,2) NOT NULL DEFAULT 0.00,
  `price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `p_qty` double NOT NULL,
  `p_in` double NOT NULL DEFAULT 0,
  `s_qty` double NOT NULL,
  `p_out` double NOT NULL DEFAULT 0,
  `p_loc` double NOT NULL DEFAULT 0,
  `p_uloc` double NOT NULL DEFAULT 0,
  `taxp` decimal(15,2) NOT NULL,
  `taxamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disf` decimal(15,2) NOT NULL DEFAULT 0.00,
  `disamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `subtot` decimal(20,2) NOT NULL,
  `wday` double DEFAULT 0,
  `mods` varchar(2) NOT NULL,
  `brid` int(11) DEFAULT NULL,
  `waid` int(11) DEFAULT NULL,
  `tramod` varchar(2) DEFAULT NULL,
  `isinv` varchar(1) NOT NULL DEFAULT 'Y',
  `gp` varchar(1) NOT NULL DEFAULT 'Y',
  `pnote` varchar(45) DEFAULT NULL,
  `rbp` decimal(15,2) NOT NULL DEFAULT 0.00,
  `rbf` decimal(15,2) NOT NULL DEFAULT 0.00,
  `rbamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `rbclno` varchar(15) DEFAULT NULL,
  `ofid` int(11) DEFAULT NULL,
  `ofamo` decimal(15,2) NOT NULL DEFAULT 0.00,
  `oft` int(1) DEFAULT NULL,
  `aft` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `apdate` date NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trarecord`
--

CREATE TABLE `tbl_trarecord` (
  `id` int(11) NOT NULL,
  `invno` varchar(25) NOT NULL,
  `refinv` varchar(25) DEFAULT NULL,
  `pjid` int(11) DEFAULT NULL,
  `prjno` varchar(20) DEFAULT NULL,
  `mtype` int(11) NOT NULL,
  `dty` varchar(2) NOT NULL,
  `did` int(11) NOT NULL,
  `amo` decimal(20,2) NOT NULL,
  `cid` int(11) NOT NULL,
  `cty` varchar(2) NOT NULL,
  `chkno` varchar(25) DEFAULT NULL,
  `chkdt` date DEFAULT NULL,
  `otnote` varchar(85) DEFAULT NULL,
  `recon` int(1) NOT NULL DEFAULT 0,
  `ref` varchar(45) DEFAULT NULL,
  `curid` int(11) NOT NULL DEFAULT 0,
  `xrate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `apdate` date NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_trarecord`
--

INSERT INTO `tbl_trarecord` (`id`, `invno`, `refinv`, `pjid`, `prjno`, `mtype`, `dty`, `did`, `amo`, `cid`, `cty`, `chkno`, `chkdt`, `otnote`, `recon`, `ref`, `curid`, `xrate`, `apdate`, `brid`, `uid`, `date`) VALUES
(7, 'EXP250221101', NULL, NULL, NULL, 1, 'LE', 65, 50000.00, 1, 'LE', NULL, NULL, NULL, 0, 'Bariq', 0, 0.00, '2020-12-17', 0, 1, '2021-02-25 04:21:29'),
(8, 'EXP250221101', NULL, NULL, NULL, 1, 'LE', 66, 200.00, 1, 'LE', NULL, NULL, NULL, 0, 'sajib', 0, 0.00, '2020-12-17', 0, 1, '2021-02-25 04:21:29'),
(9, 'EXP250221101', NULL, NULL, NULL, 1, 'LE', 67, 3509.00, 1, 'LE', NULL, NULL, NULL, 0, '', 0, 0.00, '2020-12-17', 0, 1, '2021-02-25 04:21:29'),
(10, 'EXP250221101', NULL, NULL, NULL, 1, 'LE', 68, 1560.00, 1, 'LE', NULL, NULL, NULL, 0, 'Bariq', 0, 0.00, '2020-12-17', 0, 1, '2021-02-25 04:21:29'),
(11, 'EXP250221101', NULL, NULL, NULL, 1, 'LE', 69, 13000.00, 1, 'LE', NULL, NULL, NULL, 0, 'Sajib', 0, 0.00, '2020-12-17', 0, 1, '2021-02-25 04:21:29'),
(12, 'EXP250221101', NULL, NULL, NULL, 1, 'LE', 70, 106541.00, 1, 'LE', NULL, NULL, NULL, 0, '', 0, 0.00, '2020-12-17', 0, 1, '2021-02-25 04:21:29'),
(235, 'REV060421101', NULL, NULL, NULL, 0, 'LE', 2, 40692.00, 5, 'LE', NULL, NULL, NULL, 0, 'B/F', 0, 0.00, '2021-04-01', 3, 2, '2021-04-06 05:52:27'),
(236, 'REV060421102', NULL, NULL, NULL, 0, 'LE', 2, 1200000.00, 1, 'LO', NULL, NULL, NULL, 0, 'Loan', 0, 0.00, '2021-04-01', 3, 2, '2021-04-06 05:54:16'),
(320, 'JOU250521101', NULL, 44, 'SNUZP1', 0, 'SU', 5, 5000.00, 1, 'SU', '4141414', '2021-05-25', NULL, 0, '414', 0, 0.00, '2021-05-25', 0, 1, '2021-05-25 05:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit`
--

CREATE TABLE `tbl_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `bname` varchar(150) DEFAULT NULL,
  `description` varchar(350) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_unit`
--

INSERT INTO `tbl_unit` (`id`, `name`, `bname`, `description`, `uid`, `date`) VALUES
(1, 'KG', 'কেজি', 'The kilogram or kilogramme (SI unit symbol: kg) is the base unit of mass in the International System of Units (SI), and is defined as being equal to the mass of the International Prototype of the Kilogram (IPK, also known as &quot;Le Grand K&quot; or', 1, '2020-04-05 09:39:20'),
(2, 'Centimeter (CM)', NULL, 'A centimetre (international spelling as used by the International Bureau of Weights and Measures; symbol cm) or centimeter (American spelling) is a unit of length in the metric system, equal to one hundredth of a metre, centi being the SI prefix for ', 1, '2020-04-05 09:39:43'),
(4, 'Piece', 'পিচ', 'Pieces, a band consisting of Buckethead and Bryan &quot;Brain&quot; Mantia', 1, '2020-05-03 04:44:49'),
(5, 'Pound', NULL, 'Pound, unit of avoirdupois weight, equal to 16 ounces, 7,000 grains, or 0.45359237 kg, and of troy and apothecaries\' weight, equal to 12 ounces', 1, '2020-05-08 08:36:46'),
(6, 'Meter', NULL, 'The metre (British spelling) or meter (American spelling) (from the Greek noun μέτρον, &quot;measure&quot;) is the base unit of length in the International System of Units (SI).', 1, '2020-05-08 08:37:08'),
(7, 'Yard', NULL, 'The yard (abbreviation: yd) is an English unit of length, in both the British imperial and US customary systems of measurement, that comprises 3 feet or 36 inches.', 1, '2020-05-08 08:37:28'),
(8, 'Person', NULL, 'A human being regarded as an individual.', 1, '2020-05-08 08:37:52'),
(9, 'Dozen', 'ডজন', 'A group or set of twelve.', 1, '2020-05-08 08:38:20'),
(10, 'Ream', NULL, 'Writing paper measurements: 25 sheets = 1 quire: 500 sheets = 20 quires = 1 ream', 1, '2020-05-08 08:38:38'),
(11, 'Inches', NULL, 'The international standard symbol for inch is in (see ISO 31-1, Annex A) but traditionally the inch is denoted by a double prime, which is often approximated by double quotes', 1, '2020-05-08 08:39:05'),
(12, 'ML', NULL, 'The millilitre (ml or mL, also spelled milliliter) is a metric unit of volume that is equal to one thousandth of a litre.', 1, '2020-05-08 08:39:21'),
(13, 'Gram', 'গ্রাম', 'The gram is a metric system unit of mass. Originally defined as &quot;the absolute weight of a volume of pure water equal to the cube of the hundredth part of a metre, and at the temperature of melting ice&quot;.', 1, '2020-05-08 08:40:07'),
(14, 'Packet', 'প্যাকেট', 'Packet may refer to: A small container or pouch. Packet (container), a small single use container; Cigarette packet · Sugar packet · Plastic bag ·', 1, '2020-05-08 08:40:25'),
(15, 'Box', NULL, 'Box (plural: boxes) describes a variety of containers and receptacles for permanent use as storage, or for temporary use, often for transporting contents.', 1, '2020-05-08 08:40:44'),
(16, 'Bottle', NULL, 'This article is about bottles in general. For baby bottles, see Baby bottle. For the song by Doug Anthony All Stars, see Bottle (song). &quot;Bottles&quot; redirects here. For the 1936 MGM cartoon, see Bottles (film). For the power pop band, see the ', 1, '2020-05-08 08:41:03'),
(17, 'Litre', 'লিটার', 'The litre (SI spelling) or liter (American spelling) (symbols L or l,[1] sometimes abbreviated ltr) is an SI accepted metric system unit of volume equal to 1 cubic decimetre (dm3), 1,000 cubic centimetres (cm3) or 1/1,000 cubic metre. A cubic decimet', 1, '2020-05-08 08:41:21'),
(18, 'Pair', NULL, 'Pair', 1, '2020-05-08 08:42:16'),
(19, 'Set', NULL, 'Set', 1, '2020-05-08 08:42:33'),
(20, 'Container Box', NULL, 'Container Box', 1, '2020-09-19 02:12:40'),
(21, 'CFT', NULL, '', 1, '2021-01-27 03:29:02'),
(22, 'SQARE FEET', NULL, '', 1, '2021-01-27 03:30:27'),
(23, 'Bosta', NULL, '', 1, '2021-01-27 03:31:41'),
(24, 'Ton', NULL, '', 1, '2021-01-27 03:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(65) NOT NULL,
  `utype` int(1) NOT NULL,
  `acess` int(2) NOT NULL,
  `abrid` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `email`, `password`, `utype`, `acess`, `abrid`, `name`, `bname`, `image`, `status`, `brid`, `uid`, `date`) VALUES
(1, 'rmcon@axesgl.com', '6735d063724cc38302509501219695085cee423b', 1, 1, 0, 'Md.Nur-e-Alam Bhuiyan', 'মোঃ নূর-ই-আলম ভূইয়া', 'DV-Lo_1586579338.jpg', 1, 0, 0, '2020-03-23 00:00:00'),
(2, 'rmconstruction40@gmail.com', '8d638745f063748679bf9c618e41d2bdb25f59ce', 3, 1, 3, 'RM Construction', '', NULL, 1, 0, 1, '2021-04-06 04:56:01'),
(3, 'lightmixbdltd@gmail.com', '1bdfdbe85b8af0c4e4d5f1a9a36c2344d4536f84', 3, 1, 1, 'Lightmix BD Ltd', '', NULL, 1, 0, 1, '2021-04-06 05:02:21'),
(4, 'info@rhlbd.org', 'b1661af022ea657f041d55a2f7bf6c80c690688a', 3, 1, 2, 'Regency Homes &amp; Engineering Ltd', '', NULL, 1, 0, 1, '2021-04-06 05:04:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usergroup`
--

CREATE TABLE `tbl_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_usergroup`
--

INSERT INTO `tbl_usergroup` (`id`, `name`, `bname`, `description`, `status`, `uid`, `date`) VALUES
(1, 'Administrator', NULL, 'Administrator Give Other user permission', 1, 1, '2020-04-06 04:11:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_userpermision`
--

CREATE TABLE `tbl_userpermision` (
  `id` int(11) NOT NULL,
  `seid` int(11) NOT NULL,
  `pageid` int(3) NOT NULL,
  `views` int(1) NOT NULL,
  `creates` int(1) NOT NULL,
  `edits` int(1) NOT NULL,
  `deletes` int(1) NOT NULL,
  `prints` int(1) NOT NULL,
  `section` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_userpermision`
--

INSERT INTO `tbl_userpermision` (`id`, `seid`, `pageid`, `views`, `creates`, `edits`, `deletes`, `prints`, `section`) VALUES
(1, 1, 2, 1, 1, 1, 1, 1, 'daily'),
(2, 1, 3, 1, 1, 1, 1, 1, 'daily'),
(3, 1, 4, 1, 1, 1, 1, 1, 'daily'),
(4, 1, 5, 1, 1, 1, 1, 1, 'operation'),
(5, 1, 6, 1, 1, 1, 1, 1, 'operation'),
(6, 1, 7, 1, 1, 1, 1, 1, 'operation'),
(7, 1, 8, 1, 1, 1, 1, 1, 'operation'),
(8, 1, 9, 1, 1, 1, 1, 1, 'client'),
(9, 1, 10, 1, 1, 1, 1, 1, 'client'),
(10, 1, 11, 1, 1, 1, 1, 1, 'product'),
(11, 1, 12, 1, 1, 1, 1, 1, 'product'),
(12, 1, 13, 1, 1, 1, 1, 1, 'product'),
(13, 1, 14, 1, 1, 1, 1, 1, 'product'),
(14, 1, 15, 1, 1, 1, 1, 1, 'master'),
(15, 1, 16, 1, 1, 1, 1, 1, 'master'),
(16, 1, 17, 1, 1, 1, 1, 1, 'master'),
(17, 1, 18, 1, 1, 1, 1, 1, 'master'),
(18, 1, 19, 1, 1, 1, 1, 1, 'master'),
(19, 1, 20, 1, 1, 1, 1, 1, 'master'),
(20, 1, 21, 1, 1, 1, 1, 1, 'master'),
(21, 1, 22, 1, 1, 1, 1, 1, 'account'),
(22, 1, 23, 1, 1, 1, 1, 1, 'account'),
(23, 1, 24, 1, 1, 1, 1, 1, 'account'),
(24, 1, 25, 1, 1, 1, 1, 1, 'account'),
(25, 1, 26, 1, 1, 1, 1, 1, 'account'),
(26, 1, 27, 1, 1, 1, 1, 1, 'account'),
(27, 1, 28, 1, 1, 1, 1, 1, 'account'),
(28, 1, 29, 1, 1, 1, 1, 1, 'financial'),
(29, 1, 30, 1, 1, 1, 1, 1, 'financial'),
(30, 1, 31, 1, 1, 1, 1, 1, 'financial'),
(31, 1, 32, 1, 1, 1, 1, 1, 'financial'),
(32, 1, 33, 1, 1, 1, 1, 1, 'financial'),
(33, 1, 34, 1, 1, 1, 1, 1, 'payrol'),
(34, 1, 35, 1, 1, 1, 1, 1, 'payrol'),
(35, 1, 36, 1, 1, 1, 1, 1, 'payrol'),
(36, 1, 37, 1, 1, 1, 1, 1, 'payrol'),
(37, 1, 38, 1, 1, 1, 1, 1, 'payrol'),
(38, 1, 39, 1, 1, 1, 1, 1, 'payrol'),
(39, 1, 40, 1, 1, 1, 1, 1, 'payrol'),
(40, 1, 41, 1, 1, 1, 1, 1, 'bank'),
(41, 1, 42, 1, 1, 1, 1, 1, 'bank'),
(42, 1, 43, 1, 1, 1, 1, 1, 'bank'),
(43, 1, 44, 1, 1, 1, 1, 1, 'user'),
(44, 1, 45, 1, 1, 1, 1, 1, 'user'),
(45, 1, 46, 1, 1, 1, 1, 1, 'report'),
(46, 2, 2, 0, 0, 0, 0, 0, 'daily'),
(47, 2, 3, 1, 1, 1, 1, 1, 'daily'),
(48, 2, 4, 1, 1, 1, 1, 1, 'daily'),
(49, 2, 5, 1, 1, 1, 1, 1, 'operation'),
(50, 2, 6, 1, 1, 1, 1, 1, 'operation'),
(51, 2, 7, 1, 1, 1, 1, 1, 'operation'),
(52, 2, 8, 1, 1, 1, 1, 1, 'operation'),
(53, 2, 9, 1, 1, 1, 1, 1, 'client'),
(54, 2, 10, 1, 1, 1, 1, 1, 'client'),
(55, 2, 11, 1, 1, 1, 1, 1, 'product'),
(56, 2, 12, 1, 1, 1, 1, 1, 'product'),
(57, 2, 13, 1, 1, 1, 1, 1, 'product'),
(58, 2, 14, 1, 1, 1, 1, 1, 'product'),
(59, 2, 15, 1, 1, 1, 1, 1, 'master'),
(60, 2, 16, 1, 1, 1, 1, 1, 'master'),
(61, 2, 17, 1, 1, 1, 1, 1, 'master'),
(62, 2, 18, 1, 1, 1, 1, 1, 'master'),
(63, 2, 19, 1, 1, 1, 1, 1, 'master'),
(64, 2, 20, 1, 1, 1, 1, 1, 'master'),
(65, 2, 21, 1, 1, 1, 1, 1, 'master'),
(66, 2, 22, 1, 1, 1, 1, 1, 'account'),
(67, 2, 23, 1, 1, 1, 1, 1, 'account'),
(68, 2, 24, 1, 1, 1, 1, 1, 'account'),
(69, 2, 25, 1, 1, 1, 1, 1, 'account'),
(70, 2, 26, 1, 1, 1, 1, 1, 'account'),
(71, 2, 27, 1, 1, 1, 1, 1, 'account'),
(72, 2, 28, 1, 1, 1, 1, 1, 'account'),
(73, 2, 29, 1, 1, 1, 1, 1, 'financial'),
(74, 2, 30, 1, 1, 1, 1, 1, 'financial'),
(75, 2, 31, 1, 1, 1, 1, 1, 'financial'),
(76, 2, 32, 1, 1, 1, 1, 1, 'financial'),
(77, 2, 33, 1, 1, 1, 1, 1, 'financial'),
(78, 2, 34, 1, 1, 1, 1, 1, 'payrol'),
(79, 2, 35, 1, 1, 1, 1, 1, 'payrol'),
(80, 2, 36, 1, 1, 1, 1, 1, 'payrol'),
(81, 2, 37, 1, 1, 1, 1, 1, 'payrol'),
(82, 2, 38, 1, 1, 1, 1, 1, 'payrol'),
(83, 2, 39, 1, 1, 1, 1, 1, 'payrol'),
(84, 2, 40, 1, 1, 1, 1, 1, 'payrol'),
(85, 2, 41, 1, 1, 1, 1, 1, 'bank'),
(86, 2, 42, 1, 1, 1, 1, 1, 'bank'),
(87, 2, 43, 1, 1, 1, 1, 1, 'bank'),
(88, 2, 44, 1, 1, 1, 1, 1, 'user'),
(89, 2, 45, 1, 1, 1, 1, 1, 'user'),
(90, 2, 46, 1, 1, 1, 1, 1, 'report');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_waranty`
--

CREATE TABLE `tbl_waranty` (
  `id` int(11) NOT NULL,
  `type` varchar(2) NOT NULL,
  `cusid` int(11) NOT NULL,
  `supid` int(11) NOT NULL,
  `invno` varchar(15) NOT NULL,
  `refinv` varchar(15) NOT NULL,
  `pid` int(11) NOT NULL,
  `unqid` varchar(15) NOT NULL,
  `colid` int(11) NOT NULL DEFAULT 0,
  `sizid` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,2) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `p_in` double NOT NULL DEFAULT 0,
  `p_out` double NOT NULL DEFAULT 0,
  `b_in` double NOT NULL DEFAULT 0,
  `b_out` double NOT NULL DEFAULT 0,
  `p_conid` int(1) NOT NULL,
  `serial` varchar(64) NOT NULL,
  `sel_date` date NOT NULL,
  `exp_date` date NOT NULL,
  `warn_status` int(1) NOT NULL,
  `cl_note` varchar(150) DEFAULT NULL,
  `ck_note` varchar(150) DEFAULT NULL,
  `ck_date` datetime DEFAULT NULL,
  `d_note` varchar(150) DEFAULT NULL,
  `d_date` datetime DEFAULT NULL,
  `d_type` int(11) DEFAULT NULL,
  `src_id` int(11) DEFAULT NULL,
  `rep_type` varchar(1) DEFAULT NULL,
  `rep_pid` int(11) DEFAULT NULL,
  `rep_unqid` varchar(15) DEFAULT NULL,
  `rep_serial` varchar(64) DEFAULT NULL,
  `rep_date` date DEFAULT NULL,
  `sat_amount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `d_status` int(1) NOT NULL DEFAULT 0,
  `estdate` date DEFAULT NULL,
  `binvno` varchar(15) DEFAULT NULL,
  `bst` int(11) DEFAULT 0,
  `bsrserial` varchar(25) DEFAULT NULL,
  `brid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `apdate` date NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `baddress` varchar(350) DEFAULT NULL,
  `phone` varchar(18) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `brid` int(11) DEFAULT 0,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `tbl_whstock`
-- (See below for the actual view)
--
CREATE TABLE `tbl_whstock` (
`waid` int(11)
,`name` varchar(65)
,`bname` varchar(255)
,`code` varchar(15)
,`image` varchar(50)
,`pid` int(11)
,`unqid` varchar(15)
,`poqty` double
,`pqty` double
,`rcvqty` double
,`senqty` double
,`adjqty` double
,`avqty` double
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_zone`
--

CREATE TABLE `tbl_zone` (
  `id` int(11) NOT NULL,
  `did` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `bname` varchar(255) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_zone`
--

INSERT INTO `tbl_zone` (`id`, `did`, `name`, `bname`, `uid`, `date`) VALUES
(1, 18, 'Mirpur', NULL, 6, '2020-07-12 04:23:43'),
(2, 18, 'Uttara', NULL, 6, '2020-07-12 04:24:11'),
(3, 18, 'Mohammadpur', NULL, 6, '2020-07-12 04:24:31'),
(4, 18, 'Dhanmondi', NULL, 6, '2020-07-12 04:24:52'),
(5, 18, 'Dhaka University', NULL, 6, '2020-07-12 04:25:26'),
(6, 18, 'Old Dhaka', NULL, 6, '2020-07-12 04:25:52'),
(7, 18, 'Zatrabari &amp; Shanir Akhra', NULL, 6, '2020-07-12 04:26:45'),
(8, 18, 'Demra', NULL, 6, '2020-07-12 04:27:15'),
(9, 18, 'Rampura &amp; Bonosree', NULL, 6, '2020-07-12 04:27:45'),
(10, 18, 'Moghbazar &amp; Malibagh', NULL, 6, '2020-07-12 04:28:17'),
(11, 18, 'Khilgaon, Goran &amp; Shahjahanpur', NULL, 6, '2020-07-12 04:30:52'),
(12, 18, 'Gulshan &amp; Baridhara', NULL, 6, '2020-07-12 04:31:17'),
(13, 18, 'Bashundhara R/A', NULL, 6, '2020-07-12 04:31:44'),
(14, 18, 'Firmgate', NULL, 6, '2020-07-12 04:32:00'),
(15, 18, 'Kuril, Bishshoroad &amp; Vatara', NULL, 6, '2020-07-12 04:32:36');

-- --------------------------------------------------------

--
-- Structure for view `tbl_brstock`
--
DROP TABLE IF EXISTS `tbl_brstock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`axesofts`@`localhost` SQL SECURITY DEFINER VIEW `tbl_brstock`  AS  select `brc`.`brid` AS `brid`,`bst`.`prjid` AS `prjid`,`bst`.`pid` AS `pid`,`pro`.`name` AS `name`,`pro`.`bname` AS `bname`,`pro`.`code` AS `pcode`,`pro`.`image` AS `image`,`pro`.`catid` AS `catid`,`pro`.`scatid` AS `scatid`,`pro`.`brnid` AS `brnid`,`bst`.`unqid` AS `unqid`,`bst`.`code` AS `code`,ifnull(`bro`.`poqty`,0) AS `poqty`,ifnull(`brp`.`pqty`,0) AS `pqty`,ifnull(`brr`.`prqty`,0) AS `prqty`,ifnull(`rcv`.`rcvqty`,0) AS `rcvqty`,ifnull(`sen`.`senqty`,0) AS `senqty`,ifnull(`brp`.`pqty`,0) + ifnull(`rcv`.`rcvqty`,0) - (ifnull(`brr`.`prqty`,0) + ifnull(`sen`.`senqty`,0)) AS `avpqty`,ifnull(`seo`.`soqty`,0) AS `soqty`,ifnull(`sel`.`sold`,0) AS `sold`,ifnull(`loc`.`sloc`,0) AS `sloc`,ifnull(`ser`.`srqty`,0) AS `srqty`,ifnull(`wor`.`woqty`,0) AS `woqty`,ifnull(`wer`.`wrqty`,0) AS `wrqty`,ifnull(`sel`.`sold`,0) - ifnull(`ser`.`srqty`,0) AS `fsqty`,ifnull(`dis`.`adjqty`,0) AS `adjqty`,ifnull(`brp`.`pqty`,0) + ifnull(`rcv`.`rcvqty`,0) + ifnull(`ser`.`srqty`,0) + ifnull(`wer`.`wrqty`,0) - (ifnull(`brr`.`prqty`,0) + ifnull(`sen`.`senqty`,0) + ifnull(`sel`.`sold`,0) + ifnull(`dis`.`adjqty`,0) + ifnull(`wor`.`woqty`,0)) AS `avqty`,`bst`.`status` AS `status` from ((((((((((((((((select `tbl_stock`.`pid` AS `pid`,`tbl_stock`.`unqid` AS `unqid`,`tbl_stock`.`code` AS `code`,`tbl_stock`.`prjid` AS `prjid`,`tbl_stock`.`status` AS `status` from `tbl_stock` group by `tbl_stock`.`unqid`)) `bst` left join (select `tbl_traproduct`.`unqid` AS `unqid`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`waid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `brc` on(`brc`.`unqid` = `bst`.`unqid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_qty`) AS `poqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'PU' and `tbl_traproduct`.`waid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `bro` on(`bro`.`unqid` = `bst`.`unqid` and `bro`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_in`) AS `pqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` in ('PU','RC') and `tbl_traproduct`.`waid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `brp` on(`brp`.`unqid` = `bst`.`unqid` and `brp`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_out`) AS `prqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'PR' group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `brr` on(`brr`.`unqid` = `bst`.`unqid` and `brr`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_in`) AS `rcvqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'TR' and `tbl_traproduct`.`waid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `rcv` on(`rcv`.`unqid` = `bst`.`unqid` and `rcv`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_out`) AS `senqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'TR' and `tbl_traproduct`.`waid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `sen` on(`sen`.`unqid` = `bst`.`unqid` and `sen`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`s_qty`) AS `soqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'SE' group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `seo` on(`seo`.`unqid` = `bst`.`unqid` and `seo`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_out`) AS `sold`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` in ('SE','DL') group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `sel` on(`sel`.`unqid` = `bst`.`unqid` and `sel`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_loc` - `tbl_traproduct`.`p_uloc`) AS `sloc`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` in ('SE','DL') group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `loc` on(`loc`.`unqid` = `bst`.`unqid` and `loc`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_in`) AS `srqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'SR' group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `ser` on(`ser`.`unqid` = `bst`.`unqid` and `ser`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_out`) AS `woqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'WR' group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `wor` on(`wor`.`unqid` = `bst`.`unqid` and `wor`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_in`) AS `wrqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'WR' group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `wer` on(`wer`.`unqid` = `bst`.`unqid` and `wer`.`brid` = `brc`.`brid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_out`) AS `adjqty`,`tbl_traproduct`.`brid` AS `brid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'DS' group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`brid`) `dis` on(`dis`.`unqid` = `bst`.`unqid` and `dis`.`brid` = `brc`.`brid`)) left join (select `tbl_item`.`id` AS `id`,`tbl_item`.`code` AS `code`,`tbl_item`.`name` AS `name`,`tbl_item`.`bname` AS `bname`,`tbl_item`.`image` AS `image`,`tbl_item`.`catid` AS `catid`,`tbl_item`.`scatid` AS `scatid`,`tbl_item`.`brid` AS `brnid` from `tbl_item` where `tbl_item`.`status` = '1') `pro` on(`pro`.`id` = `bst`.`pid`)) where `brc`.`brid` is not null order by `pro`.`name` ;

-- --------------------------------------------------------

--
-- Structure for view `tbl_comstock`
--
DROP TABLE IF EXISTS `tbl_comstock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`axesofts`@`localhost` SQL SECURITY DEFINER VIEW `tbl_comstock`  AS  select `stk`.`pid` AS `pid`,`pro`.`name` AS `name`,`pro`.`bname` AS `bname`,`pro`.`code` AS `code`,`pro`.`image` AS `image`,ifnull(`puo`.`poqty`,0) AS `poqty`,ifnull(`puq`.`pqty`,0) AS `pqty`,ifnull(`pur`.`prqty`,0) AS `prqty`,ifnull(`seo`.`soqty`,0) AS `soqty`,ifnull(`sel`.`sold`,0) AS `sold`,ifnull(`ser`.`srqty`,0) AS `srqty`,ifnull(`dis`.`adjqty`,0) AS `adjqty`,`puq`.`pqty` - ifnull(`pur`.`prqty`,0) - (ifnull(`sel`.`sold`,0) - ifnull(`ser`.`srqty`,0) + ifnull(`dis`.`adjqty`,0)) AS `avqty` from ((((((((((select `tbl_stock`.`pid` AS `pid` from `tbl_stock` group by `tbl_stock`.`pid`)) `stk` left join (select `tbl_traproduct`.`pid` AS `pid`,sum(`tbl_traproduct`.`p_qty`) AS `poqty` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'PU' group by `tbl_traproduct`.`pid`) `puo` on(`puo`.`pid` = `stk`.`pid`)) left join (select `tbl_traproduct`.`pid` AS `pid`,sum(`tbl_traproduct`.`p_in`) AS `pqty` from `tbl_traproduct` where `tbl_traproduct`.`mods` in ('PU','RC') group by `tbl_traproduct`.`pid`) `puq` on(`puq`.`pid` = `stk`.`pid`)) left join (select `tbl_traproduct`.`pid` AS `pid`,sum(`tbl_traproduct`.`p_out`) AS `prqty` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'PR' group by `tbl_traproduct`.`pid`) `pur` on(`pur`.`pid` = `stk`.`pid`)) left join (select `tbl_traproduct`.`pid` AS `pid`,sum(`tbl_traproduct`.`s_qty`) AS `soqty` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'SE' group by `tbl_traproduct`.`pid`) `seo` on(`seo`.`pid` = `stk`.`pid`)) left join (select `tbl_traproduct`.`pid` AS `pid`,sum(`tbl_traproduct`.`p_out`) AS `sold` from `tbl_traproduct` where `tbl_traproduct`.`mods` in ('SE','DL') group by `tbl_traproduct`.`pid`) `sel` on(`sel`.`pid` = `stk`.`pid`)) left join (select `tbl_traproduct`.`pid` AS `pid`,sum(`tbl_traproduct`.`p_in`) AS `srqty` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'SR' group by `tbl_traproduct`.`pid`) `ser` on(`ser`.`pid` = `stk`.`pid`)) left join (select `tbl_traproduct`.`pid` AS `pid`,sum(`tbl_traproduct`.`p_out`) AS `adjqty` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'DS' group by `tbl_traproduct`.`pid`) `dis` on(`dis`.`pid` = `stk`.`pid`)) left join (select `tbl_item`.`id` AS `id`,`tbl_item`.`code` AS `code`,`tbl_item`.`name` AS `name`,`tbl_item`.`bname` AS `bname`,`tbl_item`.`image` AS `image` from `tbl_item` where `tbl_item`.`status` = '1') `pro` on(`pro`.`id` = `stk`.`pid`)) order by `pro`.`name` ;

-- --------------------------------------------------------

--
-- Structure for view `tbl_ledger`
--
DROP TABLE IF EXISTS `tbl_ledger`;

CREATE ALGORITHM=UNDEFINED DEFINER=`axesofts`@`localhost` SQL SECURITY DEFINER VIEW `tbl_ledger`  AS  select convert(concat('LE',`tbl_acledger`.`id`) using utf8) collate utf8_general_ci AS `id`,`tbl_acledger`.`code` AS `code`,`tbl_acledger`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acledger`.`sgrid` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,`tbl_acledger`.`name` AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_acledger` left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acledger`.`grid`)) left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = `tbl_acledger`.`sgrid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('BA',`tbl_bacount`.`id`) AS `id`,NULL AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,concat(`tbl_bank`.`sort`,'/',`tbl_bacount`.`acno`) AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from ((((`tbl_bacount` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '2')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_bank` on(`tbl_bank`.`id` = `tbl_bacount`.`bid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('PD',`tbl_item`.`id`) AS `id`,`tbl_item`.`code` AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,`tbl_item`.`name` AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_item` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '3')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select 'CU0' AS `id`,'ABA/CU/000' AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,'Walking Customer' AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((((select 1 AS `1`)) `res` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '4')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('CU',`tbl_customer`.`id`) AS `id`,`tbl_customer`.`code` AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,`tbl_customer`.`name` AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_customer` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '4')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select 'SU0' AS `id`,'ABA/SU/000' AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,'Opening Stock' AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((((select 1 AS `1`)) `sup` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '13')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('SU',`tbl_supplier`.`id`) AS `id`,`tbl_supplier`.`code` AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,`tbl_supplier`.`name` AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_supplier` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '13')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('EM',`tbl_employe`.`id`) AS `id`,`tbl_employe`.`code` AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,`tbl_employe`.`name` AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_employe` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '33')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('SE',`tbl_seritem`.`id`) AS `id`,`tbl_seritem`.`code` AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,`tbl_seritem`.`name` AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_seritem` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '26')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('MO',`tbl_acmobile`.`id`) AS `id`,NULL AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,concat(`tbl_acmobile`.`name`,' - ',`tbl_acmobile`.`mobile`) AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_acmobile` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '34')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('LO',`tbl_loanid`.`id`) AS `id`,`tbl_loanid`.`code` AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,if(`tbl_loanid`.`acno` is not null,concat(`tbl_loanid`.`name`,' - ',`tbl_loanid`.`acno`),concat(`tbl_loanid`.`name`,' - ',`tbl_loanid`.`mobile`)) AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_loanid` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = if(`tbl_loanid`.`type` = 0,'35','36'))) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) union all select concat('CO',`tbl_contractor`.`id`) AS `id`,`tbl_contractor`.`code` AS `code`,`tbl_acsubgroup`.`grid` AS `grid`,`tbl_acgroup`.`name` AS `groups`,`tbl_acsubgroup`.`id` AS `sgrid`,`tbl_acsubgroup`.`name` AS `sgroup`,`tbl_contractor`.`name` AS `ledger`,`tbl_acgroup`.`clsid` AS `clsid`,`tbl_aclass`.`name` AS `class` from (((`tbl_contractor` left join `tbl_acsubgroup` on(`tbl_acsubgroup`.`id` = '39')) left join `tbl_acgroup` on(`tbl_acgroup`.`id` = `tbl_acsubgroup`.`grid`)) left join `tbl_aclass` on(`tbl_aclass`.`id` = `tbl_acgroup`.`clsid`)) ;

-- --------------------------------------------------------

--
-- Structure for view `tbl_traledger`
--
DROP TABLE IF EXISTS `tbl_traledger`;

CREATE ALGORITHM=UNDEFINED DEFINER=`axesofts`@`localhost` SQL SECURITY DEFINER VIEW `tbl_traledger`  AS  select `tbl_trarecord`.`id` AS `id`,`tbl_trarecord`.`invno` AS `invno`,`tbl_trarecord`.`refinv` AS `refinv`,`tbl_trarecord`.`pjid` AS `pjid`,`tbl_trarecord`.`prjno` AS `prjno`,`tbl_trarecord`.`mtype` AS `mtype`,`tbl_trarecord`.`dty` AS `dty`,`tbl_trarecord`.`did` AS `did`,`tbl_trarecord`.`amo` AS `amo`,`tbl_trarecord`.`cid` AS `cid`,`tbl_trarecord`.`cty` AS `cty`,`tbl_trarecord`.`chkno` AS `chkno`,`tbl_trarecord`.`chkdt` AS `chkdt`,`tbl_trarecord`.`otnote` AS `otnote`,`tbl_trarecord`.`recon` AS `recon`,`tbl_trarecord`.`ref` AS `ref`,`tbl_trarecord`.`curid` AS `curid`,`tbl_trarecord`.`xrate` AS `xrate`,`tbl_trarecord`.`apdate` AS `apdate`,`tbl_trarecord`.`brid` AS `brid`,`tbl_trarecord`.`uid` AS `uid`,`tbl_trarecord`.`date` AS `date` from `tbl_trarecord` union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'PD' AS `dty`,`tbl_traproduct`.`pid` AS `did`,`tbl_traproduct`.`cost` * `tbl_traproduct`.`p_qty` AS `amo`,`tbl_purchase`.`supid` AS `cid`,`tbl_purchase`.`type` AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,`tbl_purchase`.`curid` AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_purchase` on(`tbl_purchase`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'PU' union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_purchase`.`type` AS `dty`,`tbl_purchase`.`supid` AS `did`,`tbl_purchase`.`itemdis` AS `amo`,cast('42' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`itemdis` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_purchase`.`type` AS `dty`,`tbl_purchase`.`supid` AS `did`,`tbl_purchase`.`disamo` AS `amo`,cast('41' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`disamo` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('25' as signed) AS `did`,`tbl_purchase`.`vatamo` AS `amo`,`tbl_purchase`.`supid` AS `cid`,`tbl_purchase`.`type` AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`vatamo` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('26' as signed) AS `did`,`tbl_purchase`.`taxamo` AS `amo`,`tbl_purchase`.`supid` AS `cid`,`tbl_purchase`.`type` AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`taxamo` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('27' as signed) AS `did`,`tbl_purchase`.`otamo` AS `amo`,`tbl_purchase`.`supid` AS `cid`,`tbl_purchase`.`type` AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`otamo` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('27' as signed) AS `did`,`tbl_purchase`.`spmoney` AS `amo`,`tbl_purchase`.`supid` AS `cid`,`tbl_purchase`.`type` AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`spmoney` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('44' as signed) AS `did`,`tbl_purchase`.`freight` AS `amo`,`tbl_purchase`.`supid` AS `cid`,`tbl_purchase`.`type` AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`freight` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_purchase`.`type` AS `dty`,`tbl_purchase`.`supid` AS `did`,`tbl_purchase`.`less` AS `amo`,cast('43' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`less` > 0 union all select `tbl_purchase`.`id` AS `id`,`tbl_purchase`.`invno` AS `invno`,`tbl_purchase`.`invno` AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_purchase`.`type` AS `dty`,`tbl_purchase`.`supid` AS `did`,`tbl_purchase`.`rawcash` - `tbl_purchase`.`changes` AS `amo`,cast(`SPLIT_STRING`(`tbl_purchase`.`creditid`,'_',2) as signed) AS `cid`,`SPLIT_STRING`(`tbl_purchase`.`creditid`,'_',1) AS `cty`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_purchase`.`details`) > 3,if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_purchase`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_purchase`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_purchase`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,`tbl_purchase`.`ref` AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_purchase`.`apdate` AS `apdate`,`tbl_purchase`.`brid` AS `brid`,`tbl_purchase`.`uid` AS `uid`,`tbl_purchase`.`date` AS `date` from `tbl_purchase` where `tbl_purchase`.`rawcash` - `tbl_purchase`.`changes` > 0 union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,`tbl_preturn`.`type` AS `dty`,`tbl_preturn`.`cusid` AS `did`,`tbl_traproduct`.`cost` * `tbl_traproduct`.`p_out` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_preturn` on(`tbl_preturn`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'PR' union all select `tbl_preturn`.`id` AS `id`,`tbl_preturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('42' as signed) AS `did`,`tbl_preturn`.`itemdis` AS `amo`,`tbl_preturn`.`cusid` AS `cid`,`tbl_preturn`.`type` AS `cty`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_preturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_preturn`.`apdate` AS `apdate`,`tbl_preturn`.`brid` AS `brid`,`tbl_preturn`.`uid` AS `uid`,`tbl_preturn`.`date` AS `date` from `tbl_preturn` where `tbl_preturn`.`itemdis` > 0 union all select `tbl_preturn`.`id` AS `id`,`tbl_preturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('41' as signed) AS `did`,`tbl_preturn`.`disamo` AS `amo`,`tbl_preturn`.`cusid` AS `cid`,`tbl_preturn`.`type` AS `cty`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_preturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_preturn`.`apdate` AS `apdate`,`tbl_preturn`.`brid` AS `brid`,`tbl_preturn`.`uid` AS `uid`,`tbl_preturn`.`date` AS `date` from `tbl_preturn` where `tbl_preturn`.`disamo` > 0 union all select `tbl_preturn`.`id` AS `id`,`tbl_preturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_preturn`.`type` AS `dty`,`tbl_preturn`.`cusid` AS `did`,`tbl_preturn`.`vatamo` AS `amo`,cast('25' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_preturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_preturn`.`apdate` AS `apdate`,`tbl_preturn`.`brid` AS `brid`,`tbl_preturn`.`uid` AS `uid`,`tbl_preturn`.`date` AS `date` from `tbl_preturn` where `tbl_preturn`.`vatamo` > 0 union all select `tbl_preturn`.`id` AS `id`,`tbl_preturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_preturn`.`type` AS `dty`,`tbl_preturn`.`cusid` AS `did`,`tbl_preturn`.`taxamo` AS `amo`,cast('26' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_preturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_preturn`.`apdate` AS `apdate`,`tbl_preturn`.`brid` AS `brid`,`tbl_preturn`.`uid` AS `uid`,`tbl_preturn`.`date` AS `date` from `tbl_preturn` where `tbl_preturn`.`taxamo` > 0 union all select `tbl_preturn`.`id` AS `id`,`tbl_preturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('45' as signed) AS `did`,`tbl_preturn`.`less` AS `amo`,`tbl_preturn`.`cusid` AS `cid`,`tbl_preturn`.`type` AS `cty`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_preturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_preturn`.`apdate` AS `apdate`,`tbl_preturn`.`brid` AS `brid`,`tbl_preturn`.`uid` AS `uid`,`tbl_preturn`.`date` AS `date` from `tbl_preturn` where `tbl_preturn`.`less` > 0 union all select `tbl_preturn`.`id` AS `id`,`tbl_preturn`.`invno` AS `invno`,`tbl_preturn`.`invno` AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`SPLIT_STRING`(`tbl_preturn`.`debitid`,'_',1) AS `dty`,cast(`SPLIT_STRING`(`tbl_preturn`.`debitid`,'_',2) as signed) AS `did`,`tbl_preturn`.`rawcash` - `tbl_preturn`.`changes` AS `amo`,`tbl_preturn`.`cusid` AS `cid`,`tbl_preturn`.`type` AS `cty`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_preturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_preturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_preturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_preturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_preturn`.`apdate` AS `apdate`,`tbl_preturn`.`brid` AS `brid`,`tbl_preturn`.`uid` AS `uid`,`tbl_preturn`.`date` AS `date` from `tbl_preturn` where `tbl_preturn`.`rawcash` - `tbl_preturn`.`changes` > 0 union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,`tbl_sales`.`type` AS `dty`,`tbl_sales`.`cusid` AS `did`,`tbl_traproduct`.`price` * `tbl_traproduct`.`p_out` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sales` on(`tbl_sales`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SE' union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'PD' AS `dty`,`tbl_traproduct`.`pid` AS `did`,`tbl_traproduct`.`price` * `tbl_traproduct`.`p_out` AS `amo`,'34' AS `cid`,'LE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sales` on(`tbl_sales`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SE' union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'LE' AS `dty`,'14' AS `did`,`tbl_traproduct`.`cost` * `tbl_traproduct`.`p_out` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sales` on(`tbl_sales`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SE' union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'LE' AS `dty`,'42' AS `did`,`tbl_traproduct`.`icdis` * `tbl_traproduct`.`p_out` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sales` on(`tbl_sales`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SE' and `tbl_traproduct`.`icdis` > 0 union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'LE' AS `dty`,'41' AS `did`,`tbl_traproduct`.`icinvdis` * `tbl_traproduct`.`p_out` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sales` on(`tbl_sales`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SE' and `tbl_traproduct`.`icinvdis` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('37' as signed) AS `did`,`tbl_sales`.`itemdis` AS `amo`,`tbl_sales`.`cusid` AS `cid`,`tbl_sales`.`type` AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`itemdis` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('36' as signed) AS `did`,`tbl_sales`.`disamo` AS `amo`,`tbl_sales`.`cusid` AS `cid`,`tbl_sales`.`type` AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`disamo` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sales`.`type` AS `dty`,`tbl_sales`.`cusid` AS `did`,`tbl_sales`.`vatamo` AS `amo`,cast('10' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`vatamo` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sales`.`type` AS `dty`,`tbl_sales`.`cusid` AS `did`,`tbl_sales`.`aitamo` AS `amo`,cast('38' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`aitamo` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sales`.`type` AS `dty`,`tbl_sales`.`cusid` AS `did`,`tbl_sales`.`otamo` AS `amo`,cast('39' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`otamo` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sales`.`type` AS `dty`,`tbl_sales`.`cusid` AS `did`,`tbl_sales`.`freight` AS `amo`,cast('12' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`freight` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('40' as signed) AS `did`,`tbl_sales`.`less` AS `amo`,`tbl_sales`.`cusid` AS `cid`,`tbl_sales`.`type` AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`less` > 0 union all select `tbl_sales`.`id` AS `id`,`tbl_sales`.`invno` AS `invno`,`tbl_sales`.`invno` AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`SPLIT_STRING`(`tbl_sales`.`debitid`,'_',1) AS `dty`,cast(`SPLIT_STRING`(`tbl_sales`.`debitid`,'_',2) as signed) AS `did`,`tbl_sales`.`rawcash` - `tbl_sales`.`changes` AS `amo`,`tbl_sales`.`cusid` AS `cid`,`tbl_sales`.`type` AS `cty`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,`tbl_sales`.`ref` AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sales`.`apdate` AS `apdate`,`tbl_sales`.`brid` AS `brid`,`tbl_sales`.`uid` AS `uid`,`tbl_sales`.`date` AS `date` from `tbl_sales` where `tbl_sales`.`rawcash` - `tbl_sales`.`changes` > 0 union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'PD' AS `dty`,`tbl_traproduct`.`pid` AS `did`,`tbl_traproduct`.`cost` * `tbl_traproduct`.`p_in` AS `amo`,'14' AS `cid`,'LE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sreturn` on(`tbl_sreturn`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SR' union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'PD' AS `dty`,`tbl_traproduct`.`pid` AS `did`,`tbl_traproduct`.`price` * `tbl_traproduct`.`p_in` AS `amo`,`tbl_sreturn`.`cusid` AS `cid`,`tbl_sreturn`.`type` AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sreturn` on(`tbl_sreturn`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SR' union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'LE' AS `dty`,'34' AS `did`,`tbl_traproduct`.`price` * `tbl_traproduct`.`p_in` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sreturn` on(`tbl_sreturn`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SR' union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'PD' AS `dty`,`tbl_traproduct`.`pid` AS `did`,`tbl_traproduct`.`icdis` * `tbl_traproduct`.`p_in` AS `amo`,'42' AS `cid`,'LE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sales` on(`tbl_sales`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SR' and `tbl_traproduct`.`icdis` > 0 union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'PD' AS `dty`,`tbl_traproduct`.`pid` AS `did`,`tbl_traproduct`.`icinvdis` * `tbl_traproduct`.`p_in` AS `amo`,'41' AS `cid`,'LE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_sales` on(`tbl_sales`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'SR' and `tbl_traproduct`.`icinvdis` > 0 union all select `tbl_sreturn`.`id` AS `id`,`tbl_sreturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sreturn`.`type` AS `dty`,`tbl_sreturn`.`cusid` AS `did`,`tbl_sreturn`.`itemdis` AS `amo`,cast('37' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sreturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sreturn`.`apdate` AS `apdate`,`tbl_sreturn`.`brid` AS `brid`,`tbl_sreturn`.`uid` AS `uid`,`tbl_sreturn`.`date` AS `date` from `tbl_sreturn` where `tbl_sreturn`.`itemdis` > 0 union all select `tbl_sreturn`.`id` AS `id`,`tbl_sreturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sreturn`.`type` AS `dty`,`tbl_sreturn`.`cusid` AS `did`,`tbl_sreturn`.`disamo` AS `amo`,cast('36' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sreturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sreturn`.`apdate` AS `apdate`,`tbl_sreturn`.`brid` AS `brid`,`tbl_sreturn`.`uid` AS `uid`,`tbl_sreturn`.`date` AS `date` from `tbl_sreturn` where `tbl_sreturn`.`disamo` > 0 union all select `tbl_sreturn`.`id` AS `id`,`tbl_sreturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('10' as signed) AS `did`,`tbl_sreturn`.`vatamo` AS `amo`,`tbl_sreturn`.`cusid` AS `cid`,`tbl_sreturn`.`type` AS `cty`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sreturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sreturn`.`apdate` AS `apdate`,`tbl_sreturn`.`brid` AS `brid`,`tbl_sreturn`.`uid` AS `uid`,`tbl_sreturn`.`date` AS `date` from `tbl_sreturn` where `tbl_sreturn`.`vatamo` > 0 union all select `tbl_sreturn`.`id` AS `id`,`tbl_sreturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('38' as signed) AS `did`,`tbl_sreturn`.`aitamo` AS `amo`,`tbl_sreturn`.`cusid` AS `cid`,`tbl_sreturn`.`type` AS `cty`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sreturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sreturn`.`apdate` AS `apdate`,`tbl_sreturn`.`brid` AS `brid`,`tbl_sreturn`.`uid` AS `uid`,`tbl_sreturn`.`date` AS `date` from `tbl_sreturn` where `tbl_sreturn`.`aitamo` > 0 union all select `tbl_sreturn`.`id` AS `id`,`tbl_sreturn`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sreturn`.`type` AS `dty`,`tbl_sreturn`.`cusid` AS `did`,`tbl_sreturn`.`less` AS `amo`,cast('46' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sreturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sreturn`.`apdate` AS `apdate`,`tbl_sreturn`.`brid` AS `brid`,`tbl_sreturn`.`uid` AS `uid`,`tbl_sreturn`.`date` AS `date` from `tbl_sreturn` where `tbl_sreturn`.`less` > 0 union all select `tbl_sreturn`.`id` AS `id`,`tbl_sreturn`.`invno` AS `invno`,`tbl_sreturn`.`invno` AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sreturn`.`type` AS `dty`,`tbl_sreturn`.`cusid` AS `did`,`tbl_sreturn`.`rawcash` - `tbl_sreturn`.`changes` AS `amo`,cast(`SPLIT_STRING`(`tbl_sreturn`.`creditid`,'_',2) as signed) AS `cid`,`SPLIT_STRING`(`tbl_sreturn`.`creditid`,'_',1) AS `cty`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sreturn`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sreturn`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sreturn`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sreturn`.`apdate` AS `apdate`,`tbl_sreturn`.`brid` AS `brid`,`tbl_sreturn`.`uid` AS `uid`,`tbl_sreturn`.`date` AS `date` from `tbl_sreturn` where `tbl_sreturn`.`rawcash` - `tbl_sreturn`.`changes` > 0 union all select `tbl_sersalesde`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sersales`.`type` AS `dty`,`tbl_sersales`.`cusid` AS `did`,`tbl_sersalesde`.`price` * `tbl_sersalesde`.`qty` AS `amo`,`tbl_sersalesde`.`sid` AS `cid`,'SE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,if(`tbl_sersalesde`.`sid` = 0,`tbl_sersalesde`.`name`,NULL) AS `ref`,`tbl_sersales`.`curid` AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersalesde`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from (`tbl_sersalesde` left join `tbl_sersales` on(`tbl_sersales`.`id` = `tbl_sersalesde`.`seid`)) union all select `tbl_sersalesde`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,'14' AS `did`,`tbl_sersalesde`.`cost` * `tbl_sersalesde`.`qty` AS `amo`,`tbl_sersalesde`.`sid` AS `cid`,'SE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,if(`tbl_sersalesde`.`sid` = 0,`tbl_sersalesde`.`name`,NULL) AS `ref`,`tbl_sersales`.`curid` AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersalesde`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from (`tbl_sersalesde` left join `tbl_sersales` on(`tbl_sersales`.`id` = `tbl_sersalesde`.`seid`)) union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('37' as signed) AS `did`,`tbl_sersales`.`itemdis` AS `amo`,`tbl_sersales`.`cusid` AS `cid`,`tbl_sersales`.`type` AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`itemdis` > 0 union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('36' as signed) AS `did`,`tbl_sersales`.`disamo` AS `amo`,`tbl_sersales`.`cusid` AS `cid`,`tbl_sersales`.`type` AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`disamo` > 0 union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sersales`.`type` AS `dty`,`tbl_sersales`.`cusid` AS `did`,`tbl_sersales`.`vatamo` AS `amo`,cast('10' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`vatamo` > 0 union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sersales`.`type` AS `dty`,`tbl_sersales`.`cusid` AS `did`,`tbl_sersales`.`aitamo` AS `amo`,cast('38' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`aitamo` > 0 union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sersales`.`type` AS `dty`,`tbl_sersales`.`cusid` AS `did`,`tbl_sersales`.`otamo` AS `amo`,cast('39' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`otamo` > 0 union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`tbl_sersales`.`type` AS `dty`,`tbl_sersales`.`cusid` AS `did`,`tbl_sersales`.`freight` AS `amo`,cast('12' as signed) AS `cid`,'LE' AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`freight` > 0 union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('40' as signed) AS `did`,`tbl_sersales`.`less` AS `amo`,`tbl_sersales`.`cusid` AS `cid`,`tbl_sersales`.`type` AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`less` > 0 union all select `tbl_sersales`.`id` AS `id`,`tbl_sersales`.`invno` AS `invno`,`tbl_sersales`.`invno` AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,`SPLIT_STRING`(`tbl_sersales`.`debitid`,'_',1) AS `dty`,cast(`SPLIT_STRING`(`tbl_sersales`.`debitid`,'_',2) as signed) AS `did`,`tbl_sersales`.`rawcash` - `tbl_sersales`.`changes` AS `amo`,`tbl_sersales`.`cusid` AS `cid`,`tbl_sersales`.`type` AS `cty`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL),NULL) AS `chkno`,cast(if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CHK',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',3),NULL),NULL) as date) AS `chkdt`,if(octet_length(`tbl_sersales`.`details`) > 3,if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'CRD',concat((select `tbl_bank`.`name` from `tbl_bank` where `tbl_bank`.`id` = `SPLIT_STRING`(`tbl_sersales`.`details`,'_',4)),'-',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2)),if(`SPLIT_STRING`(`tbl_sersales`.`details`,'_',1) = 'MOB',`SPLIT_STRING`(`tbl_sersales`.`details`,'_',2),NULL)),NULL) AS `otnote`,0 AS `recon`,`tbl_sersales`.`ref` AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_sersales`.`apdate` AS `apdate`,`tbl_sersales`.`brid` AS `brid`,`tbl_sersales`.`uid` AS `uid`,`tbl_sersales`.`date` AS `date` from `tbl_sersales` where `tbl_sersales`.`rawcash` - `tbl_sersales`.`changes` > 0 union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'LE' AS `dty`,'50' AS `did`,`tbl_traproduct`.`cost` * `tbl_traproduct`.`p_out` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_disposal` on(`tbl_disposal`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'DS' union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,if(`tbl_disposal`.`type` is null or octet_length(`tbl_disposal`.`type`) < 1,'LE',`tbl_disposal`.`type`) AS `dty`,if(`tbl_disposal`.`type` is null or octet_length(`tbl_disposal`.`type`) < 1,'49',`tbl_disposal`.`cusid`) AS `did`,`tbl_traproduct`.`price` * `tbl_traproduct`.`p_out` AS `amo`,`tbl_traproduct`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_disposal` on(`tbl_disposal`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'DS' and `tbl_traproduct`.`price` > 0 union all select `tbl_traproduct`.`id` AS `id`,`tbl_traproduct`.`invno` AS `invno`,NULL AS `refinv`,`tbl_traproduct`.`pjid` AS `pjid`,`tbl_traproduct`.`prjno` AS `prjno`,`tbl_traproduct`.`mtype` AS `mtype`,'PD' AS `dty`,`tbl_traproduct`.`pid` AS `did`,`tbl_traproduct`.`price` * `tbl_traproduct`.`p_out` AS `amo`,'51' AS `cid`,'LE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_traproduct`.`apdate` AS `apdate`,`tbl_traproduct`.`brid` AS `brid`,`tbl_traproduct`.`uid` AS `uid`,`tbl_traproduct`.`date` AS `date` from (`tbl_traproduct` left join `tbl_disposal` on(`tbl_disposal`.`invno` = `tbl_traproduct`.`invno`)) where `tbl_traproduct`.`mods` = 'DS' and `tbl_traproduct`.`price` > 0 union all select `tbl_disposal`.`id` AS `id`,`tbl_disposal`.`invno` AS `invno`,`tbl_disposal`.`invno` AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,cast('2' as signed) AS `did`,`tbl_disposal`.`amount` AS `amo`,`tbl_disposal`.`cusid` AS `cid`,`tbl_disposal`.`type` AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,`tbl_disposal`.`note` AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,`tbl_disposal`.`apdate` AS `apdate`,`tbl_disposal`.`brid` AS `brid`,`tbl_disposal`.`uid` AS `uid`,`tbl_disposal`.`date` AS `date` from `tbl_disposal` where `tbl_disposal`.`amount` > 0 union all select `tbl_waranty`.`id` AS `id`,`tbl_waranty`.`invno` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'PD' AS `dty`,`tbl_waranty`.`pid` AS `did`,`tbl_waranty`.`sat_amount` AS `amo`,`tbl_waranty`.`cusid` AS `cid`,`tbl_waranty`.`type` AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,cast(`tbl_waranty`.`d_date` as date) AS `apdate`,`tbl_waranty`.`brid` AS `brid`,`tbl_waranty`.`uid` AS `uid`,`tbl_waranty`.`d_date` AS `date` from `tbl_waranty` where `tbl_waranty`.`sat_amount` > 0 union all select `tbl_waranty`.`id` AS `id`,if(`tbl_waranty`.`binvno` is not null,`tbl_waranty`.`binvno`,`tbl_waranty`.`invno`) AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'SU' AS `dty`,`tbl_waranty`.`supid` AS `did`,`tbl_waranty`.`sat_amount` AS `amo`,`tbl_waranty`.`pid` AS `cid`,'PD' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,cast(`tbl_waranty`.`d_date` as date) AS `apdate`,`tbl_waranty`.`brid` AS `brid`,`tbl_waranty`.`uid` AS `uid`,`tbl_waranty`.`d_date` AS `date` from `tbl_waranty` where `tbl_waranty`.`sat_amount` > 0 union all select `tbl_salarysheet`.`id` AS `id`,`tbl_salarysheet`.`payslip` AS `invno`,NULL AS `refinv`,NULL AS `pjid`,NULL AS `prjno`,'0' AS `mtype`,'LE' AS `dty`,'48' AS `did`,`tbl_salarysheet`.`tsalary` AS `amo`,`tbl_salarysheet`.`empid` AS `cid`,'EM' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,1 AS `curid`,0 AS `xrate`,`tbl_salarysheet`.`apdate` AS `apdate`,`tbl_employe`.`wbrid` AS `brid`,`tbl_salarysheet`.`uid` AS `uid`,`tbl_salarysheet`.`date` AS `date` from (`tbl_salarysheet` left join `tbl_employe` on(`tbl_employe`.`id` = `tbl_salarysheet`.`empid`)) union all select `tbl_project`.`id` AS `id`,concat('PRD-',`tbl_project`.`prjid`) AS `invno`,NULL AS `refinv`,`tbl_project`.`id` AS `pjid`,`tbl_project`.`prjid` AS `prjno`,0 AS `mtype`,'CU' AS `dty`,`tbl_project`.`client` AS `did`,cast(`tbl_project`.`prjamount` as decimal(15,2)) AS `amo`,'72' AS `cid`,'LE' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,cast(`tbl_project`.`date` as date) AS `apdate`,`tbl_project`.`brid` AS `brid`,`tbl_project`.`uid` AS `uid`,`tbl_project`.`date` AS `date` from `tbl_project` where `tbl_project`.`client` is not null and `tbl_project`.`prjamount` > 0 union all select `tbl_project`.`id` AS `id`,concat('PRC-',`tbl_project`.`prjid`) AS `invno`,NULL AS `refinv`,`tbl_project`.`id` AS `pjid`,`tbl_project`.`prjid` AS `prjno`,0 AS `mtype`,'LE' AS `dty`,'72' AS `did`,cast(`tbl_project`.`coamo` as decimal(15,2)) AS `amo`,`tbl_project`.`coid` AS `cid`,'CO' AS `cty`,NULL AS `chkno`,NULL AS `chkdt`,NULL AS `otnote`,0 AS `recon`,NULL AS `ref`,0 AS `curid`,0 AS `xrate`,cast(`tbl_project`.`date` as date) AS `apdate`,`tbl_project`.`brid` AS `brid`,`tbl_project`.`uid` AS `uid`,`tbl_project`.`date` AS `date` from `tbl_project` where `tbl_project`.`coid` is not null and `tbl_project`.`coamo` > 0 ;

-- --------------------------------------------------------

--
-- Structure for view `tbl_whstock`
--
DROP TABLE IF EXISTS `tbl_whstock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`axesofts`@`localhost` SQL SECURITY DEFINER VIEW `tbl_whstock`  AS  select `weh`.`waid` AS `waid`,`pro`.`name` AS `name`,`pro`.`bname` AS `bname`,`pro`.`code` AS `code`,`pro`.`image` AS `image`,`wst`.`pid` AS `pid`,`wst`.`unqid` AS `unqid`,ifnull(`wpo`.`poqty`,0) AS `poqty`,ifnull(`wpu`.`pqty`,0) AS `pqty`,ifnull(`rcv`.`rcvqty`,0) AS `rcvqty`,ifnull(`sen`.`senqty`,0) AS `senqty`,ifnull(`dis`.`adjqty`,0) AS `adjqty`,ifnull(`wpu`.`pqty`,0) + ifnull(`rcv`.`rcvqty`,0) - (ifnull(`sen`.`senqty`,0) + ifnull(`dis`.`adjqty`,0)) AS `avqty` from (((((((((select `tbl_stock`.`pid` AS `pid`,`tbl_stock`.`unqid` AS `unqid` from `tbl_stock` group by `tbl_stock`.`unqid`)) `wst` left join (select `tbl_traproduct`.`unqid` AS `unqid`,`tbl_traproduct`.`waid` AS `waid` from `tbl_traproduct` where `tbl_traproduct`.`brid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`waid`) `weh` on(`weh`.`unqid` = `wst`.`unqid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_qty`) AS `poqty`,`tbl_traproduct`.`waid` AS `waid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'PU' and `tbl_traproduct`.`brid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`waid`) `wpo` on(`wpo`.`unqid` = `wst`.`unqid` and `wpo`.`waid` = `weh`.`waid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_in`) AS `pqty`,`tbl_traproduct`.`waid` AS `waid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'PU' and `tbl_traproduct`.`brid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`waid`) `wpu` on(`wpu`.`unqid` = `wst`.`unqid` and `wpu`.`waid` = `weh`.`waid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_in`) AS `rcvqty`,`tbl_traproduct`.`waid` AS `waid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'TR' and `tbl_traproduct`.`brid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`waid`) `rcv` on(`rcv`.`unqid` = `wst`.`unqid` and `rcv`.`waid` = `weh`.`waid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_out`) AS `senqty`,`tbl_traproduct`.`waid` AS `waid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'TR' and `tbl_traproduct`.`brid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`waid`) `sen` on(`sen`.`unqid` = `wst`.`unqid` and `sen`.`waid` = `weh`.`waid`)) left join (select `tbl_traproduct`.`unqid` AS `unqid`,sum(`tbl_traproduct`.`p_out`) AS `adjqty`,`tbl_traproduct`.`waid` AS `waid` from `tbl_traproduct` where `tbl_traproduct`.`mods` = 'DS' and `tbl_traproduct`.`brid` is null group by `tbl_traproduct`.`unqid`,`tbl_traproduct`.`waid`) `dis` on(`dis`.`unqid` = `wst`.`unqid` and `dis`.`waid` = `weh`.`waid`)) left join (select `tbl_item`.`id` AS `id`,`tbl_item`.`code` AS `code`,`tbl_item`.`name` AS `name`,`tbl_item`.`bname` AS `bname`,`tbl_item`.`image` AS `image` from `tbl_item` where `tbl_item`.`status` = '1') `pro` on(`pro`.`id` = `wst`.`pid`)) where `weh`.`waid` is not null order by `pro`.`name` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_acgroup`
--
ALTER TABLE `tbl_acgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_aclass`
--
ALTER TABLE `tbl_aclass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_acledger`
--
ALTER TABLE `tbl_acledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_acmobile`
--
ALTER TABLE `tbl_acmobile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_acsubgroup`
--
ALTER TABLE `tbl_acsubgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bacount`
--
ALTER TABLE `tbl_bacount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_badstockclaim`
--
ALTER TABLE `tbl_badstockclaim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banktra`
--
ALTER TABLE `tbl_banktra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banktrade`
--
ALTER TABLE `tbl_banktrade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cashflow`
--
ALTER TABLE `tbl_cashflow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_color`
--
ALTER TABLE `tbl_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contractor`
--
ALTER TABLE `tbl_contractor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_disposal`
--
ALTER TABLE `tbl_disposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employe`
--
ALTER TABLE `tbl_employe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_estimate`
--
ALTER TABLE `tbl_estimate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_estimatede`
--
ALTER TABLE `tbl_estimatede`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_invoicede`
--
ALTER TABLE `tbl_invoicede`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_item`
--
ALTER TABLE `tbl_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_journal`
--
ALTER TABLE `tbl_journal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_journalde`
--
ALTER TABLE `tbl_journalde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lcopen`
--
ALTER TABLE `tbl_lcopen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leave`
--
ALTER TABLE `tbl_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_leaverequest`
--
ALTER TABLE `tbl_leaverequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_limitset`
--
ALTER TABLE `tbl_limitset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_loanid`
--
ALTER TABLE `tbl_loanid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_manfacturer`
--
ALTER TABLE `tbl_manfacturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `tbl_note`
--
ALTER TABLE `tbl_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_parent`
--
ALTER TABLE `tbl_parent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payvoucher`
--
ALTER TABLE `tbl_payvoucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pdlirecord`
--
ALTER TABLE `tbl_pdlirecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_precrecord`
--
ALTER TABLE `tbl_precrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_preturn`
--
ALTER TABLE `tbl_preturn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_prjtype`
--
ALTER TABLE `tbl_prjtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_procha`
--
ALTER TABLE `tbl_procha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_progroup`
--
ALTER TABLE `tbl_progroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_proinv`
--
ALTER TABLE `tbl_proinv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_proinvde`
--
ALTER TABLE `tbl_proinvde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_proreturn`
--
ALTER TABLE `tbl_proreturn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_prosubgroup`
--
ALTER TABLE `tbl_prosubgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purorder`
--
ALTER TABLE `tbl_purorder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_purorderde`
--
ALTER TABLE `tbl_purorderde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rebeat`
--
ALTER TABLE `tbl_rebeat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_recvoucher`
--
ALTER TABLE `tbl_recvoucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salarysheet`
--
ALTER TABLE `tbl_salarysheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sercenter`
--
ALTER TABLE `tbl_sercenter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_serial`
--
ALTER TABLE `tbl_serial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_serialsale`
--
ALTER TABLE `tbl_serialsale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_seritem`
--
ALTER TABLE `tbl_seritem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sersales`
--
ALTER TABLE `tbl_sersales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sersalesde`
--
ALTER TABLE `tbl_sersalesde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_shipline`
--
ALTER TABLE `tbl_shipline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_size`
--
ALTER TABLE `tbl_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sreturn`
--
ALTER TABLE `tbl_sreturn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subcat`
--
ALTER TABLE `tbl_subcat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trafrbra`
--
ALTER TABLE `tbl_trafrbra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_trafrwho`
--
ALTER TABLE `tbl_trafrwho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_traproduct`
--
ALTER TABLE `tbl_traproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apdate` (`pid`,`unqid`,`apdate`,`date`) USING BTREE;

--
-- Indexes for table `tbl_trarecord`
--
ALTER TABLE `tbl_trarecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_usergroup`
--
ALTER TABLE `tbl_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_userpermision`
--
ALTER TABLE `tbl_userpermision`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_waranty`
--
ALTER TABLE `tbl_waranty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_acgroup`
--
ALTER TABLE `tbl_acgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_aclass`
--
ALTER TABLE `tbl_aclass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_acledger`
--
ALTER TABLE `tbl_acledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tbl_acmobile`
--
ALTER TABLE `tbl_acmobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_acsubgroup`
--
ALTER TABLE `tbl_acsubgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=962;

--
-- AUTO_INCREMENT for table `tbl_bacount`
--
ALTER TABLE `tbl_bacount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_badstockclaim`
--
ALTER TABLE `tbl_badstockclaim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_banktra`
--
ALTER TABLE `tbl_banktra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_banktrade`
--
ALTER TABLE `tbl_banktrade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `tbl_cashflow`
--
ALTER TABLE `tbl_cashflow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_color`
--
ALTER TABLE `tbl_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_contractor`
--
ALTER TABLE `tbl_contractor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_currency`
--
ALTER TABLE `tbl_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_delivery`
--
ALTER TABLE `tbl_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_disposal`
--
ALTER TABLE `tbl_disposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_employe`
--
ALTER TABLE `tbl_employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_estimate`
--
ALTER TABLE `tbl_estimate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_estimatede`
--
ALTER TABLE `tbl_estimatede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_invoicede`
--
ALTER TABLE `tbl_invoicede`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_item`
--
ALTER TABLE `tbl_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_journal`
--
ALTER TABLE `tbl_journal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_journalde`
--
ALTER TABLE `tbl_journalde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_lcopen`
--
ALTER TABLE `tbl_lcopen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_leave`
--
ALTER TABLE `tbl_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_leaverequest`
--
ALTER TABLE `tbl_leaverequest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_loanid`
--
ALTER TABLE `tbl_loanid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_manfacturer`
--
ALTER TABLE `tbl_manfacturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_messages`
--
ALTER TABLE `tbl_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_note`
--
ALTER TABLE `tbl_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_parent`
--
ALTER TABLE `tbl_parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_payvoucher`
--
ALTER TABLE `tbl_payvoucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `tbl_pdlirecord`
--
ALTER TABLE `tbl_pdlirecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_precrecord`
--
ALTER TABLE `tbl_precrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_preturn`
--
ALTER TABLE `tbl_preturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_prjtype`
--
ALTER TABLE `tbl_prjtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_procha`
--
ALTER TABLE `tbl_procha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_progroup`
--
ALTER TABLE `tbl_progroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_proinv`
--
ALTER TABLE `tbl_proinv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_proinvde`
--
ALTER TABLE `tbl_proinvde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_proreturn`
--
ALTER TABLE `tbl_proreturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_prosubgroup`
--
ALTER TABLE `tbl_prosubgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_purchase`
--
ALTER TABLE `tbl_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_purorder`
--
ALTER TABLE `tbl_purorder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_purorderde`
--
ALTER TABLE `tbl_purorderde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_rebeat`
--
ALTER TABLE `tbl_rebeat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_recvoucher`
--
ALTER TABLE `tbl_recvoucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_salarysheet`
--
ALTER TABLE `tbl_salarysheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_sales`
--
ALTER TABLE `tbl_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sercenter`
--
ALTER TABLE `tbl_sercenter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_serial`
--
ALTER TABLE `tbl_serial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_serialsale`
--
ALTER TABLE `tbl_serialsale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_seritem`
--
ALTER TABLE `tbl_seritem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sersales`
--
ALTER TABLE `tbl_sersales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sersalesde`
--
ALTER TABLE `tbl_sersalesde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_shipline`
--
ALTER TABLE `tbl_shipline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_size`
--
ALTER TABLE `tbl_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sreturn`
--
ALTER TABLE `tbl_sreturn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_stock`
--
ALTER TABLE `tbl_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_subcat`
--
ALTER TABLE `tbl_subcat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_supplier`
--
ALTER TABLE `tbl_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_trafrbra`
--
ALTER TABLE `tbl_trafrbra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_trafrwho`
--
ALTER TABLE `tbl_trafrwho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_traproduct`
--
ALTER TABLE `tbl_traproduct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_trarecord`
--
ALTER TABLE `tbl_trarecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `tbl_unit`
--
ALTER TABLE `tbl_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_usergroup`
--
ALTER TABLE `tbl_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_userpermision`
--
ALTER TABLE `tbl_userpermision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `tbl_waranty`
--
ALTER TABLE `tbl_waranty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_zone`
--
ALTER TABLE `tbl_zone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
