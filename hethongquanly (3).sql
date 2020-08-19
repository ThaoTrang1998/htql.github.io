-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2020 at 10:46 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hethongquanly`
--

-- --------------------------------------------------------

--
-- Table structure for table `canbo`
--

CREATE TABLE `canbo` (
  `macanbo` varchar(200) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `sdt` int(15) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `maphong` varchar(20) NOT NULL,
  `machucvu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `canbo`
--

INSERT INTO `canbo` (`macanbo`, `hoten`, `sdt`, `hinhanh`, `maphong`, `machucvu`) VALUES
('1', 'Admin', 1234567890, 'img/admin.jpg', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `chucvu`
--

CREATE TABLE `chucvu` (
  `machucvu` varchar(20) NOT NULL,
  `tenchucvu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chucvu`
--

INSERT INTO `chucvu` (`machucvu`, `tenchucvu`) VALUES
('1', 'Giám đốc'),
('2', 'Phó Giám đốc'),
('3', 'Thưởng phòng'),
('4', 'Phó phòng'),
('5', 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `congviec`
--

CREATE TABLE `congviec` (
  `idcongviec` int(10) NOT NULL,
  `ngay` date NOT NULL,
  `thoigian` time(6) NOT NULL,
  `diadiem` varchar(100) NOT NULL,
  `macanbo` varchar(200) NOT NULL,
  `ndcv` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `congviec`
--

INSERT INTO `congviec` (`idcongviec`, `ngay`, `thoigian`, `diadiem`, `macanbo`, `ndcv`) VALUES
(1, '2020-07-04', '00:00:00.000000', '', 'Đ/c Mạc Kỉnh Hào', 'Trực BBT'),
(2, '2020-07-04', '00:00:00.000000', 'Phòng họp số 2, Hội trường tầng 2', '', 'Đại hội các Chi hội nhà báo'),
(3, '2020-07-04', '16:00:00.000000', 'Cty XSKT Hậu Giang', '', 'TT PT-TH “XSKT Hậu Giang”'),
(4, '2020-07-04', '19:00:00.000000', 'Hội trường Thành ủy', 'Đ/c Giám đốc\r\nĐ/c Diễm Châu', 'Dự Hội nghị Báo cáo nhanh Đại hội Đại biểu Đảng bộ Khối Cơ quan DCĐ thành phố lần thứ VIII, nhiệm kỳ 2020-2021'),
(5, '2020-07-05', '00:00:00.000000', '', 'Đ/c Ngô Văn Hiếu', 'Trực BBT'),
(6, '2020-07-06', '14:00:00.000000', 'Phòng họp số 2', 'Phó Chủ nhiệm UBKT, Bí thư các chi bộ cùng dự', 'Họp Đảng ủy, Ban Giám đốc'),
(7, '2020-07-07', '13:30:00.000000', 'Hội trường các Ban xây dựng Đảng của Thành ủy', 'Đ/c Giám đốc', 'Dự Hội nghị cán bộ chủ chốt thành phố'),
(8, '2020-07-08', '00:00:00.000000', 'Thành phố Hồ Chí Minh	', 'Đ/c Giám đốc\r\nĐ/c Diễm Châu', 'Đi công tác đến hết ngày 09/7'),
(9, '2020-07-08', '07:30:00.000000', '', '', 'Trực tiếp PT-TH Khai mạc kỳ họp thứ 17 của HĐND thành phố Cần Thơ khóa IX (cả ngày).'),
(10, '2020-07-08', '16:00:00.000000', 'Công ty XSKT Cần Thơ', '', 'TT PT-TH “XSKT Cần Thơ”'),
(11, '2020-07-09', '13:30:00.000000', '', '', 'Trực tiếp PT-TH kỳ họp thứ 17 của HĐND thành phố Cần Thơ khóa IX'),
(12, '2020-07-10', '07:30:00.000000', '', '', 'Trực tiếp PT-TH Bế mạc kỳ họp thứ 17 của HĐND thành phố Cần Thơ khóa IX'),
(13, '2020-07-10', '08:00:00.000000', 'Phòng họp số 2', '', 'BGĐ họp giao ban với các trưởng phòng'),
(14, '2020-07-11', '00:00:00.000000', '', 'Đ/c Quách Thanh Triệu', 'Trực BBT'),
(15, '2020-07-11', '16:00:00.000000', 'Cty XSKT Hậu Giang', '', 'TT PT-TH “XSKT Hậu Giang”	'),
(16, '2020-07-12', '00:00:00.000000', '', 'Đ/c Lê Thị Diễm Châu', 'Trực BBT'),
(18, '0000-00-00', '00:00:00.000000', '', '', ''),
(19, '0000-00-00', '00:00:00.000000', '', '', ''),
(20, '0000-00-00', '11:30:00.000000', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(10) NOT NULL,
  `tennguoidung` varchar(20) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `macanbo` int(20) NOT NULL,
  `idpq` int(10) NOT NULL,
  `trangthai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `tennguoidung`, `matkhau`, `macanbo`, `idpq`, `trangthai`) VALUES
(16, 'admin', '0192023a7bbd73250516f069df18b500', 1, 1, 1),
(18, 'user', '6ad14ba9986e3615423dfca256d04e3f', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `idpq` int(11) NOT NULL,
  `phanquyen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`idpq`, `phanquyen`) VALUES
(0, 'Người dùng'),
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `maphong` varchar(20) NOT NULL,
  `tenphong` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`maphong`, `tenphong`) VALUES
('1', 'Phòng Tổ chức và Hành chính'),
('10', 'Phòng Thời sự'),
('11', 'Phòng Chuyên đề'),
('2', 'Phòng Kế hoạch Tài vụ'),
('3', 'Phòng Dịch vụ và Quảng cáo'),
('4', 'Phòng Sản xuất Phim truyền hình'),
('5', 'Phòng Kỹ thuật và Công Nghệ'),
('6', 'Phòng Thông tin điện tử và Nghiệp vụ Truyền thanh - Truyền hình'),
('7', 'Phòng Biên tập'),
('8', 'Phòng Văn nghệ và Giải Trí'),
('9', 'Phòng Phát thanh');

-- --------------------------------------------------------

--
-- Table structure for table `thongbao`
--

CREATE TABLE `thongbao` (
  `idtb` int(11) NOT NULL,
  `tieude` varchar(100) NOT NULL,
  `ngay` date NOT NULL,
  `gio` time(6) DEFAULT NULL,
  `diadiem` varchar(100) NOT NULL,
  `nguoithamgia` varchar(100) NOT NULL,
  `noidung` text NOT NULL,
  `trangthai` int(2) NOT NULL,
  `nguoinhan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thongbao`
--

INSERT INTO `thongbao` (`idtb`, `tieude`, `ngay`, `gio`, `diadiem`, `nguoithamgia`, `noidung`, `trangthai`, `nguoinhan`) VALUES
(15, 'Thông báo lịch làm việc ngày 4/7', '2020-07-04', '07:00:00.000000', 'ĐTH', 'Mạc Kỉnh Hào', 'Trực BBT', 0, ''),
(17, 'LỊCH LÀM VIỆC BAN GIÁM ĐỐC (Từ ngày 04/7 đến ngày 12/7/2020)', '2020-07-04', '19:00:00.000000', 'Hội trường thành ủy', 'Đ/c Giám đốc, đ/c Diễm Châu ', 'dự Hội nghị Báo cáo nhanh Đại hội Đại biểu Đảng bộ Khối Cơ quan DCĐ thành phố lần thứ VIII, nhiệm kỳ 2020-2025', 0, ''),
(18, 'Đại hội các Chi hội nhà báo tại phòng họp số 2', '2020-07-04', '07:00:00.000000', 'Đại hội các Chi hội nhà báo tại phòng họp số 2', 'All', 'Đại hội các Chi hội nhà báo tại phòng họp số 2', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `canbo`
--
ALTER TABLE `canbo`
  ADD PRIMARY KEY (`macanbo`),
  ADD KEY `maphong` (`maphong`),
  ADD KEY `machucvu` (`machucvu`);

--
-- Indexes for table `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`machucvu`);

--
-- Indexes for table `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`idcongviec`),
  ADD KEY `macanbo` (`macanbo`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`),
  ADD KEY `macanbo` (`macanbo`),
  ADD KEY `idpq` (`idpq`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`idpq`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`maphong`);

--
-- Indexes for table `thongbao`
--
ALTER TABLE `thongbao`
  ADD PRIMARY KEY (`idtb`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `congviec`
--
ALTER TABLE `congviec`
  MODIFY `idcongviec` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `thongbao`
--
ALTER TABLE `thongbao`
  MODIFY `idtb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
