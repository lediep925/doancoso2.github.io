-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2023 lúc 03:28 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webquan2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `commentID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `dateCreated` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`commentID`, `productID`, `userID`, `content`, `dateCreated`) VALUES
(1, 3, 16, 'Hoa rất đẹp', '2023-12-05'),
(2, 12, 14, 'Hoa chất lượng. Gía cả ổn định', '2023-11-12'),
(28, 1, 13, 'Tôi rất ưng ý với sản phẩm này ', '2023-11-20'),
(29, 1, 1, 'Hihi. Cảm ơn bạn đã mua hoa của shop', '2023-11-09'),
(30, 3, 1, 'Cảm ơn bạn đã ủng hộ shop', '2023-12-07'),
(31, 1, 4, 'Giao hàng thân thiện ', '2023-11-07'),
(32, 1, 19, 'Sản phẩm rất đẹp', '2023-11-21'),
(33, 1, 22, 'Nhân viên bán hàng thân thiện.', '2023-12-05'),
(34, 2, 15, 'Shop rất nhiệt tình. Rep tin nhắn nhanh', '2023-12-03'),
(35, 2, 8, 'Hoa rất tươi. Tôi rất ưng sản phẩm này', '2023-11-24'),
(36, 1, 10, 'Sản phẩm rất đẹp. ', '2023-12-01'),
(37, 1, 12, 'Hoa đẹp. Gía cả khá ổn', '2023-12-09'),
(38, 8, 5, 'Tôi rất ưng sản phẩm này', '2023-12-08'),
(39, 16, 3, 'Shop rất đẹp', '2023-12-12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_desc` text NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Hoa Cưới', 'Hoa cầm tay cô dâu là một phần cực kỳ quan trọng trong lễ cưới. Không chỉ là một món phụ kiện cưới đơn thuần mà những bó hoa cưới đẹp sẽ giúp tạo điểm nhấn làm cho cô dâu trở nên nổi bật hơn trong sự kiện trọng đại của mình.\r\n\r\nMỗi loại hoa đều có một ngôn ngữ riêng và mang ý nghĩa nhất định. ', 1, NULL, NULL),
(2, 'Hoa Tình Yêu', 'Hoa 14/2 đẹp trở thành món quà bất ngờ dành tặng cho người yêu, bởi mỗi loại hoa mang một sắc thái và tâm trạng khác nhau. Hoa đa dạng, vừa muôn màu, muôn vẻ, vừa mang tới sự lãng mạn đặc trưng trong tình yêu.', 2, NULL, NULL),
(3, 'Hoa Sinh Nhật', 'Sinh nhật là dịp đặc biệt, là thời điểm chúng ta thể hiện tình cảm và tôn trọng đối với những người yêu quý. Để tạo thêm niềm vui và ý nghĩa cho ngày này, không có gì tuyệt vời hơn việc tặng một bó hoa sinh nhật ý nghĩa, thể hiện sự quan tâm và sự chân thành.', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int(11) NOT NULL,
  `image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `image_url`) VALUES
(1, 'https://litiflorist.com/upload/1642606839093.png'),
(2, 'https://litiflorist.com/upload/1642056972169.png'),
(3, 'https://litiflorist.com/upload/1642057365813.png'),
(4, 'https://litiflorist.com/upload/1632892244839.png\r\n'),
(5, 'https://cdn.litiflorist.com/upload/1695523965038.png'),
(6, 'https://cdn.litiflorist.com/upload/1665395859257.png'),
(7, 'https://cdn.litiflorist.com/upload/1675055336076.png'),
(8, 'https://cdn.litiflorist.com/upload/1694137169105.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `shipping_id` int(11) DEFAULT NULL,
  `order_total` double(8,2) NOT NULL,
  `NguoiNhan` varchar(255) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `shipping_id`, `order_total`, `NguoiNhan`, `SDT`, `DiaChi`, `order_status`, `created_at`) VALUES
(1, 14, NULL, 175000.00, '', '', '', 2, '2022-01-06 13:45:08'),
(2, 14, NULL, 319000.00, '', '', '', 3, '2021-12-07 13:47:35'),
(3, 14, NULL, 659000.00, '', '', '', 3, '2022-01-06 13:48:08'),
(4, 14, NULL, 481000.00, '', '', '', 1, '2022-01-06 13:50:30'),
(5, 14, NULL, 89000.00, '', '', '', 1, '2022-01-06 13:55:07'),
(6, 14, NULL, 88000.00, 'ham', 'jham', 'ham', 2, '2020-12-23 13:55:57'),
(7, 0, NULL, 172000.00, 'b', 'b', 'b', 1, '2022-01-06 13:56:39'),
(8, 0, NULL, 353000.00, '1', '312', '2312', 1, '2022-01-06 20:15:53'),
(9, 0, NULL, 89000.00, 'ád', 'ád', 'ád', 3, '2022-01-06 21:03:05'),
(10, 0, NULL, 0.00, 'asd', 'asd', 'asd', 1, '2022-01-06 21:08:02'),
(11, 0, NULL, 0.00, 'asd', 'asd', 'asd', 3, '2022-01-06 21:12:25'),
(12, 0, NULL, 0.00, 'asd', 'asd', 'asd', 1, '2022-01-06 21:12:29'),
(13, 0, NULL, 0.00, 'asd', 'asd', 'asd', 1, '2022-01-06 21:12:50'),
(14, 0, NULL, 0.00, 'asd', 'asd', 'asd', 2, '2022-01-06 21:15:19'),
(15, 0, NULL, 0.00, 'asd', 'asd', 'asd', 4, '2022-01-06 21:44:45'),
(16, 0, NULL, 163000.00, 'duc nguyen', '123', 'dn', 4, '2022-01-06 21:49:17'),
(17, 0, NULL, 60000.00, '123', '3123', '12', 1, '2022-01-06 21:50:38'),
(18, 0, NULL, 89000.00, '321', '321', '321', 1, '2022-01-07 09:07:12'),
(19, 0, NULL, 287000.00, 'hehe', '123', '123', 1, '2022-01-07 09:11:52'),
(20, 2, NULL, 306000.00, 'user', '0192929292', 'a', 3, '2022-01-07 23:27:36'),
(21, 0, NULL, 89000.00, 'luong van chuong', '84392759052', 'Định Phước, Tam Nghĩa', 2, '2022-01-08 09:38:09'),
(22, 0, NULL, 144000.00, 'nguyen huy', '84392759052', 'TT Cây Dương, Phụng Hiệp', 3, '2022-01-08 09:57:57'),
(23, 0, NULL, 178000.00, 'ai do ai do', '0392759052', 'Khu Phố 2, TT Trảng Bom', 4, '2022-01-08 09:58:42'),
(24, 1, NULL, 90000.00, 'admin', '0192929292', 'admin', 1, '2022-01-12 15:35:00'),
(25, 1, NULL, 196000.00, 'admin', '0192929292', 'admin', 1, '2022-01-12 15:35:26'),
(26, 0, NULL, 90000.00, 'Lê Thị Ngọc Điệp', '+84702320547', 'K19/04 Phong Bắc 20 phường Hoà Thọ Đông quận Cẩm Lệ thành phố Đà Nẵng', 1, '2023-11-16 21:10:10'),
(27, 0, NULL, 90000.00, 'điệp', '090567892', '243 NVC', 1, '2023-11-21 09:07:38'),
(28, 0, NULL, 999999.99, 'Lê Thị Ngọc Điệp', '+84702320547', 'K19/04 Phong Bắc 20 phường Hoà Thọ Đông quận Cẩm Lệ thành phố Đà Nẵng', 1, '2023-12-04 14:52:24'),
(29, 0, NULL, 999999.99, 'điệp', '0702320547', '243 NVC', 1, '2023-12-04 16:49:25'),
(30, 25, NULL, 999999.99, 'Tuyet', '0702320547', 'Phong Bắc 20, phường Hòa Thọ Đông, quận Cẩm Lệ', 1, '2023-12-08 10:47:51'),
(31, 26, NULL, 999999.99, 'hue', '0702320547', 'Sơn Trà', 1, '2023-12-08 15:54:33'),
(32, 26, NULL, 999999.99, 'hue', '0702320547', 'Sơn Trà', 1, '2023-12-08 15:55:32'),
(33, 26, NULL, 999999.99, 'hue', '0702320547', 'Phong Bắc 20, phường Hòa Thọ Đông, quận Cẩm Lệ', 1, '2023-12-08 16:02:56'),
(34, 27, NULL, 999999.99, 'ha', '0905100200', 'Ngũ Hành Sơn', 1, '2023-12-08 20:50:21'),
(35, 29, NULL, 999999.99, 'Lê Thị Bích Thảo ', '0987656572', 'Quận Cẩm Lê', 1, '2023-12-09 13:49:05'),
(36, 30, NULL, 999999.99, 'Nguyễn Thùy Phương', '0977777666', 'Ngũ Hành Sơn', 1, '2023-12-12 08:04:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_num` int(255) NOT NULL,
  `product_price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_id`, `product_id`, `product_num`, `product_price`) VALUES
(1, 4, 1, 175000.00),
(2, 4, 1, 175000.00),
(2, 2, 1, 55000.00),
(2, 1, 1, 89000.00),
(3, 4, 1, 175000.00),
(3, 2, 2, 55000.00),
(3, 1, 2, 89000.00),
(3, 3, 1, 196000.00),
(4, 4, 1, 175000.00),
(4, 2, 2, 55000.00),
(4, 1, 1, 89000.00),
(4, 3, 1, 196000.00),
(5, 1, 1, 89000.00),
(6, 13, 2, 44000.00),
(7, 8, 1, 172000.00),
(8, 1, 1, 89000.00),
(8, 13, 6, 44000.00),
(9, 1, 1, 89000.00),
(16, 14, 1, 163000.00),
(17, 10, 1, 60000.00),
(18, 1, 1, 89000.00),
(19, 11, 1, 287000.00),
(20, 2, 2, 55000.00),
(20, 3, 1, 196000.00),
(21, 1, 1, 89000.00),
(22, 1, 1, 89000.00),
(22, 2, 1, 55000.00),
(23, 1, 2, 89000.00),
(24, 1, 1, 90000.00),
(25, 3, 1, 196000.00),
(26, 1, 1, 90000.00),
(27, 1, 1, 90000.00),
(28, 1, 2, 999999.99),
(29, 1, 2, 999999.99),
(30, 10, 1, 999999.99),
(30, 1, 1, 999999.99),
(31, 1, 1, 999999.99),
(31, 2, 1, 999999.99),
(32, 2, 1, 999999.99),
(33, 5, 1, 999999.99),
(34, 11, 1, 999999.99),
(35, 1, 1, 999999.99),
(36, 13, 1, 999999.99);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_content` text NOT NULL,
  `product_price` double NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `category_id`, `product_name`, `product_desc`, `product_content`, `product_price`, `product_image`, `product_status`) VALUES
(1, 3, 'LILY OF THE VALLEY', 'Hoa cưới là phụ kiện không thể thiếu để tôn lên nét đẹp rạng ngời của cô dâu trong ngày cưới. Hoa cầm tay cô dâu trong ngày cưới phải được kết một cách tỉ mỉ và thẩm mỹ cao nhất, mang lại cảm giác tươi trẻ và thoải mái. Mỗi loài hoa cưới lại mang một mùi hương, một màu sắc và hàm chứa những ý nghĩa khác nhau.', '“Dù trên đường đời ta vô tình lạc mất nhau, thì sẽ có ngày ta tương phùng trong hạnh phúc.” Chẳng mang vẻ lộng lẫy, kiêu sa, linh lan tinh tế thanh khiết mang đến cho đời sắc đẹp, hương thơm và ý nghĩa sự trở về của hạnh phúc “The Return of Happiness - Hạnh Phúc Tìm Lại”.\r\nHoa chính: Hoa linh lan', 20000000, 'https://cdn.litiflorist.com/upload/1651802011637.png', 1),
(2, 1, 'CLOUD IN THE BOX', 'Ngày 20/10 là một ngày quan trọng và đặc biệt, khi mà người Việt Nam dành tặng những tấm lòng tri ân và tình cảm sâu sắc đến phái đẹp. Trong bất kỳ dịp này, bó hoa trở thành món quà không thể thiếu, thể hiện sự tôn trọng và yêu thương tới những người phụ nữ quan trọng trong cuộc sống của chúng ta.', 'Hộp hoa mang sắc hồng lãng mạn và lối cắm hoa bay bổng chắc chẵn sẽ mang đến niềm vui và nguồn năng lượng tích cực đến cho bất cứ ai nhận được.\r\nHoa chính: Hoa hồng Ecuador, mẫu đơn (peony Hà Lan)\r\nHoa phụ: Hoa lá phụ nhập khẩu', 4400000, 'https://cdn.litiflorist.com/upload/1681959488872.png', 1),
(3, 1, 'SUNSHINE CALLA', 'Hoa cưới là phụ kiện không thể thiếu để tôn lên nét đẹp rạng ngời của cô dâu trong ngày cưới. Hoa cầm tay cô dâu trong ngày cưới phải được kết một cách tỉ mỉ và thẩm mỹ cao nhất, mang lại cảm giác tươi trẻ và thoải mái. Mỗi loài hoa cưới lại mang một mùi hương, một màu sắc và hàm chứa những ý nghĩa khác nhau.', 'Đoá hoa cưới cùng sắc vàng rạng rỡ mang lời chúc mừng hạnh phúc cho ngày đặc biệt.\r\nHoa chính: Calla lily\r\nHoa phụ: Hoa lá phụ khác', 1500000, 'https://cdn.litiflorist.com/upload/1652250773982.png', 1),
(4, 2, 'CHRISTMASTIDE\r\n', 'Giáng sinh là một trong những dịp lễ được trông đợi nhất cuối năm. Không khí vui tươi, cùng những âm thanh rộn ràng của ngày lễ Noel luôn khiến mọi người có tâm lý háo hức và chi tiêu nhiều hơn. Chính vì vậy, đây là cơ hội vàng dành cho các doanh nghiệp gia tăng lợi nhuận và khẳng định giá trị của mình thông qua những mẫu content giáng sinh thu hút. ', 'Hộp hoa sử dụng lá thông nhập , cầu gai cam, ánh trăng , nến , quả thông , lát cam sấy ,châu đỏ và phụ kiện noel.\r\nHoa chính: Lá thông nhập , cầu gai cam\r\nHoa phụ: Phụ kện Noel', 3900000, 'https://litiflorist.com/upload/1607977337383.png', 1),
(5, 2, 'PHÚC LỘC HOA', 'Hoa là một trong những đặc trưng không thể thiếu của ngày Tết Việt. Mỗi gia đình đều sẽ chuẩn bị các loại cây cảnh hay một lọ hoa để cho không gian sống thêm rực rỡ vào ngày Tết. ', '???́? ??̣̂? ??? rực rỡ với màu hoa đỏ của đào đông hòa quyện với sắc màu của ánh trăng, nhấn nhá thêm những bông thảo đường hoàng đế nổi bật. Không có bình hoa nào có thể mang khí chất vương giả đến ngôi nhà bạn như thiết kế Phúc Lộc Hoa từ Liti Florist.\r\nHoa chính: Ilex Đào đông\r\nHoa phụ: Thảo đường hoàng đế\r\n', 47500000, 'https://litiflorist.com/upload/1641511819471.png', 1),
(6, 2, 'BE MINE', 'Ngày lễ tình nhân là dịp để những cặp đôi yêu nhau thể hiện tình cảm đặc biệt, trao nhau những món quà kỷ niệm thật ý nghĩa. Bên cạnh những lời chúc hay socola thì những bó hoa vẫn luôn là sự lựa chọn hàng đầu khi mua quà tặng vào dịp này.', 'Bó hoa tone hồng nhẹ dịu dàng sẽ là món quà thích hợp trong ngày valentine dành cho cô nàng kẹo ngọt.\r\nHoa chính: Roshlyn, mẫu đơn hồng, lan tường trắng, tulip hồng, mẫu đơn Hà Lan\r\nHoa phụ: Lá pitto, sao trắng\r\n', 6750000, 'https://litiflorist.com/upload/1611305382831.png', 1),
(7, 3, 'YOUR DAY', 'Sinh nhật luôn là ngày ý nghĩa nhất đối với bản thân mỗi người. Thật hạnh phúc khi có người nhớ đến ngày sinh nhật của mình.', 'Sản phẩm hoa với thiết kế bay bổng cùng màu sắc tinh tế chắc chắn sẽ là món quà trao gửi thông điệp yêu thương ý nghĩa nhất.\r\nHoa chính: Hoa hồng Ecuador\r\nHoa phụ: Hoa lá phụ nhập khẩu', 1600000, 'https://cdn.litiflorist.com/upload/1678854855833.png', 1),
(8, 3, 'SWEET PINK', 'Sinh nhật luôn là ngày ý nghĩa nhất đối với bản thân mỗi người. Thật hạnh phúc khi có người nhớ đến ngày sinh nhật của mình.', 'Sắc hồng dịu dàng và tinh tế dành cho cô gái thanh lịch, nữ tính và yêu cái đẹp!\r\nHoa chính: Hoa hồng Ecuador\r\nHoa phụ: Hoa lá phụ nhập khẩu', 3300000, 'https://litiflorist.com/upload/1644396355621.png', 1),
(9, 3, 'BOX OF HAPPINESS', 'Ngày 27 tháng 2 có ý nghĩa vô cùng to lớn với từng người con Việt Nam, đây là ngày để mọi người gửi lời cảm ơn, thể hiện sự kính trọng của mình đến với đội ngũ y, bác sĩ, những người đã dành hết tài trí và sức lực của bản thân để cống hiến cho nước nhà. ', 'Sản phẩm gồm: Dưa sữa Đài Loan, Dưa lê giống Hàn, Táo xanh New Zealand, Cam vàng Úc, Táo New Zealand kết hợp cùng hoa tươi nhập khẩu.\r\nHoa chính: Trái cây nhập khẩu\r\nHoa phụ: Hoa lá phụ nhập khẩu', 2000000, 'https://cdn.litiflorist.com/upload/1668396468378.png', 1),
(10, 1, 'HEARTIFUL GIFT', 'Ngày quốc tế Phụ nữ 8/3 là sự kiện tôn vinh người phụ nữ cùng vai trò của họ trong hạnh phúc gia đình, những đóng góp của họ cho hàng loạt những cơ ngơi đồ sộ, những doanh nghiệp thành công.', 'Sản phẩm bao gồm: Dưa lê giống Hàn, Táo New Zealand, Dưa lưới Nhật Bản, Cam vàng Úc kết hợp cùng hoa lá phụ nhập khẩu.\r\nHoa chính: Trái cây nhập khẩu\r\nHoa phụ: Hoa lá phụ nhập khẩu', 1300000, 'https://cdn.litiflorist.com/upload/1668401833996.png', 1),
(11, 2, 'GIANT TULIP', 'Ngày 20/10 là một ngày quan trọng và đặc biệt, khi mà người Việt Nam dành tặng những tấm lòng tri ân và tình cảm sâu sắc đến phái đẹp. Trong bất kỳ dịp này, bó hoa trở thành món quà không thể thiếu, thể hiện sự tôn trọng và yêu thương tới những người phụ nữ quan trọng trong cuộc sống của chúng ta. ', 'Lẵng hoa Lapis tone cam hồng được phối hài hoà giữa Hồng Quicksand, Free Spirit, Cúc tia Toffee... truyền đạt thông điệp với sức sống mạnh mẽ, kiên cường, luôn hướng về những điều tốt đẹp phía trước.\r\nHoa chính: Hồng Quicksand, Free Spirit\r\nHoa phụ: Cúc tia Toffee, các loại hoa lá phụ khác', 24500000, 'https://cdn.litiflorist.com/upload/1688478455408.png', 1),
(12, 1, 'HONEY BOX', 'Ngày lễ tình nhân là dịp để những cặp đôi yêu nhau thể hiện tình cảm đặc biệt, trao nhau những món quà kỷ niệm thật ý nghĩa. Bên cạnh những lời chúc hay socola thì những bó hoa vẫn luôn là sự lựa chọn hàng đầu khi mua quà tặng vào dịp này.', 'Hộp quà với màu sắc ngọt ngào - món quà ấn tượng cho mùa Valentine năm nay.\r\nHoa chính: Hoa hồng Ecuador\r\nHoa phụ: Hoa lá phụ nhập khẩu', 2400000, 'https://litiflorist.com/upload/1644118472069.png', 1),
(13, 3, 'WINTER SMELL', 'Giáng sinh là một trong những dịp lễ được trông đợi nhất cuối năm. Không khí vui tươi, cùng những âm thanh rộn ràng của ngày lễ Noel luôn khiến mọi người có tâm lý háo hức và chi tiêu nhiều hơn. Chính vì vậy, đây là cơ hội vàng dành cho các doanh nghiệp gia tăng lợi nhuận và khẳng định giá trị của mình thông qua những mẫu content giáng sinh thu hút.', 'Thêm sự lựa chọn độc đáo cho bạn về món quà dành tặng người thân mùa Giáng Sinh ấm áp. Giá đã bao gồm trang trí.\r\nHoa chính: Tung thơm\r\nHoa phụ: Không', 1400000, 'https://cdn.litiflorist.com/upload/1670143433279.png', 1),
(14, 2, 'LAPIS', 'Ngày Nhà giáo, một dịp quan trọng để tôn vinh công lao của các nhà giáo, đã trở thành một ngày lễ thường niên được kỷ niệm trên khắp Việt Nam. Một trong những cách truyền thống để thể hiện lòng biết ơn đó là tặng hoa, và trong ngày này, lẵng hoa 20/11 là một biểu tượng đặc biệt.', 'Sản phẩm hoa với thiết kế bay bổng cùng màu sắc tinh tế chắc chắn sẽ là món quà trao gửi thông điệp yêu thương ý nghĩa nhất.\r\nHoa chính: Hoa hồng Ecuador\r\nHoa phụ: Hoa lá phụ nhập khẩu\r\n', 1700000, 'https://litiflorist.com/upload/1623050504510.png', 1),
(15, 3, 'GEMMA', 'Ngày Nhà giáo, một dịp quan trọng để tôn vinh công lao của các nhà giáo, đã trở thành một ngày lễ thường niên được kỷ niệm trên khắp Việt Nam. Một trong những cách truyền thống để thể hiện lòng biết ơn đó là tặng hoa, và trong ngày này, lẵng hoa 20/11 là một biểu tượng đặc biệt.', 'Thiết kế túi giấy ấn tượng cùng gam màu cam nổi bật thu hút mọi ánh nhìn.\r\nHoa chính: Hồng Shimmer Ecuador, lan hồ điệp\r\nHoa phụ: Hoa lá phụ nhập khẩu', 1600000, 'https://litiflorist.com/upload/1632807304689.png', 1),
(16, 1, 'LOVELY CELEBRATION', 'Hoa tươi là một quà tặng không thể thiếu trong mỗi dịp khai trương cửa hàng, mừng khai trương đại lý doanh nghiệp. Không chỉ là món quà tặng mà hoa tươi còn thay cho những lời chúc tốt đẹp nhất.', 'Thiết kế kệ hoa khai trương từ Liti Florist luôn mang dấu ấn riêng, phù hợp để trưng trong không gian rộng lớn sang trọng.\r\nHoa chính: Hoa hồng Ecuador\r\nHoa phụ: Hoa lá phụ nhập khẩu', 5000000, 'https://cdn.litiflorist.com/upload/1685352440814.png', 1),
(17, 3, 'SWEET SOUL', 'Lẵng hoa tone coral điểm xanh blue ấn tượng, với phong cách phóng khoáng bay bổng thu hút mọi ánh nhìn.', 'Hoa chính: Hồng Shimmer, Quicksand, Tulip, Calla\r\nHoa phụ: Thiên nga , Hồng sâm, Tulip nam phi, Cúc mẫu đơn, Tai voi, Thanh liễu hồng, Sao nhí trắng Hà Lan.', 3300000, 'https://litiflorist.com/upload/1602837693864.png', 1),
(18, 1, 'COLORFUL SWEETNESS', 'Nho sữa Hàn Quốc, Dưa lê giống Hàn, Kiwi vàng New Zealand, Táo New Zealand, Cam vàng Úc, Táo xanh New Zealand, Táo New Zealand kết hợp cùng hoa tươi nhập khẩu.', 'Hoa chính: Trái cây nhập khẩu\r\nHoa phụ: Hoa lá phụ nhập khẩu', 2200000, 'https://cdn.litiflorist.com/upload/1668397212731.png', 1),
(19, 1, 'LOVELY BRIDE', 'Bên những đoá hoa cưới tinh khôi từ Liti Florist, Hoa hậu Lương Thuỳ Linh xinh đẹp tựa nàng thơ trong những mẫu thiết kế mới nhất của BST váy cưới “LOVE NO.3” từ NTK Lê Thanh Hoà.', 'Hoa chính: Tulip\r\nHoa phụ: Hoa lá phụ nhập khẩu', 1900000, 'https://cdn.litiflorist.com/upload/1687493442512.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `role_detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_name`, `role_detail`) VALUES
(1, 'admin', 'admin'),
(2, 'user', 'user');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `shipping_payment` varchar(255) NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_subimageproduct`
--

CREATE TABLE `tbl_subimageproduct` (
  `idImg` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `URL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_subimageproduct`
--

INSERT INTO `tbl_subimageproduct` (`idImg`, `idProduct`, `URL`) VALUES
(1, 16, 'https://cdn.litiflorist.com/upload/1685352440814.png'),
(2, 6, 'https://litiflorist.com/upload/1611305382831.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(10) DEFAULT 2,
  `user_sex` varchar(255) DEFAULT NULL,
  `user_tel` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `name`, `username`, `user_verified_at`, `password`, `role_id`, `user_sex`, `user_tel`, `user_address`, `user_email`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, 'admin', 1, 'Nam', '0192929292', 'admin', 'admin@email.com', NULL, NULL, NULL),
(2, 'user', 'user', NULL, 'user', 2, 'Nữ', '0192929292', 'a', 'user@email.com', NULL, NULL, NULL),
(3, 'Furman Stark', 'sydnie70', NULL, '1111', 1, 'Nữ', '+1602610290978', '1882 Herbert Overpass\nPort Fritz, NE 32977', 'ford.baumbach@purdy.com', NULL, NULL, NULL),
(4, 'Justen Cartwright IV', 'bbalistreri', NULL, '1111', 2, 'Nữ', '+9880898533314', '214 Breitenberg Rest Apt. 720\nFidelfurt, WA 99405', 'mclaughlin.cooper@hotmail.com', NULL, NULL, NULL),
(5, 'Maryse Hickle', 'pfeffer.arthur', NULL, '1111', 1, 'Nữ', '+4250109221130', '172 Rodriguez Mountains\nKubton, OK 25706-7568', 'savanah.botsford@gmail.com', NULL, NULL, NULL),
(6, 'Mr. Tremaine Borer DDS', 'alexandria96', NULL, '1111', 2, 'Nam', '+8303778549381', '7846 Vena Station Suite 663\nAnnettafort, AR 35680-1576', 'drake50@cassin.info', NULL, NULL, NULL),
(7, 'Mr. Gustave Wilderman', 'fromaguera', NULL, '1111', 2, 'Nam', '+6134647088802', '63193 Jadon Cliffs\nWest Elnoraland, MN 23853', 'fferry@grady.biz', NULL, NULL, NULL),
(8, 'Monty Jones', 'krajcik.sallie', NULL, '1111', 2, 'Nữ', '+5642602709245', '95672 Ramiro Crossroad Suite 714\nOraborough, OK 30780-7479', 'reichert.kayden@hotmail.com', NULL, NULL, NULL),
(9, 'Prof. Joany Ortiz II', 'kaelyn82', NULL, '1111', 2, 'Nam', '+5207301420510', '588 Willms Square\nPort Della, VA 32777-1099', 'bethel.funk@yahoo.com', NULL, NULL, NULL),
(10, 'Magdalena Graham', 'megane.keebler', NULL, '1111', 2, 'Nam', '+1667477350946', '54570 Cruickshank Key\nDonnyton, PA 88440-3232', 'gregory.jast@gmail.com', NULL, NULL, NULL),
(11, 'Prof. Trace Grant', 'fdonnelly', NULL, '1111', 2, 'Nữ', '+5351353486609', '1056 Lakin Lights\nSpencerhaven, RI 99961-9182', 'fahey.leonora@rempel.com', NULL, NULL, NULL),
(12, 'Ms. Lexi White III', 'marilie.bergnaum', NULL, '1111', 1, 'Nam', '+3947507869608', '3442 Reynolds Estate Apt. 290\nWest Josephfort, MD 86407', 'graciela28@donnelly.net', NULL, NULL, NULL),
(13, 'Lia Olson IV', 'qkuvalis', NULL, '1111', 1, 'Nam', '+9750828374585', '829 Nelle Burgs Apt. 398\nNew Kaden, NH 26135-0287', 'ihayes@ferry.com', NULL, NULL, NULL),
(14, 'Katheryn Weimann', 'webster.kautzer', NULL, '1111', 2, 'Nam', '+5839584527846', '47684 Bednar Gateway\nAnnamarietown, LA 92612-1200', 'squigley@satterfield.com', NULL, NULL, NULL),
(15, 'Mac Gorczany', 'heath14', NULL, '1111', 2, 'Nam', '+7220436652301', '226 Lynch Stream Apt. 673\nDanechester, IA 70608-6223', 'lturner@hotmail.com', NULL, NULL, NULL),
(16, 'Alize Lemke DDS', 'hilpert.will', NULL, '1111', 2, 'Nữ', '+8899229557318', '33341 Freeda Gardens Suite 323\nFunkfort, AZ 39598', 'ifadel@metz.biz', NULL, NULL, NULL),
(17, 'Dr. Kristofer Bruen', 'luigi12', NULL, '1111', 2, 'Nữ', '+2870457896714', '112 Juliet Hill\nJosephville, HI 43939', 'julius.green@hotmail.com', NULL, NULL, NULL),
(18, 'Dayna Runolfsdottir', 'cstamm', NULL, '1111', 1, 'Nữ', '+4678815794243', '866 Pacocha Island Suite 650\nHeidenreichchester, IA 05050', 'murl.hickle@will.com', NULL, NULL, NULL),
(19, 'Madge Botsford IV', 'sam.glover', NULL, '1111', 1, 'Nữ', '+6039441465839', '75661 Kuphal Ranch Apt. 702\nLake Wendellmouth, OH 36112', 'ashley.kovacek@cremin.net', NULL, NULL, NULL),
(20, 'Mr. Myles Carroll IV', 'jarrell87', NULL, '1111', 1, 'Nam', '+7910456787633', '199 Mitchell Parkway\nJevonfort, WI 34368', 'prosacco.fanny@herzog.com', NULL, NULL, NULL),
(21, 'Arvid Hilpert', 'horacio37', NULL, '1111', 2, 'Nam', '+1123659606152', '57867 Vandervort Drives\nDeannaland, FL 53891', 'hhirthe@prohaska.com', NULL, NULL, NULL),
(22, 'Katelyn Pollich', 'hmorar', NULL, '1111', 2, 'Nữ', '+1477128030583', '317 Kaylin Shore Apt. 648\nEast Bud, FL 74531-8427', 'funk.karine@sipes.com', NULL, NULL, NULL),
(23, '', 'diep@gmail.com', NULL, '123456', 2, NULL, NULL, NULL, 'diep@gmail.com', NULL, NULL, NULL),
(24, '', 'hoang', NULL, '0702', 2, NULL, NULL, NULL, 'hoang@gmail.com', NULL, NULL, NULL),
(25, '', 'tuyet', NULL, '123456', 2, NULL, NULL, NULL, 'tuyet@gmail.com', NULL, NULL, NULL),
(26, '', 'hue', NULL, '12345678', 2, NULL, NULL, NULL, 'hue@gmail.com', NULL, NULL, NULL),
(27, '', 'ha', NULL, '12345', 2, NULL, NULL, NULL, 'ha@gmail.com', NULL, NULL, NULL),
(28, '', 'dien', NULL, '9876', 2, NULL, NULL, NULL, 'dien@gmail.com', NULL, NULL, NULL),
(29, 'Lê Thị Bích Thảo', 'Thảo', NULL, '12345', 2, 'Nữ', '0796876495', 'Quận Cẩm Lệ', 'thao@gmail.com', NULL, NULL, NULL),
(30, 'Nguyễn Thùy Phương', 'phuong', NULL, '123456', 2, 'Nữ', '0977777666', 'Ngũ Hành Sơn', 'phuong@gmail.com', NULL, NULL, NULL),
(31, 'Nguyễn Mi Nên', 'nen', NULL, '9876', 2, 'Nữ', '0987654321', '0987654321', 'nen@gmail.com', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `userID` (`userID`);

--
-- Chỉ mục cho bảng `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Chỉ mục cho bảng `tbl_subimageproduct`
--
ALTER TABLE `tbl_subimageproduct`
  ADD PRIMARY KEY (`idImg`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `tbl_subimageproduct`
--
ALTER TABLE `tbl_subimageproduct`
  MODIFY `idImg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `tbl_product` (`product_id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tbl_user` (`user_id`);

--
-- Các ràng buộc cho bảng `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD CONSTRAINT `tbl_order_details_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `tbl_product` (`product_id`),
  ADD CONSTRAINT `tbl_order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`);

--
-- Các ràng buộc cho bảng `tbl_subimageproduct`
--
ALTER TABLE `tbl_subimageproduct`
  ADD CONSTRAINT `tbl_subimageproduct_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `tbl_product` (`product_id`);

--
-- Các ràng buộc cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD CONSTRAINT `tbl_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tbl_role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
