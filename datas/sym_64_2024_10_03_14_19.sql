-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 03 oct. 2024 à 12:18
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `sym_64`
--
DROP DATABASE IF EXISTS `sym_64`;
CREATE DATABASE IF NOT EXISTS `sym_64` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `sym_64`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
                                         `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                                         `article_title` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `article_slug` varchar(165) COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `article_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                                         `article_date_create` datetime DEFAULT CURRENT_TIMESTAMP,
                                         `article_date_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                                         `article_is_published` tinyint(1) NOT NULL DEFAULT '0',
                                         `utilisateur_id` int UNSIGNED DEFAULT NULL,
                                         PRIMARY KEY (`id`),
                                         KEY `IDX_23A0E66FB88E14F` (`utilisateur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `article_title`, `article_slug`, `article_content`, `article_date_create`, `article_date_update`, `article_is_published`, `utilisateur_id`) VALUES
                                                                                                                                                                             (31, 'Aut doloribus dolor doloribus.', 'aut-doloribus-dolor-doloribus', 'Consequatur architecto nulla saepe sunt quisquam odit nihil quibusdam. Voluptatem est numquam ipsa exercitationem exercitationem non.\n\nSed harum et unde vero voluptatem corporis iure. Aut eius adipisci ipsam enim dolorum iste. Et et iusto ullam et.\n\nQuasi ipsam debitis ut numquam modi culpa. Fugiat molestias recusandae molestiae eligendi soluta non ut. Pariatur ut accusamus et fugiat fugit.\n\nVoluptas impedit tenetur porro. Error accusantium est rerum minus aut odit. Delectus aut ea occaecati facere repellendus. Est maiores dicta labore molestiae ipsam velit.', '2024-10-03 12:14:52', NULL, 1, 20),
                                                                                                                                                                             (32, 'Adipisci rem sint libero molestiae expedita.', 'adipisci-rem-sint-libero-molestiae-expedita', 'Voluptatem voluptas voluptates tempora quas excepturi quas. Repellat non qui est. Eligendi et ut suscipit corporis nesciunt qui officiis.\n\nArchitecto expedita molestiae ea ipsum sequi. Ut sed quas nisi modi.\n\nMolestiae accusantium quos odio laudantium id rerum quod voluptatem. Deleniti ipsam rerum quos maiores amet.\n\nPossimus non excepturi placeat impedit hic velit. Tenetur vel rerum in earum magni ut molestiae et.', '2024-10-03 12:14:52', NULL, 1, 16),
                                                                                                                                                                             (33, 'Aliquid ut assumenda voluptatem omnis eius quo.', 'aliquid-ut-assumenda-voluptatem-omnis-eius-quo', 'Iure expedita officia earum commodi in nostrum. Autem voluptas laborum corrupti. Harum dignissimos enim ut officiis et sunt quis accusantium.\n\nQuod voluptatem rem assumenda possimus delectus. Quaerat fuga itaque eos doloribus asperiores maxime perspiciatis. Ratione sed molestiae aperiam ratione quam.\n\nPlaceat quasi esse voluptas illo repellendus. Ut temporibus aut quaerat natus. Nulla aliquam hic aut nesciunt quo officia voluptatibus cupiditate. Fuga voluptas alias magni dolorem et. Id modi blanditiis minima qui hic est nesciunt.\n\nConsectetur natus reiciendis eveniet delectus facilis exercitationem placeat dignissimos. Minima ut et laboriosam hic dolores laboriosam. Est ducimus officia eos.\n\nSoluta porro aperiam accusantium vel mollitia. Sed eos maxime possimus aperiam explicabo. A sint voluptatum animi ratione. Qui voluptatem porro sunt repellat qui. Nobis facilis nihil voluptatem voluptatem.', '2024-10-03 12:14:52', NULL, 1, 14),
                                                                                                                                                                             (34, 'Deserunt sed temporibus consequatur laborum.', 'deserunt-sed-temporibus-consequatur-laborum', 'Eveniet porro ipsam voluptatem necessitatibus consequuntur ut cupiditate. Accusamus est cupiditate nisi possimus. Quis fuga et sint omnis ut.\n\nEum minus incidunt iusto dicta dolor. Beatae eos sed quis provident eos est omnis. Rerum et magnam aut. Nesciunt eius temporibus sit dolor eveniet aliquam voluptatem consequatur.\n\nNobis voluptate tempore nulla voluptatibus at. A doloremque maiores eos qui aperiam rerum quia. Eius et incidunt tempora id a.\n\nOmnis ratione dolor quos sint tempore reprehenderit. A blanditiis optio in at nihil possimus. Quae corporis est laborum accusantium enim libero. Quia ipsa distinctio aliquid quo suscipit.', '2024-10-03 12:14:52', NULL, 1, 14),
                                                                                                                                                                             (35, 'Laboriosam aut vero architecto commodi vero.', 'laboriosam-aut-vero-architecto-commodi-vero', 'Tenetur numquam sit sapiente sunt itaque et. Praesentium et quod perferendis quia. Itaque et ipsa et esse error.\n\nIpsa esse ullam architecto enim dolorem asperiores iure. Quo libero est est. Et voluptates aperiam optio.\n\nEt ab natus numquam aspernatur vitae accusamus. Eligendi temporibus debitis et ut libero nobis. Ut autem accusamus placeat natus repellendus assumenda distinctio sint. Modi ipsum qui possimus fuga.\n\nAliquam nulla reiciendis placeat fuga blanditiis velit ducimus. Hic ipsum nesciunt vero cupiditate et.\n\nQuam praesentium quod dolorem minima est. Maxime at vel odit iste voluptate. Et officiis modi quae animi sapiente cum sunt omnis. In cumque dolor dolore quam fugit. Quaerat vero et est est.', '2024-10-03 12:14:52', NULL, 1, 18),
                                                                                                                                                                             (36, 'Necessitatibus laboriosam omnis incidunt assumenda odio.', 'necessitatibus-laboriosam-omnis-incidunt-assumenda-odio', 'Occaecati ut et omnis dolores maiores. Dicta in consequuntur odio in totam occaecati. In quas blanditiis autem repellat est sunt. Optio totam est voluptatum aut quidem sunt voluptas. Et laudantium quia id numquam dolorem debitis aut.\n\nArchitecto et sit quisquam enim officiis est aliquam. Quasi eius officiis non atque qui ad. Quis nobis et sunt.\n\nRepellendus enim qui voluptatibus harum saepe cupiditate. Voluptatem nisi quia harum a. Qui ut natus dignissimos omnis hic deleniti molestias laudantium. Molestias a amet similique necessitatibus voluptates ex dicta.', '2024-10-03 12:14:52', NULL, 1, 12),
                                                                                                                                                                             (37, 'Minima veritatis tenetur in ipsam.', 'minima-veritatis-tenetur-in-ipsam', 'Quo in aut ut rerum error ea delectus voluptas. Possimus itaque molestiae consequatur id architecto omnis perspiciatis est. Dolor esse corporis porro consequuntur facere iusto non. Cupiditate amet laudantium ut non delectus.\n\nEt optio quam non rerum at et. Quia voluptatibus magni omnis qui consectetur voluptate vel non. Voluptate omnis velit minus omnis voluptas accusamus. Temporibus deleniti aut quod repellendus.\n\nAnimi autem nulla dolores voluptatum. Porro optio quia pariatur maiores et a odio. Labore rerum voluptas maiores ducimus qui. Dicta id soluta modi praesentium possimus.\n\nNecessitatibus animi consectetur deleniti cumque magni at. Numquam vitae amet molestiae veritatis nobis nihil quia. Soluta fugit dolores eos in minus aut.', '2024-10-03 12:14:52', NULL, 1, 18),
                                                                                                                                                                             (38, 'Maxime delectus voluptatum velit et incidunt.', 'maxime-delectus-voluptatum-velit-et-incidunt', 'Aut sunt ut consequatur iusto eveniet blanditiis. Voluptatum sint nihil quaerat qui sed. Nemo similique voluptas tempora qui optio.\n\nEnim voluptatem ad velit earum tempora aperiam cumque. Sint molestiae esse dicta quis cum. Voluptas laboriosam tenetur dignissimos ut repudiandae vero deleniti.\n\nModi velit molestiae repudiandae rerum voluptatum molestiae iure amet. Qui aspernatur vitae vitae atque in velit provident sint. Facilis et maiores in aliquid. Reprehenderit possimus at occaecati reprehenderit suscipit ut laborum necessitatibus.\n\nEa deserunt amet quos ut error est. Eveniet consequatur aliquid et officia iure dolores. Sed consectetur optio et eum est. Fuga ut veritatis molestias et. Veritatis perspiciatis aut adipisci et blanditiis.\n\nVeritatis odit eveniet voluptatem praesentium. Fugiat sit quos nihil corrupti. Sed voluptatem consequatur et ea deserunt. Consectetur voluptatem maiores qui reprehenderit quidem.', '2024-10-03 12:14:52', NULL, 1, 21),
                                                                                                                                                                             (39, 'Fugit laboriosam rerum qui unde occaecati dicta.', 'fugit-laboriosam-rerum-qui-unde-occaecati-dicta', 'Iure et quibusdam sint. Qui facere ad ab dicta. Rerum vitae a molestias consequatur dolorem.\n\nQuis magnam quis sapiente optio. Sunt similique ea molestiae maiores. Placeat ipsa distinctio placeat ut voluptas mollitia.\n\nTemporibus delectus quibusdam non est beatae voluptas. Voluptatum alias quibusdam nulla architecto vitae. Numquam earum et delectus et recusandae qui inventore.\n\nAccusamus velit aut culpa nihil. Labore mollitia eum est eaque. Ab repellendus quod tenetur aperiam et accusamus. Provident minus dolorum tenetur quaerat labore quia repudiandae.', '2024-10-03 12:14:52', NULL, 1, 16),
                                                                                                                                                                             (40, 'Minima necessitatibus id sed molestiae.', 'minima-necessitatibus-id-sed-molestiae', 'Non illo eum minima recusandae iste. Corporis quasi earum accusantium dolorem velit. Aut ex beatae nam pariatur dolor veritatis.\n\nOmnis numquam aut architecto pariatur aut voluptate veritatis non. Eum odit eveniet et amet sint quod harum. Molestiae qui dolor velit est expedita incidunt.\n\nNon vel dolore tenetur aut culpa optio consequatur distinctio. Sed vitae unde voluptates voluptas explicabo voluptatem. Distinctio unde qui veritatis iure accusantium. Id error corrupti totam non ut.\n\nEx aliquid ad nihil sit. Sunt ducimus vitae minus at voluptas.\n\nNatus autem tempore eos corrupti et. Dolor molestiae minus ut dolore. Qui non consequatur quidem cumque magnam.', '2024-10-03 12:14:52', NULL, 1, 17),
                                                                                                                                                                             (41, 'Quia dolor perferendis provident.', 'quia-dolor-perferendis-provident', 'Ad est quia sint autem. Dolorem nisi facere accusamus et. Quibusdam accusantium sint quia molestias nam. Est provident facere optio quae esse nihil repudiandae.\n\nCommodi soluta nobis rerum vel labore et. Quam sint voluptates quaerat quis. Libero quia vel eaque voluptas accusamus voluptas. Iste dolore molestiae neque porro ea veritatis ea porro.\n\nQuia dolore mollitia provident cum. Odit id quidem quas iure. Molestiae voluptas est quae quam. Voluptate aut aperiam quasi modi et. Minima delectus nam iusto quos animi qui non laboriosam.\n\nEarum molestias nobis debitis doloremque. Accusantium ipsam nemo dolorem. Molestiae repellat distinctio rerum eligendi sapiente consequatur qui.\n\nRecusandae ut aliquam et sit aperiam alias. Officiis dolor enim nulla inventore inventore id eligendi. Aut voluptatem laudantium id.', '2024-10-03 12:14:52', NULL, 1, 19),
                                                                                                                                                                             (42, 'Ad consequatur et ullam minus ut asperiores.', 'ad-consequatur-et-ullam-minus-ut-asperiores', 'Non ut placeat ipsum. Velit dolor ut quam optio nulla. Quia velit soluta et aut similique id esse quaerat.\n\nDignissimos voluptas doloremque velit quod. Quo explicabo debitis nostrum accusamus aut dolorum laboriosam. Est quam et officia. Deserunt temporibus at aut non aut voluptatum.\n\nRerum qui placeat saepe inventore tenetur quia adipisci. Ea nihil voluptate qui molestias repellat quae iure. Et delectus recusandae sint fugiat ex delectus. Et voluptatem maiores necessitatibus quasi eos et sunt.', '2024-10-03 12:14:52', NULL, 1, 20),
                                                                                                                                                                             (43, 'Et ut minima possimus nesciunt.', 'et-ut-minima-possimus-nesciunt', 'Molestiae non qui eos necessitatibus voluptas est repellat. Qui vel in veritatis. Qui qui qui commodi sit molestiae tenetur.\n\nNesciunt voluptatibus explicabo in rerum maiores repellat. Ea ut exercitationem eos expedita iure aut. Quod eius voluptatum incidunt omnis eaque.\n\nNon rem dolorem tenetur facere nihil. Repellendus reprehenderit blanditiis iste voluptate sed voluptas nihil. Laboriosam temporibus et ipsam voluptatum numquam.\n\nEnim voluptatem dolores dignissimos ut voluptate. Vero neque enim commodi est. Esse repellat et sed ut consequatur est esse.\n\nQuia porro veritatis eius repellendus. Molestiae vel est ratione temporibus consequatur quia accusantium. Non qui laboriosam ea minima est doloremque aut maiores. Iusto labore harum ipsa asperiores excepturi quia esse veritatis.', '2024-10-03 12:14:52', NULL, 1, 19),
                                                                                                                                                                             (44, 'Ut commodi corporis atque aut quia ullam.', 'ut-commodi-corporis-atque-aut-quia-ullam', 'Laudantium ab facilis aut modi saepe. Voluptatem quisquam quisquam voluptatem possimus fugiat ab. Et qui sint deserunt quas.\n\nDignissimos ut qui consequatur accusantium non dolorum est. Necessitatibus libero cupiditate velit ducimus doloremque sint. Enim qui a accusamus ipsam facere exercitationem suscipit. Dolores doloremque commodi tempore ducimus et et.\n\nMinima illum ut est totam. A delectus voluptatem quia rem et reiciendis repellendus. Eum quibusdam molestiae est minima quod accusamus quam tenetur.\n\nImpedit exercitationem voluptatem aliquam. Officia corrupti aliquam est quia maiores omnis. Similique eius doloremque libero beatae numquam.\n\nEius voluptas quaerat sunt. Accusantium alias voluptate doloribus ipsum facere. Error sit ea porro doloremque. Ut repudiandae in soluta odio.', '2024-10-03 12:14:52', NULL, 1, 18),
                                                                                                                                                                             (45, 'Et inventore vel cumque.', 'et-inventore-vel-cumque', 'Necessitatibus sunt deserunt pariatur aliquid. Esse optio adipisci fuga voluptatibus facere autem. Praesentium rerum sapiente aperiam.\n\nDistinctio a ratione suscipit ratione est. Voluptatem harum sed eum dignissimos deserunt. Sed ipsa ut unde sint labore in ut.\n\nMinima odit consequatur animi sed dolorum ad architecto odit. Architecto ratione tempora ut. Quidem quia est aut omnis voluptatibus.\n\nQui recusandae eligendi error aut aut. Est sunt voluptatibus in deleniti consequatur aut architecto consequatur. Et minima aperiam neque autem. Ipsam iste et neque dolorem voluptatem ipsum.\n\nReiciendis modi quo cupiditate esse quas aut. Architecto maiores reprehenderit ex tenetur. Quisquam est fuga sunt veniam maxime ullam et nulla. Voluptatum sunt sequi sit fugiat non.', '2024-10-03 12:14:52', NULL, 1, 16),
                                                                                                                                                                             (46, 'Suscipit libero architecto quaerat eius voluptatum autem.', 'suscipit-libero-architecto-quaerat-eius-voluptatum-autem', 'Dignissimos autem error dolore quisquam libero. Sequi fugit magni odio unde rem facere laudantium. Et soluta ut debitis consequatur.\n\nEius voluptatem ea temporibus enim consectetur aliquam. Veniam aut nihil cupiditate eius. Deserunt natus id et itaque sit excepturi minima.\n\nCorporis iusto quis illum blanditiis voluptas vero quia. Amet animi consequatur libero dolores in nobis veritatis. Dignissimos est nam sunt voluptatem. Sit quidem ut eius aspernatur officiis itaque et.', '2024-10-03 12:14:52', NULL, 1, 20),
                                                                                                                                                                             (47, 'Quae fugit enim unde sed.', 'quae-fugit-enim-unde-sed', 'Praesentium perferendis provident non adipisci dolores. Dolor magni minima voluptas mollitia et iure.\n\nNon eos nesciunt illum saepe libero mollitia eos. Reprehenderit laudantium aperiam in et vero id. Molestias reprehenderit voluptatem saepe esse voluptatem error. Nam numquam tempore quos laborum ex.\n\nRepellendus magnam sit perspiciatis qui cum necessitatibus in. Ut recusandae dignissimos libero voluptate velit eaque.\n\nPerferendis quia sed aut doloribus id ab. Optio ipsa impedit itaque laborum harum vel culpa. Ex labore amet voluptas et explicabo. Alias molestiae aut earum illo ut. Nemo provident quia voluptatum perferendis et ut repellat eveniet.', '2024-10-03 12:14:52', NULL, 1, 17),
                                                                                                                                                                             (48, 'Iste rem quae veniam ipsum consequatur et.', 'iste-rem-quae-veniam-ipsum-consequatur-et', 'Temporibus commodi provident id in quae. Enim velit veritatis voluptate dolore harum rem dolores. Tenetur est quia alias ea ut ut. Enim aut ut error debitis beatae consequuntur.\n\nLabore libero qui cupiditate autem. Commodi deserunt suscipit quo omnis dolores at rerum. Fuga delectus odio et unde ea aut. Omnis qui vero veritatis ut quos in.\n\nOdio quia hic consequatur adipisci sit dolorum at. Incidunt officiis dolores ea totam maxime. Officia accusantium odio illum amet ut. Reprehenderit at dolorem vel commodi corporis aliquid.\n\nEt dolor et fugiat cupiditate itaque. Aut quas saepe provident ut ratione voluptatum iure. Dolorem voluptatem aliquam vero dolores consequatur tempora.\n\nAd cumque corporis quis cupiditate quibusdam tempore aut. Soluta eius minus labore facere. Nihil quae iure rerum laboriosam eum repellat reiciendis. Voluptas architecto asperiores porro accusantium enim qui illum. Corrupti numquam optio quam deleniti.', '2024-10-03 12:14:52', NULL, 1, 15),
                                                                                                                                                                             (49, 'Voluptas ut qui alias quo.', 'voluptas-ut-qui-alias-quo', 'Ea pariatur sed et ea. Est quae quas atque reprehenderit. Et in aperiam veritatis. Enim distinctio eveniet fugiat sapiente corporis.\n\nQuis repellendus iure itaque magnam rerum impedit. Consequuntur natus est voluptatem quidem et quia possimus. Eos qui ducimus facilis voluptas ea nihil. Reiciendis qui officia non ea.\n\nDolores non sint quia delectus et laudantium velit est. Et ut non placeat aliquid fugiat voluptatum vel. Quidem qui nulla consequatur qui consequatur.\n\nConsequuntur in omnis quis nostrum doloremque cum labore. Distinctio consequatur fugit sint eaque nobis at. Laudantium error aut ipsam cumque sed maiores. Veritatis rem nisi sint eius enim.', '2024-10-03 12:14:52', NULL, 1, 21),
                                                                                                                                                                             (50, 'Dolorem voluptas totam reprehenderit vero quo eligendi.', 'dolorem-voluptas-totam-reprehenderit-vero-quo-eligendi', 'Sunt sed velit earum id quia. Et explicabo aliquam nostrum omnis ullam cupiditate dolorem. Repudiandae hic rerum repellat at eum. Sint repellendus sit perspiciatis laborum veniam est asperiores.\n\nId similique sint corrupti. Debitis veritatis voluptas assumenda accusantium quisquam. Quidem quia autem perspiciatis vel. Qui ipsa aut neque deserunt eveniet fugiat.\n\nQui ducimus sunt voluptas sint ipsa corporis. Doloremque itaque ut est cumque voluptatem libero. Omnis sunt architecto alias atque sed omnis sequi. Enim quod unde qui rerum nisi omnis dicta rerum.\n\nDolorem commodi qui et et velit maiores est. Sed at aut quo. Quae aut ut soluta laboriosam et. Corrupti ut id odio voluptates quia exercitationem. Qui unde at natus totam eaque.', '2024-10-03 12:14:52', NULL, 1, 21),
                                                                                                                                                                             (51, 'Rem corrupti commodi nisi.', 'rem-corrupti-commodi-nisi', 'Animi minima cumque voluptatem nobis. Ipsum consectetur velit provident voluptatibus odio mollitia aut. Nihil enim dolorum quia voluptatem veritatis qui. Minus eligendi delectus modi cumque.\n\nConsectetur explicabo inventore enim quasi molestiae eligendi est. Voluptatem quod culpa dignissimos aut illum non eligendi. Earum dolores cum earum illo ullam. Delectus laborum et vel iste in sit.\n\nLaboriosam ad dolorem rerum magni consectetur. Dolor voluptates id ex reiciendis dolorem tempore recusandae. Ducimus molestiae placeat saepe mollitia unde ut vel.\n\nHarum quod possimus optio alias nihil. Quasi officia possimus quasi ut facere aliquam. Placeat et quaerat exercitationem delectus.', '2024-10-03 12:14:52', NULL, 1, 19),
                                                                                                                                                                             (52, 'Porro possimus at nulla aspernatur vel nisi.', 'porro-possimus-at-nulla-aspernatur-vel-nisi', 'Animi sint et voluptatibus. Sit magnam deleniti facere omnis enim ea. Laboriosam fuga sint nisi temporibus sint.\n\nQuam est labore fugiat et quidem iste dignissimos. Alias rem ut quidem non facere autem.\n\nSoluta aut ut et omnis autem itaque. Optio pariatur quia consequuntur officiis voluptas nesciunt laudantium. Voluptas tenetur omnis nostrum molestiae at molestiae architecto. Quia ex sint aliquam a velit sunt.\n\nSunt ab tenetur ad placeat officiis laudantium. Totam quisquam perspiciatis a fugit. Similique nihil sint hic voluptatem nam sunt. Est ut minus quis maxime.\n\nBeatae qui est aut at sunt. Commodi vitae quod fuga omnis. Sit laboriosam recusandae ipsum ullam aspernatur et et.', '2024-10-03 12:14:52', NULL, 1, 16),
                                                                                                                                                                             (53, 'Odit et commodi qui enim reprehenderit et.', 'odit-et-commodi-qui-enim-reprehenderit-et', 'Illum ipsa ea ipsa at corporis omnis necessitatibus. Maxime dolorum consequatur quo id consequatur. Libero aut et magnam.\n\nQuisquam dolores quia possimus error. Unde non aspernatur qui reiciendis id nihil et. Occaecati velit aut expedita nostrum blanditiis omnis. Consequatur a voluptas sapiente soluta occaecati.\n\nFugiat sunt ut voluptatibus iusto provident ut. Impedit assumenda nemo cum iusto veritatis sunt. Magnam in id labore sit.\n\nEligendi corporis praesentium iure qui beatae. Omnis placeat dolores minus est. Minima sunt quia esse nemo est. Laudantium voluptate inventore accusantium reprehenderit.\n\nNon nihil voluptatem quam voluptatum omnis harum. Dolorem hic temporibus ea et earum. Natus aut eaque iure consequatur soluta quia.', '2024-10-03 12:14:52', NULL, 1, 14),
                                                                                                                                                                             (54, 'Molestiae tempora temporibus dignissimos aperiam at.', 'molestiae-tempora-temporibus-dignissimos-aperiam-at', 'Tempora nihil similique nihil qui corporis esse temporibus velit. Rerum velit sunt eos quod eum. Atque fugiat et qui excepturi commodi voluptas dolor.\n\nCorporis vitae quod ullam fugiat corrupti accusantium numquam et. Quis est sint quasi sequi dolores ducimus. Fugit rem aperiam modi autem.\n\nReprehenderit qui aut ratione sequi eveniet consequatur. Ut minima nam aut tempora eos ab omnis. Eaque reiciendis possimus dolores non. Cum consequuntur dolore autem odit aut.\n\nTotam necessitatibus pariatur dolorem dolorem. Autem modi est fuga eligendi. Et quia aliquid aut deleniti labore. Reprehenderit commodi qui qui.', '2024-10-03 12:14:52', NULL, 1, 20),
                                                                                                                                                                             (55, 'Voluptas eaque enim nobis debitis id.', 'voluptas-eaque-enim-nobis-debitis-id', 'Error corporis cumque exercitationem laudantium explicabo consequatur voluptatem voluptatibus. Impedit et tempore aliquid sed accusamus voluptates commodi. Nemo voluptatum aliquid et corporis.\n\nDolor reiciendis ea dolore hic blanditiis voluptatem minima qui. Rerum blanditiis reiciendis quas voluptatem. Deserunt ipsam quisquam quidem et culpa.\n\nMagni sit voluptatibus alias iste cumque unde tenetur inventore. Unde consectetur sed inventore placeat sit aut neque. Voluptatem qui aliquam ea dolorem ullam.', '2024-10-03 12:14:52', NULL, 1, 19),
                                                                                                                                                                             (56, 'Quo commodi natus modi.', 'quo-commodi-natus-modi', 'At suscipit at natus temporibus quia enim magni. Architecto qui nostrum perspiciatis consectetur.\n\nRepellat architecto dolore saepe amet rerum reiciendis aliquid. Assumenda reiciendis explicabo cumque quia quam qui. Aliquid qui libero unde delectus est non. Rerum nulla quia quam aperiam.\n\nEt voluptas id voluptatem sint. Aut vel doloribus libero aut ducimus voluptate excepturi. Est iste deleniti ex doloribus sed. Ducimus voluptatem rem sed qui omnis nobis quia.', '2024-10-03 12:14:52', NULL, 1, 14),
                                                                                                                                                                             (57, 'Accusantium expedita nobis eum.', 'accusantium-expedita-nobis-eum', 'Odit impedit non voluptatem. Atque voluptatum enim provident. Non quia aut perferendis omnis.\n\nSequi impedit facilis excepturi dolores et. Quod ipsum aspernatur dolor sed qui. Sit libero error corporis laboriosam qui magnam. Omnis aspernatur cumque qui ducimus velit delectus dolor veniam.\n\nIn hic accusamus debitis voluptas. Ea rem quaerat expedita delectus sit quam sint at. Sint consequatur tempora dolores iste eius. Assumenda voluptas id dicta sit.\n\nOmnis nostrum dolorem aut voluptatem natus. Sed repellat aspernatur itaque maxime officia. Dignissimos rem aut nobis eos ipsum.\n\nAlias vitae veniam rem repellat occaecati. Aspernatur ducimus nam beatae quo earum voluptatum laborum maiores. Tenetur enim sed illum. Illo modi est cupiditate.', '2024-10-03 12:14:52', NULL, 1, 21),
                                                                                                                                                                             (58, 'Consequatur ipsa asperiores molestias ut.', 'consequatur-ipsa-asperiores-molestias-ut', 'Error placeat sed fuga corrupti. Soluta officia perspiciatis repellat quia rerum. Deserunt rerum doloribus qui placeat cum ut qui. Et officia ipsa molestiae voluptate ea aut.\n\nOmnis facilis sed officiis suscipit sunt est laborum. Qui non repudiandae laudantium earum aut. Et autem tempora voluptatibus numquam. Odio voluptates repudiandae sed aut explicabo et consequatur.\n\nOmnis non quod laborum nemo illum ut repellendus. Iusto velit illo blanditiis ducimus. Voluptatem mollitia eos reprehenderit eveniet sint.', '2024-10-03 12:14:52', NULL, 1, 15),
                                                                                                                                                                             (59, 'Suscipit tempora dolor ea dolor neque assumenda.', 'suscipit-tempora-dolor-ea-dolor-neque-assumenda', 'Quia aut blanditiis ipsam qui delectus. Non sed eaque rerum vitae accusamus. Nihil velit consequatur ut rerum blanditiis eaque voluptas. Quidem quod perferendis vero quia rerum ipsam dolorem. Sed quaerat saepe commodi error dicta quam illum.\n\nId in ab expedita sint. Consequatur praesentium ea sunt dolores eveniet quam. Optio ipsam labore saepe reprehenderit ut hic ducimus.\n\nAt aut facere est libero. Repellat et earum voluptas dolorem corporis esse exercitationem. Ut libero quod magni voluptates. Magnam doloribus repellendus sint omnis. Velit non nesciunt vel soluta asperiores voluptatibus.', '2024-10-03 12:14:52', NULL, 1, 19),
                                                                                                                                                                             (60, 'Qui ut ea suscipit neque voluptates amet.', 'qui-ut-ea-suscipit-neque-voluptates-amet', 'Enim voluptas distinctio alias aliquid quaerat voluptate molestiae. Ut error debitis in dolorem assumenda. Quod porro ipsam aut vel doloremque ipsum.\n\nIpsam nihil corrupti suscipit iure magni praesentium recusandae. Sed hic aut id fugit. Et eius voluptatem ab aut et aut. Impedit tempore rem saepe consequatur eveniet.\n\nIn neque molestias aut laboriosam eum odio. Enim nemo totam deleniti molestiae sit nisi dignissimos eaque. Iusto dignissimos molestias iure perspiciatis ut ipsa dolorem. Nihil animi possimus sunt qui minima consequatur molestias et.', '2024-10-03 12:14:52', NULL, 1, 13);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
                                           `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                                           `categorie_title` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
                                           `categorie_slug` varchar(165) COLLATE utf8mb4_unicode_ci NOT NULL,
                                           `categorie_desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                           PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie_title`, `categorie_slug`, `categorie_desc`) VALUES
                                                                                          (1, 'consequatur', 'consequatur', 'Rerum eveniet possimus odio aut sit. Ut ratione repellendus ut nesciunt.'),
                                                                                          (2, 'ratione', 'ratione', 'Est similique incidunt reprehenderit velit eius dolorem odio et.'),
                                                                                          (3, 'quia', 'quia', 'Eos ipsa adipisci quis dolorem pariatur assumenda asperiores laboriosam.'),
                                                                                          (4, 'adipisci nulla', 'adipisci-nulla', 'Consectetur eveniet dolor et in. Sunt aut dolorem ut rerum ipsum enim ratione.'),
                                                                                          (5, 'maiores ut', 'maiores-ut', 'Placeat rem eveniet et repudiandae sed velit. Assumenda nam esse asperiores.');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_article`
--

DROP TABLE IF EXISTS `categorie_article`;
CREATE TABLE IF NOT EXISTS `categorie_article` (
                                                   `categorie_id` int UNSIGNED NOT NULL,
                                                   `article_id` int UNSIGNED NOT NULL,
                                                   PRIMARY KEY (`categorie_id`,`article_id`),
                                                   KEY `IDX_5DB9A0C4BCF5E72D` (`categorie_id`),
                                                   KEY `IDX_5DB9A0C47294869C` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie_article`
--

INSERT INTO `categorie_article` (`categorie_id`, `article_id`) VALUES
                                                                   (1, 31),
                                                                   (1, 32),
                                                                   (1, 33),
                                                                   (1, 34),
                                                                   (1, 35),
                                                                   (1, 36),
                                                                   (1, 37),
                                                                   (1, 38),
                                                                   (1, 39),
                                                                   (1, 40),
                                                                   (1, 41),
                                                                   (1, 43),
                                                                   (1, 45),
                                                                   (1, 46),
                                                                   (1, 47),
                                                                   (1, 48),
                                                                   (1, 51),
                                                                   (1, 53),
                                                                   (1, 54),
                                                                   (1, 56),
                                                                   (1, 57),
                                                                   (1, 58),
                                                                   (1, 60),
                                                                   (2, 32),
                                                                   (2, 33),
                                                                   (2, 34),
                                                                   (2, 35),
                                                                   (2, 36),
                                                                   (2, 37),
                                                                   (2, 38),
                                                                   (2, 40),
                                                                   (2, 41),
                                                                   (2, 42),
                                                                   (2, 45),
                                                                   (2, 46),
                                                                   (2, 48),
                                                                   (2, 49),
                                                                   (2, 50),
                                                                   (2, 51),
                                                                   (2, 52),
                                                                   (2, 53),
                                                                   (2, 54),
                                                                   (2, 56),
                                                                   (2, 57),
                                                                   (2, 58),
                                                                   (3, 32),
                                                                   (3, 33),
                                                                   (3, 37),
                                                                   (3, 38),
                                                                   (3, 39),
                                                                   (3, 40),
                                                                   (3, 41),
                                                                   (3, 43),
                                                                   (3, 46),
                                                                   (3, 47),
                                                                   (3, 48),
                                                                   (3, 49),
                                                                   (3, 50),
                                                                   (3, 51),
                                                                   (3, 53),
                                                                   (3, 54),
                                                                   (3, 55),
                                                                   (3, 56),
                                                                   (3, 57),
                                                                   (3, 59),
                                                                   (3, 60),
                                                                   (4, 31),
                                                                   (4, 33),
                                                                   (4, 34),
                                                                   (4, 36),
                                                                   (4, 37),
                                                                   (4, 38),
                                                                   (4, 40),
                                                                   (4, 41),
                                                                   (4, 44),
                                                                   (4, 45),
                                                                   (4, 46),
                                                                   (4, 47),
                                                                   (4, 48),
                                                                   (4, 49),
                                                                   (4, 50),
                                                                   (4, 51),
                                                                   (4, 52),
                                                                   (4, 53),
                                                                   (4, 54),
                                                                   (4, 56),
                                                                   (4, 57),
                                                                   (5, 31),
                                                                   (5, 33),
                                                                   (5, 34),
                                                                   (5, 35),
                                                                   (5, 36),
                                                                   (5, 37),
                                                                   (5, 38),
                                                                   (5, 40),
                                                                   (5, 41),
                                                                   (5, 42),
                                                                   (5, 43),
                                                                   (5, 46),
                                                                   (5, 47),
                                                                   (5, 49),
                                                                   (5, 50),
                                                                   (5, 51),
                                                                   (5, 52),
                                                                   (5, 56),
                                                                   (5, 58),
                                                                   (5, 60);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
                                             `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                                             `commentaire_many_to_one_article_id` int UNSIGNED DEFAULT NULL,
                                             `commentaire_title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
                                             `commentaire_text` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
                                             `commentaire_date_create` datetime DEFAULT CURRENT_TIMESTAMP,
                                             `commentaire_is_published` tinyint(1) NOT NULL DEFAULT '0',
                                             `utilisateur_id` int UNSIGNED DEFAULT NULL,
                                             PRIMARY KEY (`id`),
                                             KEY `IDX_67F068BC7698D20` (`commentaire_many_to_one_article_id`),
                                             KEY `IDX_67F068BCFB88E14F` (`utilisateur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `commentaire_many_to_one_article_id`, `commentaire_title`, `commentaire_text`, `commentaire_date_create`, `commentaire_is_published`, `utilisateur_id`) VALUES
                                                                                                                                                                                             (1, 45, 'veniam qui veritatis', 'Neque ut pariatur aliquam pariatur ex quasi.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (2, 50, 'fugiat omnis', 'Modi eum ducimus nobis quam perspiciatis qui.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (3, 46, 'ipsum ratione consectetur', 'Harum ut voluptate illum earum similique. Ut in earum qui sunt consequatur non unde.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (4, 41, 'ab sit ipsa', 'Omnis inventore quia ea est sunt ut ut. Suscipit eveniet quidem reiciendis tempora dolorem.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (5, 37, 'quis amet eum', 'Voluptatem illo quos voluptatem nisi qui natus. Suscipit aliquam consequuntur sunt ut hic blanditiis.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (6, 38, 'nihil perferendis', 'Unde vero adipisci perferendis ad. Placeat est labore consectetur cumque.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (7, 51, 'aut temporibus consectetur', 'Ducimus incidunt dolor ullam soluta magni. Non harum magni eum dolor sit iure ut.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (8, 47, 'cum sint quia', 'At qui dolorum ipsum. Aspernatur deleniti reiciendis ea adipisci qui rerum.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (9, 51, 'quae aliquid', 'Consequatur esse aut quo aut sequi fuga. Est voluptatem culpa quis sit quas.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (10, 56, 'aut fugiat', 'Eaque sunt asperiores nobis dolor distinctio magnam. Repellendus hic maiores enim doloribus quas.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (11, 54, 'cupiditate libero id', 'Autem deserunt possimus omnis aut aliquid omnis ipsam.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (12, 50, 'qui nobis et', 'Est qui omnis sequi cum. Expedita repudiandae voluptas necessitatibus sed.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (13, 31, 'quia incidunt et', 'Asperiores quo ut tenetur. Dolor sapiente molestiae quibusdam corporis.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (14, 38, 'totam omnis', 'In nulla aspernatur deleniti veritatis sequi vel.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (15, 39, 'dignissimos natus', 'Nihil alias nemo id debitis modi. Recusandae ducimus ratione quis et et laudantium et.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (16, 38, 'commodi in', 'Quisquam officia non qui distinctio labore.', '2024-10-03 12:14:52', 1, 15),
                                                                                                                                                                                             (17, 58, 'qui hic aut', 'Ut quidem rerum sunt porro quia aut. Sed deleniti consequuntur tempora.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (18, 56, 'qui quibusdam odio', 'Qui accusamus molestias et eum incidunt enim accusantium.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (19, 40, 'consequuntur rem', 'Voluptatum unde temporibus velit.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (20, 42, 'consequatur similique minima', 'Voluptate officia omnis tempore molestias.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (21, 41, 'deleniti ipsam sunt', 'Ab vitae voluptatibus labore necessitatibus. Fugiat ut unde dignissimos expedita quia nulla.', '2024-10-03 12:14:52', 1, 15),
                                                                                                                                                                                             (22, 38, 'quis dolorem', 'Libero quo minima nihil qui distinctio ut perferendis omnis.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (23, 33, 'dicta vero', 'Nihil consectetur debitis illo itaque earum eum rerum. Ullam incidunt eligendi illum placeat tempore ut ex.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (24, 47, 'quisquam quo non', 'Voluptas occaecati temporibus provident optio.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (25, 35, 'sed consequuntur aut', 'Provident autem cum veniam in. Numquam aut enim at sed.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (26, 55, 'veritatis excepturi quae', 'Nihil et alias veniam veritatis aliquam. Quaerat cum molestias natus vel modi reiciendis.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (27, 46, 'ad qui', 'Sapiente nam maxime occaecati. Quam inventore sint est quia eligendi consequatur occaecati.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (28, 32, 'culpa sed veritatis', 'Quaerat voluptatem quo et perferendis quo minus eius architecto.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (29, 48, 'officiis velit voluptas', 'Omnis hic officia minus unde nostrum sint odio. Eum eius possimus nesciunt consequatur.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (30, 42, 'at eveniet', 'Corrupti et explicabo adipisci aliquam magnam et est.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (31, 59, 'iure eius', 'Nobis odit provident veniam et quisquam. Cupiditate fugit odit consequatur ratione eos.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (32, 57, 'voluptas et', 'Ad consequuntur id corrupti.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (33, 53, 'aspernatur saepe fuga', 'Voluptas consectetur deleniti est dolore iure omnis omnis et. Est vel libero sunt sit.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (34, 44, 'quae aut', 'Officia velit et explicabo magnam consequatur. Velit omnis temporibus repellat excepturi dolor.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (35, 58, 'recusandae saepe rerum', 'Vitae exercitationem et dolorum aspernatur voluptatibus voluptatem quibusdam et.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (36, 44, 'expedita sunt repellendus', 'Itaque optio facere ut consequatur velit velit. Ea dolorum eaque dolor quibusdam iusto.', '2024-10-03 12:14:52', 1, 12),
                                                                                                                                                                                             (37, 58, 'molestias non', 'Vero minus reprehenderit dolores autem magni in eveniet dicta. Eos enim voluptatibus beatae laudantium facilis ut.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (38, 49, 'cupiditate quia omnis', 'Cumque neque eligendi excepturi.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (39, 55, 'dolores eius', 'Eum cum quasi est qui aliquam eius et.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (40, 57, 'corporis harum fugiat', 'Nihil qui qui est architecto reiciendis est.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (41, 59, 'aut quisquam', 'Enim sed non cumque consectetur. In pariatur minus et minus nostrum ab occaecati sit.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (42, 44, 'iusto pariatur aut', 'Laborum aliquid minima architecto sit.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (43, 54, 'eaque nisi accusantium', 'Architecto quas deserunt illum rerum.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (44, 51, 'est laborum eligendi', 'Omnis in commodi sit laudantium mollitia accusantium atque. Dolores dolores neque voluptas modi voluptatem dignissimos.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (45, 34, 'sit adipisci', 'Quod ex quam modi vel in velit provident.', '2024-10-03 12:14:52', 1, 12),
                                                                                                                                                                                             (46, 59, 'et mollitia sapiente', 'Animi temporibus culpa iure sunt qui facilis omnis aut.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (47, 50, 'architecto quae laudantium', 'Repudiandae ut quas est iusto sint reiciendis maiores. Velit quod expedita occaecati totam ipsa ducimus asperiores ut.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (48, 49, 'consequatur voluptas et', 'Corporis dolores neque deleniti omnis architecto. In consequuntur aut officiis error.', '2024-10-03 12:14:52', 1, 12),
                                                                                                                                                                                             (49, 43, 'vel quod', 'At sit et consequuntur amet. Consectetur odio quis eum eveniet.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (50, 49, 'nobis autem qui', 'Quis dolorum ipsum tenetur aspernatur voluptatem et. Ad non est aut natus maxime assumenda molestiae.', '2024-10-03 12:14:52', 1, 15),
                                                                                                                                                                                             (51, 49, 'harum suscipit consequatur', 'Vel ut error vel dolores. Eos laboriosam perferendis nihil voluptate expedita.', '2024-10-03 12:14:52', 1, 15),
                                                                                                                                                                                             (52, 36, 'aut natus cum', 'Aut voluptatum adipisci illum omnis quo et labore.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (53, 37, 'quo deleniti delectus', 'Optio molestias dicta cupiditate.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (54, 47, 'quo modi suscipit', 'Qui numquam maxime quam et debitis eveniet. Pariatur possimus aut saepe quia beatae sit aut assumenda.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (55, 57, 'et reprehenderit', 'Rem saepe nesciunt repellat aut dolor soluta odio nisi. Recusandae enim ut assumenda labore numquam incidunt provident.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (56, 39, 'doloribus maxime perspiciatis', 'Rerum iure rerum expedita aut. Consequuntur distinctio aut nesciunt nam.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (57, 56, 'rem dolores ducimus', 'Sit non alias magni molestiae velit nam.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (58, 50, 'recusandae assumenda', 'Consequatur vero mollitia odio eaque exercitationem nihil quis. Voluptatem iure cupiditate dolorem et.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (59, 60, 'nostrum optio', 'Quae voluptates autem quaerat quos est.', '2024-10-03 12:14:52', 1, 12),
                                                                                                                                                                                             (60, 34, 'ut eligendi', 'Velit perspiciatis minus rem consequatur sint et.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (61, 56, 'dignissimos deleniti aliquam', 'Non explicabo ut corporis repellat rerum.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (62, 60, 'unde nulla reprehenderit', 'Maxime voluptas nulla eligendi minus deserunt. Iusto adipisci consequatur aut minima magnam quis.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (63, 46, 'expedita eaque totam', 'Et nihil temporibus assumenda nostrum non quisquam. Et excepturi nostrum adipisci praesentium.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (64, 50, 'praesentium debitis neque', 'Nostrum in illo ut debitis sit ex dolor laborum. Et quisquam molestias sequi aut in.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (65, 39, 'rerum earum eveniet', 'Sed non est repudiandae omnis dolores.', '2024-10-03 12:14:52', 1, 15),
                                                                                                                                                                                             (66, 37, 'aliquam quia aspernatur', 'Esse officiis sit optio sequi nisi.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (67, 42, 'autem praesentium voluptatum', 'Est voluptas quis quaerat ut.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (68, 49, 'quaerat ipsum', 'Suscipit voluptatum similique ut dolorem. Eum nemo mollitia tenetur esse voluptate maxime.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (69, 41, 'sed sed id', 'Sint totam soluta praesentium asperiores eveniet.', '2024-10-03 12:14:52', 1, 12),
                                                                                                                                                                                             (70, 52, 'natus soluta', 'Culpa magnam ipsum eligendi soluta sint doloremque.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (71, 57, 'debitis officia', 'Repellendus minima nesciunt est veritatis et consequuntur.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (72, 51, 'debitis quia autem', 'Numquam iure enim dolorum ipsa omnis aut repellat. Dolorum consequatur ipsa dolores corrupti cupiditate neque incidunt.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (73, 33, 'ea dolore sint', 'Esse et voluptatum rerum dignissimos rem sequi corrupti animi.', '2024-10-03 12:14:52', 1, 13),
                                                                                                                                                                                             (74, 41, 'voluptatem accusamus optio', 'Sint quia et et quae nemo iusto quis nihil. Ipsa maxime qui quis debitis.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (75, 53, 'nisi voluptatem', 'Doloremque aut rerum cumque. Amet et magni sit.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (76, 52, 'animi expedita', 'Molestiae quam natus ut ut eveniet. Illum atque qui perferendis rerum qui.', '2024-10-03 12:14:52', 1, 15),
                                                                                                                                                                                             (77, 44, 'ut iste repellendus', 'Nihil eaque consequuntur rerum quia explicabo voluptate.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (78, 31, 'eum expedita', 'Assumenda nostrum velit voluptatibus quasi commodi autem laboriosam. Minus nemo deserunt quis asperiores nulla et.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (79, 45, 'omnis magni numquam', 'Rerum alias et necessitatibus excepturi ut.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (80, 42, 'sunt ducimus incidunt', 'Beatae voluptatum hic minus ut rerum eum deserunt. Ipsam assumenda optio placeat qui rem neque et.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (81, 58, 'qui dolor qui', 'Qui explicabo exercitationem error quod minima amet. Facilis ullam in ea doloribus sed iusto explicabo.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (82, 38, 'esse molestiae pariatur', 'Non ex facilis iste ut ut.', '2024-10-03 12:14:52', 1, 12),
                                                                                                                                                                                             (83, 35, 'consequuntur odio quam', 'Optio error aut aut quia iusto rerum. Debitis aliquid est voluptate nulla dicta qui.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (84, 60, 'placeat sunt quo', 'Ut consequatur dolorum id.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (85, 41, 'illo modi temporibus', 'Voluptatum quis facilis est iste consequuntur reiciendis qui. Inventore eveniet illo quia laudantium similique nihil.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (86, 40, 'consequatur deleniti dignissimos', 'Enim et autem ut cumque quam dolores.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (87, 39, 'aut architecto eum', 'Ut provident velit et perferendis quia sed.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (88, 36, 'quibusdam qui iusto', 'Illo corrupti odit est esse non ad. Sint eveniet est sint qui voluptates deleniti.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (89, 35, 'aspernatur voluptatum', 'Ea ea ea placeat minus temporibus. Eveniet necessitatibus et magnam culpa sit praesentium.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (90, 38, 'sit odio', 'Consequatur doloremque maiores odio consequatur fugiat.', '2024-10-03 12:14:52', 1, 17),
                                                                                                                                                                                             (91, 43, 'ut quibusdam', 'Aut nemo quo quisquam omnis iusto perferendis et vero.', '2024-10-03 12:14:52', 1, 15),
                                                                                                                                                                                             (92, 48, 'quis quo minus', 'Excepturi ut ut autem molestiae aliquid.', '2024-10-03 12:14:52', 1, 21),
                                                                                                                                                                                             (93, 33, 'ut earum', 'Mollitia dolore non qui praesentium enim ipsa provident. Magnam aliquid consequatur veniam dolorum.', '2024-10-03 12:14:52', 1, 18),
                                                                                                                                                                                             (94, 45, 'eum est', 'Sint distinctio earum accusamus officia et facere. Dolorem harum culpa amet commodi.', '2024-10-03 12:14:52', 1, 14),
                                                                                                                                                                                             (95, 54, 'delectus iste ab', 'Voluptate et facilis neque vero eum et sint.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (96, 57, 'non velit omnis', 'Voluptatem et incidunt asperiores sapiente. Nihil eveniet ut delectus et aliquam est et repudiandae.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (97, 31, 'modi consequatur', 'Minus alias ab molestiae vel quia numquam sunt. Iusto quas esse quis dicta veritatis optio quibusdam.', '2024-10-03 12:14:52', 1, 20),
                                                                                                                                                                                             (98, 59, 'soluta nihil quia', 'Vitae quos consectetur sunt cupiditate est. Quia velit suscipit iste doloremque.', '2024-10-03 12:14:52', 1, 19),
                                                                                                                                                                                             (99, 52, 'aliquam aut', 'Et ut aperiam eum reprehenderit officia consectetur. Expedita fugiat sit iste perspiciatis doloribus eos.', '2024-10-03 12:14:52', 1, 16),
                                                                                                                                                                                             (100, 51, 'saepe quis', 'Debitis sit aut quasi.', '2024-10-03 12:14:52', 1, 18);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
                                                             `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
                                                             `executed_at` datetime DEFAULT NULL,
                                                             `execution_time` int DEFAULT NULL,
                                                             PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
                                                                                           ('DoctrineMigrations\\Version20240823094208', '2024-08-27 13:01:26', 503),
                                                                                           ('DoctrineMigrations\\Version20240823120852', '2024-08-27 13:01:26', 945),
                                                                                           ('DoctrineMigrations\\Version20240823121620', '2024-08-27 13:01:27', 122),
                                                                                           ('DoctrineMigrations\\Version20240825101040', '2024-08-27 13:01:28', 1147),
                                                                                           ('DoctrineMigrations\\Version20240827132315', '2024-08-27 13:23:30', 96),
                                                                                           ('DoctrineMigrations\\Version20241003093207', '2024-10-03 09:32:20', 917),
                                                                                           ('DoctrineMigrations\\Version20241003093630', '2024-10-03 09:36:43', 601);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
CREATE TABLE IF NOT EXISTS `messenger_messages` (
                                                    `id` bigint NOT NULL AUTO_INCREMENT,
                                                    `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                                                    `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
                                                    `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
                                                    `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
                                                    `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
                                                    `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
                                                    PRIMARY KEY (`id`),
                                                    KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
                                                    KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
                                                    KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
                                             `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
                                             `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
                                             `roles` json NOT NULL,
                                             `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                             `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                             PRIMARY KEY (`id`),
                                             UNIQUE KEY `UNIQ_IDENTIFIER_EMAIL` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `roles`, `password`, `name`) VALUES
                                                                           (12, 'dupont0@dupont.com', '[]', '$2y$13$bYBQ6aXj57Xk81YlWjJGS.t9WYvkBCLuK57JtXVhdosJ4C3mzV5.a', 'Dupont0'),
                                                                           (13, 'dupont1@dupont.com', '[]', '$2y$13$BrqRcQM/1emF2.TZzVPuL.10/olg0Kwz/ybUuEjYf6yqJ1DvauDbO', 'Dupont1'),
                                                                           (14, 'dupont2@dupont.com', '[]', '$2y$13$ZY/ldnpc7KDwC0.O2ZxWZOMfUvmFBrCI.hc0wHA55K3SJyJHue2wG', 'Dupont2'),
                                                                           (15, 'dupont3@dupont.com', '[]', '$2y$13$IjOrwjlyjKj/NwO9TQ97TekmmkVDkAgU0u.4gRGbbOB65x8ISnN3m', 'Dupont3'),
                                                                           (16, 'dupont4@dupont.com', '[]', '$2y$13$RnNLpev45x8wtbvn6rt9UOmQtmN90IP1nHbaeVpnwcDCQD9IKNsmS', 'Dupont4'),
                                                                           (17, 'dupont5@dupont.com', '[]', '$2y$13$I/7NQ.7CHIbWWQWw4kH3xOUX2qcYU/YaEHCFC.pd8Aev1YEzewk8a', 'Dupont5'),
                                                                           (18, 'dupont6@dupont.com', '[]', '$2y$13$w9Nbpypr4.Ov3vp5lhif.uEbRLvYmd2SsriJ82yF7k9saqUWqy2wu', 'Dupont6'),
                                                                           (19, 'dupont7@dupont.com', '[]', '$2y$13$l2KrkNjLMUewPWpQT35Z6ONVm9guja5QwAhtsyw5w6LHH.O0aoTze', 'Dupont7'),
                                                                           (20, 'dupont8@dupont.com', '[]', '$2y$13$Ixjz8pSZ6KdZL3ZucC8MeeYSVp.2TThCwh/XJLfbHOlsxMLk1.4ku', 'Dupont8'),
                                                                           (21, 'dupont9@dupont.com', '[]', '$2y$13$8x3wKl4CG94vEtrvbVqByesRGp9A8ljRi2wz/gHiTUp/vHk5RiRk6', 'Dupont9');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
    ADD CONSTRAINT `FK_23A0E66FB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);

--
-- Contraintes pour la table `categorie_article`
--
ALTER TABLE `categorie_article`
    ADD CONSTRAINT `FK_5DB9A0C47294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
    ADD CONSTRAINT `FK_5DB9A0C4BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
    ADD CONSTRAINT `FK_67F068BC7698D20` FOREIGN KEY (`commentaire_many_to_one_article_id`) REFERENCES `article` (`id`),
    ADD CONSTRAINT `FK_67F068BCFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateur` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
