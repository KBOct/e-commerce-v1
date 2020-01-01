-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 01, 2020 at 05:31 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_149244D312469DE2` (`category_id`),
  KEY `IDX_149244D34584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6EEAA67DA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commande_product`
--

DROP TABLE IF EXISTS `commande_product`;
CREATE TABLE IF NOT EXISTS `commande_product` (
  `commande_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`commande_id`,`product_id`),
  KEY `IDX_25F1760D82EA2E54` (`commande_id`),
  KEY `IDX_25F1760D4584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
CREATE TABLE IF NOT EXISTS `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C53D045F4584665A` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=664 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `product_id`, `url`, `caption`) VALUES
(563, 181, 'https://lorempixel.com/640/480/?42161', 'Reprehenderit sed qui dolorem possimus ea suscipit alias ipsum.'),
(564, 181, 'https://lorempixel.com/640/480/?47964', 'Tenetur et voluptatem nobis omnis molestias odit.'),
(565, 181, 'https://lorempixel.com/640/480/?88636', 'Accusamus praesentium cumque dolore similique ut alias aliquam.'),
(566, 182, 'https://lorempixel.com/640/480/?98467', 'Aut iure ut ut et.'),
(567, 182, 'https://lorempixel.com/640/480/?71618', 'Aut quo fugit ut dolor praesentium aliquid odit.'),
(568, 182, 'https://lorempixel.com/640/480/?30973', 'Iste quo aut explicabo asperiores fugiat quis quia culpa.'),
(569, 183, 'https://lorempixel.com/640/480/?55830', 'Labore dolorem dolorum saepe facilis atque culpa mollitia.'),
(570, 183, 'https://lorempixel.com/640/480/?91280', 'Ipsam alias odit necessitatibus omnis harum unde culpa rerum.'),
(571, 183, 'https://lorempixel.com/640/480/?44636', 'Eum qui explicabo hic beatae dicta.'),
(572, 184, 'https://lorempixel.com/640/480/?75402', 'Voluptate harum maiores quis adipisci.'),
(573, 184, 'https://lorempixel.com/640/480/?92568', 'Fuga facilis ut facilis perferendis sed saepe ea doloribus.'),
(574, 185, 'https://lorempixel.com/640/480/?25984', 'Veniam dolore et velit eum saepe.'),
(575, 185, 'https://lorempixel.com/640/480/?52236', 'Temporibus fugiat consectetur officiis et.'),
(576, 185, 'https://lorempixel.com/640/480/?35214', 'Enim sunt aut est sint vero quaerat iste.'),
(577, 185, 'https://lorempixel.com/640/480/?49923', 'In tempora sint distinctio qui.'),
(578, 186, 'https://lorempixel.com/640/480/?49551', 'Consequatur aut qui aperiam asperiores.'),
(579, 186, 'https://lorempixel.com/640/480/?46212', 'Iusto iste voluptatem et quam.'),
(580, 186, 'https://lorempixel.com/640/480/?72927', 'Earum sed quis sed voluptas eos cupiditate.'),
(581, 187, 'https://lorempixel.com/640/480/?11284', 'Perferendis maiores voluptate ex perferendis aliquid quisquam nesciunt.'),
(582, 187, 'https://lorempixel.com/640/480/?15253', 'Voluptas consequatur soluta eligendi.'),
(583, 187, 'https://lorempixel.com/640/480/?66200', 'Praesentium consequatur aut repellat pariatur ut quaerat illo.'),
(584, 187, 'https://lorempixel.com/640/480/?58407', 'Cum voluptatem aut amet in ipsam magnam.'),
(585, 187, 'https://lorempixel.com/640/480/?37946', 'Atque vel modi esse vel odio.'),
(586, 188, 'https://lorempixel.com/640/480/?21896', 'Dolor sit distinctio rerum et aliquid repellendus sint.'),
(587, 188, 'https://lorempixel.com/640/480/?74786', 'Voluptatum ut est aut occaecati numquam sed numquam.'),
(588, 188, 'https://lorempixel.com/640/480/?23838', 'Eius facilis sed pariatur quod.'),
(589, 188, 'https://lorempixel.com/640/480/?42585', 'Adipisci minus voluptas cum quibusdam reprehenderit architecto et.'),
(590, 189, 'https://lorempixel.com/640/480/?30309', 'Perspiciatis maxime similique et voluptatem accusamus expedita.'),
(591, 189, 'https://lorempixel.com/640/480/?77029', 'Ab aliquid voluptatem aut esse ut dolor.'),
(592, 189, 'https://lorempixel.com/640/480/?23618', 'Vero voluptas ad labore repellat non.'),
(593, 189, 'https://lorempixel.com/640/480/?74628', 'Praesentium placeat quia qui nobis natus.'),
(594, 190, 'https://lorempixel.com/640/480/?44011', 'Adipisci et magnam quasi doloribus.'),
(595, 190, 'https://lorempixel.com/640/480/?78241', 'Voluptatem et dolor minus quia officiis eligendi aut.'),
(596, 190, 'https://lorempixel.com/640/480/?28418', 'Quam voluptatum voluptate et nesciunt.'),
(597, 190, 'https://lorempixel.com/640/480/?96408', 'Voluptatum quod aut nihil non odio facere deleniti.'),
(598, 190, 'https://lorempixel.com/640/480/?16840', 'Quia recusandae exercitationem ea ea.'),
(599, 191, 'https://lorempixel.com/640/480/?39451', 'Quibusdam et corporis et facere eum.'),
(600, 191, 'https://lorempixel.com/640/480/?87486', 'Illum omnis alias consequatur est id facere.'),
(601, 191, 'https://lorempixel.com/640/480/?51841', 'Ea veritatis aut quod magni soluta quia voluptas.'),
(602, 191, 'https://lorempixel.com/640/480/?52874', 'Alias et sapiente dolor error.'),
(603, 191, 'https://lorempixel.com/640/480/?14101', 'Illum perferendis est sapiente ea ducimus necessitatibus sequi.'),
(604, 192, 'https://lorempixel.com/640/480/?82948', 'Aut commodi quia mollitia.'),
(605, 192, 'https://lorempixel.com/640/480/?48725', 'Aut aut voluptatum ut qui qui.'),
(606, 193, 'https://lorempixel.com/640/480/?79482', 'Nostrum eum aut sed enim.'),
(607, 193, 'https://lorempixel.com/640/480/?42236', 'Molestiae et quo aliquam quia facere sint nihil.'),
(608, 193, 'https://lorempixel.com/640/480/?11622', 'Non maiores dolorem optio et voluptatem nesciunt sint.'),
(609, 193, 'https://lorempixel.com/640/480/?18160', 'Iste sequi deserunt et est et dignissimos est ut.'),
(610, 194, 'https://lorempixel.com/640/480/?31157', 'Et facilis porro natus inventore rerum neque soluta.'),
(611, 194, 'https://lorempixel.com/640/480/?96831', 'Omnis dicta est iure rerum et et.'),
(612, 195, 'https://lorempixel.com/640/480/?19594', 'Dolor ut ad at accusamus.'),
(613, 195, 'https://lorempixel.com/640/480/?40357', 'Et maxime consectetur esse et quo.'),
(614, 195, 'https://lorempixel.com/640/480/?21615', 'Voluptatem praesentium qui voluptas.'),
(615, 196, 'https://lorempixel.com/640/480/?86249', 'Quisquam neque alias vitae aut.'),
(616, 196, 'https://lorempixel.com/640/480/?37979', 'At debitis id non eligendi sit ab commodi animi.'),
(617, 196, 'https://lorempixel.com/640/480/?27941', 'Consequatur quos tenetur autem est facere assumenda velit.'),
(618, 196, 'https://lorempixel.com/640/480/?38308', 'Error alias deserunt atque maiores voluptatem voluptatibus.'),
(619, 197, 'https://lorempixel.com/640/480/?20494', 'Quis recusandae quis sequi quia.'),
(620, 197, 'https://lorempixel.com/640/480/?66867', 'Qui voluptas culpa nostrum officiis qui commodi quia.'),
(621, 198, 'https://lorempixel.com/640/480/?55089', 'Est aut esse quia aliquam aut minima dolorem.'),
(622, 198, 'https://lorempixel.com/640/480/?86105', 'Dignissimos praesentium itaque tempore ut.'),
(623, 198, 'https://lorempixel.com/640/480/?42408', 'Officia alias beatae quam quisquam enim velit dolor.'),
(624, 198, 'https://lorempixel.com/640/480/?57326', 'Dicta vero doloremque nihil nam numquam doloremque earum.'),
(625, 198, 'https://lorempixel.com/640/480/?44697', 'Earum sunt pariatur rem mollitia quidem itaque nesciunt.'),
(626, 199, 'https://lorempixel.com/640/480/?44793', 'Nihil unde tenetur delectus repellendus qui sequi.'),
(627, 199, 'https://lorempixel.com/640/480/?32205', 'Voluptas in aut ut minima cupiditate.'),
(628, 200, 'https://lorempixel.com/640/480/?43531', 'Repellat ratione ab aut sed quisquam dicta et.'),
(629, 200, 'https://lorempixel.com/640/480/?87455', 'Asperiores nobis ea velit omnis.'),
(630, 201, 'https://lorempixel.com/640/480/?83238', 'In culpa quod id natus qui totam qui.'),
(631, 201, 'https://lorempixel.com/640/480/?39242', 'Aliquam et aut quia porro sit eum incidunt.'),
(632, 201, 'https://lorempixel.com/640/480/?28424', 'Quos eligendi aut asperiores tenetur sapiente consectetur laborum.'),
(633, 201, 'https://lorempixel.com/640/480/?31794', 'Nostrum sunt velit at quas.'),
(634, 202, 'https://lorempixel.com/640/480/?85006', 'Et aut eveniet sunt enim dolor quasi minus.'),
(635, 202, 'https://lorempixel.com/640/480/?51094', 'Nihil repudiandae necessitatibus voluptatibus necessitatibus voluptatem dolorem quis.'),
(636, 203, 'https://lorempixel.com/640/480/?71811', 'Beatae aliquam sed asperiores ad.'),
(637, 203, 'https://lorempixel.com/640/480/?49442', 'Sapiente ab quia et et.'),
(638, 204, 'https://lorempixel.com/640/480/?87386', 'Asperiores soluta porro provident et sed.'),
(639, 204, 'https://lorempixel.com/640/480/?65784', 'Non rerum consequuntur et qui laboriosam ea omnis quos.'),
(640, 204, 'https://lorempixel.com/640/480/?98600', 'Dolores reprehenderit qui ut rerum enim.'),
(641, 204, 'https://lorempixel.com/640/480/?76893', 'Pariatur ipsum illo vel et repellat ad.'),
(642, 205, 'https://lorempixel.com/640/480/?39469', 'Suscipit non sapiente odit molestias in ut sapiente.'),
(643, 205, 'https://lorempixel.com/640/480/?53993', 'Non aut quo aliquid.'),
(644, 205, 'https://lorempixel.com/640/480/?66710', 'Repellat quia dicta dolorum ipsum labore sed.'),
(645, 205, 'https://lorempixel.com/640/480/?31553', 'Quis officia id id quis distinctio.'),
(646, 206, 'https://lorempixel.com/640/480/?97491', 'Sed sit rerum qui ducimus.'),
(647, 206, 'https://lorempixel.com/640/480/?46487', 'Totam laudantium tenetur aut autem.'),
(648, 206, 'https://lorempixel.com/640/480/?69927', 'Porro perferendis minima non et.'),
(649, 206, 'https://lorempixel.com/640/480/?27565', 'Perspiciatis voluptas laboriosam aut et alias rem ea tempora.'),
(650, 207, 'https://lorempixel.com/640/480/?74020', 'Mollitia voluptatem quas deserunt et et.'),
(651, 207, 'https://lorempixel.com/640/480/?10964', 'Non atque eos aspernatur est.'),
(652, 207, 'https://lorempixel.com/640/480/?28111', 'Corrupti totam doloribus voluptatem voluptates qui incidunt adipisci.'),
(653, 208, 'https://lorempixel.com/640/480/?32781', 'Nesciunt explicabo dolores placeat iste ut qui.'),
(654, 208, 'https://lorempixel.com/640/480/?99030', 'Sequi nesciunt voluptates reprehenderit magni.'),
(655, 208, 'https://lorempixel.com/640/480/?17648', 'Quos fuga ex saepe occaecati at eaque.'),
(656, 208, 'https://lorempixel.com/640/480/?14277', 'Quas exercitationem perspiciatis hic aut nihil doloremque.'),
(657, 209, 'https://lorempixel.com/640/480/?20117', 'Nobis sit nobis nemo maiores modi itaque rem.'),
(658, 209, 'https://lorempixel.com/640/480/?14649', 'Illum porro laborum dolorem voluptatem velit.'),
(659, 209, 'https://lorempixel.com/640/480/?15372', 'Sed autem voluptatum officia quos.'),
(660, 210, 'https://lorempixel.com/640/480/?71220', 'Quaerat iusto occaecati adipisci est totam itaque.'),
(661, 210, 'https://lorempixel.com/640/480/?24369', 'Id nihil dolorem aut ut nisi fuga harum odit.'),
(662, 210, 'https://lorempixel.com/640/480/?68073', 'Est nobis pariatur dicta.'),
(663, 210, 'https://lorempixel.com/640/480/?31922', 'Ut quam dolorem libero quia similique reiciendis.');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191231085810', '2019-12-31 17:04:20'),
('20191231170614', '2019-12-31 17:06:48'),
('20191231171423', '2019-12-31 17:14:47'),
('20200101120220', '2020-01-01 12:02:40'),
('20200101170830', '2020-01-01 17:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `description`, `name`, `slug`, `is_deleted`, `quantity`, `price`, `photo`, `introduction`) VALUES
(181, '<p>Ratione atque distinctio ut tempore. Praesentium quae autem quae sed tenetur fugiat nihil nostrum. Quia magni quisquam eos perferendis dolor.</p><p>Cumque libero sit voluptatibus doloremque deleniti nobis est adipisci. Omnis nam architecto illum possimus est. Eaque ut voluptates aut quae sed et consequuntur. Odio nihil dignissimos eius corporis.</p><p>Maxime tempora a consectetur eligendi eos rerum facere asperiores. Quos consequuntur voluptatem earum excepturi blanditiis nihil. Doloremque qui dolores optio accusamus. Saepe fugiat in enim aut. Ipsa repellendus nulla voluptas quas est doloribus beatae.</p>', 'Quibusdam nam deserunt consequuntur dicta expedita blanditiis.', 'quibusdam-nam-deserunt-consequuntur-dicta-expedita-blanditiis', 0, 4, 5, 'https://lorempixel.com/300/300/?72016', 'Enim asperiores vitae sunt voluptatem ullam aut. Nulla est minima inventore autem harum numquam debitis voluptate. Sed dolorem repudiandae molestiae quidem.'),
(182, '<p>Est quia suscipit sit velit labore. Quaerat eius qui maiores quia praesentium veniam qui. Est rerum pariatur rem repellat. Adipisci et et laborum enim.</p><p>Minima sed quia rerum aut exercitationem. Et nisi non cumque et debitis molestiae et. Error sit similique aut iusto enim sed. Eum consequatur magnam et nesciunt rerum dolores cupiditate.</p><p>Quis exercitationem ea eius a nam. Eos molestiae placeat voluptas beatae. Minima atque et qui sed. Incidunt aut pariatur veniam voluptatibus provident et voluptatum.</p>', 'Explicabo iste quibusdam architecto atque consequuntur nisi voluptates.', 'explicabo-iste-quibusdam-architecto-atque-consequuntur-nisi-voluptates', 0, 86, 94, 'https://lorempixel.com/300/300/?75676', 'Rerum exercitationem laudantium molestiae ipsa eos aut est. Fuga est rerum provident rerum ut et reprehenderit neque. Quis amet rerum nesciunt dolores mollitia ipsa in impedit.'),
(183, '<p>Ipsam distinctio dolore expedita reprehenderit. Ut nihil minima itaque non libero ut est nihil. Aperiam nemo eum culpa vel quasi voluptatem nesciunt ut. Aliquam et ullam voluptate rerum alias fuga.</p><p>Placeat eveniet saepe modi fugiat saepe. Quis sed quia adipisci. Magnam enim sequi distinctio exercitationem vero ut molestiae et.</p><p>Autem assumenda laborum in aliquam laborum sed. Rem sed assumenda dicta ab assumenda ratione minus. Optio et ut culpa. Dolor modi sit aut sed aperiam ut.</p>', 'Laudantium eum iusto ut numquam.', 'laudantium-eum-iusto-ut-numquam', 0, 29, 97, 'https://lorempixel.com/300/300/?81897', 'Error aliquid ullam molestiae fugit similique recusandae esse earum. Autem non est qui eaque quod. Eveniet quibusdam vero autem natus est architecto earum.'),
(184, '<p>Ut explicabo facilis magnam sit numquam. Autem reprehenderit quae qui dolores autem. Odio quo eos eius nisi aut. Aliquam explicabo atque recusandae excepturi id.</p><p>Soluta non voluptas ad corporis. Repudiandae consequatur deserunt quasi eaque. Animi eum nisi occaecati et magnam. Impedit culpa consequatur delectus molestiae aut at nemo.</p><p>Recusandae explicabo delectus similique. Quo eaque nobis sit dolore enim laborum. Quis id perferendis qui sit voluptatem alias rerum.</p>', 'Ratione quia optio ut sit omnis praesentium est.', 'ratione-quia-optio-ut-sit-omnis-praesentium-est', 0, 11, 40, 'https://lorempixel.com/300/300/?95905', 'Laborum sed consequuntur quo id. Sunt qui enim debitis tempore molestias nisi qui et.'),
(185, '<p>Quis aut laborum dignissimos ut nesciunt delectus laudantium reiciendis. Aut quos vitae nihil qui minima qui. Eveniet nisi mollitia velit aut enim cupiditate.</p><p>Officiis qui corrupti corrupti aut magnam. Molestiae dicta sit fugiat odit quia ducimus. Quis laborum voluptatem ab autem.</p><p>Et enim aut vero nisi modi excepturi. Impedit asperiores aut possimus explicabo. Repellendus quia ex quia rerum.</p>', 'Aut autem ea nulla laboriosam error vel corporis ratione.', 'aut-autem-ea-nulla-laboriosam-error-vel-corporis-ratione', 0, 1, 24, 'https://lorempixel.com/300/300/?35000', 'Impedit numquam sed officia aut molestiae impedit qui. Sed cupiditate ex et officia. Ipsum non est at.'),
(186, '<p>Et ab consequatur iste numquam. Et vel commodi quos corporis velit. Ipsa harum nam repellendus voluptatem officia.</p><p>Voluptatem magni suscipit rerum doloremque. Distinctio vel aperiam aspernatur laudantium repellat dolor harum. Perferendis placeat sit non ut. Atque corrupti quos itaque illum omnis rerum.</p><p>In hic ipsa non beatae aliquam quaerat qui. Accusamus necessitatibus repellendus accusamus iusto exercitationem. Culpa odio necessitatibus maxime reiciendis. Iste autem in velit rerum.</p>', 'Eaque vel consequatur illum excepturi quos cupiditate.', 'eaque-vel-consequatur-illum-excepturi-quos-cupiditate', 0, 69, 41, 'https://lorempixel.com/300/300/?89042', 'Suscipit et ipsum iusto optio quidem. Alias ut quisquam facere debitis.'),
(187, '<p>Et et aliquam nemo similique voluptatem. Expedita ipsum non placeat. Est aspernatur ut fugiat eligendi et. Voluptas minima vero qui eius est illo.</p><p>Quod voluptatibus velit similique molestias voluptatem. Unde officiis et rerum recusandae corrupti reprehenderit.</p><p>Eos veniam autem consequatur ab id ex modi tempora. Consectetur possimus at hic quibusdam. Aut sint numquam expedita quasi et qui omnis. Et aliquid in nesciunt quis sit eligendi.</p>', 'Eius fugit facilis deserunt enim id et molestiae.', 'eius-fugit-facilis-deserunt-enim-id-et-molestiae', 0, 45, 68, 'https://lorempixel.com/300/300/?22747', 'Nobis quia a repudiandae quas quam qui. Ut nostrum libero laboriosam deserunt harum. Optio aut similique voluptates illum ipsa.'),
(188, '<p>Ut natus autem qui illum rerum. Hic molestiae placeat quasi placeat nihil. Placeat omnis dignissimos voluptas nihil.</p><p>Minus delectus sit enim est odio est ut. Ipsum sed in quae. Repudiandae omnis odit sunt et. Similique est voluptatem quidem reiciendis suscipit et consequatur.</p><p>Delectus nobis repellat dolorum iusto sint dolorem. Debitis consequatur hic voluptas repellendus. Qui nam non consequuntur rerum esse officiis. Harum sed minus aliquam aut.</p>', 'Quos qui est deserunt nesciunt dolores dolor.', 'quos-qui-est-deserunt-nesciunt-dolores-dolor', 0, 32, 36, 'https://lorempixel.com/300/300/?58534', 'Impedit soluta placeat in eligendi non. Est aspernatur explicabo consequatur voluptas ad maiores. Neque similique deleniti molestiae vitae animi expedita.'),
(189, '<p>Sint consequatur eveniet vel quibusdam vero quasi nihil ipsum. Libero enim qui ea minima repellat sit. Vel sed rerum temporibus inventore est vel. Est consectetur enim rerum quis mollitia nostrum consectetur.</p><p>Velit reprehenderit consequatur mollitia nihil porro. Qui quo excepturi et. Magnam voluptas fuga est perspiciatis.</p><p>Deleniti id esse voluptas minima aperiam. Consequatur voluptate non velit omnis quis nemo. Necessitatibus voluptas iure quae sit non a.</p>', 'Qui soluta fugiat distinctio dolor cupiditate veritatis voluptas consequatur.', 'qui-soluta-fugiat-distinctio-dolor-cupiditate-veritatis-voluptas-consequatur', 0, 73, 46, 'https://lorempixel.com/300/300/?70441', 'Dolorem doloribus assumenda nisi est ea. Minus voluptatem fuga quo deserunt maxime et alias.'),
(190, '<p>Beatae necessitatibus delectus quaerat voluptatem. Et aut qui ea aperiam quibusdam. Quis quidem laudantium maxime dolores reprehenderit.</p><p>Eos ut facilis quia aut fugit eaque illo. Ea accusamus deserunt corporis vero possimus omnis. Ipsum alias officiis neque necessitatibus exercitationem aut illum quis.</p><p>Placeat facilis minus nulla et nisi voluptas rem. Voluptatem voluptas esse recusandae omnis sit consequuntur. Delectus esse dolorum minima quia iusto alias. Distinctio molestias iure et ut distinctio qui.</p>', 'Qui ipsam numquam eos architecto.', 'qui-ipsam-numquam-eos-architecto', 0, 88, 32, 'https://lorempixel.com/300/300/?50217', 'Soluta odio error aut architecto voluptatem atque. Facere aut unde explicabo et maxime. Est molestias dolorem vitae possimus occaecati odit consequatur.'),
(191, '<p>Exercitationem tenetur rerum voluptatum aut quaerat quis quia. Reiciendis esse non odio autem blanditiis accusantium quibusdam minus. Natus voluptatibus voluptatibus sunt molestiae quos rerum accusamus.</p><p>Qui numquam dolorem sint et. Illum deleniti voluptates sed occaecati voluptatibus. Est laboriosam iusto qui vitae ut.</p><p>Quae odit modi ullam. Non impedit magni quia nisi ea. Animi aut provident sunt ea labore rerum.</p>', 'Qui sapiente enim sit officiis quia.', 'qui-sapiente-enim-sit-officiis-quia', 0, 81, 15, 'https://lorempixel.com/300/300/?38480', 'Qui itaque dolorem aspernatur aut. Quaerat autem dolor pariatur voluptatem qui deserunt ut. Labore earum nemo iusto itaque.'),
(192, '<p>Dolores molestiae beatae sint quisquam. Autem sit voluptates et maiores ut ipsam.</p><p>Eum a voluptas et est deserunt iusto et. Molestias et ullam exercitationem magnam quod quia. Quas at voluptates ut corrupti. Consectetur asperiores ratione adipisci rem.</p><p>Atque totam tempore doloremque est porro optio. Ratione laboriosam doloribus alias rem et ullam est. Porro quod sed sunt architecto. Qui ipsum qui saepe at.</p>', 'Maiores modi officia natus ipsa repellendus culpa unde.', 'maiores-modi-officia-natus-ipsa-repellendus-culpa-unde', 0, 68, 19, 'https://lorempixel.com/300/300/?11360', 'Et eos impedit nemo quidem dolores rerum accusantium. Excepturi laborum ut maiores quia aut ipsa rerum. Quidem facere voluptatem qui perspiciatis rem illum.'),
(193, '<p>Qui ea voluptatem non quod. Reiciendis nisi soluta perferendis architecto consequatur ab. Vero rerum debitis placeat nobis voluptatem est.</p><p>Excepturi et itaque qui doloribus quia ex blanditiis. Est expedita nostrum consequuntur. Ad et error rem cupiditate optio ducimus quia. Eos ut omnis consequatur sit autem sit quis. Dolores aut et quam dolor placeat.</p><p>Molestiae est error minus ipsam. Consequatur architecto voluptas eos voluptatem ut autem. Cum aut ipsam nesciunt sit et incidunt consequatur. Voluptates saepe laborum aperiam ex nostrum explicabo.</p>', 'Debitis qui in aliquid totam sit iste.', 'debitis-qui-in-aliquid-totam-sit-iste', 0, 46, 74, 'https://lorempixel.com/300/300/?87018', 'Eum est quis dolorem magni in. Sit quia qui fugiat vero. Quis et ipsa nulla.'),
(194, '<p>Quia cupiditate maiores perspiciatis quis quia veniam. Alias iusto excepturi ab ut laudantium sit nesciunt. Vel et perspiciatis molestiae impedit voluptatem earum.</p><p>Quibusdam est itaque laudantium est sequi minima unde. Dolorem qui ut sit alias non magni. Eaque maxime est ipsam est qui eaque. Fuga cupiditate quis quia et qui fugiat.</p><p>Consequatur veritatis ut exercitationem officia ea. Itaque aut ea exercitationem saepe earum quos. Qui temporibus excepturi unde.</p>', 'Iure quibusdam voluptatem non delectus facere dolorem.', 'iure-quibusdam-voluptatem-non-delectus-facere-dolorem', 0, 44, 59, 'https://lorempixel.com/300/300/?64962', 'Molestiae quos ea perferendis. Molestias blanditiis pariatur occaecati provident aut. Voluptatem molestiae fugit ullam molestiae similique tenetur rem delectus.'),
(195, '<p>Ut omnis velit reprehenderit numquam doloribus. Quia et perspiciatis accusamus saepe ex rem nam. Quod eum odio ab voluptatibus nulla unde sed. Id culpa nihil ut tenetur aut nemo.</p><p>Excepturi voluptatibus quasi consequatur sint dolores sapiente assumenda pariatur. Harum vitae quas suscipit repudiandae aut nobis. Fugiat nobis repellendus voluptatem commodi.</p><p>Sint quod aliquid ab facilis qui voluptatum quo consequatur. Ducimus voluptatum ad harum sunt nihil error. Et repellendus alias dignissimos natus sunt.</p>', 'Ut culpa rerum ratione et accusamus.', 'ut-culpa-rerum-ratione-et-accusamus', 0, 61, 12, 'https://lorempixel.com/300/300/?31550', 'Molestiae qui quae et inventore. Dignissimos ex et illum enim neque reiciendis nemo.'),
(196, '<p>Voluptate ut voluptatem natus sit. In accusantium quam sunt aliquam consequatur animi ab quas. Eius omnis possimus corrupti odit. Quia quis illum sunt. Eveniet modi assumenda magnam mollitia sed quam perspiciatis.</p><p>Ipsum enim natus dolorum non quae vel minus minima. Et molestias molestias velit debitis perferendis. Provident similique possimus consequatur autem sapiente quaerat. Nulla quasi fuga eum saepe vel et.</p><p>Officiis consectetur minima rerum dolorem recusandae. Optio dolores ut aut in qui.</p>', 'Aliquam repudiandae quos dolor voluptatibus.', 'aliquam-repudiandae-quos-dolor-voluptatibus', 0, 52, 6, 'https://lorempixel.com/300/300/?11470', 'Consequatur cumque itaque consequuntur officiis earum nulla rem. Cumque eos praesentium eum natus aut similique. Et sit ea et quo repellendus libero consequatur sequi.'),
(197, '<p>Tenetur et sit esse rerum commodi nam dicta et. Repellendus molestias deserunt ut est. Consequatur ratione ut sunt.</p><p>Iusto consequuntur ullam porro et illum quaerat itaque. Excepturi blanditiis similique eius error voluptatem quasi qui. Tenetur atque rerum dolorum in qui.</p><p>Ut commodi at tenetur blanditiis similique occaecati illum odio. Dignissimos quis nisi id. Deleniti nihil aut reiciendis neque nobis. Et laboriosam odit consectetur.</p>', 'Nemo et dolorem neque autem consequatur.', 'nemo-et-dolorem-neque-autem-consequatur', 0, 66, 55, 'https://lorempixel.com/300/300/?14603', 'Quisquam laboriosam veniam repudiandae architecto. Natus reprehenderit harum temporibus et nihil velit omnis. Rerum delectus in laboriosam minus ut nostrum.'),
(198, '<p>Perferendis earum beatae accusantium vel. Aut mollitia quia ad eum repudiandae nemo voluptatem.</p><p>Minima explicabo distinctio qui delectus error incidunt tenetur vitae. Error repudiandae quibusdam non velit. Velit nemo commodi cumque amet molestiae. Quod velit dolor ducimus omnis sequi laudantium.</p><p>Quidem ullam voluptas cum voluptatem voluptas. Quia amet nihil ad quisquam pariatur deserunt quisquam.</p>', 'Praesentium quam iusto facilis non cumque quam.', 'praesentium-quam-iusto-facilis-non-cumque-quam', 0, 42, 14, 'https://lorempixel.com/300/300/?53727', 'Ullam fugit expedita eveniet sint. Error doloremque laboriosam minus in. Optio ea quidem totam.'),
(199, '<p>Amet consequatur consectetur beatae adipisci quis. Doloremque nam modi et ex officia voluptates et.</p><p>Atque vel a repellendus autem et. Porro omnis hic omnis ut et ad. Quasi et itaque laborum sit saepe quis consectetur.</p><p>Iure pariatur non dolorem non quam. Non qui qui exercitationem explicabo est. Ea impedit officiis voluptatem non vitae quos.</p>', 'Odio sapiente illo praesentium et.', 'odio-sapiente-illo-praesentium-et', 0, 28, 94, 'https://lorempixel.com/300/300/?25471', 'Quis temporibus sed possimus. Quidem fugit qui aut ducimus ea. Nisi explicabo voluptates et qui.'),
(200, '<p>Aut beatae temporibus occaecati modi voluptas dolorum. Perspiciatis delectus sed maxime delectus ut. Assumenda dolores possimus sint.</p><p>Et dolorum aliquam aut tenetur laboriosam est. Dolorem inventore suscipit magni molestiae adipisci unde ea. Est nihil eveniet culpa consequatur.</p><p>Aut tempora non animi quibusdam voluptate et dolorem consequuntur. Quisquam accusantium eos accusantium excepturi ullam autem et. Et ea ratione et.</p>', 'Tempora dolores delectus fuga necessitatibus excepturi rerum eos.', 'tempora-dolores-delectus-fuga-necessitatibus-excepturi-rerum-eos', 0, 87, 26, 'https://lorempixel.com/300/300/?26452', 'Magni cupiditate cum rerum quia. Molestias ut aut et dolor accusantium facere est. Molestias quo magni et eligendi.'),
(201, '<p>Nihil debitis facilis recusandae aperiam dignissimos porro totam nostrum. Deserunt excepturi et hic sed omnis rerum sit sit. Illum et et magni exercitationem.</p><p>Sint corporis ea et in dignissimos sit laboriosam. Maxime qui ea incidunt. Vel enim illum placeat eum provident consequuntur. Et quia consequuntur corrupti et.</p><p>Nostrum laborum ratione voluptatem ullam tempora recusandae ut. Porro aut fugit laudantium minus eum quibusdam. Explicabo consequuntur adipisci itaque molestiae. Nam optio minus nostrum in.</p>', 'Libero eius rerum tempore aut labore deserunt at.', 'libero-eius-rerum-tempore-aut-labore-deserunt-at', 0, 30, 21, 'https://lorempixel.com/300/300/?37182', 'Qui iste quis velit sint provident molestiae quis. Sapiente a id voluptas sit iste eos.'),
(202, '<p>Maiores facere velit et dolores non voluptatem. Enim distinctio iste corporis est. Est provident totam maxime aut inventore maiores. Tempora ipsam exercitationem sint et ea dicta.</p><p>Corporis vitae ut et velit voluptatem. Aut suscipit quisquam sit sit minima dolor.</p><p>Rem provident rem sint quam. Eos consequatur dolorem qui distinctio beatae. Eos reprehenderit blanditiis culpa.</p>', 'Tenetur magni reprehenderit quia enim tempora excepturi.', 'tenetur-magni-reprehenderit-quia-enim-tempora-excepturi', 0, 96, 27, 'https://lorempixel.com/300/300/?42526', 'Harum rem quis harum ratione nihil recusandae pariatur. Autem officiis at velit aut itaque deserunt nesciunt sint. At optio sit ea tempore distinctio accusantium ab.'),
(203, '<p>Quo tempora hic rerum officia fugit est est. Et ut dolorem voluptas quia velit distinctio quia. Iure omnis qui dolor excepturi nisi animi rem voluptates. Possimus nihil aut possimus rerum aspernatur eligendi esse.</p><p>Commodi consequatur distinctio repudiandae libero. Fugit voluptas accusamus voluptatem veritatis. Blanditiis eum ea voluptas. Ex voluptate quia nam totam sint. Eum suscipit quis ut qui beatae nihil rerum hic.</p><p>Perferendis a ipsum aut laborum repellat quod. Quibusdam qui vitae nostrum labore quas voluptatem sit. Quo non et consequatur ut illo hic ipsum.</p>', 'Optio omnis animi facilis qui.', 'optio-omnis-animi-facilis-qui', 0, 19, 89, 'https://lorempixel.com/300/300/?85209', 'Dolor qui dolore quo suscipit et a nostrum sit. Sunt non nostrum rem iste voluptas. Officiis repellat earum omnis ipsam.'),
(204, '<p>Vitae aspernatur rem non minima asperiores aliquam pariatur. Autem dolor explicabo minima iusto voluptas voluptatibus. Repudiandae quas assumenda labore ducimus. Nihil ipsum consequatur dignissimos accusamus.</p><p>Velit est et ullam impedit earum sunt sunt. Omnis quia fuga facilis labore non unde reiciendis. Saepe in harum optio amet.</p><p>Suscipit rerum tenetur architecto consequuntur voluptatem. Et et unde cum molestiae et expedita. Ex quo sed temporibus. Exercitationem aut deleniti tempora excepturi.</p>', 'Non magnam aliquam voluptatem praesentium.', 'non-magnam-aliquam-voluptatem-praesentium', 0, 74, 3, 'https://lorempixel.com/300/300/?32759', 'Alias et at perspiciatis numquam ea. Nam voluptates cupiditate labore.'),
(205, '<p>Non et repellendus deserunt ipsum dignissimos vitae. Aperiam impedit architecto exercitationem. Enim illum mollitia sequi error est. Quam ut quos quod quis.</p><p>Magni et doloribus aliquam atque sed. Dolorum ut pariatur porro iure reiciendis esse. Molestias numquam aut est ullam tempora quo omnis. Delectus qui qui accusantium natus. Omnis ea ipsam ab ex.</p><p>Quia culpa qui tenetur sapiente dolores. Corporis voluptatem cupiditate enim exercitationem. Tempora sint consequuntur repudiandae mollitia aut veritatis dignissimos. Molestiae et et et consectetur dicta fugit necessitatibus voluptatibus.</p>', 'Ut amet omnis quas ad.', 'ut-amet-omnis-quas-ad', 0, 40, 63, 'https://lorempixel.com/300/300/?55404', 'Tempore laboriosam rerum non. Impedit qui cumque error quae. Et molestiae ipsum est aut distinctio officiis harum quia.'),
(206, '<p>Et sit et soluta eum. Provident veniam quibusdam pariatur libero.</p><p>Dicta distinctio consequatur pariatur et a. Voluptate voluptate illum qui ipsam quia ut deleniti. Dolorem culpa laboriosam dicta neque. Fuga deserunt iusto ad incidunt doloribus totam optio.</p><p>Totam impedit quia quo reiciendis quam nihil. Officiis voluptatem vero enim cumque eos necessitatibus. Odit quam quia tempore omnis. Magnam et aut assumenda non consequatur.</p>', 'Natus omnis quis id magni soluta et.', 'natus-omnis-quis-id-magni-soluta-et', 0, 89, 18, 'https://lorempixel.com/300/300/?57032', 'Natus totam et explicabo nihil autem dolorem. Laboriosam voluptas ullam vero incidunt vel recusandae. Adipisci quidem itaque saepe.'),
(207, '<p>Provident ut nemo voluptatibus fugit sed. Vel nam nostrum sint quae quaerat. Illum tenetur ut maxime esse. Dolore et quas eum. Ut adipisci ullam aliquid magnam.</p><p>Eius corporis deserunt quis iure repellat. Sit assumenda quo rem ipsum totam neque. Eos enim error molestiae cum ipsum. Nostrum dolor asperiores cupiditate sint quis.</p><p>Cum corrupti laboriosam hic. Est ex fugit mollitia molestias. Ipsa et officia inventore vero sunt est aut. Omnis quos dolorum laboriosam numquam saepe architecto assumenda.</p>', 'Ducimus incidunt aspernatur nulla mollitia recusandae rerum.', 'ducimus-incidunt-aspernatur-nulla-mollitia-recusandae-rerum', 0, 91, 29, 'https://lorempixel.com/300/300/?50311', 'Delectus quisquam sapiente natus voluptatum assumenda. Earum et odio dolor enim non. Vel odio sint ut officia inventore nulla.'),
(208, '<p>Cumque sed enim ratione recusandae. Aut consequuntur veniam quo sit est sapiente. Quisquam vel incidunt molestiae a iusto quo nobis provident. Provident neque possimus nihil modi quae possimus. A nobis natus quia et libero doloribus commodi.</p><p>Rerum ipsum omnis mollitia dignissimos non. Ut a eum velit. Dolores numquam dolores aliquid voluptas fugiat. Quibusdam ut et odit voluptatum eligendi non ea.</p><p>Nobis dolores voluptatem quia consequuntur quo quas consectetur. Possimus aperiam ea sunt autem. Mollitia tempore voluptatem debitis ad cupiditate. Voluptate tenetur eveniet repudiandae dolor dolores.</p>', 'Dolor mollitia non ut et perferendis.', 'dolor-mollitia-non-ut-et-perferendis', 0, 6, 90, 'https://lorempixel.com/300/300/?89421', 'Aut quia id et iure. Aut earum quo voluptas vel dolores aliquid odit. Voluptas illo aperiam ipsum at.'),
(209, '<p>Dolore repellendus ipsa officiis fuga in. Et unde aut a quia accusantium sed dolores. Amet quod et fuga tempora voluptas ut. Laboriosam architecto sint quidem aut ut aspernatur ut.</p><p>Autem quisquam consequatur quasi soluta in. Fugit optio et at dolorum tempora et. Unde iusto sunt sit qui dolores.</p><p>Rerum aut odio provident earum veritatis odit iste. Vel voluptatem facilis nisi alias consequatur esse. Suscipit autem cupiditate consectetur alias nesciunt. Reiciendis sapiente ex culpa non quam ut.</p>', 'Et animi optio et iste nesciunt dolor.', 'et-animi-optio-et-iste-nesciunt-dolor', 0, 95, 28, 'https://lorempixel.com/300/300/?39922', 'Ipsum quibusdam voluptatibus qui sapiente ut nihil laborum. Quia et ut illum earum consequatur veritatis et. At dolorum debitis et neque ratione repudiandae.'),
(210, '<p>Similique et dolorem architecto. Facere earum id voluptates qui. Esse ratione doloribus blanditiis quae cum. Facere numquam quibusdam excepturi fugit impedit et.</p><p>Sed aliquam ad laborum qui ipsum consectetur distinctio. Neque hic qui rerum impedit non. Libero quis rerum aperiam optio aliquid et.</p><p>Qui accusantium reprehenderit ipsa quae velit et. Aut tempora dolores et et perspiciatis corporis molestias. Voluptatibus suscipit dicta omnis eius ex et. Ullam repudiandae hic omnis ipsum possimus sint.</p>', 'Repellendus ipsum perspiciatis nam aut autem.', 'repellendus-ipsum-perspiciatis-nam-aut-autem', 0, 61, 41, 'https://lorempixel.com/300/300/?56221', 'Non accusantium dolorum consequuntur possimus et rem. Et ab explicabo tempore saepe sequi dolorem.');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE IF NOT EXISTS `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_D8892622A76ED395` (`user_id`),
  KEY `IDX_D88926224584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(4, 'ROLE_ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `IDX_332CA4DDD60322AC` (`role_id`),
  KEY `IDX_332CA4DDA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(4, 34);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_product`
--

DROP TABLE IF EXISTS `tag_product`;
CREATE TABLE IF NOT EXISTS `tag_product` (
  `tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`tag_id`,`product_id`),
  KEY `IDX_E17B2907BAD26311` (`tag_id`),
  KEY `IDX_E17B29074584665A` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `password`, `email`, `picture`, `first_name`, `last_name`, `delivery_address`, `billing_address`, `slug`) VALUES
(34, '$2y$13$3IIGw8TscY5ytAlodbMh5OhiTscU4u34k45LhADVGtQdMryvIhkFK', 'kennybazileoctuvon@gmail.com', 'https://media.licdn.com/dms/image/C4D03AQHp_U_2kwul6w/profile-displayphoto-shrink_200_200/0?e=1583366400&v=beta&t=sPAva04SPG7mRMhmBe9F7N_CwT3orVz7W0JtgQAxc10', 'Kenny', 'Bazile-Octuvon', 'adresse livraison', 'adresse facturation', 'kenny-bazile-octuvon'),
(35, '$2y$13$.OzmOZerPBMBJveeRjHCzez3SCdTvtA37OSRayWxuLsys90RIQjLy', 'jayden24@kessler.com', 'https://randomuser.me/api/portraits/women/8.jpg', 'Earnestine', 'Hansen', '315 Balistreri Common Suite 327\nPort Kirstin, NV 76129-1194', '315 Balistreri Common Suite 327\nPort Kirstin, NV 76129-1194', 'earnestine-hansen'),
(36, '$2y$13$NYBdafqYvtSnO47s8jFTdeS8vQzgO6B7UuJMdgZ8iqC14c4Tfjr0K', 'satterfield.cale@gmail.com', 'https://randomuser.me/api/portraits/women/62.jpg', 'Haven', 'Monahan', '8551 Bode Cliff Apt. 939\nNew Tabitha, SD 87546-1166', '1254 Rempel Stream\nWest Salvadormouth, RI 91827-6691', 'haven-monahan'),
(37, '$2y$13$z07nTehgGuWonL8evosuwOrOF18e0IFnSgvyFUWG6WcCzcYlACvtC', 'vaughn21@greenholt.com', 'https://randomuser.me/api/portraits/women/24.jpg', 'Eden', 'Champlin', '85789 Blaise Garden Suite 568\nEast Casperchester, OR 52387-2793', '4246 Jones Skyway\nPort Nonaburgh, NE 28943', 'eden-champlin'),
(38, '$2y$13$C2j3J9HUj7NTG6jR9sRH/e/pFkXFU61y3cYRgr1YWasBxPPzEAPB2', 'orn.jody@yahoo.com', 'https://randomuser.me/api/portraits/men/35.jpg', 'Christopher', 'Leffler', '993 Molly Union\nNew Milton, DC 42898', '20245 Riley Cape Apt. 938\nNicholausmouth, OK 61569', 'christopher-leffler'),
(39, '$2y$13$ryYz//PjkeELPyxRYXtzFeJiJ9mOnpvd7ygowMu67lwoee1QCuSBW', 'consuelo27@turcotte.org', 'https://randomuser.me/api/portraits/women/88.jpg', 'Tiana', 'Gusikowski', '4044 Vivianne Mall Suite 648\nJulioport, NM 33537-9204', '17014 Fahey Inlet\nAdriennefort, MN 83251-8362', 'tiana-gusikowski'),
(40, '$2y$13$UBdDnVo2kDYWTBW/SGva7eYEUr5hum.rj49KfGsRav1vBYjLFEOuS', 'ghuels@hotmail.com', 'https://randomuser.me/api/portraits/women/8.jpg', 'Camille', 'Rempel', '2743 Tromp Forge Suite 113\nSouth Larry, AL 17608-0063', '6735 Wiza Glens Suite 263\nMaximillianhaven, TN 90981-0847', 'camille-rempel'),
(41, '$2y$13$cCpWSoUEHo.2zWOB82tQtug.c6gzUYCF/uIq276x0epPgT2czN8d2', 'mmitchell@gmail.com', 'https://randomuser.me/api/portraits/men/26.jpg', 'Clement', 'Lesch', '1272 Felicia Point\nPort Tatyana, DC 93704-3923', '534 Cheyanne Cape\nGoyetteton, DE 56527-0103', 'clement-lesch'),
(42, '$2y$13$hDLVZEiO5gMoNeFuvxbbnOGVMYv5kBJRQ.Q.tekL0fNJt2ULMH/du', 'vschuppe@hotmail.com', 'https://randomuser.me/api/portraits/men/84.jpg', 'Jamal', 'Kuphal', '13845 Gussie Route\nPort Delphineberg, WY 52333', '5525 Hettinger Glens Apt. 559\nScarlettchester, SD 00724', 'jamal-kuphal'),
(43, '$2y$13$gB9P.z/hjuMFwTOBo.tmEuLaJ12M79Vlh1vUQNUsJuf0v8Jq9L29e', 'lkeebler@hotmail.com', 'https://randomuser.me/api/portraits/women/87.jpg', 'Zula', 'Smitham', '108 Estefania Course Apt. 642\nWest Conner, TX 28824-7607', '108 Estefania Course Apt. 642\nWest Conner, TX 28824-7607', 'zula-smitham'),
(44, '$2y$13$ycI0Mv8bJOr0m5IayncGs.wSWcjKvW6y3dhlyqzF.v8Wtiij9Tg/e', 'sophia06@brown.net', 'https://randomuser.me/api/portraits/men/61.jpg', 'Gonzalo', 'Bergnaum', '329 Gerhold Mill\nMarkusburgh, AK 22302', '329 Gerhold Mill\nMarkusburgh, AK 22302', 'gonzalo-bergnaum');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `FK_149244D312469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_149244D34584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_6EEAA67DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `commande_product`
--
ALTER TABLE `commande_product`
  ADD CONSTRAINT `FK_25F1760D4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_25F1760D82EA2E54` FOREIGN KEY (`commande_id`) REFERENCES `commande` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `FK_C53D045F4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_D88926224584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_D8892622A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `FK_332CA4DDA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_332CA4DDD60322AC` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_product`
--
ALTER TABLE `tag_product`
  ADD CONSTRAINT `FK_E17B29074584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E17B2907BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
