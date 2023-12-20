-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th12 14, 2023 lúc 03:50 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `saas`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Accounts`
--

CREATE TABLE `Accounts` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `companyId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `roleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` enum('active','blocked','deleted','watting') DEFAULT 'watting',
  `fullName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `supplierId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `passportExp` datetime DEFAULT NULL,
  `passport` varchar(250) DEFAULT NULL,
  `operatorId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Accounts`
--

INSERT INTO `Accounts` (`id`, `companyId`, `roleId`, `status`, `fullName`, `password`, `phoneNumber`, `email`, `address`, `createdAt`, `updatedAt`, `supplierId`, `passportExp`, `passport`, `operatorId`) VALUES
('08a773a9-10b4-431c-aaca-922c2436b8ef', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'deleted', 'asda', '$2b$10$BdtJZ1snEdd1iaqUlSujD.4XwjEhr0hEfSFCVyfeGb1cgIv9pZgLC', '0909878731', 'user@gmail.com', 'qu1', '2023-06-26 07:36:54', '2023-07-16 09:36:15', NULL, '2023-06-26 07:36:13', 'passport 1', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('0941144c-3b5e-4c13-9de8-10d1f8d8ff5a', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'deleted', 'toanhhg123', '$2b$10$ie9wZeIaOCZgvClcpF0Sp.MPH4ccgB31WSUKgH1Yep9p3YG5/McZq', '0914987987', 'toan12@gmail.com', 'HaNoi, VietHoa', '2023-07-14 17:32:58', '2023-07-16 09:39:47', NULL, '2023-07-14 17:32:03', 'AP00908', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('19049ee4-b4a2-43ab-b767-2b340a5f95a3', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af81', 'active', 'agentsales', '$2b$10$UTNdqoukj78IQLr2cXPLbOOFia6CivJD3WeNdWsbcCQpLjQa3dKAO', '0989786756', 'agentsales@gmail.com', 'HCM, Q1', '2023-07-14 17:54:58', '2023-07-31 05:13:41', NULL, '2023-07-14 17:53:31', 'agentsalesps', 'afcb7309-91b5-49f1-81aa-8ee989034a30'),
('1b87f129-ccd7-4833-baae-cf572598d800', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'Le rol', '$2b$10$cB2lgDS52O6nC/HC1B.gROsYo9xUcHjRTh/lkrOUtkrtYU4cvk0KK', '9999999998', '1000@gmail.com', 'Quan 1', '2023-06-22 04:30:12', '2023-07-21 05:42:43', NULL, '2023-06-22 04:13:04', 'singapore', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('1bce1240-ce12-4a1b-a61c-f1b4f1959cbb', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'opersales', '$2b$10$sO2BAxF3d7UtFvG5sSrjf./Lko3Wh7RtSg8qGP.oLjAUJsAkeOB4O', '0912346754', 'opersales@gmail.com', '123', '2023-08-07 05:27:48', '2023-08-07 05:27:48', NULL, '2023-08-07 05:27:03', NULL, 'd66a4f6b-ffe1-41bd-b46a-3332ac69a288'),
('203999d1-a643-4181-a86d-4beecd4b041d', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'deleted', 'asjdla', '$2b$10$7BdG.yREiptnlOXHYf98lOQbBA50ucTd6EUXZtrI1/m7hzMbgtDKq', '0987676564', 'sale2@gmail.com', '123', '2023-07-16 06:07:52', '2023-07-16 09:36:45', NULL, '2023-07-16 06:05:01', '098psj', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('2565fec9-b04c-42bc-bc5e-0046ba83383f', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'toan@', '$2b$10$yJO1STAS/Lrlnqd/5Fq/V.7giesWS85ZzJDy9GZYCT7CX5P1pLor2', '1234567899', 'sale10@gmail.com', '123', '2023-07-16 06:36:12', '2023-07-16 06:36:12', NULL, '2023-07-16 06:30:32', '123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('286a05be-ddf4-4fa7-997c-21788b40a6ca', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'deleted', '123123', '$2b$10$DjwPjuSK33OFelj55bvZv.HU7SdOc4sCZiGJq92jihnjNOkxt6M8O', '0987876756', '123123@gmail.com', '123', '2023-07-25 08:48:02', '2023-07-25 08:48:08', NULL, '2023-07-25 08:46:57', '23', '19049ee4-b4a2-43ab-b767-2b340a5f95a3'),
('2f4335ea-aa08-4d30-a7d7-01066b4461db', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'Le rol', '$2b$10$KzF9TEpzHpmlRZH3tykrr.3f5XjRoZmflYsAon6xTMP/RT75y4p1O', '9999999999', '99@gmail.com', 'Quan 1', '2023-06-22 04:22:15', '2023-06-22 04:22:15', NULL, '2023-06-22 04:13:04', 'singapore', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('42612a32-862c-45d1-8033-5fe90c68ecb2', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af81', 'active', 'adas', '$2b$10$/reywLUPCQwAr5LWHvENsORkcTbbHlONJSQLCnd8jR.KjquLdNziS', '0989123123', 'toan3@gmail.com', 'HN, BaVi', '2023-07-14 17:48:19', '2023-07-14 17:48:19', NULL, '2023-07-14 17:47:29', '123123PS', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('4a5a8d16-7d42-4668-8be1-ea66963a4e00', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'deleted', 'toan', '$2b$10$W42asalLpbBmaOrOYYQlfu4qiu1Bv3mfL5OKBrZi8mnRtLfgP75ZC', '1234567811', 'toan1@gmail.com', '123', '2023-07-16 08:48:21', '2023-07-16 09:39:02', NULL, '2023-07-16 08:47:27', '123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('5e3c2e40-a6d8-4dc3-821f-311b108e7ed8', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'rolle', '$2b$10$.5.W0XzjnXwHQ55hmOl.te4gtylgYSWI8XCaSbFT2xlQ65VtTsape', '1234567891', 'sale3@gmail.com', '123', '2023-07-16 06:11:37', '2023-07-25 08:37:38', NULL, '2023-07-16 06:10:42', 'ps098978989', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('64fded44-4b7c-4b6d-8494-11f08ac4063d', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'deleted', 'oper.sale2', '$2b$10$UA7RKEYueqG.wVfRoKzhwukUtbsYKnmp74MxAtXzCCgK/blSHgUsO', '1234567890', 'oper.sale2@gmail.com', '123', '2023-07-16 05:38:03', '2023-07-16 09:36:31', NULL, '2023-07-16 05:36:26', '123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('6aa226dc-8bb2-4920-ba6a-9e8cd8d57c3c', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'toan890', '$2b$10$6//AEv7LyNPF.Ck47AksNeFg.vusf6D1ZbTS.VSYxyosLhVhyXas2', '0987654322', '123@gmail.com', '123', '2023-07-21 05:28:26', '2023-07-22 03:08:38', NULL, '2023-07-21 05:18:28', NULL, '19049ee4-b4a2-43ab-b767-2b340a5f95a3'),
('731cb124-aca5-4e5e-b0ad-6d40da7c325c', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'opesale', '$2b$10$3kqdrjSShh3G9AYyv/qZvOKjbfsKFCCsRMey5LUn5/kbpjwMbYaL6', '0987678761', 'opersale@gmail.com', '123', '2023-08-03 04:14:25', '2023-08-03 04:14:25', NULL, '2023-08-03 04:13:35', 'VietNam', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('75c27c97-6318-4376-954a-2db4d6387e1a', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af88', 'active', 'tour Man', '$2b$10$4gGuOgJhdhukaMOQTHwo/uCQnCOnUUMRTDUKeRU4te3iVMdB6oqiq', '0987898761', 'tourman@gmail.com', '123', '2023-07-24 18:53:28', '2023-07-24 18:53:28', NULL, '2023-07-24 18:51:58', NULL, 'd66a4f6b-ffe1-41bd-b46a-3332ac69a288'),
('7944d13a-7af1-4ef3-8602-cfe0d744d34a', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', '213131313', '$2b$10$GH2Q2rI5b6C0lQO5WlXHEebEYjc4r3RB1U1uOImiIzTEfIaFUaZAG', '0914987985', 'toan2@gmail.com', 'HaNoi, VietHoa', '2023-07-14 17:37:53', '2023-07-14 17:37:53', NULL, '2023-07-14 17:32:03', 'AP00908', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('799388b0-b701-4ab6-a905-86227a164526', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af81', 'active', 'salevisa', '$2b$10$b8BgjVBdfxJXibIVczQVb.I/PONd/7w1XLCpUQ315lu0yawDSfwmq', '0998987878', 'sales@gmail.com', 'HCM, Q1', '2023-07-14 17:52:34', '2023-07-14 17:52:34', NULL, '2023-07-14 17:51:13', 'salevisa00909', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('7cd70bfe-713c-46ba-9e81-d4996ced8f4f', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'toan@', '$2b$10$cOGRdj.kTm7Jhv624xlo9.cxRFmXk4lq3z5s370RBy7/v64HPNJ2a', '1234567897', 'sale9@gmail.com', '123', '2023-07-16 06:33:01', '2023-07-16 06:33:01', NULL, '2023-07-16 06:30:32', '123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('91e5860b-7b74-4f0f-ba60-12082daf1904', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'asjdla', '$2b$10$F.YJpMwbkba95xlC9s/EieLeZVepsvCq3kPMYf93kIOiNEOV98BKq', '0987676565', 'sale@gmail.com', '123', '2023-07-16 06:07:18', '2023-07-16 06:07:18', NULL, '2023-07-16 06:05:01', '098psj', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('94dbc702-5d4a-4742-b3ef-5a3f0d2712ad', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'deleted', 'toan@', '$2b$10$t3eHuBwDdOf09IQQoKLPqO9dBKpGwL7dGKb9BxnGMNzfUVtLCE4TW', '1234567896', 'sale8@gmail.com', '123', '2023-07-16 06:31:53', '2023-07-19 14:22:36', NULL, '2023-07-16 06:30:32', '123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('963ee7ad-a2fb-4a7e-979a-423044625371', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'client', '$2b$10$S9oKS18QzomcnAxI11aGs.kpg0JVP5v2DwevS58LRrJr7DLMfM27y', '0987654321', 'client@gmail.com', '123', '2023-07-21 04:40:31', '2023-07-21 04:40:31', NULL, '2023-07-21 04:40:05', NULL, 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('a17ed57b-666e-4d58-8d50-b99ff8a49ee0', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'asd', '$2b$10$1bwNAol8.O3cJHNdaN9rH.9K69AXXgoteqbfW3yXGnoZc8vGnAMOm', '0987789012', 'qwe@gmail.com', '123', '2023-07-19 13:59:52', '2023-07-19 13:59:52', NULL, '2023-07-19 13:52:51', NULL, 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('ad5abf3d-a33d-4552-854a-7dbe90e4b302', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'Long', '$2b$10$qT4b45Ik2MJ5OgZUeussq.e4bEm9MB2ZXgigpcHLoe2triky5apfm', '0988766554', 'long123@gmail.com', 'sdkjhlksdhgf', '2023-06-22 07:38:36', '2023-06-22 07:38:36', NULL, '2023-06-22 07:37:27', '12344', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('afcb7309-91b5-49f1-81aa-8ee989034a30', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af98', 'active', 'agentadmin@gmail.com', '$2b$10$ibBkWG29EN3JB09e1k2fU.cTu7uWQlwSM1.JDWT.qLi17ZfJNAPda', '0989789097', 'agentadmin@gmail.com', '123', '2023-08-07 17:54:03', '2023-08-08 03:53:32', NULL, '2023-08-07 17:53:02', 'VN', '1bce1240-ce12-4a1b-a61c-f1b4f1959cbb'),
('bac473ce-21b3-4fed-b8f2-961f34a3d048', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'asdasd', '$2b$10$wsapcm3o3XCJIh6z29wlvOm25KH8nVwDQojuHlg7bmB5DTelpIntS', '1234567894', 'sale6@gmail.com', '123', '2023-07-16 06:26:26', '2023-07-16 06:26:26', NULL, '2023-07-16 06:10:42', 'ps098978989', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('bcea4f79-d868-43f7-bbdd-67e1bf960426', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'tourManager', '$2b$10$Qp8WIg1UHGo9k6GLboUvt.wR8avQ3e7OsRg7m2tfcbNHk.ODzEWWy', '0334782012', 'tourManager@gmail.com', 'Quan 1 Thanh Pho hcm', '2023-06-02 02:27:02', '2023-06-02 02:27:02', NULL, NULL, NULL, NULL),
('c1683f83-604e-4e6d-b2d9-83a0e6cbbffc', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'asdasd', '$2b$10$PAJUk767HgbQNxYUYc7MIeH.aL/ml7sMgK89wUdRhYC5YFJM59FTq', '1234567893', 'sale5@gmail.com', '123', '2023-07-16 06:25:07', '2023-07-16 06:25:07', NULL, '2023-07-16 06:10:42', 'ps098978989', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('c7133302-b621-46a4-abe6-ca351451d2ed', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'toan', '$2b$10$dGtgCZdcHWYfCpYo2RRyGuC6og6hQRCkLyboKoKG.Equ.HsLIKSQG', '1234567810', '1@gmail.com', '123', '2023-07-16 06:37:49', '2023-07-16 06:37:49', NULL, '2023-07-16 06:37:21', '123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('cabfdcac-28cd-4a13-86e0-c6a60afc1e7c', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af88', 'active', 'Role', '$2b$10$/cuiKaKaCBTpiS.sMRoIuu/W5WSg4bYMCzxxErQqM3S4wgXPQ6.LO', '0999998988', 'toanhhk@gamil.com', 'HCM Q1', '2023-06-19 17:02:55', '2023-06-19 17:02:55', NULL, '2023-06-29 17:02:51', 'passport key', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('d66a4f6b-ffe1-41bd-b46a-3332ac69a288', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af86', 'active', 'OperMan', '$2b$10$O74yWu4gfTeqzCpcsnMFw.n8kzTesf40Qlsx6nAk1er.PVZ4dETkG', '0908787555', 'operman@gmail.com', '123', '2023-08-05 06:08:36', '2023-08-05 06:08:36', NULL, '2023-08-05 06:08:05', NULL, 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('d8a96164-4791-4449-b10b-3251f3bd126c', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', 'toanhhg123', '$2b$10$7Pd4ILN6Tv.lBzuUL/H46evwblhAg9jx2MzgZ42e6.N5mLjyrNOAa', '0909121212', 'toanle123@gmail.com', 'Quan 1', '2023-06-22 04:48:22', '2023-06-22 04:48:22', NULL, '2023-06-22 04:47:00', 'ps_001', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('e109bb74-583c-42d6-893e-41ae05ea430f', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af81', 'active', 'sale1', '$2b$10$GKDiZFRI38l8e50NOySYs.yVYZUVFYrcuRXGUX2hHLvrO78OapGs6', '0976789871', 'sale1@gmail.com', 'HN', '2023-07-15 17:11:21', '2023-07-15 17:11:21', NULL, '2023-07-15 17:08:02', 'sale1098', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('e407719a-df5c-464c-99d2-d4024c4e0e4c', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'active', 'asdasd', '$2b$10$8YoKJDtJjiYPA0j5fv6Bn.SyS4RdKLECTKfxj4owCDBSBkhqkYiei', '1234567892', 'sale4@gmail.com', '123', '2023-07-16 06:14:29', '2023-07-16 06:14:29', NULL, '2023-07-16 06:10:42', 'ps098978989', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('e54bd598-b6a5-4a2a-93c9-4fdc2542955d', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af87', 'deleted', 'asdasd', '$2b$10$HOlKk4SOtTahcV9SE55mW.iHoE4vGTqlCCk63UqyDI6gyi6ZUjWBW', '1234567895', 'sale7@gmail.com', '123', '2023-07-16 06:28:49', '2023-07-19 14:22:50', NULL, '2023-07-16 06:10:42', 'ps098978989', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('ee76ccd2-f966-4d3d-a8ef-132510a97626', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af89', 'active', 'opervisa', '$2b$10$HA2Q7ZLitc.5MNsh60x6QOdMHoRzSmwQHDXEwTlwxwH1y5d/3KOZu', '0987898765', 'opervisa@gmail.com', '123', '2023-08-09 07:53:47', '2023-08-09 07:53:47', NULL, '2023-08-09 07:53:17', NULL, 'd66a4f6b-ffe1-41bd-b46a-3332ac69a288'),
('f0cf9e24-448e-41a3-8ee1-bf2176ae8310', NULL, '1e79eb56-ce05-425a-9c45-31d063f7au8', 'active', 'admin', '$2b$10$SWQE824gF5lCuTrblhvX/.VE4vXQf8126WF7PdcWRLY7qmuUruVOi', '0334782042', 'admin@gmail.com', 'Quan 1 Thanh Pho hcm', '2023-06-02 01:53:25', '2023-06-02 01:53:25', NULL, NULL, NULL, NULL),
('f1da3991-94cf-4a9e-ae0c-64426f7c8716', NULL, '1e79eb56-ce05-425a-9c45-31d063f7au8', 'deleted', 'ToanLe', '$2b$10$yZ3IoJ7ZgrV/tfrcRFWTyu3SRxizGqK587vyi2nK4xRib8iv.AtLS', '9990009994', 'toan@gmail.com', 'HCM TanPhu', '2023-06-19 16:59:30', '2023-07-21 05:39:18', NULL, '2023-06-19 16:32:54', 'passport new', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('f22c81c9-20a7-4491-b8dc-7c79609d4bbb', NULL, '1e79eb56-ce05-425a-9c45-31d063f7af82', 'active', '1234', '$2b$10$7w0ImBD0dKdP5pyaOObu3OMKJDh6FoRT9Ud0kTKYKZRAg6GacRRme', '0987678901', '124@gmail.com', '123', '2023-07-21 17:13:19', '2023-07-22 02:09:10', NULL, '2023-07-21 17:12:10', NULL, '19049ee4-b4a2-43ab-b767-2b340a5f95a3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `AirBookingPayments`
--

CREATE TABLE `AirBookingPayments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `airBookingId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `amount` double DEFAULT NULL,
  `note` text DEFAULT NULL,
  `serviceId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `AirBookings`
--

CREATE TABLE `AirBookings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `supplierId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tourId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `depDay` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `numPax` double DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `depTime` datetime DEFAULT NULL,
  `retDate` datetime DEFAULT NULL,
  `retTime` datetime DEFAULT NULL,
  `fare` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `nameDate` datetime DEFAULT NULL,
  `payDate` datetime DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `BookingPayments`
--

CREATE TABLE `BookingPayments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bookingId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `amount` double DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `BookingPayments`
--

INSERT INTO `BookingPayments` (`id`, `bookingId`, `date`, `createdAt`, `updatedAt`, `amount`, `note`) VALUES
('239ae7c9-f71b-4290-97e7-71a4d7eda11a', '65106fa4-2819-4ce9-8f83-94d681134df4', '2023-08-09 03:03:29', '2023-08-09 03:03:57', '2023-08-09 03:03:57', 0, '1'),
('cea526e1-8b61-4216-8490-504e33746572', '57b65ee3-ffef-49b7-abcf-79a9df470c1a', '2023-07-15 17:04:56', '2023-07-15 17:05:36', '2023-07-15 17:05:36', 500, 'chot 5xi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Bookings`
--

CREATE TABLE `Bookings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `clientId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tourId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `saleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bookDate` datetime DEFAULT NULL,
  `comfirmDate` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `com` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` enum('reservation','deposit','paid') DEFAULT NULL,
  `paxNum` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Bookings`
--

INSERT INTO `Bookings` (`id`, `clientId`, `tourId`, `saleId`, `bookDate`, `comfirmDate`, `createdAt`, `updatedAt`, `com`, `price`, `status`, `paxNum`) VALUES
('45d51ca2-cd0e-4007-a867-fa913dffc6ed', '0941144c-3b5e-4c13-9de8-10d1f8d8ff5a', '723e960c-b064-4e95-a934-0c106861acde', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', '2023-07-25 09:16:21', '2023-07-25 09:16:21', '2023-07-25 09:17:20', '2023-07-25 09:17:20', 200, 200, 'paid', 1),
('57b65ee3-ffef-49b7-abcf-79a9df470c1a', '1b87f129-ccd7-4833-baae-cf572598d800', 'c87f9618-5aa0-4baf-a2f2-d19793c33ec0', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', '2023-07-15 16:22:35', '2023-07-15 16:22:35', '2023-07-15 16:22:48', '2023-07-19 15:44:25', 0, 0, 'paid', 1),
('65106fa4-2819-4ce9-8f83-94d681134df4', '7944d13a-7af1-4ef3-8602-cfe0d744d34a', '1a0ef6be-8146-47e9-8248-58ac942419f6', '19049ee4-b4a2-43ab-b767-2b340a5f95a3', '2023-07-31 05:16:24', '2023-07-31 05:16:24', '2023-07-31 05:16:39', '2023-08-09 03:05:42', 0, 0, 'paid', 2),
('8d3f7c0b-d081-441a-8a02-329a42c31097', '1b87f129-ccd7-4833-baae-cf572598d800', '1a0ef6be-8146-47e9-8248-58ac942419f6', '1bce1240-ce12-4a1b-a61c-f1b4f1959cbb', '2023-08-09 03:14:14', '2023-08-09 03:14:14', '2023-08-09 03:14:24', '2023-08-09 03:14:35', 0, 0, 'paid', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Companies`
--

CREATE TABLE `Companies` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `operatorId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Companies`
--

INSERT INTO `Companies` (`id`, `name`, `phone`, `email`, `address`, `createdAt`, `updatedAt`, `operatorId`) VALUES
('567ee0af-dfbe-4046-a0ee-7692576e4b30', 'TokyoTravel', '0989098999', 'tokyojapan@gmail.com', 'tokyo. Japan', '2023-06-19 05:29:24', '2023-06-19 14:07:46', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310'),
('8064a8c7-4a57-47d5-8a61-90ddcaa798d0', 'HongKong Travel', '0890989912', 'kong.travel@gmail.com', 'HongKong . China', '2023-06-19 06:22:35', '2023-07-06 09:13:58', 'bcea4f79-d868-43f7-bbdd-67e1bf960426'),
('817fb26b-2fac-4dd9-9fcd-9b0d1cac6fda', 'Viet Travel ', '098787213', 'viet.travel@gmail.com', 'HCM . Q1', '2023-06-19 04:56:06', '2023-06-19 14:08:11', 'bcea4f79-d868-43f7-bbdd-67e1bf960426'),
('f8dc9e56-6293-444a-9ec5-5f52013a820d', 'Travel DaNang', '0989787908', 'travelDaNang@gmail.com', 'Da Nang', '2023-06-19 05:01:10', '2023-06-19 14:08:02', 'bcea4f79-d868-43f7-bbdd-67e1bf960426');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Entities`
--

CREATE TABLE `Entities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `OtherServiceBookingPayments`
--

CREATE TABLE `OtherServiceBookingPayments` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date` datetime DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `otherServiceBookingId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `updatedAt` datetime NOT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `OtherServiceBookings`
--

CREATE TABLE `OtherServiceBookings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bookDate` datetime DEFAULT NULL,
  `clientId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `saleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `otherServiceId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `departureDate` datetime DEFAULT NULL,
  `arrivalDate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT '',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `OtherServiceBookings`
--

INSERT INTO `OtherServiceBookings` (`id`, `bookDate`, `clientId`, `saleId`, `otherServiceId`, `amount`, `price`, `departureDate`, `arrivalDate`, `status`, `note`, `createdAt`, `updatedAt`) VALUES
('9decf09e-ff5c-4473-a624-8379b41d9de6', '2023-07-08 11:58:20', '1b87f129-ccd7-4833-baae-cf572598d800', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', '00c95a65-a8ee-42e5-900e-64f8afb839d7', 0, 0, '2023-07-08 11:58:20', '2023-07-08 11:58:20', 'ok', 'ok', '2023-07-08 12:10:21', '2023-07-08 12:10:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `OtherServices`
--

CREATE TABLE `OtherServices` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `supplierId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) DEFAULT 0,
  `price` double NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `OtherServices`
--

INSERT INTO `OtherServices` (`id`, `supplierId`, `name`, `isDeleted`, `price`, `createdAt`, `updatedAt`) VALUES
('00c95a65-a8ee-42e5-900e-64f8afb839d7', '4b2c3394-39fe-4747-add3-dc9bd4bc15cf', 'service 1', 0, 20, '2023-07-07 16:37:41', '2023-07-25 07:24:23'),
('0806e9d0-4fa8-40e2-adb8-a01f31b7dd5e', '5bfc7d90-a250-463f-900d-2ecf60765251', 'service 1', 1, 200, '2023-07-07 07:40:59', '2023-07-07 08:47:27'),
('41029b5d-98a6-46f3-bbf2-09c208833ec4', '5bfc7d90-a250-463f-900d-2ecf60765251', 'asda', 1, 0, '2023-07-07 15:53:07', '2023-07-07 15:58:15'),
('654a79e8-749b-4090-90c4-514ad4cdc080', '4b2c3394-39fe-4747-add3-dc9bd4bc15cf', 'asd', 1, 0, '2023-07-07 15:48:49', '2023-07-07 16:06:04'),
('776ca764-74d4-4c8c-93fa-5de6e9a3ac36', '5bfc7d90-a250-463f-900d-2ecf60765251', 'service 2', 0, 500, '2023-07-07 17:33:10', '2023-07-25 07:24:57'),
('89854de3-9503-48bd-8c65-2edf78c23ae0', '4b2c3394-39fe-4747-add3-dc9bd4bc15cf', 'dasd', 1, 0, '2023-07-07 15:52:05', '2023-07-07 15:58:24'),
('9e55c1fd-269f-4636-bd2e-f8682c1b930c', '5bfc7d90-a250-463f-900d-2ecf60765251', '21231', 1, 20, '2023-07-07 16:38:58', '2023-07-07 17:33:31'),
('a2ce0c55-219f-429d-a62a-4c788a3a60d8', '5bfc7d90-a250-463f-900d-2ecf60765251', 'asd', 1, 0, '2023-07-07 15:56:48', '2023-07-07 16:06:19'),
('b01de602-22b8-4d19-8dcc-b9778054bc44', '4b2c3394-39fe-4747-add3-dc9bd4bc15cf', 'asd', 1, 0, '2023-07-07 15:46:51', '2023-07-07 16:06:25'),
('bada6e86-441b-476c-8191-473ea7260d82', '5bfc7d90-a250-463f-900d-2ecf60765251', 'dfsa', 1, 0, '2023-07-07 15:47:03', '2023-07-07 16:06:27'),
('db292877-0d55-4d82-9477-360990d34c4e', '5bfc7d90-a250-463f-900d-2ecf60765251', 'Service 1', 1, 0, '2023-07-07 08:47:45', '2023-07-07 15:47:11'),
('dba1314e-ecc9-4706-82da-10085d99f960', '4b2c3394-39fe-4747-add3-dc9bd4bc15cf', 'asd', 1, 0, '2023-07-07 16:03:21', '2023-07-07 16:06:30'),
('f43402d8-8e75-4830-b4b5-bb79ccbc1747', '4b2c3394-39fe-4747-add3-dc9bd4bc15cf', 'asd', 1, 0, '2023-07-07 15:50:21', '2023-07-07 16:06:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Permissions`
--

CREATE TABLE `Permissions` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `entityId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Roles`
--

CREATE TABLE `Roles` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Roles`
--

INSERT INTO `Roles` (`id`, `name`, `desc`, `createdAt`, `updatedAt`) VALUES
('1e79eb56-ce05-425a-9c45-31d063f7af81', 'Agent.Sales', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af82', 'Client', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af83', 'Oper.Admin', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af84', 'Oper.Acct', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af85', 'Oper.Guide', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af86', 'Oper.Mamnager', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af87', 'Oper.Sales', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af88', 'Oper.TourMan', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af89', 'Oper.Visa', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7af98', 'Agent.Admin', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32'),
('1e79eb56-ce05-425a-9c45-31d063f7au8', 'Sys.Admin', '', '2023-06-02 01:50:32', '2023-06-02 01:50:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Suppliers`
--

CREATE TABLE `Suppliers` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `operatorId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Suppliers`
--

INSERT INTO `Suppliers` (`id`, `name`, `phone`, `isDeleted`, `email`, `address`, `createdAt`, `updatedAt`, `operatorId`) VALUES
('00afb46e-9649-4da9-bfe0-a9e06ff2916f', 'SupplierSalevn@gmail.com', '0987876567', 0, 'Supplier@gmail.com', 'HCM q1', '2023-08-03 10:11:11', '2023-08-03 10:11:11', '731cb124-aca5-4e5e-b0ad-6d40da7c325c'),
('4b2c3394-39fe-4747-add3-dc9bd4bc15cf', 'Vng VietNam', '0998908712', 0, 'Vng@gmail.com', 'Q1, Hcm, VietNam', '2023-06-08 09:05:12', '2023-06-08 09:05:12', NULL),
('5bfc7d90-a250-463f-900d-2ecf60765251', 'vn tecom', '0998908712', 0, 'Vng@gmail.com', 'Q1, Hcm, VietNam', '2023-06-08 09:04:26', '2023-06-08 09:04:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TourAgentSales`
--

CREATE TABLE `TourAgentSales` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `saleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tourId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `TourAgentSales`
--

INSERT INTO `TourAgentSales` (`id`, `saleId`, `tourId`, `createdAt`, `updatedAt`) VALUES
('2d05916c-3861-4b1a-9db2-679cccea0f87', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', '723e960c-b064-4e95-a934-0c106861acde', '2023-07-25 09:16:42', '2023-07-25 09:16:42'),
('30fe8262-a51f-45af-baec-2761182aaba2', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', '96bb40b4-9144-41c9-bd09-2da44bd8d3f8', '2023-07-25 06:06:32', '2023-07-25 06:06:32'),
('3aecebea-5b81-4cde-99de-5e8130149914', '19049ee4-b4a2-43ab-b767-2b340a5f95a3', '1a0ef6be-8146-47e9-8248-58ac942419f6', '2023-07-31 05:15:23', '2023-07-31 05:15:23'),
('85142c46-99ba-4c3b-b860-1040aef8d7e6', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'c87f9618-5aa0-4baf-a2f2-d19793c33ec0', '2023-07-15 15:18:02', '2023-07-15 15:18:02'),
('bfdf4cc0-41c5-458a-9616-e5e6551db26e', '19049ee4-b4a2-43ab-b767-2b340a5f95a3', 'c87f9618-5aa0-4baf-a2f2-d19793c33ec0', '2023-07-15 16:24:32', '2023-07-15 16:24:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TourOperSales`
--

CREATE TABLE `TourOperSales` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `operSaleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tourId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Tours`
--

CREATE TABLE `Tours` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `route` varchar(255) DEFAULT NULL,
  `departure` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `metatitle` varchar(255) DEFAULT '',
  `transport` varchar(255) DEFAULT '',
  `visadate` datetime DEFAULT NULL,
  `detailLink` varchar(255) DEFAULT NULL,
  `tourManId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tourGuideId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `maxPax` double DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `type` enum('open','incentive','other') DEFAULT 'other',
  `tranportId` varchar(255) DEFAULT NULL,
  `companyId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `Tours`
--

INSERT INTO `Tours` (`id`, `name`, `price`, `route`, `departure`, `desc`, `metatitle`, `transport`, `visadate`, `detailLink`, `tourManId`, `tourGuideId`, `link`, `maxPax`, `createdAt`, `updatedAt`, `type`, `tranportId`, `companyId`) VALUES
('00abdc50-3e2b-4c83-92fb-ffcacaf41212', 'Tour01', 300, 'HN-TOKYO', 'VN', '', '', 'Plane', '2023-08-16 08:32:43', 'http://google.com', '75c27c97-6318-4376-954a-2db4d6387e1a', '75c27c97-6318-4376-954a-2db4d6387e1a', 'google.com', 200, '2023-08-10 08:33:09', '2023-08-10 08:33:09', 'open', 'http://google.com', NULL),
('1a0ef6be-8146-47e9-8248-58ac942419f6', 'TourUsa', 2312, '12312', '123123', '', '', 'asdad', '2023-07-24 18:10:16', '12323', '75c27c97-6318-4376-954a-2db4d6387e1a', 'bcea4f79-d868-43f7-bbdd-67e1bf960426', '12321', 123, '2023-07-24 18:10:18', '2023-08-10 08:09:28', 'open', '123213', NULL),
('47212cf9-db0c-4103-a008-90fad9da944d', 'TourUsa', 2312, '12312', '123123', '', '', 'asdad', '2023-07-24 18:10:16', '12323', '75c27c97-6318-4376-954a-2db4d6387e1a', 'bcea4f79-d868-43f7-bbdd-67e1bf960426', '12321', 123, '2023-07-24 18:10:28', '2023-08-07 15:04:40', 'open', '123213', NULL),
('723e960c-b064-4e95-a934-0c106861acde', 'Tour cali', 13, '123', '123', '', '', '12', '2023-07-10 18:13:20', 'github.com/toanhhg123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'd8a96164-4791-4449-b10b-3251f3bd126c', 'google.com', 119, '2023-07-24 18:13:49', '2023-07-25 08:38:51', 'open', '123', NULL),
('7516a607-7b58-4b04-9c65-29dad6d0517c', '123', 123, NULL, '1231', '', '', '12312', '2023-07-23 17:53:49', '12312', '19049ee4-b4a2-43ab-b767-2b340a5f95a3', '2565fec9-b04c-42bc-bc5e-0046ba83383f', '213', 213, '2023-07-24 17:54:18', '2023-07-24 17:54:18', 'open', '123', NULL),
('7698a19c-beab-4e19-8847-ce6f29a81d30', 'tournew', 12, NULL, 'asdasd', '', '', 'asd', '2023-07-14 17:50:43', 'asdasd', 'f22c81c9-20a7-4491-b8dc-7c79609d4bbb', 'ad5abf3d-a33d-4552-854a-7dbe90e4b302', 'google.com', 12, '2023-07-24 17:53:08', '2023-07-24 17:53:08', 'open', 'asdasd', NULL),
('96bb40b4-9144-41c9-bd09-2da44bd8d3f8', 'Tour China', 123, 'sadasd', '123', '', '', '213', '2023-07-10 17:55:35', '123', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', '0941144c-3b5e-4c13-9de8-10d1f8d8ff5a', '123', 23, '2023-07-24 17:55:55', '2023-07-25 04:57:33', 'open', '123', NULL),
('ae10da2a-2eb0-4fb2-b5bf-c81a181fafdc', 'tourn', 123, '123', '12312', '', '', 'asd', '2023-07-02 18:14:34', '12312', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', '6aa226dc-8bb2-4920-ba6a-9e8cd8d57c3c', '231', 12, '2023-07-24 18:15:13', '2023-07-24 18:15:13', 'open', '123', NULL),
('c87f9618-5aa0-4baf-a2f2-d19793c33ec0', 'Tour Vin', 118, 'tokio', 'qweqw', '', '', 'plane', '2023-06-23 08:09:21', 'https://docs.google.com/spreadsheets/d/19GfcV72FoBsvnFAhYDR6z5klXZynkarD/edit#gid=321870198', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'https://docs.google.com/spreadsheets/d/19GfcV72FoBsvnFAhYDR6z5klXZynkarD/edit#gid=321870198', 122, '2023-06-07 18:55:00', '2023-07-24 11:46:54', 'open', 'qweqw', NULL),
('ca0d8a36-2c8d-48bc-8684-0116aa0ac721', 'tour2', 231, 'note', 'dasdasd', '', '', 'plane', '2023-06-08 19:04:48', 'asdasdasd', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'dasdasd', 127, '2023-06-07 19:10:47', '2023-07-06 09:14:17', 'open', 'asdasd', NULL),
('dfe32732-df14-4ffa-8bec-cf86f61bac97', 'tour USA', 200, 'HN - Cali', 'new', '', '', 'plane', '2023-07-25 18:02:57', 'google.com', '963ee7ad-a2fb-4a7e-979a-423044625371', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'idx.hufi.edu.vn', 200, '2023-07-24 18:04:11', '2023-07-24 18:04:11', 'open', 'idx.edu.vn', NULL),
('f285d74b-2c91-42f5-81f9-f0c32593279b', 'Tour 4', 123, 'Hawai', 'asd', '', '', 'Plane', '2023-06-07 19:12:07', 'sdasd', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'asdasa', 123, '2023-06-07 19:12:29', '2023-07-06 09:14:31', 'open', 'asdas', NULL),
('f9e51fcd-0851-4f96-93c4-068ed736e77f', 'Tour01', 300, 'HN-TOKYO', 'VN', '', '', 'Plane', '2023-08-16 08:32:43', 'http://google.com', '75c27c97-6318-4376-954a-2db4d6387e1a', '75c27c97-6318-4376-954a-2db4d6387e1a', 'google.com', 200, '2023-08-10 08:33:22', '2023-08-10 08:33:22', 'open', 'http://google.com', NULL),
('f9f750a9-0bd0-4358-b348-c9bd137ae2cc', 'Tour5', 231, 'dlasjdlasd', 'dasdasd', '', '', 'Plane', '2023-06-08 19:04:48', 'asdasdasd', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'f0cf9e24-448e-41a3-8ee1-bf2176ae8310', 'dasdasd', 123, '2023-06-07 19:05:33', '2023-07-24 17:59:50', 'open', 'asdasd', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TourServices`
--

CREATE TABLE `TourServices` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `tourId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `supplierId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('OPTION','DEFAULT') DEFAULT 'DEFAULT',
  `price` double NOT NULL,
  `desc` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `VisaBookings`
--

CREATE TABLE `VisaBookings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bookDate` datetime DEFAULT NULL,
  `clientId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `saleId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `tourId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `visaGroupId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `paid` double DEFAULT NULL,
  `returnDate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `VisaGroups`
--

CREATE TABLE `VisaGroups` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `operVisaId` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `submitedDate` datetime DEFAULT NULL,
  `receiptCode` varchar(255) DEFAULT NULL,
  `resultDate` datetime DEFAULT NULL,
  `entryDate` datetime DEFAULT NULL,
  `entryPort` varchar(255) DEFAULT NULL,
  `entryHotel` varchar(255) DEFAULT NULL,
  `itenerary` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `VisaGroups`
--

INSERT INTO `VisaGroups` (`id`, `name`, `operVisaId`, `submitedDate`, `receiptCode`, `resultDate`, `entryDate`, `entryPort`, `entryHotel`, `itenerary`, `createdAt`, `updatedAt`) VALUES
('040364cf-af36-4783-977c-a2ab0f3acf26', 'VN', 'ee76ccd2-f966-4d3d-a8ef-132510a97626', '2023-08-10 07:54:03', 'Vn1', '2023-08-10 07:54:03', '2023-08-10 07:54:03', 'VN AirLine', 'FLC', 'FLC', '2023-08-10 08:01:26', '2023-08-10 08:01:26'),
('e797bab5-81c6-44ec-9d99-a1dc48735541', 'TQ', NULL, '2023-08-10 07:53:35', '009123', '2023-08-10 07:53:35', '2023-08-10 07:53:35', 'VN', 'VN', 'VN', '2023-08-10 07:53:55', '2023-08-10 07:53:55');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phoneNumber` (`phoneNumber`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `companyId` (`companyId`),
  ADD KEY `roleId` (`roleId`),
  ADD KEY `supplierId` (`supplierId`),
  ADD KEY `operatorId` (`operatorId`);

--
-- Chỉ mục cho bảng `AirBookingPayments`
--
ALTER TABLE `AirBookingPayments`
  ADD PRIMARY KEY (`id`,`airBookingId`),
  ADD KEY `serviceId` (`serviceId`);

--
-- Chỉ mục cho bảng `AirBookings`
--
ALTER TABLE `AirBookings`
  ADD PRIMARY KEY (`id`,`supplierId`,`tourId`),
  ADD KEY `supplierId` (`supplierId`),
  ADD KEY `tourId` (`tourId`);

--
-- Chỉ mục cho bảng `BookingPayments`
--
ALTER TABLE `BookingPayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookingId` (`bookingId`);

--
-- Chỉ mục cho bảng `Bookings`
--
ALTER TABLE `Bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientId` (`clientId`),
  ADD KEY `tourId` (`tourId`),
  ADD KEY `saleId` (`saleId`);

--
-- Chỉ mục cho bảng `Companies`
--
ALTER TABLE `Companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operatorId` (`operatorId`);

--
-- Chỉ mục cho bảng `Entities`
--
ALTER TABLE `Entities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `OtherServiceBookingPayments`
--
ALTER TABLE `OtherServiceBookingPayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `otherServiceBookingId` (`otherServiceBookingId`);

--
-- Chỉ mục cho bảng `OtherServiceBookings`
--
ALTER TABLE `OtherServiceBookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientId` (`clientId`),
  ADD KEY `saleId` (`saleId`),
  ADD KEY `otherServiceId` (`otherServiceId`);

--
-- Chỉ mục cho bảng `OtherServices`
--
ALTER TABLE `OtherServices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplierId` (`supplierId`);

--
-- Chỉ mục cho bảng `Permissions`
--
ALTER TABLE `Permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId` (`roleId`),
  ADD KEY `entityId` (`entityId`);

--
-- Chỉ mục cho bảng `Roles`
--
ALTER TABLE `Roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `Suppliers`
--
ALTER TABLE `Suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operatorId` (`operatorId`);

--
-- Chỉ mục cho bảng `TourAgentSales`
--
ALTER TABLE `TourAgentSales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saleId` (`saleId`),
  ADD KEY `tourId` (`tourId`);

--
-- Chỉ mục cho bảng `TourOperSales`
--
ALTER TABLE `TourOperSales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operSaleId` (`operSaleId`),
  ADD KEY `tourId` (`tourId`);

--
-- Chỉ mục cho bảng `Tours`
--
ALTER TABLE `Tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourManId` (`tourManId`),
  ADD KEY `tourGuideId` (`tourGuideId`),
  ADD KEY `companyId` (`companyId`);

--
-- Chỉ mục cho bảng `TourServices`
--
ALTER TABLE `TourServices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tourId` (`tourId`),
  ADD KEY `supplierId` (`supplierId`);

--
-- Chỉ mục cho bảng `VisaBookings`
--
ALTER TABLE `VisaBookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visaGroupId` (`visaGroupId`);

--
-- Chỉ mục cho bảng `VisaGroups`
--
ALTER TABLE `VisaGroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `operVisaId` (`operVisaId`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `Entities`
--
ALTER TABLE `Entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `Accounts`
--
ALTER TABLE `Accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`companyId`) REFERENCES `Companies` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`roleId`) REFERENCES `Roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_3` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_4` FOREIGN KEY (`operatorId`) REFERENCES `Accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `AirBookingPayments`
--
ALTER TABLE `AirBookingPayments`
  ADD CONSTRAINT `airbookingpayments_ibfk_1` FOREIGN KEY (`serviceId`) REFERENCES `TourServices` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `AirBookings`
--
ALTER TABLE `AirBookings`
  ADD CONSTRAINT `airbookings_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `airbookings_ibfk_2` FOREIGN KEY (`tourId`) REFERENCES `Tours` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `BookingPayments`
--
ALTER TABLE `BookingPayments`
  ADD CONSTRAINT `bookingpayments_ibfk_1` FOREIGN KEY (`bookingId`) REFERENCES `Bookings` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Bookings`
--
ALTER TABLE `Bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `Accounts` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`tourId`) REFERENCES `Tours` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`saleId`) REFERENCES `Accounts` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Companies`
--
ALTER TABLE `Companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`operatorId`) REFERENCES `Accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `OtherServiceBookingPayments`
--
ALTER TABLE `OtherServiceBookingPayments`
  ADD CONSTRAINT `otherservicebookingpayments_ibfk_1` FOREIGN KEY (`otherServiceBookingId`) REFERENCES `OtherServiceBookings` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `OtherServiceBookings`
--
ALTER TABLE `OtherServiceBookings`
  ADD CONSTRAINT `otherservicebookings_ibfk_1` FOREIGN KEY (`clientId`) REFERENCES `Accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `otherservicebookings_ibfk_2` FOREIGN KEY (`saleId`) REFERENCES `Accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `otherservicebookings_ibfk_3` FOREIGN KEY (`otherServiceId`) REFERENCES `OtherServices` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `OtherServices`
--
ALTER TABLE `OtherServices`
  ADD CONSTRAINT `otherservices_ibfk_1` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Permissions`
--
ALTER TABLE `Permissions`
  ADD CONSTRAINT `permissions_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `Roles` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `permissions_ibfk_2` FOREIGN KEY (`entityId`) REFERENCES `Entities` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Suppliers`
--
ALTER TABLE `Suppliers`
  ADD CONSTRAINT `suppliers_ibfk_1` FOREIGN KEY (`operatorId`) REFERENCES `Accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `TourAgentSales`
--
ALTER TABLE `TourAgentSales`
  ADD CONSTRAINT `touragentsales_ibfk_1` FOREIGN KEY (`saleId`) REFERENCES `Accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `touragentsales_ibfk_2` FOREIGN KEY (`tourId`) REFERENCES `Tours` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `TourOperSales`
--
ALTER TABLE `TourOperSales`
  ADD CONSTRAINT `touropersales_ibfk_1` FOREIGN KEY (`operSaleId`) REFERENCES `Accounts` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `touropersales_ibfk_2` FOREIGN KEY (`tourId`) REFERENCES `Tours` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `Tours`
--
ALTER TABLE `Tours`
  ADD CONSTRAINT `tours_ibfk_1` FOREIGN KEY (`tourManId`) REFERENCES `Accounts` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_ibfk_2` FOREIGN KEY (`tourGuideId`) REFERENCES `Accounts` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tours_ibfk_3` FOREIGN KEY (`companyId`) REFERENCES `Companies` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `TourServices`
--
ALTER TABLE `TourServices`
  ADD CONSTRAINT `tourservices_ibfk_1` FOREIGN KEY (`tourId`) REFERENCES `Tours` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tourservices_ibfk_2` FOREIGN KEY (`supplierId`) REFERENCES `Suppliers` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `VisaBookings`
--
ALTER TABLE `VisaBookings`
  ADD CONSTRAINT `visabookings_ibfk_1` FOREIGN KEY (`visaGroupId`) REFERENCES `VisaGroups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `VisaGroups`
--
ALTER TABLE `VisaGroups`
  ADD CONSTRAINT `visagroups_ibfk_1` FOREIGN KEY (`operVisaId`) REFERENCES `Accounts` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
