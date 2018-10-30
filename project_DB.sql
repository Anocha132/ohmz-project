-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2018 at 07:48 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'เซลล์พืชและเซลล์สัตว์', '   เซลล์สิ่งมีชีวิตสามารถแบ่งเป็นประเภทใหญ่ๆ ได้ 3 ประเภทตามความแตกต่าง\r\nขององค์ประกอบภายในเซลล์ คือ เซลล์สัตว์ เซลล์พืช และเซลล์ของแบคทีเรียโดย \r\nเซลล์สัตว์์แตกต่างจากเซลล์พืชตรงที่ เซลล์สัตว์ไม่มีผนังเซลล์ และไม่มีรงควัตถุที่ใช้\r\nในการสังเคราะห์แสง สำหรับเซลล์แบคทีเรียมีความซับซ้อนขององค์ประกอบภายในเซลล์\r\nน้อยกว่าเซลล์สัตว์และเซลล์พืชมาก เช่น ไม่มีเยื่อหุ้มสารพันธุกรรม และออร์แกเนลล์ต่างๆ\r\nเป็นต้น ', NULL, NULL),
(2, 'การสังเคราะห์แสงของพืช', ' กระบวนการสังเคราะห์ด้วยแสง (photosynthesis) เป็นกระบวนการที่ประกอบด้วย ปฏิกิริยาเคมีที่เกิดขึ้นอย่างต่อเนื่องกันเป็นลำดับในคลอโรพลาสต์ในเซลล์พืช โดยใช้พลังงานจากแสงอาทิตย์ เปลี่ยนแก๊สคาร์บอนไดออกไซด ์และไฮโดรเจนจากน้ำ หรือแหล่งไฮโดรเจนอื่น ๆ ให้กลายเป็นสารประกอบประเภทคาร์โบไฮเดรตและมีแก๊สออกซิเจนเกิดขึ้น \r\n    กระบวนการสังเคราะห์ด้วยแสง และการหายใจในเซลล์จะทำงานร่วมกันอย่างสมดุล โดยกระบวนการหายใจสลายอาหารได้\r\n    พลังงานและแก๊สคาร์บอนไดออกไซด์ส่วนกระบวนการสังเคราะห์ด้วยแสงจะสร้างคาร์โบไฮเดรตและมีแก๊สออกซิเจนเกิดขึ้นเป็น\r\n    วัฏจักรแก๊สออกซิเจนประมาณ 85% เกิดขึ้นในมหาสมุทร เนื่องมาจากการสังเคราะห์แสงของแพลงก์ตอนพืช (phytoplankton) \r\n    อีก 10% มาจากสิ่งมีชีวิตบนพื้นดิน และ 5% มาจากแหล่งน้ำจืด\r\n        \r\n        คลอโรพลาสต์ (chloroplast ) เป็นออร์แกเนลล์ชนิดหนึ่งในเซลล์พืช ภายในคลอโรพลาสต์มีคลอโรฟิลล์เป็นองค์ประกอบ ซึ่งสามารถดูดกลืนพลังงานจากแสงอาทิตย์มาใช้ในกระบวนการสังเคราะห์ด้วยแสง คลอโรพลาสต์ในพืชชั้นสูงจะมีลักษณะเป็นรูปไข่หรือกลมรี ขนาดยาวประมาณ 5 ไมครอน กว้างประมาณ 2 ไมครอน หนาประมาณ 1-2 ไมครอน มีเยื่อหุ้ม 2 ชั้น ภายในประกอบด้วยส่วนสำคัญ 2 ส่วนคือ สโตรมา (stroma) และ ลาเมลลา (lamella) \r\n\r\n           - สโตรมา เป็นของเหลวใส มีเอนไซม์หลายชนิดที่นำไปใช้ในปฏิกิริยาที่ไม่ต้องใช้แสง\r\n           - ลาเมลลา เป็นส่วนหนึ่งของเยื่อหุ้มชั้นในที่ยื่นเข้าไปในคลอโรพลาสต์ มีลักษณะเป็นแผ่นบาง ๆ ซ้อนกัน ประกอบด้วยโปรตีน ไขมัน คลอโรฟิลล์และรงควัตถุ แผ่นลาเมลลาซ้อนกันหลาย ๆ ชั้นเรียกว่า กรานา (grana) แผ่นลาเมลลาแต่ละแผ่นที่ซ้อนอยู่ในกรานาเรียกว่า ไทลาคอยด์ (thylakoid)  เป็นแหล่งรับพลังงานจากแสงซึ่งประกอบด้วยกลุ่มของรงควัตถุระบบ 1 และรงควัตถุระบบ 2\r\n           \r\n        รงควัตถุ คือ สารที่สามารถดูดกลืนแสง รงควัตถุแต่ละชนิดจะดูดกลืนแสงที่ความยาวคลื่นต่างกัน คลอโรฟิลล์ เป็นรงควัตถุ\r\nที่พบในใบไม้สามารถดูดกลืนแสงสี ม่วง น้ำเงิน แดงซึ่งอยู่ในช่วงความยาวคลื่น 400-700 nm ได้ดีแต่สะท้อนแสงสีเขียว จึงทำให้เราเห็นใบไม้เป็นสีเขียว\r\n\r\nกระบวนการสังเคราะห์ด้วยแสงประกอบด้วยสองขั้นตอนใหญ่\r\n\r\nการสังเคราะห์ด้วยแสงประกอบด้วยขั้นตอนใหญ่ๆ 2 ขั้นตอนต่อเนื่องกัน คือขั้นตอนปฏิกิริยาที่ต้องใช้แสง\r\nที่เปลี่ยนพลังงานแสงเป็นพลังงานเคมี และขั้นตอนปฏิกิริยาที่ไม่ต้องใช้แสงซึ่งเป็นขั้นตอนของการสังเคราะห์\r\nน้ำตาล (ที่มีชื่อเรียกเฉพาะว่า วัฏจักรเคลวิน )\r\n\r\nสรุปได้ว่า\r\n    กระบวนการสังเคราะห์ด้วยแสง (photosynthesis) เป็น กระบวนการสร้างอาหารของพืชสีเขียว โดยมีคลอโรฟิลล์ทำหน้าที่ดูดพลังงานแสงจากดวงอาทิตย์แล้วเปลี่ยนสารวัตถุดิบคือน้ำและแก๊สคาร์บอนไดออกไซด์ ให้เป็น น้ำตาลกลูโคส น้ำ และ แก๊สออกซิเจน\r\n\r\n    การเปลี่ยนรูปพลังงานและการเปลี่ยนแปลงของผลิตภัณฑ์ที่เกิดจากกระบวนการสังเคราะห์ด้วยแสง\r\n\r\n        1.พลังงานแสงจะเปลี่ยนรูปเป็นพลังงานเคมีสะสมอยู่ในผลิตภัณฑ์คือ น้ำตาลกลูโคส น้ำ และแก๊สออกซิเจน\r\n    2.น้ำตาลกลูโคสจะถูกเปลี่ยนไปเป็นแป้งทันที และสะสมไว้ในเซลล์สีและแป้งจะเปลี่ยนกลับเป็นน้ำตาลกลูโคสอีกครั้ง เมื่อพืชต้องการสลายน้ำตาลกลูโคสเป็นพลังงาน\r\n    3.พืชคายน้ำและแก๊สออกซิเจนจะถูกพืชคายออกมาทางปากใบกลับคืนสู่สิ่งแวดล้อม \r\n\r\n    ความสำคัญของกระบวนการสังเคราะห์ด้วยแสงของพืชที่มีต่อสิ่งมีชีวิตและสิ่งแวดล้อม\r\n\r\n    1. เป็นแหล่งอาหารและแหล่งพลังงานที่สำคัญของสิ่งมีชีวิตทุกชนิด เนื่องจากพืชสีเขียวได้รับน้ำ แก๊สคาร์บอนไดออกไซด์ และพลังงานแสง จากดวงอาทิตย์ ไปสร้างสารอาหารพวกน้ำตาลและสารอาหารนี้ สามารถเปลี่ยนแปลงไปเป็นสารอาหารอื่น ๆ ได้ เช่น แป้ง โปรตีน ไขมัน ซึ่งสิ่งมีชีวิตได้นำไปใช้ประโยชน์ในกระบวนการต่าง ๆ ของชีวิต จึงถือว่าสารอาหารเหล่านี้เป็นแหล่งพลังงานที่สำคัญของสิ่งมีชีวิตทุกชนิด\r\n    2. เป็นแหล่งผลิตแก๊สออกซิเจนที่สำคัญของระบบนิเวศ โดยแก๊สออกซิเจน เป็นผลที่เกิดจากกระบวนการสังเคราะห์ด้วยแสงของพืช ซึ่งแก๊สออกซิเจน เป็นแก๊สที่สิ่งมีชีวิตใช้ในการสลายอาหาร เพื่อสร้างพลังงานหรือใช้ในกระบวนการหายใจนั่นเอง\r\n    3. ช่วยลดปริมาณแก๊สคาร์บอนไดออกไซด์ในบรรยากาศ เพราะพืชต้องใช้แก๊สนี้เป็นวัตถุดิบในการสังเคราะห์ด้วยแสง โดยปกติแก๊สชนิดนี้เป็นแก๊สที่ไม่มีสี ไม่มีกลิ่น มีอยู่ในบรรยากาศประมาณ 0.03% เท่านั้น แต่เนื่องจากในปัจจุบันการเผาไหม้เชื้อเพลิงเพื่อการอุตสาหกรรมต่าง ๆ ของมนุษย์มีมากขึ้น จึงทำให้มีแก๊สชนิดนี้เพิ่มมากขึ้นสัดส่วนของอากาศที่หายใจจึงเสียไป ทำให้ได้รับแก๊สออกซิเจนน้อยลง จึงเกิดอาการอ่อนเพลีย ส่งผลทำให้โลกของเรามีอุณหภูมิสูงขึ้นเรื่อย ๆ เรียกว่า \" ปรากฏการณ์เรือนกระจก (green house effect) \" เนื่องจาก คาร์บอนไดออกไซด์ในบรรยากาศเป็นเสมือนกระจกที่ปิดกั้นการกระจายความร้อนออกจากผิวโลกดังนั้นจึงควรช่วยกันปลูกพืช และรักษาพื้นที่ป่า เพื่อดูดซับปริมาณแก๊สคาร์บอนไดออกไซด์ในบรรยากาศให้น้อยลง', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exercise`
--

CREATE TABLE `exercise` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exercise`
--

INSERT INTO `exercise` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'บทที่ 1', NULL, NULL, NULL),
(2, 'บทที่ 2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exercise_question`
--

CREATE TABLE `exercise_question` (
  `id` int(11) NOT NULL,
  `exercise_id` int(11) NOT NULL,
  `question` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `choice_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `choice_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `choice_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `choice_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `choice_5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8_unicode_ci NOT NULL,
  `age` int(2) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `firstname`, `lastname`, `nickname`, `gender`, `age`, `phone`, `email`) VALUES
(1, 0, '123', '1234', '', 'female', 23, 0, ''),
(2, 0, '123', '1234', '', 'female', 23, 0, ''),
(3, 0, '123', '1234', '', 'female', 23, 0, ''),
(4, 0, '123', '1234', '', 'female', 23, 0, ''),
(5, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(6, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(7, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(8, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(9, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(10, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(11, 0, '987654', '76671234', '', 'male', 75, 0, ''),
(12, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(13, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(14, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(15, 0, 'dasdasd', 'asdasd', '', 'male', 1234, 0, ''),
(16, 0, 'asdasd', 'asdasd', '', 'male', 123, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`, `updated_at`) VALUES
(2, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(3, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(4, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(5, 'asdasd', 'asdsad', '2018-10-29', '2018-10-29'),
(6, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(7, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(8, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(9, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(10, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(11, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(12, 'fyjhuhui', 'ihuhiulosdrf', '2018-10-29', '2018-10-29'),
(13, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(14, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(15, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(16, 'asdas', 'dasdas', '2018-10-29', '2018-10-29'),
(17, 'asd', 'asdasd', '2018-10-29', '2018-10-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise`
--
ALTER TABLE `exercise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercise_question`
--
ALTER TABLE `exercise_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exercise`
--
ALTER TABLE `exercise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exercise_question`
--
ALTER TABLE `exercise_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
