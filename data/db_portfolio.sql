-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 05, 2019 at 06:00 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_p_card`
--

CREATE TABLE `tbl_p_card` (
  `ID` int(11) NOT NULL,
  `Img` varchar(30) NOT NULL,
  `Title` varchar(60) NOT NULL,
  `Info` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_p_card`
--

INSERT INTO `tbl_p_card` (`ID`, `Img`, `Title`, `Info`) VALUES
(1, 'howl.jpg', 'Traditional Animation', 'Good ol\' hand drawings'),
(2, 'botw.jpg', '3D Animation', 'Shiny computer generated moving images'),
(3, 'motion.jpg', 'Motion Graphics', 'Fancy animated graphic design'),
(4, 'rotoscope.jpg', 'Rotoscope Animation', 'Is tracing over footage animation?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_p_info`
--

CREATE TABLE `tbl_p_info` (
  `ID` int(11) NOT NULL,
  `pcardID` int(11) NOT NULL,
  `Title` varchar(60) NOT NULL,
  `Description` text NOT NULL,
  `First` varchar(100) NOT NULL,
  `Tools` varchar(100) NOT NULL,
  `URL` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_p_info`
--

INSERT INTO `tbl_p_info` (`ID`, `pcardID`, `Title`, `Description`, `First`, `Tools`, `URL`) VALUES
(1, 1, 'Traditional Animation', 'Traditional animation, sometimes referred to as cel animation, is one of the older forms of animation, in it the animator draws every frame to create the animation sequence. Just like they used to do in the old days of Disney. If you’ve ever had one of those flip-books when you were a kid, you’ll know what I mean. Sequential drawings screened quickly one after another create the illusion of movement.', 'The Magic Lantern (1650) by Giovanni Fontana', 'TVPaint, Toon Boom Harmony, Photoshop', 'https://www.youtube.com/embed/CCvR5YBcpR8'),
(2, 2, '3D Animation', '3D animation works in a completely different way than traditional animation. They both require an understanding of the same principles of movement and composition, but the technical skill set is very different for each task. While traditional animation requires you to be an amazing draftsman, computer animation doesn’t. 3D animation is more similar to playing with puppets rather than drawing.\r\n', 'Toy Story (1995) directed by John Lassetter', 'Autodesk Maya, Autodesk 3DS Max, Cinema 4D, Blender', 'https://www.koreus.com/embed/borrowed-time'),
(3, 3, 'Motion Graphics', 'While still considered a form of animation, motion graphics is quite different from the other types of animation. Unlike the other types on our list it is not character or story driven. It’s the art of creatively moving graphic elements or texts, usually for commercial or promotional purposes.', 'Made accessible after the creation of Adobe After Effects and Apple Motion', 'Adobe After Effects, Cinema 4D', 'https://www.youtube.com/embed/b4nl4Y7oQRs'),
(4, 4, 'Rotoscoping Animation', 'Rotoscoping is defined as an animation technique through which animators trace over footage within a software program using a rotoscoping tool. This technique goes back to the early days of cinema when animators used to project photographed live-action movie images onto a glass panel and trace over the image.\r\n\r\nThat projection equipment was called a rotoscope. As modern animation progressed into the 21st century this device was eventually replaced by computers. Anyways, the process is still called rotoscoping.', 'Developed by Polish-American animator Max Fleischer', 'Adobe After Effects, Blender, Autodesk, Silhouette', 'https://www.youtube.com/embed/OBk3ynRbtsw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_p_card`
--
ALTER TABLE `tbl_p_card`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_p_info`
--
ALTER TABLE `tbl_p_info`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_p_card`
--
ALTER TABLE `tbl_p_card`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_p_info`
--
ALTER TABLE `tbl_p_info`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
