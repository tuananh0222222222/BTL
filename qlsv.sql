-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 12, 2022 lúc 03:04 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlsv`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classroom`
--

CREATE TABLE `classroom` (
  `ClassId` int(11) NOT NULL,
  `ClassName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `classroom`
--

INSERT INTO `classroom` (`ClassId`, `ClassName`) VALUES
(1, 'K34DL1'),
(2, 'K34DL2'),
(10, 'K34KL4'),
(12, 'K34Dl4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `result`
--

CREATE TABLE `result` (
  `ResultId` int(11) NOT NULL,
  `StudentId` int(11) NOT NULL,
  `ClassId` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `Point` float NOT NULL,
  `StatusId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `result`
--

INSERT INTO `result` (`ResultId`, `StudentId`, `ClassId`, `SubjectId`, `Point`, `StatusId`) VALUES
(5, 8, 1, 2, 1, 1),
(6, 9, 1, 2, 6, 2),
(7, 10, 1, 2, 5, 2),
(8, 11, 1, 2, 2, 1),
(9, 12, 1, 2, 7, 2),
(10, 13, 1, 2, 6, 2),
(11, 14, 1, 2, 6, 2),
(13, 15, 1, 2, 6, 2),
(16, 16, 1, 2, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `StatusId` int(11) NOT NULL,
  `StatusName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`StatusId`, `StatusName`) VALUES
(1, 'Thi lại'),
(2, 'Tốt nghiệp');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Birth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` int(11) NOT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ClassId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`StudentId`, `StudentName`, `Birth`, `Gender`, `Phone`, `Address`, `ClassId`) VALUES
(8, 'Khuất Tuấn Anh', '2022-07-13', 'Nam', 5989874, 'Hà Nội', 1),
(9, 'Khuất Văn Hải', '2022-07-13', 'nam', 125345679, 'Hà Nội', 1),
(10, 'Nguyễn Việt Tuấn', '2002-09-05', 'nam', 125345679, 'Hà Nội', 1),
(11, 'Nguyễn Việt Bằng', '2022-07-07', 'nam', 1253456, 'Hà Nội', 1),
(12, 'Nguyễn Việt Cao', '2022-07-07', 'nam', 125345679, 'Hà Nội', 1),
(13, 'Nguyễn Mai Phương', '2022-07-06', 'Nữ', 125345679, 'Hà Nội', 12),
(14, 'Nguyễn Tiến Dũng', '2022-07-04', 'nam', 125345679, 'Hà Nội', 2),
(15, 'Khuất Việt Dượng', '2022-07-08', 'nam', 125345679, 'Hà Nội', 2),
(16, 'Kiều Bá Tước', '2022-07-06', 'nam', 125345679, 'Hà Nội', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subject`
--

CREATE TABLE `subject` (
  `SubjectId` int(11) NOT NULL,
  `SubjectName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subject`
--

INSERT INTO `subject` (`SubjectId`, `SubjectName`) VALUES
(2, 'PHP'),
(3, 'Android'),
(4, 'C#'),
(5, 'JavaScript');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`ClassId`);

--
-- Chỉ mục cho bảng `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`ResultId`,`StudentId`,`ClassId`,`SubjectId`,`StatusId`),
  ADD KEY `dang 1` (`StudentId`),
  ADD KEY `dang 2` (`ClassId`),
  ADD KEY `dang 3` (`SubjectId`),
  ADD KEY `dang 4` (`StatusId`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`StatusId`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentId`,`ClassId`),
  ADD KEY `ClassId` (`ClassId`);

--
-- Chỉ mục cho bảng `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`SubjectId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `classroom`
--
ALTER TABLE `classroom`
  MODIFY `ClassId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `result`
--
ALTER TABLE `result`
  MODIFY `ResultId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `StatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `subject`
--
ALTER TABLE `subject`
  MODIFY `SubjectId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `result`
--
ALTER TABLE `result`
  ADD CONSTRAINT `dang 1` FOREIGN KEY (`StudentId`) REFERENCES `student` (`StudentId`),
  ADD CONSTRAINT `dang 2` FOREIGN KEY (`ClassId`) REFERENCES `classroom` (`ClassId`),
  ADD CONSTRAINT `dang 3` FOREIGN KEY (`SubjectId`) REFERENCES `subject` (`SubjectId`),
  ADD CONSTRAINT `dang 4` FOREIGN KEY (`StatusId`) REFERENCES `status` (`StatusId`);

--
-- Các ràng buộc cho bảng `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`ClassId`) REFERENCES `classroom` (`ClassId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
