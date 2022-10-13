-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2022 lúc 08:49 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `position`, `status`, `url`, `is_active`, `category_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(10, 'Cách khử mùi hôi thịt heo đơn giản, đúng cách mà vẫn giữ được chất dinh dưỡng', 'cach-khu-mui-hoi-thit-heo-don-gian-dung-cach-ma-van-giu-duoc-chat-dinh-duong', 'upload/article/Iayvm_1663069025_khu-mui-hoi-thit-heo-dung-chuan-4.jpg', 'Thịt heo là nguồn đạm dinh dưỡng rất quen thuộc trong mọi bữa ăn của các gia đình. Sơ chế thịt heo như thế nào để vừa', '<h2>1. Tại sao thịt heo lại c&oacute; m&ugrave;i h&ocirc;i?</h2>\r\n\r\n<p>Hiện nay, một số nơi đang nu&ocirc;i&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt_l%E1%BB%A3n\" target=\"_blank\">heo</a>&nbsp;theo hướng c&ocirc;ng nghiệp hay cho heo ăn c&aacute;c loại c&aacute;m g&acirc;y tăng trọng, chuồng trại chăn nu&ocirc;i kh&ocirc;ng được vệ sinh sạch sẽ, kh&ocirc;ng đ&uacute;ng ti&ecirc;u chuẩn an to&agrave;n v&agrave; kh&acirc;u giết mổ vệ sinh tr&aacute;ng rửa kh&ocirc;ng kỹ khiến thịt heo c&oacute; m&ugrave;i.&nbsp;</p>\r\n\r\n<p><em><strong>&gt;&gt;&gt; Tham khảo:&nbsp;<a href=\"https://thucphamnhanh.com/chien-lap-xuong-khong-dau/\" target=\"_blank\">B&iacute; quyết chi&ecirc;n lạp xưởng kh&ocirc;ng dầu, ăn đỡ ng&aacute;n</a></strong></em></p>\r\n\r\n<p><img alt=\"Khu Mui Hoi Thit Heo Dung Chuan\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/09/khu-mui-hoi-thit-heo-dung-chuan.jpg\" style=\"height:337px; width:600px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, bạn c&oacute; thể thấy giống heo đực thường c&oacute; m&ugrave;i h&ocirc;i hơn giống heo c&aacute;i do người chăn nu&ocirc;i chưa thiến tinh ho&agrave;n ho&agrave;n to&agrave;n kết hợp c&ugrave;ng với tuyến sinh dục khiến cho thịt lợn đực c&oacute; m&ugrave;i rất kh&oacute; chịu. Cuối c&ugrave;ng, nếu heo đang mắc bệnh hoặc mới được chữa trị bằng c&aacute;ch uống kh&aacute;ng sinh qu&aacute; nhiều th&igrave; sẽ khiến thịt heo c&oacute; m&ugrave;i h&ocirc;i v&agrave; kh&eacute;t rất kh&oacute; chịu.&nbsp;</p>\r\n\r\n<p>V&igrave; vậy, bạn cần t&igrave;m hiểu v&agrave;&nbsp; lựa chọn c&aacute;c cơ sở c&oacute; nguồn gốc uy t&iacute;n để mua được thịt heo chất lượng, tươi sạch.&nbsp;</p>\r\n\r\n<h2>2. C&aacute;ch khử m&ugrave;i h&ocirc;i thịt heo đ&uacute;ng chuẩn</h2>\r\n\r\n<h3>Khử m&ugrave;i h&ocirc;i thịt heo bằng nước s&ocirc;i</h3>\r\n\r\n<p>Phương ph&aacute;p n&agrave;y rất quen thuộc, c&aacute;c bạn sau khi rửa thịt qua nước xong th&igrave; chần miếng thịt qua nước s&ocirc;i trong khoảng từ 2 đến 3 ph&uacute;t rồi vớt ra. Nước s&ocirc;i bạn c&oacute; thể pha th&ecirc;m 1 trong c&aacute;c nguy&ecirc;n liệu như sau: muối, giấm chua hoặc rượu sẽ gi&uacute;p tăng hiệu quả khử m&ugrave;i h&ocirc;i nhanh ch&oacute;ng. Tiếp tục, rửa sạch lại với nước lạnh một lần nữa rồi đem đi chế biến l&agrave; được. Ch&uacute; &yacute;, kh&ocirc;ng n&ecirc;n chần qu&aacute; l&acirc;u sẽ l&agrave;m độ ngọt của thịt bị giảm mất, chất dinh dưỡng bị hao hụt v&agrave; tuyệt đối nước chần phải bỏ đi kh&ocirc;ng được d&ugrave;ng..&nbsp;</p>\r\n\r\n<p><em><strong>&gt;&gt;&gt; Đọc tiếp:&nbsp;<a href=\"https://thucphamnhanh.com/nuoc-uong-thai-doc-co-the/\" target=\"_blank\">C&aacute;ch l&agrave;m nước uống thải độc cơ thể, cho ng&agrave;y mới lu&ocirc;n tươi trẻ</a></strong></em></p>\r\n\r\n<p><img alt=\"Khu Mui Hoi Thit Heo Don Gian\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/09/khu-mui-hoi-thit-heo-don-gian.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<h3>Khử m&ugrave;i h&ocirc;i thịt heo bằng muối, chanh, gừng, rượu</h3>\r\n\r\n<p>Muối nguy&ecirc;n liệu khử m&ugrave;i tự nhi&ecirc;n vừa an to&agrave;n, vừa đạt hiệu quả. C&aacute;c bạn ng&acirc;m thịt heo trong t&ocirc; nước muối pha lo&atilde;ng 20 ph&uacute;t. C&oacute; thể pha th&ecirc;m với rượu hoặc cho v&agrave;o v&agrave;i l&aacute;t gừng đập dập. Hết thời gian th&igrave; vớt ra rửa sạch lại với nước rồi mới mang đi chế biến.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, nếu kh&ocirc;ng th&iacute;ch ng&acirc;m nước muối c&oacute; thể lấy muối chanh ch&agrave; x&aacute;t trực tiếp l&ecirc;n miếng thịt. Giữ y&ecirc;n trong 5 ph&uacute;t rồi xả với nước cho thật sạch.&nbsp;</p>\r\n\r\n<h3>Luộc thịt c&ugrave;ng h&agrave;nh t&iacute;m tươi để khử m&ugrave;i h&ocirc;i</h3>\r\n\r\n<p>Mẹo hay khử m&ugrave;i triệt để khi đang luộc thịt, cho v&agrave;o nồi nước luộc v&agrave;i quả h&agrave;nh kh&ocirc; đ&atilde; b&oacute;c bỏ đập dập. Khi thịt gần ch&iacute;n, bạn th&ecirc;m v&agrave;o 1 v&agrave;i giọt rượu trắng hay giấm chua cũng sẽ gi&uacute;p khử được m&ugrave;i h&ocirc;i.</p>\r\n\r\n<p><em><strong>&gt;&gt;&gt; Tư vấn:&nbsp;<a href=\"https://thucphamnhanh.com/nau-thit-kho-tieu/\" target=\"_blank\">C&aacute;ch nấu thịt kho ti&ecirc;u thơm ngon cơm, &ldquo;ch&eacute;n&rdquo; sạch sẽ</a></strong></em></p>\r\n\r\n<p><img alt=\"Khu Mui Hoi Thit Heo\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/09/khu-mui-hoi-thit-heo-643x400.jpg\" style=\"height:373px; width:600px\" /></p>\r\n\r\n<h2>3. C&oacute; khử m&ugrave;i thịt heo ho&agrave;n to&agrave;n được kh&ocirc;ng?</h2>\r\n\r\n<p>Nếu thịt heo bị h&ocirc;i kh&ocirc;ng phải do nhiễm bệnh hoặc d&ugrave;ng kh&aacute;ng sinh qu&aacute; liều, bạn đều c&oacute; thể xử l&yacute; ho&agrave;n to&agrave;n bằng c&aacute;c c&aacute;ch hướng dẫn ở tr&ecirc;n. Với thịt heo đ&atilde; nhiễm bệnh hoặc c&oacute; m&ugrave;i h&ocirc;i qu&aacute; nồng nặc, bạn cũng n&ecirc;n hạn chế sử dụng. Nếu sau khi xử l&yacute; nhưng thịt vẫn c&ograve;n qu&aacute; nhiều m&ugrave;i h&ocirc;i, bạn cũng kh&ocirc;ng n&ecirc;n chế biến v&agrave; d&ugrave;ng.&nbsp;</p>\r\n\r\n<p>Hy vọng qua những b&iacute; quyết khử m&ugrave;i h&ocirc;i thịt heo tr&ecirc;n, c&aacute;c bạn đ&atilde; biết c&aacute;ch sơ chế thịt heo đ&uacute;ng chuẩn rồi nh&eacute;, nếu bạn vẫn c&ograve;n ph&acirc;n v&acirc;n lo sợ về thịt heo kh&ocirc;ng đảm bảo chất lượng v&agrave; muốn mua thịt heo tươi sạch, an to&agrave;n uy t&iacute;n h&atilde;y đến với&nbsp;<strong><a href=\"https://thucphamnhanh.com/\" target=\"_blank\">Thực Phẩm Nhanh</a>&nbsp;</strong>nơi cung cấp ph&acirc;n phối thịt heo sạch gi&aacute; tốt mỗi ng&agrave;y.</p>', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, '2022-09-13 11:37:05', '2022-09-13 11:37:05'),
(11, 'Cách làm nước uống thải độc cơ thể, cho ngày mới luôn tươi trẻ', 'cach-lam-nuoc-uong-thai-doc-co-the-cho-ngay-moi-luon-tuoi-tre', 'upload/article/zlgHE_1663069105_nuoc-uong-thai-doc-co-the-4.jpg', 'Cách làm nước uống thải độc cơ thể, cho ngày mới luôn tươi trẻ', '<p>Cuộc sống hiện nay khiến con người li&ecirc;n tục phải đối diện mọi t&aacute;c động xấu từ m&ocirc;i trường xung quanh. Từ việc mức độ &ocirc; nhiễm m&ocirc;i trường ng&agrave;y c&agrave;ng gia tăng đến nguồn thực phẩm ăn uống hằng ng&agrave;y chứa chất độc hại, l&agrave;m ảnh hưởng đến sức khỏe của cộng đồng. Mặc d&ugrave; cơ thể ch&uacute;ng ta đ&atilde; c&oacute; cơ chế tự đ&agrave;o thải độc tố nhưng nếu dung nạp qu&aacute; nhiều thực phẩm bẩn tr&ecirc;n mức cần thiết, sẽ khiến gan, thận v&agrave; c&aacute;c bộ phận li&ecirc;n quan bị qu&aacute; tải, l&acirc;u dần sẽ l&agrave;m suy giảm chức năng gan thận cuối c&ugrave;ng l&agrave; g&acirc;y n&ecirc;n bệnh ung thư.&nbsp;Vậy h&atilde;y c&ugrave;ng&nbsp;<a href=\"https://thucphamnhanh.com/\" target=\"_blank\"><strong>Thực Phẩm Nhanh</strong></a>&nbsp;tham khảo b&iacute; quyết c&aacute;ch l&agrave;m&nbsp;<strong>nước uống thải độc cơ thể</strong>&nbsp;hằng ng&agrave;y một trong những phương ph&aacute;p thải độc tự nhi&ecirc;n, gi&uacute;p phục hồi c&aacute;c cơ quan nội tạng lu&ocirc;n khỏe mạnh, Ngo&agrave;i ra, đ&acirc;y cũng l&agrave; b&iacute; quyết gi&uacute;p ph&ograve;ng ngừa, bảo vệ cơ thể một c&aacute;ch khoa học được nhiều người &aacute;p dụng.</p>\r\n\r\n<h2>1. Nước uống thải độc cơ thể từ Chanh &ndash; Mật ong</h2>\r\n\r\n<p>Chanh v&agrave; mật ong c&oacute; c&ocirc;ng dụng thanh lọc cơ thể, thải độc v&ocirc; c&ugrave;ng tốt. C&aacute;c chuy&ecirc;n gia khuy&ecirc;n rằng n&ecirc;n uống một cốc nước chanh mật ong v&agrave;o buổi s&aacute;ng trước bữa ăn tầm 20 &ndash; 30 ph&uacute;t để l&agrave;m sạch đường ruột v&agrave; dạ d&agrave;y trong cơ thể.&nbsp;</p>\r\n\r\n<p>(*) &Aacute;p dụng c&ocirc;ng thức như sau:&nbsp;</p>\r\n\r\n<p>&ndash; H&ograve;a 2 muỗng nước &eacute;p chanh, 30ml nước c&ugrave;ng 1 lượng nhỏ mật ong, thực hiện hằng ng&agrave;y, bạn sẽ thấy cơ thể thay đổi rất nhiều từ b&ecirc;n trong lẫn b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<h2>2. Uống nước Tr&agrave; xanh giải độc cơ thể</h2>\r\n\r\n<p>Tr&agrave; xanh l&agrave; một trong những loại thực phẩm c&oacute; khả năng chuyển ho&aacute; c&aacute;c tế b&agrave;o mỡ thừa v&agrave; độc tố ra khỏi cơ thể nhanh ch&oacute;ng. Theo nghi&ecirc;n cứu tr&agrave; xanh gi&uacute;p ph&ograve;ng ngừa nguy cơ ung thư l&ecirc;n đến 15%. Trong tr&agrave; xanh c&oacute; chứa một hợp chất chống oxy h&oacute;a l&agrave; catechins &ndash; c&oacute; t&aacute;c dụng hỗ trợ chức năng gan; xử l&yacute; v&agrave; loại bỏ c&aacute;c chất g&acirc;y hại cơ thể. V&igrave; vậy, để giải độc gan n&ecirc;n uống 1 cốc&nbsp; tr&agrave; xanh v&agrave; n&ecirc;n thực hiện sau bữa ăn 30 ph&uacute;t.&nbsp;</p>\r\n\r\n<h2>3. Detox cơ thể bằng Cần t&acirc;y</h2>\r\n\r\n<p>Phong tr&agrave;o detox cơ thể bằng&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%E1%BA%A7n_t%C3%A2y\" target=\"_blank\">cần t&acirc;y</a>&nbsp;đang l&agrave; mốt, nhiều chị em thường hay m&aacute;ch nhau về c&aacute;ch sử dụng nước &eacute;p cần t&acirc;y để giảm c&acirc;n, dưỡng da cũng như thanh lọc cơ thể. Đ&acirc;y l&agrave; phương ph&aacute;p điều h&ograve;a thanh lọc cho sức khỏe nếu như cơ thể sau thời gian d&agrave;i hấp thụ qu&aacute; nhiều thức ăn dầu mỡ. Th&ocirc;ng thường ch&uacute;ng ta sẽ uống nước &eacute;p cần t&acirc;y nguy&ecirc;n chất trước bữa ăn 30 ph&uacute;t nhưng nếu bạn th&iacute;ch uống cần t&acirc;y với nhiều loại kh&aacute;c hoặc chưa quen với m&ugrave;i vị của cần t&acirc;y th&igrave; c&oacute; thể &aacute;p dụng với 2 c&ocirc;ng thức sau.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Nuoc Uong Thai Doc Co The\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/09/nuoc-uong-thai-doc-co-the.jpg\" style=\"height:335px; width:600px\" /></p>\r\n\r\n<p>(*) C&ocirc;ng thức nước &eacute;p cần t&acirc;y:&nbsp;</p>\r\n\r\n<p>&ndash; Cần t&acirc;y v&agrave;i nh&aacute;nh + &frac14;&nbsp; miếng thơm + 2 l&aacute;t chanh + 2 l&aacute;t gừng</p>\r\n\r\n<p>&ndash; Hoặc v&agrave;i nh&aacute;nh cần t&acirc;y + 1,5 t&aacute;o Mỹ + 2 l&aacute;t chanh + 2 l&aacute;t gừng</p>\r\n\r\n<p>Đ&acirc;y chỉ l&agrave; 2 c&ocirc;ng thức pha chế trong nhiều c&ocirc;ng thức về nước &eacute;p cần t&acirc;y, c&aacute;c bạn c&oacute; thể kết hợp c&aacute;c loại hoa quả rau m&agrave; m&igrave;nh th&iacute;ch nhưng nhớ cần t&igrave;m hiểu kỹ để nước &eacute;p cần ph&aacute;t huy được hiệu quả tốt nhất.</p>\r\n\r\n<h2>4. Nước uống giải độc cơ thể từ bạc h&agrave;</h2>\r\n\r\n<p>L&aacute; bạc h&agrave; c&oacute; c&ocirc;ng dụng rất rốt trong việc giải độc gan, thanh lọc cơ thể v&agrave; tăng sức đề kh&aacute;ng. Nước uống từ l&aacute; bạc h&agrave; ph&ugrave; hợp cho những ai hay d&ugrave;ng bia rượu v&agrave; c&aacute;c loại đồ uống c&oacute; cồn thường xuy&ecirc;n.&nbsp;</p>\r\n\r\n<p>(*) Thực hiện theo c&ocirc;ng thức:&nbsp;</p>\r\n\r\n<p>&ndash; Nước bạc h&agrave; + nước cốt chanh + mật ong.</p>\r\n\r\n<p>Đun s&ocirc;i 1 l&iacute;t nước c&ugrave;ng 20g l&aacute; bạc h&agrave; tươi. Sau khi đun nhỏ lửa 5 ph&uacute;t, tắt bếp rồi để nguội. Sau đ&oacute; th&ecirc;m nước cốt chanh hoặc cam v&agrave;o, c&oacute; thể nghiền n&aacute;t vỏ chanh v&agrave; th&ecirc;m v&agrave;o &iacute;t nước. Sau đ&oacute; cho 2 th&igrave;a c&agrave; ph&ecirc; mật ong v&agrave;o hỗn hợp. Mật ong sẽ gi&uacute;p hương vị ngọt ng&agrave;o v&agrave; dễ uống hơn.</p>\r\n\r\n<p>&ndash; Dưa leo + l&aacute; bạc h&agrave;</p>\r\n\r\n<p>Lấy 2 quả dưa leo v&agrave; 5 l&aacute; bạc h&agrave; ng&acirc;m sơ qua nước muối, vớt ra để r&aacute;o nước. Đem dưa leo gọt bỏ vỏ, cắt th&agrave;nh l&aacute;t mỏng. Sau đ&oacute;, cho dưa leo c&ugrave;ng l&aacute; bạc h&agrave; với 1 l&iacute;t nước lọc v&agrave;o b&igrave;nh thủy tinh. Đậy nắp v&agrave; bảo quản trong ngăn m&aacute;t tủ lạnh từ 3-4 tiếng v&agrave; lấy ra thưởng thức.</p>\r\n\r\n<h2>5. Uống nước lọc mỗi ng&agrave;y</h2>\r\n\r\n<p>D&ugrave; uống nước &eacute;p g&igrave; ch&uacute;ng ta cũng kh&ocirc;ng được qu&ecirc;n rằng, ch&uacute;ng kh&ocirc;ng thể n&agrave;o thay thế nước lọc. Cần uống 2 l&iacute;t nước mỗi ng&agrave;y để duy tr&igrave; cơ thể khỏe mạnh mỗi ng&agrave;y.</p>\r\n\r\n<p>Hy vọng qua b&agrave;i viết C&aacute;ch l&agrave;m nước uống thải độc cơ thể, cho ng&agrave;y mới lu&ocirc;n tươi trẻ. C&aacute;c bạn đ&atilde; biết th&ecirc;m nhiều c&ocirc;ng thức detox pha chế đ&uacute;ng điệu vừa ngon vừa bổ dưỡng.&nbsp;</p>', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, '2022-09-13 11:38:25', '2022-09-13 11:38:25'),
(12, 'Tham khảo các mẫu trang trí hộp cơm bento văn phòng đẹp thu hút', 'tham-khao-cac-mau-trang-tri-hop-com-bento-van-phong-dep-thu-hut', 'upload/article/nQxq4_1663069167_trang-tri-hop-com-bento-xinh-xan-768x510.jpg', 'Nếu bạn đã quá chán khi ăn những hộp cơm tẻ nhạt, trong không ngon mắt chút nào thì hãy cùng Thực Phẩm Nhanh tìm hiểu về các mẫu trang trí hộp cơm Bento – 1 nét văn hóa ẩm thực đặc sắc, thú vị của...', '<h2>1. T&igrave;m hiểu về cơm hộp Bento</h2>\r\n\r\n<p>Bento (弁当) trong tiếng Việt nghĩa l&agrave; cơm hộp. Đồ ăn thường được tr&igrave;nh b&agrave;y, trang tr&iacute; đẹp mắt v&agrave; rất cầu kỳ. Chất liệu của những loại hộp cơm n&agrave;y thường được l&agrave;m bằng gỗ, giấy hay nhựa&hellip;</p>\r\n\r\n<p><img alt=\"Trang Tri Hop Com Bento Xinh Xan\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/08/trang-tri-hop-com-bento-xinh-xan-602x400.jpg\" style=\"height:399px; width:600px\" /></p>\r\n\r\n<p>Nguồn gốc ra đời từ triều đại Kamakura (1185-1333). Cơm được g&oacute;i trong những chiếc h&ocirc;̣p nhỏ để dễ mang theo người khi đi đường xa hoặc phải l&agrave;m việc cả ng&agrave;y ngo&agrave;i đồng ruộng.&nbsp;</p>\r\n\r\n<p>Qua từng giai đoạn, Bento đ&atilde; được cải tiến biến tấu th&agrave;nh những hộp cơm cầu kỳ v&agrave; đa dạng hơn. Khi hệ thống t&agrave;u lửa được h&igrave;nh th&agrave;nh dưới thời Meiji (1868-1921), c&aacute;c phần Bento bắt đầu được b&agrave;y b&aacute;n phổ biến tại c&aacute;c ga t&agrave;u để phục vụ h&agrave;nh kh&aacute;ch bởi sự tiện lợi m&agrave; ch&uacute;ng mang lại. Mỗi phần cơm hộp n&agrave;y được gọi l&agrave; Ekiben tức l&agrave; cơm hộp bến t&agrave;u. Đến năm 1912 &ndash; 1926, nghệ thuật cơm bento đ&atilde; trở th&agrave;nh n&eacute;t đặc sắc trong ẩm thực cung đ&igrave;nh, n&oacute; thường xuất hiện trong c&aacute;c buổi tiệc tr&agrave;, c&aacute;c buổi du ngoạn, ngắm cảnh ngo&agrave;i trời v&agrave; đặc biệt l&agrave; trong lễ hội ngắm hoa anh đ&agrave;o.</p>\r\n\r\n<p><img alt=\"Trang Tri Hop Com Bento\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/08/trang-tri-hop-com-bento-533x400.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<h2>2. Cơm hộp &ndash; Bento thường bao gồm những m&oacute;n ăn n&agrave;o?</h2>\r\n\r\n<p>Theo người Nhật, 1 hộp cơm&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Bent%C5%8D\" target=\"_blank\">Bento</a>&nbsp;đ&uacute;ng nghĩa, đầy đủ chất dinh dưỡng cần c&oacute; 3 th&agrave;nh phần dinh dưỡng ch&iacute;nh sau đ&acirc;y: TINH BỘT &ndash; CHẤT ĐẠM &ndash; CHẤT XƠ. Với tinh bột, người Nhật thường d&ugrave;ng gạo nấu cơm, cơm sẽ được nặn nh&agrave;o, tạo th&agrave;nh những h&igrave;nh khối theo sự s&aacute;ng tạo, kh&eacute;o l&eacute;o ri&ecirc;ng của chủ nh&acirc;n. Ngo&agrave;i ra, phần cơm c&ograve;n được kết hợp th&ecirc;m c&aacute;c loại vừng rang, rong biển miếng đi k&egrave;m. Chất đạm, người Nhật hay d&ugrave;ng c&aacute;, hải sản, x&uacute;c x&iacute;ch, trứng v&agrave; thịt để l&agrave;m m&oacute;n ch&iacute;nh. Chất xơ l&agrave; c&aacute;c loại rau củ quả như: c&agrave; rốt, dưa leo, rau x&agrave; l&aacute;ch&hellip; c&aacute;c loại rau củ sẽ được khắc tạo h&igrave;nh c&aacute;c b&ocirc;ng hoa, l&aacute; c&acirc;y&hellip;</p>\r\n\r\n<p><em><strong>&gt;&gt;&gt; Đọc tiếp:&nbsp;<a href=\"https://thucphamnhanh.com/cac-mon-an-ngon-tu-trung-ga-phan-2/\" target=\"_blank\">C&aacute;c m&oacute;n ăn ngon từ trứng g&agrave; (Phần 2)</a></strong></em></p>\r\n\r\n<p><img alt=\"Com Hop Bento\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/08/com-hop-bento.png\" style=\"height:378px; width:600px\" /></p>\r\n\r\n<h2>3. C&aacute;c mẫu trang tr&iacute; hộp cơm bento cho d&acirc;n văn ph&ograve;ng</h2>\r\n\r\n<h3>3.1 Mẫu trang tr&iacute; hộp cơm bento &ndash; Kyaraben</h3>\r\n\r\n<p>Loại cơm hộp n&agrave;y chủ đề trang tr&iacute; theo phong c&aacute;ch dễ thương, ngộ nghĩnh dựa theo c&aacute;c nh&acirc;n vật hoạt h&igrave;nh nổi tiếng của Nhật Bản, dịp lễ hội hằng năm như: Doraemon, Pikachu, Haloween&hellip;</p>\r\n\r\n<p><img alt=\"Trang Tri Hop Com Bento Ngo Nghinh\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/08/trang-tri-hop-com-bento-ngo-nghinh-644x400.jpg\" style=\"height:372px; width:600px\" /></p>\r\n\r\n<p><em><strong>&gt;&gt;&gt; Xem th&ecirc;m:&nbsp;<a href=\"https://thucphamnhanh.com/thuc-pham-tuoi-song/\" target=\"_blank\">Thực phẩm tươi sống tại Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<h3>3.1 Mẫu trang tr&iacute; hộp cơm bento &ndash; Sanshoku bento</h3>\r\n\r\n<p>Đ&acirc;y l&agrave; loại bento m&agrave; d&acirc;n văn ph&ograve;ng hay thực hiện v&igrave; sự đơn giản, tiện lợi, kh&ocirc;ng qu&aacute; cầu kỳ. Bạn chỉ cần chuẩn bị trứng, đậu h&agrave; lan, thịt băm nhỏ, sau đ&oacute; trải thẳng l&ecirc;n cơm. T&ugrave;y theo sở th&iacute;ch, ch&uacute;ng ta c&oacute; thể thay đổi nguy&ecirc;n liệu sao cho ph&ugrave; hợp.</p>\r\n\r\n<p><img alt=\"Trang Tri Hop Com Bento Dep\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/08/trang-tri-hop-com-bento-dep.jpg\" style=\"height:337px; width:600px\" /></p>\r\n\r\n<h3>3.2 Mẫu trang tr&iacute; hộp cơm bento &ndash; Makunouchi Bento</h3>\r\n\r\n<p>Với hộp cơm bento n&agrave;y người Nhật d&ugrave;ng trong c&aacute;c buổi xem kịch, thời gian giải lao giữa c&aacute;c vở kịch Kabuki hay Noh &ndash; loại h&igrave;nh kịch truyền thống của Nhật Bản. Loại cơm hộp n&agrave;y c&oacute; đầy đủ cơm, thịt v&agrave; rau củ, một v&agrave;i người c&ograve;n chuẩn bị th&ecirc;m b&aacute;nh ngọt, hoặc tr&aacute;i c&acirc;y tr&aacute;ng miệng.</p>\r\n\r\n<p><em><strong>&gt;&gt;&gt; Tham khảo:&nbsp;<a href=\"https://thucphamnhanh.com/thuc-pham-che-bien/\" target=\"_blank\">C&aacute;c sản phẩm X&uacute;c x&iacute;ch, Thịt vi&ecirc;n, Lạp xưởng</a></strong></em></p>\r\n\r\n<p><img alt=\"Trang Tri Hop Com\" src=\"https://thucphamnhanh.com/wp-content/uploads/2022/08/trang-tri-hop-com-573x400.jpg\" style=\"height:419px; width:600px\" /></p>\r\n\r\n<p>Hy vọng qua b&agrave;i viết, tham khảo c&aacute;c mẫu<strong>&nbsp;trang tr&iacute; hộp cơm bento</strong>&nbsp;văn ph&ograve;ng đẹp thu h&uacute;t, c&aacute;c bạn đ&atilde; hiểu th&ecirc;m về n&eacute;t văn h&oacute;a ẩm thực hằng ng&agrave;y của người Nhật như thế n&agrave;o rồi nh&eacute;. Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng với những mẫu cơm hộp đậm chất ri&ecirc;ng theo phong c&aacute;ch của ch&iacute;nh bản th&acirc;n m&igrave;nh.</p>', NULL, 3, NULL, NULL, 1, NULL, NULL, NULL, '2022-09-13 11:39:27', '2022-09-13 11:39:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(26, 'slide', 'slide', 'upload/banner/11LvZ_1662099059_slide-01-child-01.png', NULL, '_blank', NULL, 1, 1, 1, '2022-09-02 06:10:59', '2022-09-19 04:18:22'),
(28, 'slide1', 'slide1', 'upload/banner/kYFlr_1662099118_bn-promotion5-child1.png', '1', '_blank', NULL, 1, 1, 1, '2022-09-02 06:11:58', '2022-09-19 04:18:22'),
(29, 'banner1', 'banner1', 'upload/banner/tpoje_1662104154_bn_style02-child.png', '1', '_blank', NULL, 1, 2, 1, '2022-09-02 07:35:54', '2022-09-19 04:18:22'),
(30, 'banner2', 'banner2', 'upload/banner/i6X1K_1662104179_bn_style04-child.png', '2', '_blank', NULL, 1, 2, 1, '2022-09-02 07:36:19', '2022-09-19 04:18:22'),
(31, 'banner3', 'banner3', 'upload/banner/DRY9o_1662104230_bn_style05.png', '3', '_blank', NULL, 1, 2, 1, '2022-09-02 07:36:45', '2022-09-19 04:18:22'),
(33, 'banner4', 'banner4', 'upload/banner/VcxBs_1662104260_bn_style06.png', '2', '_blank', NULL, 1, 2, 1, '2022-09-02 07:37:40', '2022-09-19 04:18:22'),
(34, 'banner5', 'banner5', 'upload/banner/a7PQG_1662104279_bn_style07.png', '2', '_blank', NULL, 1, 2, 1, '2022-09-02 07:38:00', '2022-09-19 04:18:22'),
(35, 'banne6', 'banne6', 'upload/banner/w60qM_1662104425_bn_style09.png', '2', '_blank', NULL, 1, 2, 1, '2022-09-02 07:40:25', '2022-09-19 04:18:22'),
(36, 'thumb1', 'thumb1', 'upload/banner/xjHEC_1662104799_cat-thumb01.jpg', '1', '_blank', NULL, 1, 3, 1, '2022-09-02 07:46:39', '2022-09-19 04:18:22'),
(37, 'thumb2', 'thumb2', 'upload/banner/Uaacc_1662104815_cat-thumb02.jpg', '1', '_blank', NULL, 1, 3, 1, '2022-09-02 07:46:55', '2022-09-19 04:18:22'),
(38, 'thumb3', 'thumb3', 'upload/banner/2SCio_1662104826_cat-thumb03.jpg', '1', '_blank', NULL, 1, 3, 1, '2022-09-02 07:47:06', '2022-09-19 04:18:22'),
(39, 'thumb4', 'thumb4', 'upload/banner/BRpuG_1662104839_cat-thumb04.jpg', '1', '_blank', NULL, 1, 3, 1, '2022-09-02 07:47:19', '2022-09-19 04:18:22'),
(43, 'thumb5', 'thumb5', 'upload/banner/xjHEC_1662104799_cat-thumb01.jpg', '1', '_blank', NULL, 1, 3, 1, '2022-09-02 07:46:39', '2022-09-19 04:18:22'),
(44, 'thumb6', 'thumb6', 'upload/banner/Uaacc_1662104815_cat-thumb02.jpg', '1', '_blank', NULL, 1, 3, 1, '2022-09-02 07:46:55', '2022-09-19 04:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(49, 'Rau, củ, quả', 'rau-cu-qua', NULL, 0, 0, 1, NULL, NULL, NULL),
(50, 'Thực phẩm chế biến', 'thuc-pham-che-bien', NULL, 0, 0, 1, NULL, NULL, NULL),
(51, 'Thực phẩm tươi sống', 'thuc-pham-tuoi-song', NULL, 0, 0, 1, NULL, NULL, NULL),
(52, 'Thực phẩm gia vị', 'thuc-pham-gia-vi', NULL, 0, 0, 1, NULL, NULL, NULL),
(53, 'Lương thực', 'luong-thuc', NULL, 0, 0, 1, NULL, NULL, NULL),
(54, 'Bánh, kẹo, mứt, đồ ngọt', 'banh-keo-mut', NULL, 0, 0, 1, NULL, NULL, NULL),
(55, 'Thực phẩm đóng hộp', 'thuc-pham-dong-hop', NULL, 0, 0, 1, NULL, NULL, NULL),
(57, 'Dạng củ', 'dang-cu', NULL, 49, 0, 1, NULL, NULL, NULL),
(58, 'Dạng lá', 'dang-la', NULL, 49, 0, 1, NULL, NULL, NULL),
(59, 'Dạng hạt', 'dang-hat', NULL, 49, 0, 1, NULL, NULL, NULL),
(60, 'Dạng trái', 'dang-trai', NULL, 49, 0, 1, NULL, NULL, NULL),
(61, 'Dạng nấm', 'dang-nam', NULL, 49, 0, 1, NULL, NULL, NULL),
(62, 'Trái cây', 'trai-cay', NULL, 49, 0, 1, NULL, NULL, NULL),
(63, 'Thịt chế biến', 'thit-che-bien', NULL, 50, 0, 1, NULL, NULL, NULL),
(64, 'Xúc xích', 'xuc-xich', NULL, 50, 0, 1, NULL, NULL, NULL),
(65, 'Rau củ chế biến', 'rau-cu-che-bien', NULL, 50, 0, 1, NULL, NULL, NULL),
(66, 'Thịt viên', 'thit-vien', NULL, 50, 0, 1, NULL, NULL, NULL),
(67, 'Thủy sản chế biến', 'thuy-san-che-bien', NULL, 50, 0, 1, NULL, NULL, NULL),
(69, 'Trứng gia cầm', 'trung-gia-cam', NULL, 51, 0, 1, NULL, NULL, NULL),
(70, 'Thịt heo bò', 'thit-heo-bo', NULL, 51, 0, 1, NULL, NULL, NULL),
(71, 'Thịt gia cầm', 'thit-gia-cam', NULL, 51, 0, 1, NULL, NULL, NULL),
(72, 'Thủy hải sản', 'thuy-hai-san', NULL, 51, 0, 1, NULL, NULL, NULL),
(73, 'Thịt nhập khẩu', 'thit-nhap-khau', NULL, 51, 0, 1, NULL, NULL, NULL),
(74, 'Gia vị', 'gia-vi', NULL, 52, 0, 1, NULL, NULL, NULL),
(75, 'Nguyên liệu khô', 'nguyen-lieu-kho', NULL, 52, 0, 1, NULL, NULL, NULL),
(76, 'Dầu ăn', 'dau-an', NULL, 52, 0, 1, NULL, NULL, NULL),
(77, 'Gạo', 'gao', NULL, 53, 0, 1, NULL, NULL, NULL),
(78, 'Bột các loại', 'bot-cac-loai', NULL, 53, 0, 1, NULL, NULL, NULL),
(79, 'Thịt đóng hộp', 'thit-dong-hop', NULL, 55, 0, 1, NULL, NULL, NULL),
(80, 'Thủy sản đóng hộp', 'thuy-san-dong-hop', NULL, 55, 0, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `content`, `created_at`, `updated_at`) VALUES
(10, 'zxczx', '12312', 'czxcz@gmail.com', '123123', '2022-09-06 10:38:17', '2022-09-06 10:38:17'),
(19, 'Khách hàng', '098788932', 'khachhang@gmail.com', 'Mua hàng', '2022-10-13 06:12:02', '2022-10-13 06:12:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'SHOP-KM1', 1, 50000, NULL, '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_01_07_122649_create_categories_table', 1),
(10, '2020_01_09_113851_create_products_table', 1),
(11, '2020_02_06_031728_create_banners_table', 2),
(12, '2020_02_06_032831_create_banners_table', 3),
(13, '2020_02_06_125433_create_vendors_table', 4),
(14, '2020_02_06_125734_create_brands_table', 5),
(15, '2020_03_04_083632_create_products_table', 6),
(17, '2020_03_05_122445_create_contacts_table', 7),
(21, '2022_08_12_094251_add_softdelete_to_category_table', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Hoàng Công Dũng', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346007', 0, NULL, '0', 25970000, 0, 4, 0, '2020-05-19 12:18:21', '2020-05-19 12:18:21'),
(10, NULL, 'Hoàng Công Dũng', 'hcdung2109@gmail.com', 'HN', NULL, '0986346006', 11395000, 'AB', 'SHOP-K2', 22790000, 0, 1, 0, '2020-05-20 09:55:45', '2020-05-20 09:55:45'),
(11, 'DH-11-20052020', 'Trần Thuỷ', 'thuthuy@gmail.com', 'Long Biên , Hà nội', NULL, '0986346008', 3995000, 'ko', 'SHOP-K2', 7990000, 0, 1, 0, '2020-05-20 11:01:38', '2020-05-20 11:01:38'),
(12, 'DH-12-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 1, 0, '2020-05-21 07:41:24', '2020-05-21 07:41:24'),
(13, 'DH-13-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 2, 0, '2020-05-21 07:42:09', '2020-05-21 07:42:09'),
(14, 'DH-14-23052020', 'Trần Thuỷ', 'hcdung2109@gmail.com', 'Bắc Ninh', 'fdfd', '0986346008', 0, 'kfdsfsdf', NULL, 23390000, 0, 3, 0, '2020-05-23 00:30:46', '2020-05-25 23:46:41'),
(15, 'DH-15-26052020', 'HCDUNG', 'hcdung2109@gmail.com', 'Tầng 6, Tòa CT Building , Đống Đa , HN', NULL, '0986346008', 0, 'Giao hàng ngoài 17h', NULL, 7990000, 0, 2, 0, '2020-05-25 23:59:42', '2020-05-26 00:05:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(2, NULL, NULL, '', NULL, 9, 43, 17980000, 2),
(3, NULL, NULL, '', NULL, 9, 30, 7990000, 1),
(4, NULL, NULL, '', NULL, 10, 30, 7990000, 1),
(5, NULL, NULL, '', NULL, 10, 44, 14800000, 2),
(6, NULL, NULL, '', NULL, 11, 30, 7990000, 1),
(7, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 13, 30, 15980000, 2),
(8, 'Apple Watch S5 LTE 40mm viền nhôm dây cao su', 'uploads/product/1586667604_apple-watch-s5-lte-40mm-vien-nhom-day-cao-su-ava-400x400.jpg', NULL, 0, 14, 50, 2900000, 1),
(9, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 14, 28, 20490000, 1),
(10, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 15, 30, 7990000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` int(11) DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(72, 'Khoai lang giống Nhật Đà Lạt', 'khoai-lang-giong-nhat-da-lat', 'upload/product/q4OjS_1663067550_khoai-lang-giong-nhat-da-lat-loai-1kg-gia-tot-1.jpg', 1, 28000, 25000, NULL, 1, 1, 0, 57, NULL, NULL, NULL, NULL, 0, 0, 'Giá trị dinh dưỡng của Khoai lang giống Nhật Đà Lạt  Là nguồn dinh dưỡng tuyệt vời về chất xơ, vitamin và chất khoáng. Thành phần dinh dưỡng của khoai lang trong 100 gam phần ăn được bao gồm: Năng lượng: 119 Kcal; Protein: 0.8 gam; Lipid: 0.2 gam; Glucid: 28.5 gam; Chất xơ:', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Khoai lang giống Nhật Đ&agrave; Lạt&nbsp;</strong></em></p>\r\n\r\n<p>L&agrave; nguồn dinh dưỡng tuyệt vời về chất xơ, vitamin v&agrave; chất kho&aacute;ng. Th&agrave;nh phần dinh dưỡng của khoai lang trong 100 gam phần ăn được bao gồm: Năng lượng: 119 Kcal; Protein: 0.8 gam; Lipid: 0.2 gam; Glucid: 28.5 gam; Chất xơ: 1.3 gam; Vitamin: A, C, B&hellip;; Chất kho&aacute;ng: Kali, Mangan, Đồng, Niacin,..</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của&nbsp;</strong></em><em><strong>Khoai lang giống Nhật Đ&agrave; Lạt&nbsp;</strong></em></p>\r\n\r\n<p>+ Khoai lang hỗ trợ giảm c&acirc;n<br />\r\n+ Gi&uacute;p kh&aacute;ng vi&ecirc;m v&agrave; l&agrave;m mờ vết th&acirc;m<br />\r\n+ N&acirc;ng cao sức đề kh&aacute;ng<br />\r\n+ Chống oxy h&oacute;a<br />\r\n+ Kiểm so&aacute;t lượng đường trong m&aacute;u<br />\r\n+ Gi&uacute;p hạ huyết &aacute;p<br />\r\n+ Cải thiện triệu chứng hen suyễn<br />\r\n+ Tăng cường sức khỏe đường ruột<br />\r\n+ Ăn khoai lang t&iacute;m gi&uacute;p giảm rủi ro ung thư</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản&nbsp;</strong></em><em><strong>Khoai lang giống Nhật Đ&agrave; Lạt&nbsp;</strong></em></p>\r\n\r\n<p>Khoai lang giống Nhật Đ&agrave; Lạt sau khi mua về, bạn d&ugrave;ng giấy b&aacute;o bọc khoai lại hoặc để khoai trong hộp carton c&oacute; l&oacute;t giấy b&aacute;o b&ecirc;n dưới, sau đ&oacute; để hoặc treo ở những nơi kh&ocirc; r&aacute;o. Khoai lang trong khi bảo quản cần tr&aacute;nh mưa nắng v&agrave; tr&aacute;nh những nơi c&oacute; nhiệt độ qu&aacute; cao (nơi c&oacute; nắng, nơi gần bếp) hay c&oacute; nhiệt độ qu&aacute; thấp (tủ lạnh, tủ đ&ocirc;ng). Do đ&oacute;, bạn kh&ocirc;ng n&ecirc;n bảo quản khoai lang c&ograve;n sống trong tủ lạnh. Ngo&agrave;i ra, nếu bạn muốn cẩn thận hơn th&igrave; c&oacute; thể bảo quản khoai lang trong c&aacute;t kh&ocirc;. Để đầu củ khoai quay ra ngo&agrave;i v&agrave; tử dưới l&ecirc;n. Nếu số lượng nhiều th&igrave; c&oacute; thể chồng 2,3 sọt l&ecirc;n nhau sau đ&oacute; phủ 1 lớp c&aacute;t kh&ocirc; b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ&nbsp;</strong></em><em><strong>Khoai lang giống Nhật Đ&agrave; Lạt&nbsp;</strong></em></p>\r\n\r\n<p>Khoai lang giống Nhật Đ&agrave; Lạt l&agrave; m&oacute;n ăn d&acirc;n d&atilde; quen thuộc c&oacute; thể kết hợp nấu với c&aacute;c m&oacute;n ăn ch&iacute;nh đến ăn vặt như:&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%C3%A0_ri\" target=\"_blank\">c&agrave; ri</a>, b&ograve; nấu đậu, b&ograve; kho, khoai lang luộc, Khoai lang lắc ph&ocirc; mai, B&aacute;nh doremon nh&acirc;n khoai lang t&iacute;m, Khoai lang ng&agrave;o đường &ndash; Daigaku Imo, B&aacute;nh khoai lang que, Khoai lang nướng bơ, Snack khoai lang tẩm gia vị &ndash; khoai lang lắc, Khoai lang sấy dẻo, Khoai lang chi&ecirc;n ph&ocirc; mai, Khoai lang k&eacute;n, B&aacute;nh khoai lang tẩm bột chi&ecirc;n x&ugrave;, B&aacute;nh khoai lang sữa dừa, B&aacute;nh khoai lang yến mạch&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:29:49', '2022-09-19 04:17:25', NULL),
(73, 'Củ cải trắng', 'cu-cai-trang', 'upload/product/OZI9X_1662987978_4qP2Y_1662986011_cu-cai-trang-loai-1kg.jpg', 1, 14000, 12000, NULL, 1, 1, 0, 57, NULL, NULL, NULL, NULL, 0, 0, 'Giá trị dinh dưỡng Củ cải trắng Theo ước tính từ các nhà dinh dưỡng, 338 gram củ cải tươi chứa các chất dinh dưỡng sau đây: Calo: 61, Carbs: 14 gram, Protein: 2 gram, Chất xơ: 5 gram, Vitamin C: 124% DV, Axit folic (vitamin B9): 24% DV, Canxi: 9% của DV, Magiê:…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng Củ cải trắng</strong></em></p>\r\n\r\n<p>Theo ước t&iacute;nh từ c&aacute;c nh&agrave; dinh dưỡng, 338 gram củ cải tươi chứa c&aacute;c chất dinh dưỡng sau đ&acirc;y: Calo: 61, Carbs: 14 gram, Protein: 2 gram, Chất xơ: 5 gram, Vitamin C: 124% DV, Axit folic (vitamin B9): 24% DV, Canxi: 9% của DV, Magi&ecirc;: 14% của DV, Kali: 22% DV, Đồng: 19% của DV</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe&nbsp;</strong></em><em><strong>Củ cải trắng</strong></em></p>\r\n\r\n<p>+ Hỗ trợ hệ ti&ecirc;u h&oacute;a, ngăn ngừa nguy cơ bị trĩ<br />\r\n+ Hỗ trợ ngăn ngừa ung thư<br />\r\n+ Ph&ograve;ng ngừa bệnh thiếu m&aacute;u, tốt cho n&atilde;o bộ<br />\r\n+ Hỗ trợ chức năng gan, phổi, ph&ograve;ng bệnh tim mạch, v&agrave;ng da</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản&nbsp;</strong></em><em><strong>Củ cải trắng</strong></em></p>\r\n\r\n<p>Đem phơi kh&ocirc; hoặc c&aacute;c bạn c&oacute; thể th&aacute;i nhỏ từng kh&uacute;c củ cải theo &yacute; muốn rồi đem để v&agrave;o ngăn đ&aacute; của tủ lạnh một thời gian. Sau đ&oacute; bạn mới mang ra phơi dưới nắng r&ograve;n. L&agrave;m theo c&aacute;ch n&agrave;y củ cải sẽ bảo quản được l&acirc;u hơn cũng như c&oacute; m&ugrave;i vị độc đ&aacute;o hơn.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ&nbsp;</strong></em><em><strong>Củ cải trắng</strong></em></p>\r\n\r\n<p>Ch&aacute;o củ cải: Với những người đầy bụng kh&ocirc;ng ti&ecirc;u do th&oacute;i quen ăn uống thiếu l&agrave;nh mạnh, nhiều dầu mỡ th&igrave; m&oacute;n ch&aacute;o củ cải chỉ bao gồm gạo tẻ 80-100g, củ cải 50g (th&aacute;i l&aacute;t) th&ecirc;m ch&uacute;t muối l&agrave; vị cứu tinh tuyệt vời. Củ cải hầm nước gừng: Những người đang xuất hiện triệu chứng đại tiện xuất huyết rỉ rả li&ecirc;n quan đến trĩ v&agrave; uống rượu th&igrave; lấy 10 phần củ cải cả l&aacute; v&agrave; cuống, rửa sạch th&aacute;i l&aacute;t nấu nhừ, cho th&ecirc;m nước gừng, bột gạo, dấm ăn, khuấy cho s&ocirc;i để ấm rồi ăn. Nước &eacute;p củ cải hấp đường ph&egrave;n: củ cải tươi hoặc luộc ch&iacute;n 500g, &eacute;p lấy nước, th&ecirc;m đường ph&egrave;n lượng th&iacute;ch hợp, uống ng&agrave;y 1 lần d&ugrave;ng cho người hen suyễn, vi&ecirc;m kh&iacute; phế quản mạn t&iacute;nh, cảm sốt ho nhiều đờm. Hay củ cải phơi kh&ocirc; 50g, mật ong 30-50ml, trộn đều, ăn trong ng&agrave;y gi&uacute;p hỗ trợ điều trị bệnh sỏi mật, hen suyễn, vi&ecirc;m kh&iacute; phế quản mạn t&iacute;nh.</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:33:31', '2022-09-19 04:17:25', NULL),
(74, 'Hành tây', 'hanh-tay', 'upload/product/biczU_1662986107_hanh-tay-loai-1kg.jpg', 1, 8000, 7000, NULL, 1, 0, 0, 58, NULL, NULL, NULL, NULL, 0, 17, 'Giá trị dinh dưỡng Hành tây  Một củ hành tây loại 1kg tươi có 89% là nước, 9% carbs và 1,7% chất xơ, kèm theo một lượng nhỏ protein và chất béo. Cụ thể, các chất dinh dưỡng chính trong 100 gram hành tây sống bao gồm: Lượng calo: 40; Nước: 89%; Protein: 1,1…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng H&agrave;nh t&acirc;y&nbsp;</strong></em></p>\r\n\r\n<p>Một củ h&agrave;nh t&acirc;y loại 1kg tươi c&oacute; 89% l&agrave; nước, 9% carbs v&agrave; 1,7% chất xơ, k&egrave;m theo một lượng nhỏ protein v&agrave; chất b&eacute;o. Cụ thể, c&aacute;c chất dinh dưỡng ch&iacute;nh trong 100 gram h&agrave;nh t&acirc;y sống bao gồm: Lượng calo: 40; Nước: 89%; Protein: 1,1 gram; Carbs: 9,3 gram; Đường: 4.2 gram; Chất xơ: 1,7 gram; Chất b&eacute;o: 0,1 gram</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe&nbsp;</strong></em><em><strong>H&agrave;nh t&acirc;y</strong></em></p>\r\n\r\n<p>+ Ngăn ngừa bệnh tiểu đường<br />\r\n+ Giảm nguy cơ mắc ung thư<br />\r\n+ Tăng cường hệ miễn dịch<br />\r\n+ Giảm lượng cholesterol trong m&aacute;u<br />\r\n+ K&iacute;ch th&iacute;ch mọc t&oacute;c<br />\r\n+ Bảo vệ sức khỏe răng miệng<br />\r\n+ Chữa cảm lạnh, cảm c&uacute;m</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản&nbsp;</strong></em><em><strong>H&agrave;nh t&acirc;y</strong></em></p>\r\n\r\n<p>Ch&agrave; x&aacute;t h&agrave;nh t&acirc;y giữa hai l&ograve;ng b&agrave;n tay. Phần vỏ bong ra, l&agrave; phần thừa, bạn nhớ kỹ l&agrave; bỏ phần thừa đ&atilde; bong sau khi ch&agrave; s&aacute;t, KH&Ocirc;NG b&oacute;c hết to&agrave;n bộ vỏ. Cho h&agrave;nh t&acirc;y v&agrave;o t&uacute;i lưới, t&uacute;i giấy hoặc rổ. Nhiệt độ l&yacute; tưởng nhất để giữ cho h&agrave;nh tươi l&acirc;u l&agrave; từ 5 &ndash; 15 độ C. Tuyệt đối kh&ocirc;ng n&ecirc;n để h&agrave;nh ở những nơi c&oacute; nhiệt độ thấp hơn 5&ordm;C hoặc cao hơn 20&ordm;C. Kiểm tra t&uacute;i, rổ đựng h&agrave;nh mỗi tuần một lần, bỏ đi những củ c&oacute; dấu hiệu bị thối, mềm hoặc thay đổi m&agrave;u sắc. Tr&aacute;nh &aacute;nh nắng trực tiếp. Độ ẩm cao khiến h&agrave;nh dễ d&agrave;ng bị thối rữa. Trong khi đ&oacute;, &aacute;nh nắng trực tiếp với nhiệt độ cao lại dễ khiến h&agrave;nh trở n&ecirc;n kh&ocirc; quắt. H&agrave;nh t&acirc;y d&ugrave;ng thừa cho v&agrave;o t&uacute;i nylon cất v&agrave;o tủ lạnh</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ&nbsp;</strong></em><em><strong>H&agrave;nh t&acirc;y</strong></em></p>\r\n\r\n<p>H&agrave;nh t&acirc;y loại 1kg l&agrave; loại củ quen thuộc, dễ chế biến kết hợp với nhiều loại thực phẩm kh&aacute;c nhau để l&agrave;m ra c&aacute;c m&oacute;n chi&ecirc;n, m&oacute;n x&agrave;o, m&oacute;n canh,&hellip; thơm ngon tr&ograve;n vị như: Thịt b&ograve; x&agrave;o h&agrave;nh t&acirc;y, mực x&agrave;o h&agrave;nh t&acirc;y, thịt lợn x&agrave;o h&agrave;nh t&acirc;y, l&ograve;ng x&agrave;o h&agrave;nh t&acirc;y, gan x&agrave;o h&agrave;nh t&acirc;y, cật heo x&agrave;o h&agrave;nh t&acirc;y, g&agrave; x&agrave;o h&agrave;nh t&acirc;y, thịt g&agrave; x&agrave;o h&agrave;nh t&acirc;y, bạch tuộc x&agrave;o h&agrave;nh t&acirc;y, trứng x&agrave;o h&agrave;nh t&acirc;y, t&ocirc;m x&agrave;o h&agrave;nh t&acirc;y, ếch x&agrave;o h&agrave;nh t&acirc;y, lưỡi b&ograve; x&agrave;o h&agrave;nh t&acirc;y, nai x&agrave;o h&agrave;nh t&acirc;y, bao tử c&aacute; basa x&agrave;o h&agrave;nh t&acirc;y, h&agrave;u x&agrave;o h&agrave;nh t&acirc;y, hến x&agrave;o h&agrave;nh t&acirc;y, h&agrave;nh t&acirc;y x&agrave;o c&agrave; chua&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:35:07', '2022-09-19 04:17:25', NULL),
(75, 'Bắp cải trắng', 'bap-cai-trang', 'upload/product/3qyES_1662987987_i0CdG_1662986187_bap-cai-trang.jpg', 1, 21000, 20000, NULL, 1, 1, 0, 58, NULL, NULL, NULL, NULL, 0, 0, 'Giá trị dinh dưỡng của Bắp cải trắng – Theo các chuyên gia dinh dưỡng, trong 100g bắp cải trắng chỉ chứa khoảng 27 calo ngoài ra nó còn có rất nhiều các thành phần khác như: 90g nước, 1.8g chất đạm, 5.4g tinh bột, 1.6g chất xơ, 6% vitamin B6, 7% mangan,', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Bắp cải trắng</strong></em></p>\r\n\r\n<p>&ndash; Theo c&aacute;c chuy&ecirc;n gia dinh dưỡng, trong 100g bắp cải trắng chỉ chứa khoảng 27 calo ngo&agrave;i ra n&oacute; c&ograve;n c&oacute; rất nhiều c&aacute;c th&agrave;nh phần kh&aacute;c như: 90g nước, 1.8g chất đạm, 5.4g tinh bột, 1.6g chất xơ, 6% vitamin B6, 7% mangan, 54% vitamin C, 85% vitamin K.</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của Bắp cải trắng</strong></em></p>\r\n\r\n<p>+ Giảm c&aacute;c dấu hiệu l&atilde;o h&oacute;a<br />\r\n+ Chống lại c&aacute;c gốc tự do<br />\r\n+ Chữa l&agrave;nh vết thương<br />\r\n+ Tốt cho l&agrave;n da<br />\r\n+ Chống vi&ecirc;m, giảm dị ứng<br />\r\n+ Ngăn ngừa ung thư<br />\r\n+ Tốt cho hệ ti&ecirc;u h&oacute;a<br />\r\n+ Hỗ trợ giảm c&acirc;n<br />\r\n+ Bảo vệ mắt<br />\r\n+ Tốt cho t&oacute;c<br />\r\n+ Cải thiện sức khỏe tim mạch<br />\r\n+ Tốt cho n&atilde;o<br />\r\n+ Gi&uacute;p xương chắc khỏe<br />\r\n+ Điều h&ograve;a huyết &aacute;p<br />\r\n+ Tốt cho người bị đ&aacute;i th&aacute;o đường<br />\r\n+ Tốt cho người bị đ&aacute;i th&aacute;o đường<br />\r\n+ Tăng cường miễn dịch<br />\r\n+ Điều trị vi&ecirc;m lo&eacute;t dạ d&agrave;y</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Bắp cải trắng</strong></em></p>\r\n\r\n<p>&ndash; Bắp cải trắng sau khi mua về, bạn bọc ch&uacute;ng trong 1 c&aacute;i t&uacute;i ni lon, n&ecirc;n lựa t&uacute;i c&agrave;ng rộng c&agrave;ng tốt v&agrave; bọc thật kĩ c&agrave;ng. Sau đ&oacute; cho v&agrave;o ngăn m&aacute;t tủ lạnh để d&ugrave;ng dần. Với c&aacute;ch l&agrave;m n&agrave;y, bắp cải sẽ giữ được độ tươi ngon trong 1 tuần.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Bắp cải trắng</strong></em></p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%E1%BA%A3i_b%E1%BA%AFp\" target=\"_blank\">Bắp cải</a>&nbsp;trắng l&agrave; nguy&ecirc;n liệu v&ocirc; c&ugrave;ng quen thuộc c&oacute; trong thực đơn hằng ng&agrave;y của mỗi gia đ&igrave;nh, c&aacute;c bạn c&oacute; thể chế biến th&agrave;nh c&aacute;c m&oacute;n kh&aacute;c nhau như: Bắp cải cuộn thịt sốt c&agrave; chua, Nộm g&agrave; bắp cải, Canh bắp cải cuộn thịt, Bắp cải x&agrave;o kiểu Th&aacute;i, Canh bắp cải nấu với thịt b&ograve;, Bắp cải cuộn thịt r&aacute;n, Dưa bắp cải chua chua, Bắp cải x&agrave;o t&ocirc;m, Bắp cải x&agrave;o đậu phụ v&agrave; nấm, Thịt lợn x&agrave;o bắp cải v&agrave; tương ớt&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:36:27', '2022-09-19 04:17:25', NULL),
(76, 'Bắp cải thảo Đà Lạt', 'bap-cai-thao-da-lat', 'upload/product/lfJNW_1662988033_vhO8i_1662986247_cai-thao-loai-1kg.jpg', 1, 23000, 21000, NULL, 1, 1, 0, 58, NULL, NULL, NULL, NULL, 0, 0, 'Giá trị dinh dưỡng Bắp cải thảo Đà Lạt – Giá trị dinh dưỡng trong 100g cải thảo: chứa 95,14 gam nước, 0,86 gam protein, 0,1 gam chất béo, 3,9 gam carbohydrate (0,94 g chất xơ), 13 mg vitamin A, 80 mg carotene, 0.03 mg thiamin, 0,04 mg riboflavin, 0,4 mg niacin, 28 mg', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng Bắp cải thảo Đ&agrave; Lạt</strong></em></p>\r\n\r\n<p>&ndash; Gi&aacute; trị dinh dưỡng trong 100g cải thảo: chứa 95,14 gam nước, 0,86 gam protein, 0,1 gam chất b&eacute;o, 3,9 gam carbohydrate (0,94 g chất xơ), 13 mg vitamin A, 80 mg carotene, 0.03 mg thiamin, 0,04 mg riboflavin, 0,4 mg niacin, 28 mg vitamin C, 0,36 mg vitamin E (T).</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe Bắp cải thảo Đ&agrave; Lạt</strong></em></p>\r\n\r\n<p>+ Giảm triệu chứng cảm lạnh<br />\r\n+ Trị đau dạ d&agrave;y<br />\r\n+ Trị dị ứng da mặt v&agrave; c&aacute;c bệnh ngo&agrave;i da<br />\r\n+ Trị ngộ độc kh&iacute;<br />\r\n+ Ngừa ung thư<br />\r\n+ L&agrave;m đep da<br />\r\n+ Giảm cholesterol<br />\r\n+ Giảm rụng t&oacute;c<br />\r\n+ Hạ sốt, chữa t&aacute;o b&oacute;n, bệnh g&uacute;t, giải rượu</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Bắp cải thảo Đ&agrave; Lạt</strong></em></p>\r\n\r\n<p>&ndash; Sau khi mua cải thảo về, bạn chỉ cần bỏ những l&aacute; &uacute;a, h&eacute;o v&agrave; hỏng đi, đặt trong rổ v&agrave; để nơi tho&aacute;ng m&aacute;t cũng c&oacute; thể giữ được 2 &ndash; 3 ng&agrave;y đối với x&agrave; l&aacute;ch v&agrave; nhiều ng&agrave;y hơn đối với bắp cải. Mẹo bảo quản cải thảo l&acirc;u hơn: D&ugrave;ng 3 c&aacute;i tăm, loại tăm c&oacute; đầu nhọn d&agrave;i 5cm, rồi cắm thật s&acirc;u v&agrave;o cuống. Lưu &yacute; l&agrave; bạn phải cắm thật s&acirc;u mới c&oacute; hiệu quả nh&eacute;, chỉ chừa lại khoảng 0,5 cm th&ocirc;i. Nếu cần, h&atilde;y sử dụng một vật nặng như c&aacute;n dao hoặc chiếc muỗng nhỏ để g&otilde; cho ch&uacute;ng cắm ngập s&acirc;u hơn. Sau khi cắm, bạn để rau v&agrave;o nơi tho&aacute;ng m&aacute;t. Với x&agrave; l&aacute;ch tốt nhất bạn n&ecirc;n treo l&ecirc;n để th&ocirc;ng tho&aacute;ng, bởi l&aacute; x&agrave; l&aacute;ch dễ bị nh&agrave;u, &uacute;ng khi bị ẩm ướt hoặc đặt l&acirc;u dưới s&agrave;n. Bằng c&aacute;ch n&agrave;y, bạn c&oacute; thể giữ x&agrave; l&aacute;ch tươi ngon suốt v&agrave;i ng&agrave;y, c&ograve;n bắp cải c&oacute; thể tươi từ 7-10 ng&agrave;y.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Bắp cải thảo Đ&agrave; Lạt</strong></em></p>\r\n\r\n<p>&ndash; Bắp cải thảo Đ&agrave; Lạt được xem l&agrave; một trong những loại rau chứa nhiều vitamin v&agrave; dưỡng chất tốt cho cơ thể. Từ cải thảo ch&uacute;ng ta c&oacute; thể chế biến được những m&oacute;n ăn v&ocirc; c&ugrave;ng đa dạng v&agrave; thơm ngon như: Kim chi cải thảo, Cải thảo x&agrave;o thịt b&ograve;, Cải thảo x&agrave;o tỏi, Cải thảo cuộn thịt, Cải thảo cuộn t&ocirc;m c&aacute;, Cải thảo cuộn nấm, Cải thảo cuộn thịt chi&ecirc;n, Canh cải thảo thịt băm, Canh cải thảo cuộn thịt g&agrave; nấm hương, Canh cải thảo t&ocirc;m kh&ocirc;&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:37:27', '2022-09-19 04:17:25', NULL),
(77, 'Cải ngọt', 'cai-ngot', 'upload/product/NEvnx_1663067555_cai-ngot.jpg', 1, 14000, 12000, NULL, 1, 1, 0, 58, NULL, NULL, NULL, NULL, 0, 0, 'Giá trị dinh dưỡng của Cải ngọt – Theo nghiên cứu, thì trong 100g cải ngọt có chứa: 1,1 g protein; 0,2 lipid; 2,1 g cacbohidrat; 61 mg calci; 37 mg phosphor; 0,5 mg sắt; 0,01 mg caroten; 0,02 thiamin (B1); 0,04 mg ribopalavin (B2); 0,3 mg niaxin (B3); 20 mg axit ascorbic (C). 2', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Cải ngọt</strong></em></p>\r\n\r\n<p>&ndash; Theo nghi&ecirc;n cứu, th&igrave; trong 100g&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%E1%BA%A3i_ng%E1%BB%8Dt\" target=\"_blank\">cải ngọt</a>&nbsp;c&oacute; chứa: 1,1 g protein; 0,2 lipid; 2,1 g cacbohidrat; 61 mg calci; 37 mg phosphor; 0,5 mg sắt; 0,01 mg caroten; 0,02 thiamin (B1); 0,04 mg ribopalavin (B2); 0,3 mg niaxin (B3); 20 mg axit ascorbic (C).</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của Cải ngọt</strong></em></p>\r\n\r\n<p>+ Hỗ trợ điều trị bệnh Gout<br />\r\n+ Cung cấp kho&aacute;ng chất cho người bị lo&atilde;ng xương<br />\r\n+ Ngăn ngừa ung thư hiệu quả</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Cải ngọt</strong></em></p>\r\n\r\n<p>&ndash; Bảo quản cải ngọt trong t&uacute;i nilong hoặc hộp bảo quản thực phẩm để giứ độ ẩm cho cải. Đặt th&ecirc;m b&ecirc;n trong một tờ giấy ăn để h&uacute;t bớt nước trong rau, gi&uacute;p thời gian bảo quản cải l&acirc;u d&agrave;i hơn. Để cải ngọt lu&ocirc;n được tươi mới, khi bảo quản rau trong tủ lạnh, nhiệt độ tủ lạnh n&ecirc;n được điều chỉnh trong khoảng 10C &ndash; 40C. Nếu nhiệt độ qu&aacute; cao, sẽ l&agrave; m&ocirc;i trường tốt cho vi khuẩn sinh s&ocirc;i khiến rau nhanh bị hỏng, c&ograve;n nhiệt độ qu&aacute; thấp sẽ l&agrave;m sau bị đ&oacute;ng băng.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Cải ngọt</strong></em></p>\r\n\r\n<p>&ndash; Cải ngọt l&agrave; một trong những loại thực phẩm rất th&acirc;n thuộc thường xuất hiện trong c&aacute;c m&oacute;n ăn tr&ecirc;n m&acirc;m cơm của những gia đ&igrave;nh Việt Nam. C&aacute;c bạn c&oacute; thể chế biến th&agrave;nh nhiều m&oacute;n ăn như: Cải ngọt nấu thịt băm, Cải ngọt nấu hến, Cải ngọt x&agrave;o, Canh rau cải ngọt t&ocirc;m kh&ocirc;, Canh rau cải ngọt c&aacute; l&oacute;c, Canh rau cải ngọt rong biển&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:38:17', '2022-09-19 04:17:25', NULL),
(78, 'Đậu phộng sống', 'dau-phong-song', 'upload/product/l6Fmp_1662986741_dau-phong-song-goi-150g.jpg', 1, 15000, 15000, NULL, 1, 0, 0, 59, NULL, NULL, NULL, NULL, 0, 13, 'Giá trị dinh dưỡng Đậu phộng sống – Hàm lượng chất béo dao động từ 44 – 56% và chủ yếu là chất béo dạng đơn và dạng đa không bão hòa, hầu hết chúng đều là axit oleic (40 – 60%) và axit linoleic, hàm lượng protein dao động từ 22 – 30%', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng Đậu phộng sống</strong></em></p>\r\n\r\n<p>&ndash; H&agrave;m lượng chất b&eacute;o dao động từ 44 &ndash; 56% v&agrave; chủ yếu l&agrave; chất b&eacute;o dạng đơn v&agrave; dạng đa kh&ocirc;ng b&atilde;o h&ograve;a, hầu hết ch&uacute;ng đều l&agrave; axit oleic (40 &ndash; 60%) v&agrave; axit linoleic, h&agrave;m lượng protein dao động từ 22 &ndash; 30% calo, vitamin B3, folate (vitamin B9), mangan, vitamin E, thiamin (vitamin B1), phốt pho, magi&ecirc;, trong đậu phộng c&ograve;n t&igrave;m thấy c&aacute;c chất chất oxy h&oacute;a như axit p -coumaric, resveratrol, isoflavone,&hellip;</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe Đậu phộng sống</strong></em></p>\r\n\r\n<p>+ Tốt cho tim mạch<br />\r\n+ Giảm cholesterol, ngăn ngừa l&atilde;o h&oacute;a<br />\r\n+ Ngăn ngừa ung thư<br />\r\n+ Ngăn ngừa sỏi mật</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Đậu phộng sống</strong></em></p>\r\n\r\n<p>&ndash; D&ugrave;ng nước sạch rửa sạch lạc, vớt ra để kh&ocirc;, rang ch&iacute;n, cho muối tinh v&agrave; ngủ vị hương v&agrave;o trộn đều, t&atilde;i ra cho ra nắng phơi kh&ocirc;. Sau khi lạc đ&atilde; kh&ocirc;, cho lạc v&agrave;o t&uacute;i ni l&ocirc;ng hoặc đồ đựng k&iacute;n bịt k&iacute;n. C&aacute;ch l&agrave;m n&agrave;v l&agrave;m cho lạc mất đi khả năng moc mầm, cho d&ugrave; để qua 1,2 m&ugrave;a h&egrave; lạc c&ugrave;ng kh&ocirc;ng bị hỏng.<br />\r\n&ndash; Trong b&igrave;nh hoặc t&uacute;i ni l&ocirc;ng đựng lạc cho v&agrave;o 1,2 điếu thuốc l&aacute; thơm rồi bịt k&iacute;n kh&ocirc;ng để cho kh&ocirc;ng kh&iacute; lọt v&agrave;o, lọt ra. Như vậy, lạc c&oacute; để trong 3 năm cũng kh&ocirc;ng bị mọt đục.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Đậu phộng sống</strong></em></p>\r\n\r\n<p>&ndash; M&oacute;n ăn ngon quen thuộc l&agrave; đậu phộng luộc, bạn c&ograve;n c&oacute; thể chế biến rất nhiều những m&oacute;n ăn vặt ngon kh&aacute;c từ đậu phộng như: đậu phộng da c&aacute;, lạc rang tỏi ớt, đậu phộng rang muối, lạc rang ch&aacute;y tỏi, đậu phộng ng&agrave;o đường, đậu phộng rang nước mắm, sữa đậu phộng, đậu phộng chi&ecirc;n gi&ograve;n, bơ đậu phộng&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:45:41', '2022-09-19 04:17:25', NULL),
(79, 'Đậu xanh không vỏ', 'dau-xanh-khong-vo', 'upload/product/GoeWi_1662986873_dau-xanh-khong-vo-goi-150g.jpg', 1, 15000, 15000, NULL, 1, 0, 0, 59, NULL, NULL, NULL, NULL, 0, 14, 'Giá trị dinh dưỡng Đậu xanh không vỏ – 100g đậu xanh không vỏ chứa năng lượng: 328 Kcal – 1371 KJ; Carbohydrate: 53,1 g; Chất xơ: 4,7g; Chất đạm: 23,4 g; Chất béo: 2,4 g; Sắt: 4,8 mg; Magie: 270 mg; Canxi: 64 mg; Phốt pho: 377 mg; Kali: 1132 mg; Các chất…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng Đậu xanh kh&ocirc;ng vỏ</strong></em></p>\r\n\r\n<p>&ndash; 100g đậu xanh kh&ocirc;ng vỏ chứa năng lượng: 328 Kcal &ndash; 1371 KJ; Carbohydrate: 53,1 g; Chất xơ: 4,7g; Chất đạm: 23,4 g; Chất b&eacute;o: 2,4 g; Sắt: 4,8 mg; Magie: 270 mg; Canxi: 64 mg; Phốt pho: 377 mg; Kali: 1132 mg; C&aacute;c chất kh&aacute;c: Natri (6 mg), vitamin C (4 mg), Kẽm (1,1 mg), vitamin nh&oacute;m B, Folate, vitamin E, vitamin K, beta-carotene,&hellip; Ngo&agrave;i ra, loại đậu n&agrave;y cũng chứa nhiều loại axit amin thiết yếu như phenylalanine, isoleucine, valine, leucine, lysine, arginine,&hellip;</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe Đậu xanh kh&ocirc;ng vỏ</strong></em></p>\r\n\r\n<p>+ Ph&ograve;ng ngừa ung thư đại tr&agrave;ng<br />\r\n+ Giảm huyết &aacute;p, giảm nguy cơ mắc bệnh tim<br />\r\n+ Kiểm so&aacute;t đ&aacute;i th&aacute;o đường<br />\r\n+ Cải thiện miễn dịch<br />\r\n+ Cải thiện thị gi&aacute;c<br />\r\n+ Tốt cho tim mạch<br />\r\n+ Tốt cho xương<br />\r\n+ Bảo vệ dạ d&agrave;y<br />\r\n+ Nu&ocirc;i dưỡng thai nhi<br />\r\n+ Ngăn ngừa sốc nhiệt<br />\r\n+ Giải nhiệt<br />\r\n+ Ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị bệnh gout<br />\r\n+ Giảm lo &acirc;u, căng thẳng</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Đậu xanh kh&ocirc;ng vỏ</strong></em></p>\r\n\r\n<p>&ndash; C&aacute;ch bảo quản hạt đậu xanh kh&ocirc;ng vỏ để l&acirc;u kh&ocirc;ng mối mọt. Cho đậu xanh v&agrave;o nước s&ocirc;i ng&acirc;m từ 1-2 ph&uacute;t để diệt hết trứng mọt, sau đ&oacute; đưa ra phơi kh&ocirc;, v&agrave;o v&agrave;o lọ k&iacute;n đậy nắp để d&agrave;nh. Trường hợp đậu đ&atilde; c&oacute; mọt, d&ugrave;ng phương ph&aacute;p tr&ecirc;n sẽ tr&aacute;nh được mối mọt sau n&agrave;y.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Đậu xanh kh&ocirc;ng vỏ</strong></em></p>\r\n\r\n<p>&ndash; Đậu xanh kh&ocirc;ng vỏ được biết đ&ecirc;n như một loại đậu gi&uacute;p thanh nhiệt cơ thể hiệu quả, đặc biệt l&agrave; khi chế biến th&agrave;nh c&aacute;c m&oacute;n ch&egrave; như: ch&egrave; đậu xanh nước cốt dừa, Ch&egrave; đậu xanh nha đam, Ch&egrave; đậu xanh phổ tai, Ch&egrave; đậu xanh đ&aacute;nh, Ch&egrave; đậu xanh nguy&ecirc;n hạt,Ch&egrave; b&iacute; đỏ đậu xanh ngo&agrave;i ra c&ograve;n c&oacute; thể chế biến c&aacute;c m&oacute;n ăn kh&aacute;c như: B&aacute;nh đậu xanh, Sữa đậu xanh, X&ocirc;i đậu xanh, Ch&aacute;o đậu xanh, Gi&aacute; đậu xanh (gi&aacute; đỗ), Kem đậu xanh, Nước rau m&aacute; đậu xanh , Gi&ograve; chay từ đậu xanh, B&aacute;nh dẻo nh&acirc;n đậu xanh , Canh b&iacute; đỏ đậu xanh, B&aacute;nh da lợn đậu xanh l&aacute; dứa, B&aacute;nh đậu xanh k&eacute;n&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:47:53', '2022-09-19 04:17:25', NULL),
(80, 'Đậu xanh hột', 'dau-xanh-hot', 'upload/product/tlw2l_1662986913_dau-xanh-hot-goi-150g.jpg', 1, 15000, 15000, NULL, 1, 0, 0, 59, NULL, NULL, NULL, NULL, 0, 15, 'Giá trị dinh dưỡng Đậu xanh hột – 100g đậu xanh hột chứa năng lượng: 328 Kcal – 1371 KJ; Carbohydrate: 53,1 g; Chất xơ: 4,7g; Chất đạm: 23,4 g; Chất béo: 2,4 g; Sắt: 4,8 mg; Magie: 270 mg; Canxi: 64 mg; Phốt pho: 377 mg; Kali: 1132 mg; Các chất khác: Natri…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng Đậu xanh hột</strong></em></p>\r\n\r\n<p>&ndash; 100g đậu xanh hột chứa năng lượng: 328 Kcal &ndash; 1371 KJ; Carbohydrate: 53,1 g; Chất xơ: 4,7g; Chất đạm: 23,4 g; Chất b&eacute;o: 2,4 g; Sắt: 4,8 mg; Magie: 270 mg; Canxi: 64 mg; Phốt pho: 377 mg; Kali: 1132 mg; C&aacute;c chất kh&aacute;c: Natri (6 mg), vitamin C (4 mg), Kẽm (1,1 mg), vitamin nh&oacute;m B, Folate, vitamin E, vitamin K, beta-carotene,&hellip; Ngo&agrave;i ra, loại đậu n&agrave;y cũng chứa nhiều loại axit amin thiết yếu như phenylalanine, isoleucine, valine, leucine, lysine, arginine,&hellip;</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe Đậu xanh&nbsp;</strong></em></p>\r\n\r\n<p>+ Ph&ograve;ng ngừa ung thư đại tr&agrave;ng<br />\r\n+ Giảm huyết &aacute;p, giảm nguy cơ mắc bệnh tim<br />\r\n+ Kiểm so&aacute;t đ&aacute;i th&aacute;o đường<br />\r\n+ Cải thiện miễn dịch<br />\r\n+ Cải thiện thị gi&aacute;c<br />\r\n+ Tốt cho tim mạch<br />\r\n+ Tốt cho xương<br />\r\n+ Bảo vệ dạ d&agrave;y<br />\r\n+ Nu&ocirc;i dưỡng thai nhi<br />\r\n+ Ngăn ngừa sốc nhiệt<br />\r\n+ Giải nhiệt<br />\r\n+ Ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị bệnh gout<br />\r\n+ Giảm lo &acirc;u, căng thẳng</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Đậu xanh hột</strong></em></p>\r\n\r\n<p>&ndash; C&aacute;ch bảo quản đậu xanh hột để l&acirc;u kh&ocirc;ng mối mọt. Cho đậu xanh v&agrave;o nước s&ocirc;i ng&acirc;m từ 1-2 ph&uacute;t để diệt hết trứng mọt, sau đ&oacute; đưa ra phơi kh&ocirc;, v&agrave;o v&agrave;o lọ k&iacute;n đậy nắp để d&agrave;nh. Trường hợp đậu đ&atilde; c&oacute; mọt, d&ugrave;ng phương ph&aacute;p tr&ecirc;n sẽ tr&aacute;nh đuợc mối mọt sau n&agrave;y.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Đậu xanh hột</strong></em></p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%C4%90%E1%BA%ADu_xanh\" target=\"_blank\">Đậu xanh</a>&nbsp;hột được biết đ&ecirc;n như một loại đậu gi&uacute;p thanh nhiệt cơ thể hiệu quả, đặc biệt l&agrave; khi chế biến th&agrave;nh c&aacute;c m&oacute;n ch&egrave; như: ch&egrave; đậu xanh nước cốt dừa, Ch&egrave; đậu xanh nha đam, Ch&egrave; đậu xanh phổ tai, Ch&egrave; đậu xanh đ&aacute;nh, Ch&egrave; đậu xanh nguy&ecirc;n hạt,Ch&egrave; b&iacute; đỏ đậu xanh ngo&agrave;i ra c&ograve;n c&oacute; thể chế biến c&aacute;c m&oacute;n ăn kh&aacute;c như: B&aacute;nh đậu xanh, Sữa đậu xanh, X&ocirc;i đậu xanh, Ch&aacute;o đậu xanh, Gi&aacute; đậu xanh (gi&aacute; đỗ), Kem đậu xanh, Nước rau m&aacute; đậu xanh , Gi&ograve; chay từ đậu xanh, B&aacute;nh dẻo nh&acirc;n đậu xanh , Canh b&iacute; đỏ đậu xanh, B&aacute;nh da lợn đậu xanh l&aacute; dứa, B&aacute;nh đậu xanh k&eacute;n&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:48:33', '2022-10-13 06:15:18', '2022-10-13 06:15:18'),
(81, 'Nấm Kim Châm', 'nam-kim-cham', 'upload/product/w8CMQ_1662988040_Inzp5_1662987028_nam-kim-cham-chat-luong.jpg', 1, 14000, 14000, NULL, 1, 1, 0, 61, NULL, NULL, NULL, NULL, 0, 0, 'Giá trị dinh dưỡng của Nấm Kim Châm – Nấm kim châm chứa rất nhiều chất dinh dưỡng cần thiết cho cơ thể như: protein, lipid, carbohydrate, chất xơ, canxi, lisin, kẽm, kali …. Bên cạnh đó, nấm còn chứa đến 16 loại axit amin trong đó, có 8 loại cần thiết cho cơ', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Nấm Kim Ch&acirc;m</strong></em></p>\r\n\r\n<p>&ndash; Nấm kim ch&acirc;m chứa rất nhiều chất dinh dưỡng cần thiết cho cơ thể như: protein, lipid, carbohydrate, chất xơ, canxi, lisin, kẽm, kali &hellip;. B&ecirc;n cạnh đ&oacute;, nấm c&ograve;n chứa đến 16 loại axit amin trong đ&oacute;, c&oacute; 8 loại cần thiết cho cơ thể con người.</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của Nấm Kim Ch&acirc;m</strong></em></p>\r\n\r\n<p>+ Tăng cường sức khỏe tim mạch<br />\r\n+ Ngăn chặn tế b&agrave;o ung thư ph&aacute;t triển<br />\r\n+ Tăng cường sức khỏe hệ miễn dịch</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Nấm Kim Ch&acirc;m</strong></em></p>\r\n\r\n<p>&ndash; Ở nhiệt độ khoảng 1 đến 5 độ C (ở ngăn m&aacute;t tủ lạnh) th&igrave; nấm c&oacute; thể để được 45 ng&agrave;y. C&ograve;n ở nhiệt độ b&igrave;nh thường th&igrave; c&oacute; thể để được trong thời gian từ 1 &ndash; 3 ng&agrave;y. Nhưng theo c&aacute;ch chuy&ecirc;n gia khuy&ecirc;n th&igrave; n&ecirc;n sử dụng nấm liền sau khi mua về sẽ ngon nhất.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Nấm Kim Ch&acirc;m</strong></em></p>\r\n\r\n<p>&ndash; Nấm được biết đến l&agrave; một loại nấm vừa c&oacute; thể chế biến được nhiều m&oacute;n chay, m&oacute;n mặn hấp dẫn m&agrave; lại c&ograve;n rất tốt cho sức khỏe như: Nấm x&agrave;o thịt băm c&agrave; chua, Canh kim chi nấm, Nấm x&agrave;o thịt b&ograve;, Nấm chi&ecirc;n gi&ograve;n,&nbsp;<a href=\"https://vi.wikipedia.org/wiki/N%E1%BA%A5m_kim_ch%C3%A2m\" target=\"_blank\">Nấm kim ch&acirc;m</a>&nbsp;x&agrave;o s&ograve; điệp, Đậu hũ cuộn nấm nướng, Thịt ba chỉ cuộn nấm &aacute;p chảo, Canh thịt b&ograve; nấu nấm&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:50:28', '2022-09-19 04:17:25', NULL),
(82, 'Nấm linh chi trắng', 'nam-linh-chi-trang', 'upload/product/4Jfq7_1662987058_nam-linh-chi-trang.jpg', 1, 14000, 14000, NULL, 1, 0, 0, 61, NULL, NULL, NULL, NULL, 0, 16, 'Giá trị dinh dưỡng của Nấm linh chi trắng gói 150g – Trong nấm klinh chi trắng có chứa: Nhiều Protein, Lipid và các khoáng chất, chất oxy hóa cần thiết cho cơ thể. Có nhiều vitamin nhóm B tốt cho máu huyết. Là thực phẩ m có nhiều chất xơ và các axit…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Nấm linh chi trắng g&oacute;i 150g</strong></em></p>\r\n\r\n<p>&ndash; Trong nấm klinh chi trắng c&oacute; chứa: Nhiều Protein, Lipid v&agrave; c&aacute;c kho&aacute;ng chất, chất oxy h&oacute;a cần thiết cho cơ thể. C&oacute; nhiều vitamin nh&oacute;m B tốt cho m&aacute;u huyết. L&agrave; thực phẩ m c&oacute; nhiều chất xơ v&agrave; c&aacute;c axit amin cần thiết m&agrave; cơ thể kh&ocirc;ng tự tổng hợp được.</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của Nấm linh chi trắng g&oacute;i 150g</strong></em></p>\r\n\r\n<p>+ Tăng cường hoạt động của n&atilde;o bộ như cải thiện tăng tr&iacute; nhớ, giảm stress, an thần,&hellip;<br />\r\n+ Điều h&ograve;a tốt c&aacute;c hoạt động của hệ h&ocirc; hấp.<br />\r\n+ Hỗ trợ gan, thận v&agrave; hệ tim mạch.<br />\r\n+ Tăng cường chức năng b&agrave;i tiết của cơ thể v&agrave; hỗ trợ đ&agrave;o thải độc tố hiệu quả.<br />\r\n+ Hỗ trợ điều trị c&aacute;c chứng đau mỏi xương khớp hiệu quả cho người lớn tuổi, người vận động.<br />\r\n+ Tăng sức đề kh&aacute;ng tốt để chống bệnh tật nhờ c&aacute;c vitamin v&agrave; kho&aacute;ng chất c&oacute; trong nấm.</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Nấm linh chi trắng g&oacute;i 150g</strong></em></p>\r\n\r\n<p>&ndash; Bảo quản nấm linh chi trắng nguy&ecirc;n trong t&uacute;i v&agrave; cho v&agrave;o tủ lạnh ở ngăn m&aacute;t chỉnh từ 1-3 độ theo thời gian sử dụng in tr&ecirc;n bao b&igrave; (thường 30-45 ng&agrave;y t&ugrave;y loại). Tốt nhất 10-20 ng&agrave;y đầu.Khi chế biến nhưng d&ugrave;ng kh&ocirc;ng hết, bạn c&oacute; thể cho phần nấm v&agrave;o giấy bọc thực phẩm v&agrave; cất v&agrave;o trong tủ lạnh sẽ giữ được th&ecirc;m 2-3 ng&agrave;y.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Nấm linh chi trắng g&oacute;i 150g</strong></em></p>\r\n\r\n<p>&ndash; C&oacute; kh&aacute; nhiều c&aacute;ch chế biến Nấm Linh Chi Trắng, như kết hợp l&agrave;m c&aacute;c m&oacute;n x&agrave;o, ch&aacute;o, canh, s&uacute;p, nấu lẩu,&hellip; sẽ cực kỳ thơm ngon, chay mặn đều được. Một số gợi &yacute; l&agrave;m những m&oacute;n ngon như: Ch&aacute;o nấm, Đậu hũ non sốt nấm, Chả nấm chi&ecirc;n gi&ograve;n, Cần T&acirc;y x&agrave;o nấm, Canh chua nấm chả c&aacute; b&ocirc;ng Đi&ecirc;n Điển, S&uacute;p nấm&hellip; v&agrave; nhiều m&oacute;n ngon kh&aacute;c.</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:50:58', '2022-09-19 04:17:25', NULL),
(83, 'Bí đỏ hồ lô', 'bi-do-ho-lo', 'upload/product/NnCAB_1662987168_bi-do-ho-lo-loai-1kg.jpg', 1, 18000, 18000, NULL, 1, 0, 0, 60, NULL, NULL, NULL, NULL, 0, 17, 'Giá trị dinh dưỡng của Bí đỏ hồ lô – Một chén bí đỏ hồ lô nấu chín cung cấp: Calo: 49; Carbs: 12 gram; Chất xơ: 3 gram; Protein: 2 gram; Vitamin K: 49% RDI; Vitamin C: 19% RDI; Kali: 16% RDI; Đồng, mangan và riboflavin: 11% RDI; Vitamin E: 10% RDI; Sắt:', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của B&iacute; đỏ hồ l&ocirc;</strong></em></p>\r\n\r\n<p>&ndash; Một ch&eacute;n b&iacute; đỏ hồ l&ocirc; nấu ch&iacute;n cung cấp: Calo: 49; Carbs: 12 gram; Chất xơ: 3 gram; Protein: 2 gram; Vitamin K: 49% RDI; Vitamin C: 19% RDI; Kali: 16% RDI; Đồng, mangan v&agrave; riboflavin: 11% RDI; Vitamin E: 10% RDI; Sắt: 8% RDI; Folate: 6% RDI Niacin, axit pantothenic, vitamin B6 v&agrave; thiamin: 5% RDI</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của B&iacute; đỏ hồ l&ocirc;</strong></em></p>\r\n\r\n<p>+ Tăng cường hệ miễn dịch<br />\r\n+ Tăng cường sức khỏe cho mắt<br />\r\n+ Hỗ trợ một l&agrave;n da khỏe mạnh<br />\r\n+ Tăng cường sức khỏe tim mạch<br />\r\n+ Hội chứng chuyển h&oacute;a<br />\r\n+ Giảm nguy cơ mắc c&aacute;c bệnh m&atilde;n t&iacute;nh<br />\r\n+ Th&uacute;c đẩy giảm c&acirc;n</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản B&iacute; đỏ hồ l&ocirc;</strong></em></p>\r\n\r\n<p>&ndash; Khi bảo quản b&iacute; đỏ hồ l&ocirc; nấu trong tủ lạnh bạn nhất định phải bỏ v&agrave;o hộp đựng c&oacute; nắp đậy hoặc t&uacute;i zip, kh&ocirc;ng để gần c&aacute;c loại thực phẩm nặng m&ugrave;i. B&iacute; đỏ tươi bạn kh&ocirc;ng được cho trực tiếp v&agrave;o tủ lạnh m&agrave; phải d&ugrave;ng t&uacute;i đựng, v&igrave; nếu bạn cho b&iacute; đỏ tươi trực tiếp v&agrave;o tủ ch&uacute;ng sẽ hấp thụ độ ẩm trong tủ, l&agrave;m b&iacute; nhanh ph&acirc;n hủy.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ B&iacute; đỏ hồ l&ocirc;</strong></em></p>\r\n\r\n<p>&ndash; B&iacute; đỏ hồ l&ocirc; l&agrave; thực phẩm l&agrave;nh t&iacute;nh v&agrave; ph&ugrave; hợp với tất cả mọi người từ trẻ nhỏ cho đến người lớn tuổi. Một số m&oacute;n ăn c&oacute; thể chế biến từ b&iacute; đỏ như: Sữa b&iacute; đỏ hạt sen, Canh b&iacute; đỏ đậu phộng, Ch&aacute;o b&iacute; đỏ thịt bằm, B&iacute; đỏ x&agrave;o tỏi, Canh t&ocirc;m b&iacute; đỏ, Canh b&iacute; đỏ thịt bằm, G&agrave; hầm b&iacute; đỏ, Mứt b&iacute; đỏ, Ch&aacute;o g&agrave; b&iacute; đỏ, Ch&egrave; b&iacute; đỏ đậu phộng, B&aacute;nh b&iacute; đỏ chi&ecirc;n gi&ograve;n, S&uacute;p b&iacute; đỏ kem tươi&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:52:48', '2022-10-13 06:25:42', '2022-10-13 06:25:42'),
(84, 'Cà chua', 'ca-chua', 'upload/product/KEK5G_1662987223_ca-chua-loai-1kg.jpg', 1, 8000, 7000, NULL, 1, 0, 0, 60, NULL, NULL, NULL, NULL, 0, 18, 'Giá trị dinh dưỡng của Cà chua – Theo nghiên cứu trong cà chua tỷ lệ chiếm cao nhất là nước 95%, 5% còn lại chủ yếu bao gồm carbohydrate và chất xơ. Trong 100 gam cà chua sống bao gồm thành phần dinh dưỡng sau: 18 kcal, 0,9 gam đạm, 3,9 gam carb,…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của C&agrave; chua</strong></em></p>\r\n\r\n<p>&ndash; Theo nghi&ecirc;n cứu trong c&agrave; chua tỷ lệ chiếm cao nhất l&agrave; nước 95%, 5% c&ograve;n lại chủ yếu bao gồm carbohydrate v&agrave; chất xơ. Trong 100 gam c&agrave; chua sống bao gồm th&agrave;nh phần dinh dưỡng sau: 18 kcal, 0,9 gam đạm, 3,9 gam carb, 2,6 gam đường, 1,2 gam chất xơ, 0,2 gam chất b&eacute;o&hellip;</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của C&agrave; chua</strong></em></p>\r\n\r\n<p>+ Bảo vệ Sức khỏe tim mạch<br />\r\n+ Ngăn ngừa ung thư<br />\r\n+ C&oacute; lợi sức khỏe l&agrave;n da<br />\r\n+ Cải thiện thị lực<br />\r\n+ Giảm lượng đường trong m&aacute;u<br />\r\n+ Th&uacute;c đẩy giấc ngủ ngon<br />\r\n+ Giữ xương chắc khỏe<br />\r\n+ Chữa các b&ecirc;̣nh m&atilde;n t&iacute;nh<br />\r\n+ Tốt cho m&aacute;i t&oacute;c<br />\r\n+ Gi&uacute;p giảm c&acirc;n</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản C&agrave; chua</strong></em></p>\r\n\r\n<p>(*) C&agrave; chua ch&iacute;n đỏ</p>\r\n\r\n<p>Với những quả c&agrave; chua đ&atilde; ch&iacute;n đỏ, bạn n&ecirc;n d&ugrave;ng giấy bọc lại rồi cho v&agrave;o ngăn m&aacute;t tủ lạnh, điều chỉnh nhiệt độ ở mức 2 &ndash; 5 độ C v&agrave; độ ẩm từ 85 &ndash; 90% để c&agrave; chua được giữ tươi l&acirc;u hơn, kh&ocirc;ng bị nhăn nheo hay nhanh hỏng.</p>\r\n\r\n<p>(*) C&agrave; chua ch&iacute;n vừa</p>\r\n\r\n<p>Những quả c&agrave; chua ương, ch&iacute;n vừa c&oacute; m&agrave;u hồng nhạt th&igrave; bạn c&oacute; thể bảo quản ch&uacute;ng trong tủ lạnh với nhiệt độ khoảng 5 độ C, trong v&ograve;ng 4 &ndash; 7 ng&agrave;y.</p>\r\n\r\n<p>Khi cần d&ugrave;ng, bạn n&ecirc;n cho ra m&ocirc;i trường b&ecirc;n ngo&agrave;i b&igrave;nh thường hoặc tăng nhiệt độ tủ lạnh l&ecirc;n khoảng 13 &ndash; 15 độ C, trước từ 1 &ndash; 4 ng&agrave;y d&ugrave;ng cho ch&uacute;ng ch&iacute;n đỏ rồi sử dụng.</p>\r\n\r\n<p>(*) C&agrave; chua c&ograve;n xanh</p>\r\n\r\n<p>C&agrave; chua c&ograve;n xanh kh&ocirc;ng n&ecirc;n cho v&agrave;o tủ lạnh bảo quản ngay, điều n&agrave;y sẽ khiến c&agrave; chua bị mất nước v&agrave; nhanh h&eacute;o. Với những quả như thế n&agrave;y, bạn cứ để ch&uacute;ng ở nơi tho&aacute;ng m&aacute;t, cho c&aacute;c quả c&agrave; chua ch&iacute;n dần rồi sau đ&oacute; cho v&agrave;o tủ lạnh bảo quản v&agrave; d&ugrave;ng dần.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ C&agrave; chua</strong></em></p>\r\n\r\n<p>&ndash; Những quả&nbsp;<a href=\"https://vi.wikipedia.org/wiki/C%C3%A0_chua\" target=\"_blank\">c&agrave; chua</a>&nbsp;đỏ mọng chứa đựng th&agrave;nh phần dưỡng chất c&oacute; lợi b&ecirc;n trong. C&agrave; chua cũng được sử dụng l&agrave;m nguy&ecirc;n liệu nấu ăn như: Canh c&agrave; chua trứng, Nước &eacute;p c&agrave; chua, Sốt c&agrave; chua, C&aacute; thu sốt c&agrave; chua, Trứng x&agrave;o c&agrave; chua, C&agrave; chua cuộn trứng chi&ecirc;n, Đậu phụ sốt c&agrave; chua, X&uacute;c x&iacute;ch x&agrave;o c&agrave; chua, Trứng chi&ecirc;n c&agrave; chua, Salad c&agrave; chua bi&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:53:43', '2022-09-19 04:17:25', NULL);
INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(85, 'Dưa leo', 'dua-leo', 'upload/product/iVaus_1662987259_dua-leo.jpg', 1, 6000, 5000, NULL, 1, 0, 0, 60, NULL, NULL, NULL, NULL, 0, 18, 'Giá trị dinh dưỡng của Dưa keo – Theo nghiên cứu trong cà chua tỷ lệ chiếm cao nhất là nước 95%, 5% còn lại chủ yếu bao gồm carbohydrate và chất xơ. Trong 100 gam cà chua sống bao gồm thành phần dinh dưỡng sau: 18 kcal, 0,9 gam đạm, 3,9 gam carb,…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Dưa leo</strong></em></p>\r\n\r\n<p>&ndash; Theo nghi&ecirc;n cứu 1 quả dưa leo sống, chưa gọt vỏ, nặng 11 ounce (300 gram) chứa những những dưỡng chất sau:; Lượng calo: 45; Tổng chất b&eacute;o: 0 gram; Carbs: 11 gram; Chất đạm: 2 gam; Chất xơ: 2 gam; Vitamin C: 14% RDI; Vitamin K: 62% RDI; Magi&ecirc;: 10% RDI; Kali: 13% RDI; Mangan: 12% RDI.</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của Dưa leo</strong></em></p>\r\n\r\n<p>+ Ph&ograve;ng ngừa t&aacute;o b&oacute;n<br />\r\n+ Gi&uacute;p giải độc<br />\r\n+ Giảm căng thẳng<br />\r\n+ Tốt cho tim mạch<br />\r\n+ Ngăn ngừa ung thư<br />\r\n+ Dưỡng da trắng s&aacute;ng<br />\r\n+ Giảm c&acirc;n</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Dưa leo</strong></em></p>\r\n\r\n<p>&ndash; Trước khi bảo quản dưa leo, h&atilde;y rửa loại quả n&agrave;y sạch sẽ dưới v&ograve;i nước. Điều n&agrave;y gi&uacute;p loại bỏ h&agrave;m lượng thuốc trừ s&acirc;u v&agrave; c&aacute;c vi khuẩn kh&aacute;c b&aacute;m ở dưa leo. Sau đ&oacute;, để trong kh&ocirc;ng kh&iacute; một l&uacute;c cho đến khi dưa leo kh&ocirc;. Loại quả n&agrave;y được khuyến c&aacute;o cần được giữ trong điều kiện sạch sẽ v&agrave; kh&ocirc; r&aacute;o.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Dưa leo</strong></em></p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/D%C6%B0a_chu%E1%BB%99t\" target=\"_blank\">Dưa leo</a>&nbsp;l&agrave; một loại nguy&ecirc;n liệu v&ocirc; c&ugrave;ng dễ t&igrave;m v&agrave; rất hợp kinh tế cho bữa cơm h&agrave;ng ng&agrave;y của gia đ&igrave;nh. C&aacute;c bạn c&oacute; thể chế biến th&agrave;nh c&aacute;c loại m&oacute;n ăn như: Canh sườn non, Kim chi dưa leo, Thịt cuộn chi&ecirc;n x&ugrave;, Dưa leo x&agrave;o trứng, Salad dưa leo c&agrave; chua&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:54:19', '2022-09-19 04:17:25', NULL),
(86, 'Cam sành', 'cam-sanh', 'upload/product/151zQ_1662987326_cam-sanh-loai-1kg.jpg', 1, 28000, 27000, NULL, 1, 0, 0, 62, NULL, NULL, NULL, NULL, 0, 19, 'Giá trị dinh dưỡng của Cam sành – Mỗi 100 gram cam sành chứa: 87,6 g nước; 104 microgram carotene – một loại vitamin chống oxy hóa; 30 mg vitamin C; 10,9 g chất tinh bột; 93 mg kali; 26 mg canxi; 9 mg magnesium; 0,3 g chất xơ; 4,5 mg natri; 7 mg…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Cam s&agrave;nh</strong></em></p>\r\n\r\n<p>&ndash; Mỗi 100 gram cam s&agrave;nh chứa: 87,6 g nước; 104 microgram carotene &ndash; một loại vitamin chống oxy h&oacute;a; 30 mg vitamin C; 10,9 g chất tinh bột; 93 mg kali; 26 mg canxi; 9 mg magnesium; 0,3 g chất xơ; 4,5 mg natri; 7 mg Chromium; 20 mg phốt pho; 0,32 mg sắt</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của Cam s&agrave;nh</strong></em></p>\r\n\r\n<p>+ Tăng sức đề kh&aacute;ng cho cơ thể<br />\r\n+ Gi&uacute;p c&acirc;n bằng huyết &aacute;p<br />\r\n+ Điều h&ograve;a mức cholesterol v&agrave; đường huyết cho cơ thể<br />\r\n+ Ph&ograve;ng chống ung thư<br />\r\n+ Trị chứng t&aacute;o b&oacute;n<br />\r\n+ Chữa l&agrave;nh c&aacute;c vết thương</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Cam s&agrave;nh</strong></em></p>\r\n\r\n<p>&ndash; Để tr&aacute;i cam bảo quản l&acirc;u vẫn ngon nhất th&igrave; cần chọn cam tươi, quả con nguy&ecirc;n cuống v&agrave; l&aacute;, l&aacute; c&oacute; thể hơi kh&ocirc; những vẫn d&iacute;nh tr&ecirc;n cuống.Cam mua về tốt nhất vẫn n&ecirc;n rửa sạch v&agrave; ng&acirc;m muối để đảm bảo loại bỏ tồn dư h&oacute;a chất tr&ecirc;n phần da quả. Sau đ&oacute;, bạn h&atilde;y lau kh&ocirc; hoặc để tr&aacute;i cam thật r&aacute;o nước rồi buộc ch&uacute;ng v&agrave;o t&uacute;i nilon cho thật chặt v&agrave; k&iacute;n, bảo quản trong ngăn m&aacute;t tủ lạnh. C&aacute;ch n&agrave;y l&agrave; c&aacute;ch đơn giản v&agrave; phổ biến nhất, đảm bảo cam giữ nguy&ecirc;n độ tươi v&agrave; hương vị thơm ngon như mới trong khoảng 2 &ndash; 3 tuần.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Cam s&agrave;nh</strong></em></p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://vi.wikipedia.org/wiki/Cam_s%C3%A0nh\" target=\"_blank\">Cam s&agrave;nh</a>&nbsp;c&oacute; thể chế biến một số m&oacute;n ăn như: Salad cam; G&agrave; sốt cam; Sườn sốt cam chua ngọt; Đ&ugrave;i vịt sốt cam; B&ograve; x&agrave;o xốt cam; T&ocirc;m chi&ecirc;n gi&ograve;n sốt cam&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:55:26', '2022-09-19 04:17:25', NULL),
(87, 'Trái Ổi', 'trai-oi', 'upload/product/zzZln_1662987359_trai-oi-loai-1kg.jpg', 1, 28000, 27000, NULL, 1, 0, 0, 62, NULL, NULL, NULL, NULL, 0, 19, 'Giá trị dinh dưỡng của Ổi – Mỗi 100 gram cam sành chứa: 87,6 g nước; 104 microgram carotene – một loại vitamin chống oxy hóa; 30 mg vitamin C; 10,9 g chất tinh bột; 93 mg kali; 26 mg canxi; 9 mg magnesium; 0,3 g chất xơ; 4,5 mg natri; 7 mg…', '<p><em><strong>1. Gi&aacute; trị dinh dưỡng của Tr&aacute;i Ổi</strong></em></p>\r\n\r\n<p>&ndash; Theo nghi&ecirc;n cứu, ổi chứa c&aacute;c loại vitamin v&agrave; kho&aacute;ng chất sau: Chất xơ; Nước; Kali; Sắt; Carbohydrate; Chất b&eacute;o; Phospho; Protein; Natri; Magie; Kẽm; Canxi; Đồng; Choline; Mangan; Axit Pantothenic; Vitamin A; Vitamin C; Vitamin D; Vitamin B6; Vitamin B12; Vitamin K&hellip;</p>\r\n\r\n<p><em><strong>2. Lợi &iacute;ch cho sức khỏe của Tr&aacute;i Ổi</strong></em></p>\r\n\r\n<p>+ Tốt cho tim mạch<br />\r\n+ Tăng cường hệ miễn dịch<br />\r\n+ Dinh dưỡng của ổi tốt cho hệ ti&ecirc;u h&oacute;a<br />\r\n+ Điều h&ograve;a huyết &aacute;p<br />\r\n+ Hỗ trợ l&agrave;m đẹp da<br />\r\n+ Hỗ trợ cải thiện tiểu đường<br />\r\n+ Ngăn ngừa ung thư<br />\r\n+ Tốt cho phụ nữ c&oacute; thai<br />\r\n+ Tăng cường thị lực<br />\r\n+ Giảm căng thẳng<br />\r\n+ Ăn ổi tốt cho n&atilde;o bộ<br />\r\n+ Giảm ho, ngăn ngừa cảm lạnh<br />\r\n+ Hỗ trợ giảm c&acirc;n<br />\r\n+ Ngăn ngừa l&atilde;o h&oacute;a</p>\r\n\r\n<p><em><strong>3. C&aacute;ch bảo quản Tr&aacute;i Ổi</strong></em></p>\r\n\r\n<p>&ndash; Sau khi mua ổi về cần chọn lựa những quả ổi bị hỏng, bị dập, c&oacute; vết th&acirc;m đen ra ri&ecirc;ng, d&ugrave;ng dao sạch cắt bỏ đi những phần bị hỏng nhiều nhất c&oacute; thể. Cho v&agrave;o t&uacute;i zip, t&uacute;i nilong hoặc t&uacute;i lưới, lưu &yacute; kh&ocirc;ng n&ecirc;n bịt k&iacute;n miệng t&uacute;i, đảm bảo c&oacute; c&aacute;c lỗ nhỏ để kh&ocirc;ng kh&iacute; lưu th&ocirc;ng. Đặt v&agrave;o ngăn m&aacute;t tủ lạnh để bảo quản, tr&aacute;nh đặt gần c&aacute;c loại tr&aacute;i c&acirc;y kh&aacute;c, hay c&aacute;c thực phẩm như thịt, c&aacute;,.. để k&eacute;o d&agrave;i thời gian bảo quản ổi.</p>\r\n\r\n<p><em><strong>4. C&aacute;c m&oacute;n ăn ngon từ Tr&aacute;i Ổi</strong></em></p>\r\n\r\n<p>&ndash; Một số m&oacute;n ăn l&agrave;m từ tr&aacute;i&nbsp;<a href=\"https://vi.wikipedia.org/wiki/%E1%BB%94i\" target=\"_blank\">ổi</a>&nbsp;như: Nước &eacute;p ổi; Sinh tố ổi; Tr&agrave; ổi; Rượu ổi; Mứt ổi; Ổi lắc; C&oacute;c ổi xo&agrave;i dầm kh&ocirc; b&ograve;; Gỏi ổi; Ổi chi&ecirc;n; Hấp l&aacute; ổi&hellip;</p>\r\n\r\n<p><em><strong>5. Cam kết với kh&aacute;ch h&agrave;ng khi mua sắm tại&nbsp;<a href=\"https://thucphamnhanh.com/dang-cu/\" target=\"_blank\">Thực Phẩm Nhanh</a></strong></em></p>\r\n\r\n<p>&ndash; Chất lượng h&agrave;ng thực phẩm tươi mới, an to&agrave;n, sạch xanh<br />\r\n&ndash; Gi&aacute; b&aacute;n cạnh tranh, ưu đ&atilde;i mỗi ng&agrave;y<br />\r\n&ndash; Giao h&agrave;ng đ&uacute;ng hẹn, đ&uacute;ng v&agrave; đủ số lượng cam kết<br />\r\n&ndash; Ch&iacute;nh s&aacute;ch đổi trả &ndash; ho&agrave;n tiền dễ d&agrave;ng, nhanh ch&oacute;ng<br />\r\n&ndash; Nh&acirc;n vi&ecirc;n Tư vấn &ndash; Giao h&agrave;ng th&acirc;n thiện, nhiệt t&igrave;nh, tận t&acirc;m</p>', NULL, NULL, 0, '2022-09-12 12:55:59', '2022-09-19 04:17:25', NULL),
(88, 'Bò Viên Cầu Tre', 'bo-vien-cau-tre', 'upload/product/xHvTh_1662987662_bo-vien-cau-tre-200g.jpg', 1, 40500, 39000, NULL, 1, 0, 0, 63, NULL, NULL, NULL, NULL, 0, 13, 'Dùng để chế biến kèm với các món ăn khác như lẩu, xào chung với các loại rau củ, hấp, và các món ăn khác, là nguyên liệu tiện lợi cho bữa ăn đến từ Cầu Tre. Bò viên ngon Cầu Tre gói 500g được chế biến từ nguồn nguyên liệu chất lượng, an toàn, được lựa chon kỹ càng.', NULL, NULL, NULL, 0, '2022-09-12 13:01:02', '2022-09-19 04:17:25', NULL),
(89, 'Xúc xích dinh dưỡng', 'xuc-xich-dinh-duong', 'upload/product/shLgJ_1662987734_XUC-XICH-TIET-TRUNG-DINH-DUONG-DHA-VISSAN-HEO-GOI-35G.jpg', 1, 23000, 22000, NULL, 1, 0, 0, 63, NULL, NULL, NULL, NULL, 0, 13, NULL, NULL, NULL, NULL, 0, '2022-09-12 13:02:14', '2022-09-19 04:17:25', NULL),
(90, 'Há cảo tôm CP', 'ha-cao-tom-cp', 'upload/product/kVfvq_1662987821_ha-cao-tom-thit-cp-265g.jpg', 1, 58000, 58000, NULL, 1, 0, 0, 63, NULL, NULL, NULL, NULL, 0, 17, NULL, NULL, NULL, NULL, 0, '2022-09-12 13:03:41', '2022-09-19 04:17:25', NULL),
(91, 'Đậu hủ chiên miếng to', 'dau-hu-chien-mieng-to', 'upload/product/VcL7z_1663067350_dau-hu-chien-mieng-to.jpg', 1, 6000, 5000, NULL, 1, 0, 0, 65, NULL, NULL, NULL, NULL, 0, 17, NULL, NULL, NULL, NULL, 0, '2022-09-13 11:09:10', '2022-09-19 04:17:25', NULL),
(92, 'Đậu hủ non Ichiban', 'dau-hu-non-ichiban', 'upload/product/tzFKU_1663067407_dau-hu-trang-mieng.jpg', 1, 15000, 14000, NULL, 1, 0, 0, 65, NULL, NULL, NULL, NULL, 0, 18, NULL, NULL, NULL, NULL, 0, '2022-09-13 11:10:07', '2022-09-19 04:17:25', NULL),
(93, 'Đậu hủ trắng miếng', 'dau-hu-trang-mieng', 'upload/product/J4Zfc_1663067430_tau-hu-non-ichiban.jpg', 1, 25000, 24000, NULL, 1, 0, 0, 65, NULL, NULL, NULL, NULL, 0, 18, NULL, NULL, NULL, NULL, 0, '2022-09-13 11:10:30', '2022-09-19 04:17:25', NULL),
(94, 'Chả giò rế tôm cua đặc biệt', 'cha-gio-re-tom-cua-dac-biet', 'upload/product/BJhC4_1663067829_cha-gio-re-tom-cua-dac-biet-vissan-loai-500g_5e61bfba0b8ee.jpeg', 1, 31000, 30000, NULL, 1, 0, 0, 67, NULL, NULL, NULL, NULL, 0, 15, NULL, NULL, NULL, NULL, 0, '2022-09-13 11:15:18', '2022-09-19 04:17:25', NULL),
(95, 'Khô cá sửu', 'kho-ca-suu', 'upload/product/TS7Kf_1663067747_kho-ca-suu.jpg', 1, 31000, 30000, NULL, 1, 0, 0, 67, NULL, NULL, NULL, NULL, 0, 15, NULL, NULL, NULL, NULL, 0, '2022-09-13 11:15:47', '2022-09-19 04:17:25', NULL),
(96, 'Má đùi gà phi lê (có da)', 'ma-dui-ga-phi-le-co-da', 'upload/product/KA62u_1663068049_cha-gio-re-tom-cua-dac-biet-vissan-loai-500g_5e61bfba0b8ee.jpeg', 1, 30000, 30000, NULL, 1, 1, 0, 71, NULL, NULL, NULL, NULL, 0, 15, NULL, NULL, NULL, NULL, 0, '2022-09-13 11:20:49', '2022-09-19 04:17:25', NULL),
(97, 'Cánh gà tươi', 'canh-ga-tuoi', 'upload/product/jhA0K_1663068069_canh-ga-unitek-loai-1kg_5e61b59705a25.jpeg', 1, 40000, 40000, NULL, 1, 1, 0, 71, NULL, NULL, NULL, NULL, 0, 15, NULL, NULL, NULL, NULL, 0, '2022-09-13 11:21:09', '2022-09-19 04:17:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `phone`, `hotline`, `tax`, `facebook`, `email`, `introduce`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH Thực Phẩm', 'Q.Đống Đa , Hà Nội', 'Q.Long Biên, Hà Nội', 'upload/setting/organic-4.png', '0964918047', '0964918047', '000010', 'facebook.com/9999TS', 'ndinhthao0605@gmail.com', '<h2><strong>VIỆN C&Ocirc;NG NGHỆ TH&Ocirc;NG TIN T3H</strong></h2>\r\n\r\n<p>Tiền th&acirc;n l&agrave; chương tr&igrave;nh phối hợp đ&agrave;o tạo nguồn nh&acirc;n lực CNTT chất lượng cao, đ&aacute;p ứng nhu cầu nh&acirc;n lực IT của Doanh nghiệp Giữa Hitech Viet Nam v&agrave; Trung T&acirc;m Tin Học &ndash; Trường Đại học Khoa học tự nhi&ecirc;n TP. HCM từ năm 2014 -2020</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh hợp t&aacute;c Chương tr&igrave;nh phối hợp đ&agrave;o tạo đ&atilde; đạt được rất nhiều th&agrave;nh tựu trong c&ocirc;ng t&aacute;c đ&agrave;o tạo, trang bị kiến thức thực tiễn c&oacute; t&iacute;nh ứng dụng thực tế, Cập nhật c&ocirc;ng nghệ ti&ecirc;n tiến đ&aacute;p ứng nhu cầu chất lượng nguồn nh&acirc;n lực ng&agrave;y c&agrave;ng cao tại c&aacute;c doanh nghiệp, Kết quả đ&oacute; được minh chứng qua c&aacute;c th&agrave;nh tựu thống k&ecirc; đạt được như; hơn 120.000 nh&acirc;n lực CNTT chất lượng đang c&ocirc;ng t&aacute;c tại c&aacute;c vị tr&iacute; quang trọng trong c&aacute;c tập đo&agrave;n c&ocirc;ng nghệ lớn như FPT, Viettel, IBM, CMC&hellip;từ đ&oacute; T3H được thừa hưởng nền tảng đ&agrave;o tạo v&agrave; nhiều th&agrave;nh tựu giải thưởng danh gi&aacute; c&ugrave;ng đơn vị hợp t&aacute;c trong hoạt động đ&agrave;o tạo v&agrave; đổi mới đ&agrave;o tạo về lĩnh vực CNTT như Cup bạc đ&agrave;o tạo CNTT phi ch&iacute;nh quy, đơn vị đ&agrave;o tạo h&agrave;ng đầu Top IT 2002, Hu&acirc;n chương lao động hạng 3. Giải thưởng thương hiệu Ch&acirc;u &Aacute; Th&aacute;i B&igrave;nh Dương</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với phương tr&acirc;m ph&aacute;t triển nguồn nh&acirc;n lực CNTT một c&aacute;ch to&agrave;n diện, c&oacute; chiều s&acirc;u. C&ugrave;ng c&aacute;c giải ph&aacute;p nghi&ecirc;n cứu c&ocirc;ng nghệ ti&ecirc;n tiến như tr&iacute; tuệ nh&acirc;n tạo AI, Bigdata, IOT.. hướng hướng đến nền tảng c&ocirc;ng nghệ 4.0. Viện C&ocirc;ng nghệ th&ocirc;ng tin T3H đ&atilde; được Bộ Khoa học v&agrave; C&ocirc;ng nghệ chứng nhận hoạt động nghi&ecirc;n cứu khoa học, thực hiện c&aacute;c chương tr&igrave;nh, đề t&agrave;i, dự &aacute;n trong lĩnh vực CNTT &ndash; tập huấn, s&aacute;t hạch, đ&agrave;o tạo bồi dưỡng nguồn nh&acirc;n lực CNTT Chất lượng cao, G&oacute;p phần v&agrave;o sự ph&aacute;t triển bền vững của Việt Nam</p>\r\n\r\n<p><strong>1. T&Ecirc;N VIỆN</strong></p>\r\n\r\n<p>- T&ecirc;n tiếng Việt: Viện C&ocirc;ng nghệ th&ocirc;ng tin T3H</p>\r\n\r\n<p>- T&ecirc;n tiếng Anh: T3H Information Technology Institute</p>\r\n\r\n<p>- T&ecirc;n viết tắt bằng tiếng Anh: T3H-ITI</p>\r\n\r\n<p>- Người đứng đầu tổ chức: Lưu C&ocirc;ng Định - Viện Trưởng</p>\r\n\r\n<p><strong>&nbsp;2. CHỨC NĂNG</strong></p>\r\n\r\n<p>Tập hợp c&aacute;c nh&agrave; khoa học, c&aacute;c chuy&ecirc;n gia c&oacute; kinh nghiệm v&agrave; c&aacute;c c&aacute;n bộ c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n để thực hiện c&ocirc;ng t&aacute;c nghi&ecirc;n cứu, tập huấn, s&aacute;t hạch, đ&agrave;o tạo bồi dưỡng nguồn nh&acirc;n lực c&ocirc;ng nghệ th&ocirc;ng tin chất lượng cao, lập tr&igrave;nh ứng dụng phần mềm v&agrave; cung cấp dịch vụ trong lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin, g&oacute;p phần v&agrave;o sự ph&aacute;t triển bền vững của Việt Nam.</p>\r\n\r\n<p><strong>3. NHIỆM VỤ</strong></p>\r\n\r\n<ul>\r\n	<li>Nghi&ecirc;n cứu khoa học: Nghi&ecirc;n cứu c&aacute;c đề t&agrave;i, dự &aacute;n, chương tr&igrave;nh li&ecirc;n quan đến lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin.</li>\r\n	<li>Dịch vụ khoa học v&agrave; c&ocirc;ng nghệ: Tư vấn, phản biện, thẩm định, triển khai, ứng dụng, chuyển giao v&agrave; thương mại h&oacute;a c&aacute;c kết quả nghi&ecirc;n cứu khoa học về c&aacute;c vấn để li&ecirc;n quan đến c&ocirc;ng nghệ th&ocirc;ng tin đặc biệt l&agrave; ứng dụng, chuyển giao c&ocirc;ng nghệ phần mềm hiện đại phục vụ cộng đồng v&agrave; x&atilde; hội; truyền th&ocirc;ng phổ kiến thức khoa học về c&ocirc;ng nghệ th&ocirc;ng tin, tổ chức hội nghị, hội thảo, in ấn c&aacute;c t&agrave;i liệu c&oacute; li&ecirc;n quan</li>\r\n	<li>Hợp t&aacute;c với c&aacute;c tổ chức, c&aacute; nh&acirc;n ở trong v&agrave; ngo&agrave;i nước để thực hiện chức năng, nhiệm vụ của Viện.</li>\r\n</ul>\r\n\r\n<p><strong>4. QUYỀN HẠN</strong></p>\r\n\r\n<p>Viện C&ocirc;ng nghệ th&ocirc;ng tin T3H l&agrave; tổ chức khoa học v&agrave; c&ocirc;ng nghệ hoạt động theo Luật Khoa học v&agrave; C&ocirc;ng nghệ năm 2013, Nghị định số 08/2014/NĐ-CP ng&agrave;y 27/01/2014 của Ch&iacute;nh phủ quy định chi tiết v&agrave; hướng dẫn thi h&agrave;nh một số điều của Luật khoa học v&agrave; c&ocirc;ng nghệ, Th&ocirc;ng tư số 03/2014/TT-BKHCN ng&agrave;y 31/3/2014 của Bộ Khoa học v&agrave; C&ocirc;ng nghệ hướng dẫn điều kiện th&agrave;nh lập v&agrave; đăng k&yacute; hoạt động của tổ chức khoa học v&agrave; c&ocirc;ng nghệ, văn ph&ograve;ng đại diện, chi nh&aacute;nh của tổ chức khoa học v&agrave; c&ocirc;ng nghệ.</p>\r\n\r\n<p>Viện c&oacute; tư c&aacute;ch ph&aacute;p nh&acirc;n, c&oacute; con dấu v&agrave; t&agrave;i khoản ri&ecirc;ng tại c&aacute;c ng&acirc;n h&agrave;ng v&agrave; hoạt động theo phương thức hạch to&aacute;n độc lập. Viện c&oacute; trụ sở ch&iacute;nh tại th&agrave;nh phố H&agrave; Nội, khi cần thiết c&oacute; thể mở chi nh&aacute;nh hoặc văn ph&ograve;ng đại diện tại c&aacute;c địa phương trong cả nước theo quy định của ph&aacute;p luật</p>\r\n\r\n<p><strong>5. TẦM NH&Igrave;N</strong></p>\r\n\r\n<p>Viện C&ocirc;ng nghệ th&ocirc;ng tin T3H phấn đấu trở th&agrave;nh đơn vị nghi&ecirc;n cứu chuyển giao c&ocirc;ng nghệ khoa học v&agrave; c&ocirc;ng nghệ về gi&aacute;o dục - đ&agrave;o tạo trong lĩnh vực c&ocirc;ng nghệ th&ocirc;ng tin h&agrave;ng đầu tại Việt Nam</p>\r\n\r\n<p>L&agrave; cầu nối quan trọng v&agrave; uy t&iacute;n giữa doanh nghiệp với nh&acirc;n lực ng&agrave;nh C&ocirc;ng nghệ th&ocirc;ng tin.</p>\r\n\r\n<p><strong>6. SỨ MỆNH</strong></p>\r\n\r\n<p>Viện C&ocirc;ng nghệ th&ocirc;ng tin T3H li&ecirc;n tục đổi mới s&aacute;ng tạo, lu&ocirc;n đ&oacute;n đầu c&aacute;c nền tảng c&ocirc;ng nghệ mới, nhằm nghiện cứu, cải tiến, chuyển giao ứng dụng v&agrave;o chương tr&igrave;nh gi&aacute;o dục đ&agrave;o tạo CNTT chất lượng cao tại Việt Nam.</p>\r\n\r\n<p>L&agrave; trung t&acirc;m kết nối c&aacute;c th&agrave;nh tựu c&ocirc;ng nghệ quốc tế &nbsp;lĩnh vực C&ocirc;ng nghệ th&ocirc;ng tin c&ugrave;ng với những chuy&ecirc;n gia, kỹ sư người Việt.</p>', NULL, '2022-09-19 05:36:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT 'Name of table test',
  `detail` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`id`, `name`, `detail`) VALUES
(1, 'iphone', 'iphone 13 promax blue 128gb'),
(2, 'iphone', 'iphone 13 promax red 250gb'),
(3, 'iphone', 'iphone 13 pro black 5120gb'),
(4, 'iphone', 'iphone 13 promax blue 128gb'),
(5, 'iphone12', 'iphone 12 green 128gb'),
(6, 'iphone12prmx', 'iphone 12 promax white 512gb'),
(7, 'iphone12', 'iphone 12 green 128gb'),
(8, 'iphone121', 'iphone 121 promax blue 128gb'),
(9, 'iphone121', 'iphone 121 promax blue 128gb'),
(10, 'iphone122', 'iphone 122 promax blue 128gb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT 1,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(11, 'a', 'a@gmail.com', '$2y$10$5HeHyJaxXRXW0lVZa7D.zucsbMT5IA/98Q67o1FSB1fhKyKUjV/Qi', NULL, '2022-08-12 22:16:10', '2022-08-12 22:16:10', 1, NULL, 1),
(14, 'admin', 'admin@gmail.com', '$2y$10$WwlCgUJGlrhfTtue.GTiXuahB7hochn.d0DjxLtaUJHQxjpBHeo9S', NULL, '2022-10-11 09:32:36', '2022-10-12 13:06:27', 2, NULL, 1),
(15, 'NhanVien', 'nhanvien@gmail.com', '$2y$10$kZO9uDJckLjjmfXfWMHKFebRpoTwvtj83kp9GS/FVQseBtAQBVZTi', NULL, '2022-10-12 12:46:36', '2022-10-12 12:46:36', 1, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(15, 'Xanh Đồng Nai', 'thuc-pham-xanh-dong-nai', 'huedang8714@gmail.com', '0983 234 714', NULL, 'www.xanhdongnai.vn', 'www.xanhdongnai.vn', 0, 1, NULL, NULL),
(17, 'Gia Sơn Phát', 'thuc-pham-gia-son-phat', 'giaosonphat23@gmail.com', '0983 341 533', NULL, 'www.giasonphat.vn', 'www.giasonphat.vn', 0, 1, NULL, NULL),
(18, 'Tân Khôi Nguyên', 'thuc-pham-tan-khoi-nguyen', 'tan-khoi-nguyent@gmail.com', '0983 341 533', NULL, 'www.giasonphat.vn', 'www.giasonphat.vn', 0, 1, NULL, NULL),
(19, 'Nghiệp Tân Việt', 'thuc-pham-nghiep-tan-viet', 'nghiep-tan-viet2@gmail.com', '0983 341 533', NULL, 'www.giasonphat.vn', 'www.giasonphat.vn', 0, 1, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `brands_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE;

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Chỉ mục cho bảng `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
