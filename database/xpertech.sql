-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2018 at 12:34 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xpertech`
--

-- --------------------------------------------------------

--
-- Table structure for table `cablebox`
--

CREATE TABLE `cablebox` (
  `box_number` int(11) NOT NULL,
  `manufacturer` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `color` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cablebox`
--

INSERT INTO `cablebox` (`box_number`, `manufacturer`, `model`, `color`) VALUES
(1001, 'Skyworth', 'HD 7400', 'Black'),
(1002, 'IPTV Dexing', 'Dexing ABV017CA-SMC', '');

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `channel_number` int(11) NOT NULL,
  `channel_name` varchar(30) NOT NULL,
  `package_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`channel_number`, `channel_name`, `package_id`) VALUES
(0, 'ABS_CBN', 1),
(1, 'PTV', 1),
(2, 'TV5', 1),
(3, 'COMMUNITY CHANNEL', 1),
(4, 'GMA 7', 1),
(5, 'CINEMA ONE', 1),
(6, 'ISLAND LIVING CHANNEL', 1),
(7, 'JEEPNEY TV', 1),
(8, 'GNN', 1),
(9, 'IBC 13', 1),
(10, 'PAY-PER-VIEW', 1),
(11, 'HOPE INTERNATIONAL', 1),
(12, 'CNN PHILIPPINES', 1),
(13, 'GMA NEWS TV', 1),
(14, 'SPORTS + ACTION', 1),
(15, 'DZMM TELERADIO', 1),
(16, 'DZRH NEWS', 1),
(17, 'LIVING ASIA', 1),
(18, 'DIVA', 1),
(19, 'HBO', 1),
(20, 'FOX MOVIES', 1),
(21, 'CINEMAX', 1),
(22, 'LOTUS MACAU', 1),
(23, 'FOX FAMILY MOVIES', 1),
(24, 'AKSYON TV', 1),
(25, 'FOX LIFE', 1),
(26, 'WARNER TV', 1),
(27, 'CARTOON NETWORK', 1),
(28, 'YEYI', 1),
(29, 'JACK TV', 1),
(30, 'ANIMAX', 1),
(31, 'DISNEY CHANNEL', 1),
(32, 'NICKELODEON', 1),
(33, 'SOLAR SPORTS', 1),
(34, 'FOX SPORTS', 1),
(35, 'FOX SPORTS 2', 1),
(36, 'BTV', 1),
(37, 'TRT WORLD', 1),
(38, 'AKLASS  TWO', 1),
(39, 'DUBAI SPORTS', 1),
(40, 'I24 NEWS', 1),
(41, 'CNN INTERNATIONAL', 1),
(42, 'CHANNEL NEWS ASIA', 1),
(43, 'BLOOMBERG', 1),
(44, 'AL JAZEERA INT''L', 1),
(45, 'ANC', 1),
(46, 'CGTN', 1),
(47, 'TVN', 2),
(48, 'FOX CHANNEL', 2),
(49, 'FOX NEWS', 2),
(50, 'FOX CRIME', 2),
(51, 'FX', 2),
(52, 'ANIMAL PLANET', 2),
(53, 'DISCOVERY WORLD', 2),
(54, 'SETANTA SPORTS', 2),
(55, 'SONY CHANNEL', 2),
(56, 'DISNEY JUNIOR', 1),
(57, 'HISTORY', 2),
(58, 'FYI', 2),
(59, 'TRU TV', 2),
(60, 'AMC', 2),
(61, 'E!', 2),
(62, 'OUTDOOR CHANNEL', 2),
(63, 'NBA PREMIUM TV', 2);

-- --------------------------------------------------------

--
-- Table structure for table `manual_step`
--

CREATE TABLE `manual_step` (
  `manual_id` int(11) NOT NULL,
  `manual_desc` varchar(10000) NOT NULL,
  `position` int(11) NOT NULL,
  `box_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manual_step`
--

INSERT INTO `manual_step` (`manual_id`, `manual_desc`, `position`, `box_id`) VALUES
(1, '1.1 Safety instructions\r\n	Do not install your receiver: \r\n		-in a closed or poorly ventilated cabinet; directly on top of or under any other equipment; on a surface which might obstruct the ventilation slots. \r\n	Do not expose the receiver or its accessories: \r\n		-to direct sunlight or any other equipment that generates heat; to rain or intense moisture; to intense vibration and to any shock which may cause permanent damage to your receiver or to any magnetic objects, such as loudspeakers, transformers, etc.\r\n		-do not use a damaged power cord. It may cause a fire or an electric shock. Do not touch a power cord with wet hands. It may cause an electric shock.\r\n		-when the receiver is not used for a long period of time, you should unplug the power cord from the wall socket. \r\n		-do not use alcohol or ammonia-based liquids to clean the receiver. If you wish, you may clean your receiver with a soft lint-free cloth slightly made damp with a mild soap solution, and only after disconnecting from the mains voltage supply. Make sure no foreign objects fall through the ventilation slots because this could cause fire or an electric shock.\r\n		-do not place any objects on top of the receiver because this might prevent proper cooling of the components inside. \r\n	Safety precautions \r\n		-never try to open the receiver. It is dangerous to touch the inside of the receiver due to high voltages and possible electrical hazards. Opening the receiver will void the warranty of the product. Refer all maintenance or servicing to suitably qualified personnel\r\n		-when you are connecting cables, be sure that the receiver is disconnected from the mains supply voltage. Wait a few seconds after switching off the receiver before you move the receiver or disconnect any equipment\r\n		-it is a necessity that you only use an approved extension and compatible wiring that is suitable for the electrical power consumption of the installed equipment. Please ensure that the electrical power supply corresponds with the voltage on the electrical identification plate at the back of the receiver. If the receiver does not operate normally even after strictly following the instructions in this user manual, it is recommended to consult your dealer. \r\n\r\n1.2 Storage \r\nYour receiver and its accessories are stored and delivered in a packaging designed to protect against mechanical shocks and moisture. When unpacking it, make sure that all the parts are included and keep the packaging away from children. When transporting the receiver from one place to another or if you are returning it under warranty conditions, make sure to repack the receiver in its original packaging with its accessories. Failing to comply with such packaging procedures could damage the product and void your warranty. \r\n\r\n1.3 Equipment Set-up We recommend you to consult a professional installer to set up your equipment. Otherwise, please follow the instructions below:\r\n	-refer to the user manual of your tv and, if applicable, your antenna.\r\n	-make sure that the hdmi cable and, if applicable, outdoor components are in a good condition.\r\n	-if you use the tv scart connection, use a well shielded scart cable. This manual provides complete instructions for installing and using this receiver. The following symbols will serve as follow.  warning:   indicates warning information. \r\n	Tips - indicates any other additional important or helpful information. \r\n	Menu - represents a button on the remote control or the receiver.\r\n	Move to - represents a menu item within a window.\r\n1.4 Accessories\r\n	-installation instructions\r\n	-1 remote control unit\r\n	-2x batteries (aaa type)\r\n	-1 hdmi cable\r\n	-power adapter12 v dc, 1.5 a \r\n1.5 Usage of external usb devices \r\n	-it is recommended to use usb 2.0 storage devices or higher. If your device is not compatible to usb 2.0 specifications, playback and other multimedia functions of the receiver might not work properly.\r\n	-to ensure best performance of your usb storage device please format it via your receiver (through the menu “multimedia”) to fat32 system. Other file systems are not all supported by the receiver. However, it is possible to use already ntfs formatted disks.\r\n	-skyworth cannot guarantee compatibility with all types of usb storage devices.\r\n	-if you are going to use external usb hdds (hard disk drives), please consider that power specifications may exceed the supported output of your receiver (max.5 v/800 ma). If so, please connect your usb hdd to an according external power adapter.\r\n	-playback of files cannot be guaranteed although extensions are listed, as it depends on codec, data bit rate and resolution used (all mpeg codec formats are supported).\r\n	-it is advised not to store important information on usb storage devices used with the receiver. Always make backups of data on your usb storage device before using it with this receiver. Skyworth will not take responsibility for any loss of information or circumstances caused by loss of information. ', 1, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `ownership`
--

CREATE TABLE `ownership` (
  `ownership_id` bigint(20) NOT NULL,
  `box_number` int(11) NOT NULL,
  `subscriber_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ownership`
--

INSERT INTO `ownership` (`ownership_id`, `box_number`, `subscriber_id`) VALUES
(10011000000001, 1001, 1000000001),
(10011000000002, 1001, 1000000002);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_number` int(11) NOT NULL,
  `package_name` varchar(20) NOT NULL,
  `package_desc` varchar(50) NOT NULL,
  `digital_box` decimal(10,2) NOT NULL,
  `monthsub_mainline` decimal(10,2) NOT NULL,
  `monthsub_extline` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_number`, `package_name`, `package_desc`, `digital_box`, `monthsub_mainline`, `monthsub_extline`) VALUES
(1, 'Crystal Package', 'More than 100 channels', '1000.00', '480.00', '70.00'),
(2, 'Diamond Package', 'Crystal Package + 17 Premium Channels', '1000.00', '680.00', '100.00');

-- --------------------------------------------------------

--
-- Table structure for table `remote_control`
--

CREATE TABLE `remote_control` (
  `remote_id` int(11) NOT NULL,
  `remote_instruction` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remote_control`
--

INSERT INTO `remote_control` (`remote_id`, `remote_instruction`) VALUES
(0, 'Install the batteries.'),
(1, 'Find the manufacturer’s code for your TV (see other side).'),
(2, 'Turn on your TV.'),
(3, 'Press and hold the SET button until the red light flashes twice, then release.'),
(4, 'Enter the first manufacturer’s code you found in step 2. The red light will flash twice.'),
(5, 'Press the POWER button. If the TV turns off, make sure that the VOL+/- and MUTE buttons also work. If so, you are all set!'),
(6, 'If not, repeat the steps using another manufacturer’s code.'),
(7, 'If it still doesn’t work using all the codes you can find, contact Customer Support.');

-- --------------------------------------------------------

--
-- Table structure for table `remote_detail`
--

CREATE TABLE `remote_detail` (
  `remote_detail_id` int(11) NOT NULL,
  `remote_detail_name` varchar(255) NOT NULL,
  `remote_desc` varchar(255) NOT NULL,
  `remote_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remote_detail`
--

INSERT INTO `remote_detail` (`remote_detail_id`, `remote_detail_name`, `remote_desc`, `remote_image`) VALUES
(1, 'TV', 'Switches back to TV mode.', 'remote_1'),
(2, 'Indicator light', 'Flashes red during programming sequences and when any key is pressed.', 'remote_2'),
(3, 'POWER', 'When programmed, turns your TV on or off (it will not turn off your Digital Receiver). ', 'remote_3'),
(4, 'VOL+/–', 'Turns the volume up and down on the digital receiver. Once your remote is programmed, these keys operate the TV’s volume control.', 'remote_4'),
(5, 'MUTE', 'Turns the sound on and off.', 'remote_5'),
(6, 'CH+/–', 'Selects the next higher or lower channel.', 'remote_6'),
(7, 'Keypad (0-9)', 'Select the channel you want to view (e.g., 0-9 or 02-5).', 'remote_7'),
(8, 'HOME/PLAY BUTTON', 'Tunes directly to a channel (e.g., 1-0-9 ENTER).', 'remote_8'),
(9, 'BACK', 'Goes back to the last channel viewed.', 'remote_9'),
(10, 'MENU', 'Pulls up menu options.', 'remote_10'),
(11, 'INFO', 'Displays the current channel information available.', 'remote_11'),
(12, 'EPG', 'Electronic Programming Guide, will display multiple channels available from availed package and by navigation allows you to select the channel.', 'remote_12'),
(13, 'DVD/DVR Controls', 'When programmed to an additional service (DVR), will control the following buttons: PLAY/PAUSE, STOP, FORWARD, BACKTRACK, UP,DOWN, LEFT, RIGHT SELECTIONS ', 'remote_13');

-- --------------------------------------------------------

--
-- Table structure for table `selfinstall`
--

CREATE TABLE `selfinstall` (
  `selfinstall_id` int(11) NOT NULL,
  `selfinstall_title` varchar(30) NOT NULL,
  `box_number` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selfinstall`
--

INSERT INTO `selfinstall` (`selfinstall_id`, `selfinstall_title`, `box_number`, `position`) VALUES
(1, 'Unpacking', 1001, 0),
(2, 'Plugging In', 1001, 0),
(3, 'Powering up the Box', 1001, 0),
(4, 'Support and Activating Service', 1001, 0);

-- --------------------------------------------------------

--
-- Table structure for table `selfinstall_steps`
--

CREATE TABLE `selfinstall_steps` (
  `install_steps_id` int(11) NOT NULL,
  `install_steps_desc` varchar(500) NOT NULL,
  `install_image_id` varchar(255) DEFAULT NULL,
  `selfinstall_id` int(11) NOT NULL,
  `box_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selfinstall_steps`
--

INSERT INTO `selfinstall_steps` (`install_steps_id`, `install_steps_desc`, `install_image_id`, `selfinstall_id`, `box_id`) VALUES
(0, 'Set Top Box (STB)', 'stb_q1_1', 1, 1001),
(1, 'Infrared remote control', 'stb_q1_2', 1, 1001),
(2, 'Battery', 'stb_q1_3', 1, 1001),
(3, 'Power Adapter', 'stb_q1_4', 1, 1001),
(4, 'Audio or Video Cable', 'stb_q1_5', 1, 1001),
(5, 'Video Graphics Array (VGA) Cable', 'stb_q1_6', 1, 1001),
(6, 'Coax Cable', 'stb_q1_7', 1, 1001),
(7, 'User Guide', '0', 1, 1001),
(8, 'Screw Coax Cable from wall outlet to the back of the cable box.', 'stb_q2_1', 2, 1001),
(9, 'If box is HD capable, connect the VGA cable from the VGA slot at the back of the box to the respective VGA outlet on your TV. If the box is ''not'' HD capable, connect the other coaxial cable from the cable box to your TV.', 'stb_q2_2', 2, 1001),
(10, 'Connect the power cable into the back of the Set Top Box to the power outlet.', 'stb_q2_3', 2, 1001),
(11, 'When all connections said are all set, turn ON the power on your cable box by pressing the Power Button in the front end of your box or Press the Power Button on your cable box Remote Control', 'stb_q3_1', 3, 1001),
(12, 'If you connected your cable box to your TV with coaxial cables, Turn your TV Channel to Channel 2 to see if you got picture. If not, turn your TV to Channels 3 or 4 until you got picture. If you connected HDMI cable from the box to your TV, check the Channel sourcing of your TV and make sure it is tuned in to the appropriate HDMI mode where you connected your HDMI cable at. Either HDMI 1 or HDMI 2, etc', 'stb_q3_2', 3, 1001),
(13, 'If you are able to see pictures already, congratulations! You have successfully set your cable service up! If you are still having issues, visit our website at www.newbacolodcabletv.com or call us at (034) 445-8514 or message us directly on Facebook at New Bacolod CableTV.', 'stb_q4_1', 4, 1001),
(14, 'If your service is not yet activated, call our direct hotline at (034) 445-8514.', '0', 4, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `selfinstall_steps_title`
--

CREATE TABLE `selfinstall_steps_title` (
  `selfinstall_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `box_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `selfinstall_steps_title`
--

INSERT INTO `selfinstall_steps_title` (`selfinstall_id`, `title`, `box_id`) VALUES
(1, 'Your service package selected determines the range of capabilities of your cable box. But for every service, the self-install kit should be inclusive of the following:', 1001),
(2, 'This Self-install guide are for those who wanted to set the installation on their own, assuming that the subscribers'' outside connections are all set.', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `stat_info`
--

CREATE TABLE `stat_info` (
  `stat_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ownership` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stat_info`
--

INSERT INTO `stat_info` (`stat_id`, `type`, `status`, `ownership`) VALUES
(1, 'troubleshoot', 'pass', 10011000000001),
(2, 'login', 'pass', 10011000000001),
(3, 'login', 'fail', 10011000000002),
(4, 'call', 'pass', 10011000000001),
(5, 'call', 'fail', 10011000000002);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `account_number` int(11) NOT NULL,
  `sub_name` varchar(30) NOT NULL,
  `sub_address` varchar(255) NOT NULL,
  `sub_contactnumber` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`account_number`, `sub_name`, `sub_address`, `sub_contactnumber`) VALUES
(1000000001, 'Josh Sanchez', 'Bacolod City', '09096195112'),
(1000000002, 'Nilry Balasa', 'Silay City', '09096192133'),
(1000000003, 'Rhea Martinez', 'Bacolod City', '09096192382'),
(1000000004, 'Melji Aribang', 'Silay City', '09781237817'),
(1000000005, 'Jacob Estrada', 'Bacolod City', '09765849336');

-- --------------------------------------------------------

--
-- Table structure for table `troubleshoot`
--

CREATE TABLE `troubleshoot` (
  `troubleshoot_id` int(11) NOT NULL,
  `troubleshoot_title` varchar(255) NOT NULL,
  `box_number` int(11) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `troubleshoot`
--

INSERT INTO `troubleshoot` (`troubleshoot_id`, `troubleshoot_title`, `box_number`, `position`) VALUES
(1, 'STB Configuration', 1001, 1),
(2, 'TV Configuration (via Simple Set Button)', 1001, 2),
(3, 'My set top box (STB) is not Booting Up.', 1001, 3),
(4, 'My TV has No Audio and/or Video Output', 1001, 4),
(5, 'My TV is Showing "Technical Problem" Error / Pixilated Pictures/ON and OFF Programming', 1001, 5),
(6, 'My TV Screen is Showing an Error Code - E1 / E2 / E11 / E4 / E6 / E14', 1001, 6),
(7, 'No Video', 1002, 1),
(8, 'No Sound', 1002, 2),
(9, 'Lacking Channel', 1002, 3),
(10, 'No Signal', 1002, 4),
(11, 'No Power', 1002, 5);

-- --------------------------------------------------------

--
-- Table structure for table `troubleshoot_steps`
--

CREATE TABLE `troubleshoot_steps` (
  `trbl_steps_id` int(11) NOT NULL,
  `trbl_steps_desc` varchar(255) NOT NULL,
  `trbl_image_id` int(11) DEFAULT NULL,
  `troubleshoot_id` int(11) NOT NULL,
  `box_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `troubleshoot_steps`
--

INSERT INTO `troubleshoot_steps` (`trbl_steps_id`, `trbl_steps_desc`, `trbl_image_id`, `troubleshoot_id`, `box_id`) VALUES
(0, 'First try to check if the RCA Cable is well plugged or scramble.', NULL, 1, 1002),
(1, 'If you are using a BLACK BOX click the green button labeled as AUDIO and click the right or volume up button and change the source of sound from stereo, left or right.', NULL, 1, 1002),
(2, 'If you are using SILVER BOX click the R/L button and click the right or volume up button and change the source of sound from Stereo, Left or Right.', NULL, 1, 1002),
(3, 'If problem still persists call us (034)709-1001 or 435-7182 to schedule tech visit.', NULL, 1, 1002),
(11, 'On the Remote, press and hold OK button and Power button simultaneously until LED blinks 2x', NULL, 1, 1001),
(12, 'Press 9-8-2 on the remote to unlock it for RCU programming, LED should blink 4x', NULL, 1, 1001),
(13, 'Press and hold the OK button and Power button again simultaneously for 3-5 seconds until the LED blinks 2x', NULL, 1, 1001),
(14, 'Press the assigned code 4998/2319 to be controlled', NULL, 1, 1001),
(15, 'Remote control LED will blink 2x once correct code is entered', NULL, 1, 1001),
(16, 'Press and hold the OK button and Power button simultaneously for 3-5 seconds until the LED blinks 2x', NULL, 1, 1001),
(17, 'Press 9-8-2 on the remote to lock it for RCU programming, LED should blink 2x', NULL, 1, 1001),
(21, 'Turn on your TV', NULL, 2, 1001),
(22, 'Press and hold the Simple Set button until LED blinks 2x', NULL, 2, 1001),
(23, 'While pointing the remote control to your TV, press and hold the number button which corresponds to your TV brand until the TV turns off by itself', NULL, 2, 1001),
(24, 'Turn on your TV using the TV remote control', NULL, 2, 1001),
(25, 'Once turned on, perform a test using your remote control to your TV by\r\npressing the Volume Up and Volume Down\r\npressing the Mute button', NULL, 2, 1001),
(26, 'Test the Channel +/- key on the Remote control', NULL, 2, 1001),
(31, 'Make sure your STB is plugged in', NULL, 3, 1001),
(32, 'Check your STB front panel if it is turned on (LED is green)', NULL, 3, 1001),
(33, 'If light is green and still not booting up, perform hard reset by unplugging the STB from the wall socket and plug it back in after 5 seconds', NULL, 3, 1001),
(41, 'Make sure that your TV is not on standby mode', NULL, 4, 1001),
(42, 'Check the connections between the STB and TV if firmly and properly connected', NULL, 4, 1001),
(43, 'On your TV, select the correct Audio/Video input or source (example: AV1, AV2, HDM1 HDM2, etc.)', NULL, 4, 1001),
(44, 'Power on the l STB', NULL, 4, 1001),
(45, 'Check TV and STB volume functions', NULL, 4, 1001),
(46, 'If issue persists, perform hard reset by unplugging the STB from the wall socket and plug it back in after 5 seconds', NULL, 4, 1001),
(51, 'Check if coaxial cable (RG6) is firmly connected and secured', NULL, 5, 1001),
(52, 'Press the MENU button on your remote control then navigate to SETTINGS', NULL, 5, 1001),
(53, 'Key in default PIN as 0000 or 9998', NULL, 5, 1001),
(54, 'Navigate to the following options SYSTEM SETUP > INSTALLATION SETUP > SATELLITE SETUP > LNB POWERING', NULL, 5, 1001),
(55, 'Toggle ON/OFF using the LEFT and RIGHT buttons on the remote', NULL, 5, 1001),
(56, 'For the Primary STB - must be set to ON\r\nFor 2nd/3rd STB - must be set to OFF\r\n', NULL, 5, 1001),
(61, 'Turn the STB off and locate where the smart card is inserted', NULL, 6, 1001),
(62, 'Gently take out the smart card and check for any physical defects', NULL, 6, 1001),
(63, 'You may try to wipe the gold chip with a soft, dry, non-abrasive cloth to clear any dirt build up', NULL, 6, 1001),
(64, 'Insert the smart card back to the card slot the same way how it was removed', NULL, 6, 1001),
(65, 'Make sure that the smart card is properly inserted and seated securely', NULL, 6, 1001);

-- --------------------------------------------------------

--
-- Table structure for table `usermanual`
--

CREATE TABLE `usermanual` (
  `manual_id` int(11) NOT NULL,
  `manual_title` varchar(255) NOT NULL,
  `box_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usermanual`
--

INSERT INTO `usermanual` (`manual_id`, `manual_title`, `box_number`) VALUES
(0, '1.0 Introduction', 1001),
(1, '2.0 Your Receiver', 1001),
(2, '3.0 Connection', 1001),
(3, '4.0 Starting Up For The First ', 1001),
(4, '5.0 Quick Guide To Using Your Receiver', 1001),
(5, '6.0 Operation', 1001),
(6, '7.0 Main Menu', 1001);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(0, 'xpertech', 'xpertech_2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cablebox`
--
ALTER TABLE `cablebox`
  ADD PRIMARY KEY (`box_number`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`channel_number`),
  ADD KEY `channels_ibfk_1` (`package_id`);

--
-- Indexes for table `manual_step`
--
ALTER TABLE `manual_step`
  ADD PRIMARY KEY (`manual_id`);

--
-- Indexes for table `ownership`
--
ALTER TABLE `ownership`
  ADD PRIMARY KEY (`ownership_id`),
  ADD KEY `ownership_ibfk_2` (`box_number`),
  ADD KEY `subscriber_id` (`subscriber_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_number`);

--
-- Indexes for table `remote_control`
--
ALTER TABLE `remote_control`
  ADD PRIMARY KEY (`remote_id`);

--
-- Indexes for table `remote_detail`
--
ALTER TABLE `remote_detail`
  ADD PRIMARY KEY (`remote_detail_id`);

--
-- Indexes for table `selfinstall`
--
ALTER TABLE `selfinstall`
  ADD PRIMARY KEY (`selfinstall_id`),
  ADD KEY `selfinstall_ibfk_1` (`box_number`);

--
-- Indexes for table `selfinstall_steps`
--
ALTER TABLE `selfinstall_steps`
  ADD PRIMARY KEY (`install_steps_id`),
  ADD KEY `selfinstall_steps_ibfk_1` (`selfinstall_id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indexes for table `selfinstall_steps_title`
--
ALTER TABLE `selfinstall_steps_title`
  ADD KEY `selfinstall_id` (`selfinstall_id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indexes for table `stat_info`
--
ALTER TABLE `stat_info`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `ownership` (`ownership`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`account_number`);

--
-- Indexes for table `troubleshoot`
--
ALTER TABLE `troubleshoot`
  ADD PRIMARY KEY (`troubleshoot_id`),
  ADD KEY `troubleshoot_ibfk_1` (`box_number`);

--
-- Indexes for table `troubleshoot_steps`
--
ALTER TABLE `troubleshoot_steps`
  ADD PRIMARY KEY (`trbl_steps_id`),
  ADD KEY `box_id` (`box_id`);

--
-- Indexes for table `usermanual`
--
ALTER TABLE `usermanual`
  ADD PRIMARY KEY (`manual_id`),
  ADD KEY `usermanual_ibfk_1` (`box_number`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manual_step`
--
ALTER TABLE `manual_step`
  MODIFY `manual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `remote_detail`
--
ALTER TABLE `remote_detail`
  MODIFY `remote_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `stat_info`
--
ALTER TABLE `stat_info`
  MODIFY `stat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ownership`
--
ALTER TABLE `ownership`
  ADD CONSTRAINT `ownership_ibfk_2` FOREIGN KEY (`box_number`) REFERENCES `cablebox` (`box_number`),
  ADD CONSTRAINT `ownership_ibfk_3` FOREIGN KEY (`subscriber_id`) REFERENCES `subscribers` (`account_number`);

--
-- Constraints for table `selfinstall`
--
ALTER TABLE `selfinstall`
  ADD CONSTRAINT `selfinstall_ibfk_1` FOREIGN KEY (`box_number`) REFERENCES `cablebox` (`box_number`);

--
-- Constraints for table `selfinstall_steps`
--
ALTER TABLE `selfinstall_steps`
  ADD CONSTRAINT `selfinstall_steps_ibfk_1` FOREIGN KEY (`selfinstall_id`) REFERENCES `selfinstall` (`selfinstall_id`),
  ADD CONSTRAINT `selfinstall_steps_ibfk_2` FOREIGN KEY (`box_id`) REFERENCES `cablebox` (`box_number`);

--
-- Constraints for table `selfinstall_steps_title`
--
ALTER TABLE `selfinstall_steps_title`
  ADD CONSTRAINT `selfinstall_steps_title_ibfk_1` FOREIGN KEY (`selfinstall_id`) REFERENCES `selfinstall` (`selfinstall_id`),
  ADD CONSTRAINT `selfinstall_steps_title_ibfk_2` FOREIGN KEY (`box_id`) REFERENCES `cablebox` (`box_number`);

--
-- Constraints for table `stat_info`
--
ALTER TABLE `stat_info`
  ADD CONSTRAINT `stat_info_ibfk_1` FOREIGN KEY (`ownership`) REFERENCES `ownership` (`ownership_id`);

--
-- Constraints for table `troubleshoot`
--
ALTER TABLE `troubleshoot`
  ADD CONSTRAINT `troubleshoot_ibfk_1` FOREIGN KEY (`box_number`) REFERENCES `cablebox` (`box_number`);

--
-- Constraints for table `troubleshoot_steps`
--
ALTER TABLE `troubleshoot_steps`
  ADD CONSTRAINT `troubleshoot_steps_ibfk_1` FOREIGN KEY (`box_id`) REFERENCES `cablebox` (`box_number`);

--
-- Constraints for table `usermanual`
--
ALTER TABLE `usermanual`
  ADD CONSTRAINT `usermanual_ibfk_1` FOREIGN KEY (`box_number`) REFERENCES `cablebox` (`box_number`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
