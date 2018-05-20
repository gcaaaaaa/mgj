-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-20 04:32:09
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `js1801`
--
CREATE DATABASE IF NOT EXISTS `js1801` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `js1801`;

-- --------------------------------------------------------

--
-- 表的结构 `jd`
--

CREATE TABLE `jd` (
  `sid` tinyint(10) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 NOT NULL,
  `price` double(10,0) NOT NULL,
  `num` tinyint(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `jd`
--

INSERT INTO `jd` (`sid`, `url`, `title`, `price`, `num`) VALUES
(1, 'https://img.alicdn.com/bao/uploaded/i1/T1.z1fFqdhXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '2015夏季网布透气情侣鞋速干溯溪鞋女魔徒步鞋轻便户外鞋男鞋女鞋', 52, 2),
(2, 'https://img.alicdn.com/bao/uploaded/i4/TB1G89uIpXXXXcMaXXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '滑水游泳鞋男女运动赤足贴肤软鞋沙滩鞋溯溪鞋涉水鞋厂家直销', 35, 0),
(3, 'https://img.alicdn.com/bao/uploaded/i3/TB1IcpbKXXXXXbiXpXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '溯溪鞋男鞋户外涉水鞋夏季透气防水防滑速干钓鱼漂流下水鞋沙滩鞋', 39, 10),
(4, 'https://img.alicdn.com/bao/uploaded/i1/T12W8QXn8jXXbot2I0_035218.jpg_200x200q90.jpg_.webp', '【正品翡翠A货生肖狗】正品十二生肖 礼品收藏 项坠吊坠', 18, 10),
(5, 'https://img.alicdn.com/bao/uploaded/i1/376500428/TB29JU0rFXXXXXAXpXXXXXXXXXX_!!376500428.jpg_200x200q90.jpg_.webp', '塑料鞋塑胶凉鞋男夏懒人鞋镂空大码洞洞鞋包头防滑沙滩鞋下水凉鞋', 25, 11),
(6, 'https://img.alicdn.com/bao/uploaded/i2/TB1gnADMpXXXXc4XVXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '断码清仓特价鞋户外情侣款透气鞋登山溯溪鞋男鞋女鞋速干鞋涉水鞋', 49, 12),
(7, 'https://img.alicdn.com/bao/uploaded/i3/21570110/TB218.Ie.hnpuFjSZFEXXX0PFXa_!!21570110.jpg_200x200q90.jpg_.webp', '清仓超轻溯溪鞋两栖鞋户外鞋徒步鞋涉水鞋透气断码女鞋3637', 31, 7),
(8, 'https://img.alicdn.com/bao/uploaded/i4/376500428/TB2tjc0rFXXXXcaXpXXXXXXXXXX_!!376500428.jpg_200x200q90.jpg_.webp', '溯溪鞋男排水鞋男洞洞鞋男生下水鞋大码溯溪男鞋速干钓鱼鞋鸟巢鞋', 43, 8),
(9, 'https://img.alicdn.com/bao/uploaded/i3/TB1ozBNFVXXXXbKaXXXXXXXXXXX_!!0-item_pic.jpg_200x200q90.jpg_.webp', '纯天然幽灵裸石吊坠红绿异像水晶 天然水晶事业水晶一物一图 包邮', 16, 8),
(10, 'https://img.alicdn.com/bao/uploaded/i4/TB1DXh7JVXXXXXjXFXXXXXXXXXX_!!2-item_pic.png_200x200q90.jpg_.webp', '包邮天然A货翡翠笑佛佛公翡翠佛公吊坠挂件男女翡翠吊坠佛公项链', 13, 12);

-- --------------------------------------------------------

--
-- 表的结构 `taobao2`
--

CREATE TABLE `taobao2` (
  `sid` tinyint(1) UNSIGNED NOT NULL,
  `url` varchar(300) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` double(20,0) NOT NULL,
  `num` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `taobao2`
--

INSERT INTO `taobao2` (`sid`, `url`, `title`, `price`, `num`) VALUES
(1, 'https://gma.alicdn.com/bao/uploaded/i1/1339806085667060065/TB24EFJXo3iyKJjSspnXXXbIVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', 'ESCVEL逃逸速度 2017ss OVERSIZE落肩宽松街ESCVEL逃逸速度 ', 179, 370),
(2, 'https://gma.alicdn.com/bao/uploaded/i1/TB1SSG6c1uSBuNjy1XcYXIYjFXa_M2.SS2_200x200.jpg_.webp', '2018夏季薄款高弹免烫个性撞色条纹裤蓝色运ESCVEL逃逸速度', 288, 56),
(3, 'https://gma.alicdn.com/bao/uploaded/i1/59649838/TB27ExzbkOWBuNjSsppXXXPgpXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', 'FLAM 官方网店嘻哈街舞潮牌国潮 无运动3M反ESCVEL逃逸速度', 179, 2201),
(4, 'https://gma.alicdn.com/bao/uploaded/i3/45867934/TB257gEkY1YBuNjSszhXXcUsFXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '夏季超薄速干运动裤男弹力收口宽松休闲裤ESCVEL逃逸速度', 98, 259),
(5, 'https://gma.alicdn.com/bao/uploaded/i2/126804350/TB26js1c7ZmBKNjSZPiXXXFNVXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '欧美潮牌休闲猫头印花短袖T恤男修身情侣T恤ESCVEL逃逸速度', 68, 385),
(6, 'https://gma.alicdn.com/bao/uploaded/i1/29974676/TB29TWZnVuWBuNjSszbXXcS7FXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '猩人类chic夏季2018新款短袖男t恤潮流学生ESCVEL逃逸速度', 88, 1),
(7, 'https://gma.alicdn.com/bao/uploaded/i3/29974676/TB2akPpnY1YBuNjSszhXXcUsFXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', '猩人类2018早春短袖男潮牌t恤潮流时尚欧美ESCVEL逃逸速度', 88, 3),
(8, 'https://gma.alicdn.com/bao/uploaded/i1/TB1mwWQl.R1BeNjy0FmYXH0wVXa_M2.SS2_200x200.jpg_.webp', '高端丝滑弹力男夏季薄款裤商务百搭西裤时尚ESCVEL逃逸速度', 288, 0),
(9, 'https://gma.alicdn.com/bao/uploaded/i1/59649838/TB2ZfNCX98YBeNkSnb4XXaevFXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', 'FLAM 官方网店嘻哈街舞潮牌国潮 多扣多袋条ESCVEL逃逸速度', 269, 2776),
(10, 'https://gma.alicdn.com/bao/uploaded/i2/59649838/TB2RPELauuSBuNjSsziXXbq8pXa_!!0-saturn_solar.jpg_200x200.jpg_.webp', 'FLAM 官方网店嘻哈街舞潮牌国潮 拉链多袋运ESCVEL逃逸速度', 287, 231);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `sid` tinyint(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pass` varchar(42) NOT NULL,
  `email` varchar(42) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jd`
--
ALTER TABLE `jd`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `taobao2`
--
ALTER TABLE `taobao2`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `taobao2`
--
ALTER TABLE `taobao2`
  MODIFY `sid` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `sid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;--
-- Database: `mgj`
--
CREATE DATABASE IF NOT EXISTS `mgj` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mgj`;

-- --------------------------------------------------------

--
-- 表的结构 `clss`
--

CREATE TABLE `clss` (
  `id` tinyint(5) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `clss`
--

INSERT INTO `clss` (`id`, `title`) VALUES
(1, '性感V领'),
(2, '喇叭袖'),
(3, '刺绣'),
(4, '俏皮露肩'),
(5, '绑带衬衫'),
(6, '条纹控'),
(7, '白衬衫'),
(8, '印花T恤'),
(9, '一字肩'),
(10, '情侣装'),
(11, '时髦皮衣');

-- --------------------------------------------------------

--
-- 表的结构 `cnxh`
--

CREATE TABLE `cnxh` (
  `id` tinyint(5) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `price` double(10,2) NOT NULL,
  `price1` double(10,2) NOT NULL,
  `url1` varchar(200) NOT NULL,
  `num` varchar(500) NOT NULL,
  `title1` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cnxh`
--

INSERT INTO `cnxh` (`id`, `url`, `title`, `price`, `price1`, `url1`, `num`, `title1`) VALUES
(1, 'http://s3.mogucdn.com/mlcdn/c45406/180415_6ka84k4cf8l4li2kfikc786kc2lfl_640x960.jpg_240x320.v1cAC.70.webp', '夏季百搭新款休闲人物印花甜美宽松小清新短袖T恤高腰显瘦包臀裙时尚个性开叉半身裙两件套装女', 99.00, 141.43, 'http://127.0.0.1/mgj/images/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '972', '找相似'),
(2, 'http://s3.mogucdn.com/mlcdn/c45406/180427_69g983c7cgbj27g8k4679fc3bk8je_640x960.jpg_240x320.v1cAC.70.webp', '可口可乐定制易拉罐生日礼物女生抖音热门礼物长罐无糖可乐创意', 23.89, 34.14, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '139', '找相似'),
(3, 'http://s3.mogucdn.com/b7/pic/150429/1hw2lk_ie2daylfgm4weytegazdambqgiyde_640x960.jpg_240x320.v1cAC.70.webp', '【送吊带】立领宽松亚麻衬衣', 39.00, 58.80, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '8282', '找相似'),
(4, 'http://s3.mogucdn.com/mlcdn/c45406/180227_30l52hfd1d053i4dhgjkdk792cdbk_640x960.jpg_240x320.v1cAC.70.webp', '【买2送10】学生补水美白防晒喷雾军训夏季常备隔离防晒霜正品清爽遮瑕防晒乳持久保湿蛋蛋喷', 49.90, 59.00, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '1.1w', '找相似'),
(5, 'http://s3.mogucdn.com/p1/160719/36434224_ifqwcojqgi4wgolehezdambqgyyde_640x960.jpg_240x320.v1cAC.70.webp', '屈臣氏热销过万！玛贝拉脱毛膏30g 温和无害轻松脱毛女全身腋下腿毛私处去毛', 17.60, 35.29, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '6.3w', '找相似'),
(6, 'http://s3.mogucdn.com/mlcdn/c45406/170602_6ag3e5lchc9daaaj4gcff333gal54_640x960.jpg_240x320.v1cAC.70.webp', '12个装浴室可爱粘胶挂钩 多功能厨房粘钩无痕墙壁挂钩创意壁挂', 11.90, 17.00, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '3370', '找相似'),
(7, 'http://s3.mogucdn.com/mlcdn/c45406/180311_3dflebh033k2j1bi79g1598jf3985_640x960.jpg_240x320.v1cAC.70.webp', '【加送3对眼膜】明星同款小迷糊玻尿酸补水竹炭清洁面膜21片', 62.00, 239.90, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '295', '找相似'),
(8, 'http://s3.mogucdn.com/mlcdn/c45406/180426_1j0i5fa5ak4ch14653l97daa23fli_640x960.jpg_240x320.v1cAC.70.webp', '2018夏季新款韩版百搭一字带凉鞋女细跟铆钉防水台露趾银色高跟鞋', 74.20, 106.00, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '229', '找相似'),
(9, 'http://s3.mogucdn.com/mlcdn/c45406/180312_19k2045hlkf9g4kjd4a4k85ei0bfi_640x960.jpg_240x320.v1cAC.70.webp', '春夏季新款仙女气质宽松雪纺衫打底荷叶边衬衫女上衣+简约百搭荷叶边设计感下摆A字伞型半身裙裤', 68.00, 98.58, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '1.2w', '找相似'),
(10, 'http://s3.mogucdn.com/mlcdn/c45406/180408_75de287l9kbfh410f0a186dkidhkf_640x960.jpg_240x320.v1cAC.70.webp', '夏季新款女装显瘦一字领露肩t恤女 短袖韩范小清新印花短袖上衣', 49.00, 75.38, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '1974', '找相似'),
(11, 'http://s3.mogucdn.com/mlcdn/55cf19/180228_4a21f38cii6a5g61bbk2dkl0a67g3_640x960.jpg_240x320.v1cAC.70.webp', '2018夏新款韩版牛仔七分裤大码女个性拼色显瘦百搭系带毛边裤', 69.90, 114.00, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '246', '找相似'),
(12, 'http://s3.mogucdn.com/p2/161126/163101809_5cg4j1851g23e8ff999cga1j3dh2a_640x960.jpg_240x320.v1cAC.70.webp', '迪奥香奈儿同款 香水持久淡香清新学生女士香水4件套', 25.20, 72.00, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '1572', '找相似'),
(13, 'http://s3.mogucdn.com/mlcdn/c45406/180428_0ljg1g5kldeelda2l32a4ji1lac52_640x850.jpg_240x320.v1cAC.70.webp', '2018夏季新款字母短袖T恤+宽松显瘦休闲裤德芙裤运动裤九分裤时尚套装两件套女\r\n2018夏季新款字母短袖T恤+宽松显瘦休闲裤德芙裤运动裤九分裤时尚套装两件套女\r\n2018夏季新款字母短袖T恤+宽松显瘦休闲裤德芙裤运动裤九分裤时尚套装两件套女', 56.00, 80.00, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '1.7w', '找相似'),
(14, 'http://s3.mogucdn.com/mlcdn/c45406/180417_0f5g1a20fed1fce806bbh3adj9ee2_640x960.jpg_240x320.v1cAC.70.webp', '洒水壶浇花壶小型喷壶家用喷水壶园艺养花工具小喷雾器气压式浇水', 12.80, 20.10, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '9', '找相似'),
(15, 'http://s3.mogucdn.com/mlcdn/c45406/180316_719fkl30he73fbkdbeig99kb81e02_640x960.jpg_240x320.v1cAC.70.webp', '卡名朵 2018春夏新品chic薄款宽松条纹阔腿裤 垂感百搭显瘦蝴蝶结系带直筒休闲裤', 49.80, 71.15, 'http://s18.mogucdn.com/p2/160908/upload_27g4f1ch6akie83hacb676j622b9l_32x30.png', '1762', '找相似');

-- --------------------------------------------------------

--
-- 表的结构 `dgtp`
--

CREATE TABLE `dgtp` (
  `id` tinyint(5) NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dgtp`
--

INSERT INTO `dgtp` (`id`, `url`) VALUES
(1, 'http://s10.mogucdn.com/mlcdn/c45406/180424_2ikae4b89910ejk2if8ci683a1900_940x300.png_600x9999.v1c7E.70.webp'),
(2, 'http://s10.mogucdn.com/mlcdn/c45406/180426_219al1b30e2la5ej2d0ahk45599aj_690x450.png_300x9999.v1c7E.70.webp'),
(3, 'http://s3.mogucdn.com/mlcdn/c45406/180404_3l0ghk0ehfd2kf4dc36eb7d991le6_460x300.png_300x9999.v1c7E.70.webp'),
(4, 'http://s3.mogucdn.com/mlcdn/c45406/180403_80abkf5308fb7d55idk46cicbbdfc_460x300.png_300x9999.v1c7E.70.webp');

-- --------------------------------------------------------

--
-- 表的结构 `dgtp1`
--

CREATE TABLE `dgtp1` (
  `id` tinyint(5) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dgtp1`
--

INSERT INTO `dgtp1` (`id`, `url`) VALUES
(1, 'http://s3.mogucdn.com/mlcdn/c45406/180404_0bkihfjla1d193ce64325lgj6e94d_940x226.png_940x226.v1cAC.70.webp'),
(2, 'http://s11.mogucdn.com/mlcdn/c45406/180330_776ifj652271c3b56jki7hjflhh97_920x452.png_460x226.v1cAC.70.webp'),
(3, 'http://s11.mogucdn.com/mlcdn/c45406/180330_64je2lbjdj59c1hk9d69e4d6j076j_920x452.png_460x226.v1cAC.70.webp');

-- --------------------------------------------------------

--
-- 表的结构 `djrm`
--

CREATE TABLE `djrm` (
  `id` tinyint(5) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `djrm`
--

INSERT INTO `djrm` (`id`, `title`) VALUES
(1, '夏上新'),
(2, 'oversizeT恤'),
(3, '衬衫'),
(4, 'T恤'),
(5, '入夏套装'),
(6, '长款T恤'),
(7, '轻薄针织'),
(8, '蕾丝top'),
(9, '防晒衫'),
(10, '印花T恤'),
(11, '甜美荷叶边'),
(12, '背心吊带'),
(13, '夏日花卉');

-- --------------------------------------------------------

--
-- 表的结构 `gwc`
--

CREATE TABLE `gwc` (
  `sid` tinyint(10) NOT NULL,
  `url` varchar(200) NOT NULL,
  `title` varchar(500) NOT NULL,
  `price` double(100,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gwc`
--

INSERT INTO `gwc` (`sid`, `url`, `title`, `price`) VALUES
(1, 'images/5440d612Nb61beccf.jpg', 'Apple iPad Air 2 平板电脑 9.7英寸（64G WLA/Touch ID技术', 3299.00),
(2, 'images/rBEhVVJ3VY8IAAAAAAG_9yE_xEwAAFBZQCT4x0AAcAP271.jpg', 'Apple iPad Air 平板电脑 9.7英寸（显示屏 MD', 2099.00),
(3, 'images/5440f42eN5b4677a6.jpg', 'Apple Mac mini台式电脑 内存/1TB 存2CH', 4988.00),
(4, 'images/5631d31eN50010b03.jpg', 'Apple MacBook Pro 13.3英寸笔记本电脑 银色(Core i5 闪存/)', 10788.00);

-- --------------------------------------------------------

--
-- 表的结构 `jrbq`
--

CREATE TABLE `jrbq` (
  `price1` double(10,2) NOT NULL,
  `price` double(10,2) NOT NULL,
  `title` varchar(500) NOT NULL,
  `url` varchar(500) NOT NULL,
  `id` tinyint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jrbq`
--

INSERT INTO `jrbq` (`price1`, `price`, `title`, `url`, `id`) VALUES
(128.00, 69.00, '【显瘦增高】韩版风甜美露趾厚底皮带扣休闲高跟一字扣带罗马凉鞋百搭夏季新款中跟女鞋运动型凉鞋', 'http://s3.mogucdn.com/mlcdn/c45406/180510_7f71bb4667dlj90lhgf6b8f5217j2_640x960.jpg_300x9999.v1c7E.70.webp', 3),
(99.00, 39.00, '厚底松糕鞋韩版学生百搭2018夏季新款软妹原宿风简约平底罗马凉鞋', 'http://s3.mogucdn.com/mlcdn/c45406/180430_3flij7d87cfa845e0791ad31671li_640x960.jpg_300x9999.v1c7E.70.webp', 4),
(131.00, 68.00, '百褶雪纺阔腿裤套装女神范夏季2018新款无袖V领T恤时尚网红两件套', 'http://s3.mogucdn.com/mlcdn/c45406/180505_5cebl85j6deia21bbl441eckjddk2_640x860.jpg_300x9999.v1c7E.70.webp', 2),
(50.00, 24.00, '2018夏季女装新款韩版t恤女短袖修身百搭露肩一字领显瘦上衣打底衫潮', 'http://s3.mogucdn.com/mlcdn/c45406/180427_8aij6da30e383cl62c030jffai209_640x960.jpg_300x9999.v1c7E.70.webp', 1);

-- --------------------------------------------------------

--
-- 表的结构 `jrbq1`
--

CREATE TABLE `jrbq1` (
  `id` tinyint(5) NOT NULL,
  `url` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `price` double(100,2) NOT NULL,
  `price1` double(100,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jrbq1`
--

INSERT INTO `jrbq1` (`id`, `url`, `title`, `price`, `price1`) VALUES
(1, 'http://s3.mogucdn.com/mlcdn/c45406/180502_80218643bekbc8j7hea1ge4hk4l2c_640x960.jpg_300x9999.v1c7E.webp', '复古韩版个性不规则单排扣高腰收腰显瘦镂空毛边露肩露背抹胸吊带无袖连衣裙', 69.00, 112.86),
(2, 'http://s3.mogucdn.com/mlcdn/c45406/180502_4ijhflai9l981kfg5kii01lfck9k9_640x960.jpg_300x9999.v1c7E.webp', '黑白格连短袖衣裙女2018夏季新款女装韩版气质V领修身收腰显瘦a字裙子', 59.00, 113.00),
(3, 'http://s3.mogucdn.com/mlcdn/c45406/180430_7g181813k573h160034e99ci730a3_640x960.jpg_300x9999.v1c7E.webp', '2018春夏优雅气质露肩木耳边松紧收腰显瘦百褶吊带网纱裙A字雪纺连衣裙子', 69.00, 165.00),
(4, 'http://s3.mogucdn.com/mlcdn/c45406/180427_6b9lghj6agfcf4l34fhfef93f5abj_640x960.jpg_300x9999.v1c7E.webp', '2018夏装新款v领高腰雪纺连衣裙女春季中长款显瘦a字裙冷淡风裙子', 58.00, 98.58);

-- --------------------------------------------------------

--
-- 表的结构 `jrbq2`
--

CREATE TABLE `jrbq2` (
  `id` tinyint(10) NOT NULL,
  `url` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `price` double(200,2) NOT NULL,
  `price1` double(200,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `jrbq2`
--

INSERT INTO `jrbq2` (`id`, `url`, `title`, `price`, `price1`) VALUES
(1, 'http://s3.mogucdn.com/mlcdn/c45406/180510_0ha15j0jgjgkbh17l740d15b1c912_640x960.jpg_300x9999.v1c7E.webp', '女装2018新款潮冷淡风刺绣长裙子显瘦碎花裙中长款雪纺连衣裙女夏', 79.90, 140.00),
(2, 'http://s3.mogucdn.com/mlcdn/c45406/180505_0gl9g25dhhg3aej7i55li3g8dgb0b_640x960.jpg_300x9999.v1c7E.webp', '2018夏季女装新款修身松紧腰中长裙喇叭袖不规则连衣裙时尚气质名媛印花雪纺连衣裙', 69.00, 127.00),
(3, 'http://s3.mogucdn.com/mlcdn/c45406/180505_7d425h2chk5de5i02hc3hc3gc9980_640x960.jpg_300x9999.v1c7E.webp', '欧洲站夏装女2018新款 欧货潮短袖圆领气质显瘦中长款牛仔连衣裙', 89.00, 155.72),
(4, 'http://s3.mogucdn.com/mlcdn/c45406/180507_85fl7eehb3j2k0g33i08hf3k69cbk_640x960.jpg_300x9999.v1c7E.webp', '夏季新款文艺chic韩版简约气质显瘦超仙撞色系带蝴蝶结冷淡风裙子中长款荷叶边雪纺连衣裙女潮', 78.00, 128.00);

-- --------------------------------------------------------

--
-- 表的结构 `leftlb`
--

CREATE TABLE `leftlb` (
  `id` tinyint(10) NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `leftlb`
--

INSERT INTO `leftlb` (`id`, `url`) VALUES
(1, 'http://s3.mogucdn.com/mlcdn/c45406/180416_0i949jikekeclgla7a0k9f325gkb7_230x555.png_750x9999.v1c7E.80.webp'),
(2, 'http://s10.mogucdn.com/mlcdn/c45406/180425_6hkj90e1311fe0elffgek2iih8g68_230x555.jpg_750x9999.v1c7E.80.webp');

-- --------------------------------------------------------

--
-- 表的结构 `lxxp`
--

CREATE TABLE `lxxp` (
  `id` tinyint(5) NOT NULL,
  `title` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `lxxp`
--

INSERT INTO `lxxp` (`id`, `title`) VALUES
(1, '防晒衬衫'),
(2, '字母T恤'),
(3, '时髦露肩'),
(4, '轻薄防晒'),
(5, '海军风'),
(6, '短款外套'),
(7, '针织开衫'),
(8, '雪纺衫'),
(9, '牛仔衬衫'),
(10, '休闲西装'),
(11, '马甲'),
(12, '短袖T恤');

-- --------------------------------------------------------

--
-- 表的结构 `register`
--

CREATE TABLE `register` (
  `id` tinyint(10) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `register`
--

INSERT INTO `register` (`id`, `username`, `password`, `email`) VALUES
(1, 'username', 'password', 'email'),
(2, 'username', 'password', 'email'),
(3, 'zhangsan', '123456', '123@132.31'),
(4, 'zhangsan', '123456', '123@132.31'),
(5, 'zhangsan', '123456', '123@132.31'),
(6, 'zhangsan', '123456', '123@132.31'),
(7, 'zhangsan', '123456', '123@132.31'),
(8, 'zhangsan', '123456', '123@132.31'),
(9, 'zhangsan', '123456', '123@132.31'),
(10, 'llishi', '25d55ad283aa400af464c76d713c07ad', '123@132'),
(11, 'www', 'fcea920f7412b5da7be0cf42b8c93759', '123@132'),
(12, 'wwww', 'fcea920f7412b5da7be0cf42b8c93759', '123@132'),
(13, 'wwwww', 'fcea920f7412b5da7be0cf42b8c93759', '2131'),
(14, 'wwwwww', 'df483402b9bfeb234717a32c6e86280e', 'wwwwww'),
(15, 'wwwwwwwwww', 'df483402b9bfeb234717a32c6e86280e', 'wwwwww'),
(16, 'wwwwwwwwwwwwww', 'fcea920f7412b5da7be0cf42b8c93759', '123@132'),
(17, 'gcgz', 'fcea920f7412b5da7be0cf42b8c93759', '123@132');

-- --------------------------------------------------------

--
-- 表的结构 `rmtx`
--

CREATE TABLE `rmtx` (
  `id` tinyint(5) NOT NULL,
  `title` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rmtx`
--

INSERT INTO `rmtx` (`id`, `title`, `price`, `url`) VALUES
(1, '热卖T恤', '早春新品29元起', 'http://s3.mogucdn.com/mlcdn/c45406/180330_4ejgl46lk37hhei8540ef468ab3bl_83x83.png_100x100.v1cAC.70.webp'),
(2, '春日美裙', '郊游必备单品', 'http://s3.mogucdn.com/mlcdn/c45406/180330_6k0ckfl20ii5b497bh1078d5hbl3a_83x83.png_100x100.v1cAC.70.webp'),
(3, '春季衬衫', '简约设计师款', 'http://s3.mogucdn.com/mlcdn/c45406/180402_8h1aj8i656bj8f34ac67i7il315ic_83x83.png_100x100.v1cAC.70.webp'),
(4, '韩版卫衣', '百搭必备', 'http://s3.mogucdn.com/mlcdn/c45406/180330_7j46ki0gid8kd0kekdadile917ekh_83x83.png_100x100.v1cAC.70.webp');

-- --------------------------------------------------------

--
-- 表的结构 `rxsp`
--

CREATE TABLE `rxsp` (
  `id` tinyint(10) NOT NULL,
  `url` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL,
  `price` double(200,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rxsp`
--

INSERT INTO `rxsp` (`id`, `url`, `title`, `price`) VALUES
(1, 'http://s3.mogucdn.com/p2/160813/109067813_321e057b744j4ibdj9dd9el46174g_640x960.jpg_180x180.v1cAC.70.webp', '2017韩版春季运动鞋休闲鞋女厚底板鞋女小白鞋女学生跑步鞋子', 39.00),
(2, 'http://s3.mogucdn.com/mlcdn/c45406/180214_7ei35j5l09ac9ki1h4e7d460j205g_640x960.jpg_180x180.v1cAC.70.webp', '林允儿同款小白鞋！韩版低帮夏季M字透气网球帆布鞋', 59.00),
(3, 'http://s3.mogucdn.com/p2/160812/44117588_2jj9af1719gegbh82dad2ib4l5l10_640x960.jpg_180x180.v1cAC.70.webp', '韩版新款明星同款时尚小白鞋学生运动板鞋低帮平底圆头休闲女鞋', 59.50),
(4, 'http://s3.mogucdn.com/mlcdn/c45406/170522_8b63e3ia95h08bck89c24ka2ba4dl_640x960.jpg_180x180.v1cAC.70.webp', '新款欧美风女鞋高跟浅口尖头闪耀亮片性感显瘦夜店高跟鞋单鞋婚鞋', 98.00);

-- --------------------------------------------------------

--
-- 表的结构 `rxsp1`
--

CREATE TABLE `rxsp1` (
  `id` tinyint(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `peice` double(200,2) NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rxsp1`
--

INSERT INTO `rxsp1` (`id`, `title`, `peice`, `url`) VALUES
(1, '2018韩版男士夹克夏季薄款外套夹克男韩版新款修身纯色百搭上衣休闲宽松立领棒球领简单款外衣', 69.30, 'http://s3.mogucdn.com/p1/160116/1xgwah_ifqwkzjvgi4demrsgyzdambqgyyde_640x960.jpg_180x180.v1cAC.webp'),
(2, '秋冬新款青年韩版修身学院风立领格子长袖衬衫男士经典百搭衬衣潮', 79.00, 'http://s3.mogucdn.com/p1/160703/92293155_ie4dsolemzsgenzyhezdambqgiyde_640x960.jpg_180x180.v1cAC.webp'),
(3, '夏季新款男士长袖衬衫韩版修身青年商务免烫大码短袖工装职业装', 55.30, 'http://s3.mogucdn.com/p2/160806/1y5e4j_0346kee7ef196d17gbaj2d63l268k_640x960.jpg_180x180.v1cAC.webp'),
(4, '2018春季新款圆领萝卜印花修身打底衫潮流男士体恤长袖T恤', 59.50, 'http://s3.mogucdn.com/p2/160911/140035687_42g7de9kkea2lhi41lijlihglijbj_640x960.jpg_180x180.v1cAC.webp');

-- --------------------------------------------------------

--
-- 表的结构 `rxsp2`
--

CREATE TABLE `rxsp2` (
  `id` tinyint(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `peice` double(200,2) NOT NULL,
  `url` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rxsp2`
--

INSERT INTO `rxsp2` (`id`, `title`, `peice`, `url`) VALUES
(1, '2018韩版男士夹克夏季薄款外套夹克男韩版新款修身纯色百搭上衣休闲宽松立领棒球领简单款外衣', 69.30, 'http://s3.mogucdn.com/p2/160802/99450585_6ldekk5eb4bhh46cgj05aiiegfgbg_640x960.jpg_180x180.v1cAC.webp'),
(2, '秋冬新款青年韩版修身学院风立领格子长袖衬衫男士经典百搭衬衣潮', 79.00, 'http://s3.mogucdn.com/mlcdn/c45406/170619_02223ec7il13hk8g1014dlchaegkl_640x960.jpg_180x180.v1cAC.webp'),
(3, '夏季新款男士长袖衬衫韩版修身青年商务免烫大码短袖工装职业装', 55.30, 'http://s3.mogucdn.com/mlcdn/c45406/180331_6dje5gfg8983c7adcbia84k4hl8ai_640x960.jpg_180x180.v1cAC.webp'),
(4, '2018春季新款圆领萝卜印花修身打底衫潮流男士体恤长袖T恤', 59.50, 'http://s3.mogucdn.com/mlcdn/c45406/170417_049b5k2k0ld215ed55j4046h157hf_640x880.jpg_180x180.v1cAC.webp');

-- --------------------------------------------------------

--
-- 表的结构 `sancnxh`
--

CREATE TABLE `sancnxh` (
  `id` tinyint(5) NOT NULL,
  `url` varchar(500) NOT NULL,
  `title` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `sancnxh`
--

INSERT INTO `sancnxh` (`id`, `url`, `title`) VALUES
(1, 'http://s3.mogucdn.com/p2/161002/72533580_75d4gbl0g719a1igak2ii1ff2gli5_640x960.jpg_100x100.v1cAC.70.webp', '韩版新款长袖白领职业装白衬衫修身显瘦OL打底衬衣女装上衣'),
(2, 'http://s3.mogucdn.com/mlcdn/c45406/180423_64i3h183953aj6619ba2a2l5eid2h_640x960.jpg_100x100.v1cAC.70.webp', '夏季女装新款韩版时尚百搭原宿风个性文字印花宽松短袖情侣装T恤学生显瘦打底衫体恤上衣潮'),
(3, 'http://s11.mogucdn.com/mlcdn/c45406/180304_25gl3ic5dblcgf92l9g9h435483ha_640x960.jpg_100x100.v1cAC.70.webp', '碎花雪纺衫短袖女2018春装新款七分喇叭袖印花雪纺上衣夏宽松小衫'),
(4, 'http://s3.mogucdn.com/mlcdn/c45406/180427_27ie2jjk7hh34g2c05965kklb2acc_640x960.jpg_100x100.v1cAC.70.webp', '2018夏季新款韩版高腰宽松显瘦不规则流苏牛仔裙女装毛边半身裙学院风A字裙时尚包臀裙子潮'),
(5, 'http://s3.mogucdn.com/mlcdn/c45406/180331_55c4f44lkkl7bj90d50dgbh332ba2_640x960.jpg_100x100.v1cAC.70.webp', '防晒衣女夏2018春夏新款韩版气质百搭宽松蝙蝠袖长袖中长款防晒衣薄款休闲外套女'),
(6, 'http://s3.mogucdn.com/mlcdn/c45406/180401_6hdi9fkc9ebklgi413k0a462dcc37_640x960.jpg_100x100.v1cAC.70.webp', '【两件46元】2018夏季韩版小女孩刺绣卡通圆领宽松百搭短袖T恤女上衣');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clss`
--
ALTER TABLE `clss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cnxh`
--
ALTER TABLE `cnxh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dgtp`
--
ALTER TABLE `dgtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dgtp1`
--
ALTER TABLE `dgtp1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `djrm`
--
ALTER TABLE `djrm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gwc`
--
ALTER TABLE `gwc`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `jrbq`
--
ALTER TABLE `jrbq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jrbq1`
--
ALTER TABLE `jrbq1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jrbq2`
--
ALTER TABLE `jrbq2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leftlb`
--
ALTER TABLE `leftlb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lxxp`
--
ALTER TABLE `lxxp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rmtx`
--
ALTER TABLE `rmtx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rxsp`
--
ALTER TABLE `rxsp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rxsp1`
--
ALTER TABLE `rxsp1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rxsp2`
--
ALTER TABLE `rxsp2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sancnxh`
--
ALTER TABLE `sancnxh`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `clss`
--
ALTER TABLE `clss`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `cnxh`
--
ALTER TABLE `cnxh`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `dgtp`
--
ALTER TABLE `dgtp`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `dgtp1`
--
ALTER TABLE `dgtp1`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `djrm`
--
ALTER TABLE `djrm`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `gwc`
--
ALTER TABLE `gwc`
  MODIFY `sid` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `jrbq`
--
ALTER TABLE `jrbq`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `jrbq1`
--
ALTER TABLE `jrbq1`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `jrbq2`
--
ALTER TABLE `jrbq2`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `leftlb`
--
ALTER TABLE `leftlb`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `lxxp`
--
ALTER TABLE `lxxp`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `register`
--
ALTER TABLE `register`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `rmtx`
--
ALTER TABLE `rmtx`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `rxsp`
--
ALTER TABLE `rxsp`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `rxsp1`
--
ALTER TABLE `rxsp1`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `rxsp2`
--
ALTER TABLE `rxsp2`
  MODIFY `id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `sancnxh`
--
ALTER TABLE `sancnxh`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
