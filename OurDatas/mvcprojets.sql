-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : ven. 26 mai 2023 à 13:18
-- Version du serveur : 10.10.2-MariaDB
-- Version de PHP : 8.1.13

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `mvcprojets`
--
DROP DATABASE IF EXISTS `mvcprojets`;
CREATE DATABASE IF NOT EXISTS `mvcprojets` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mvcprojets`;

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
                                          `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                          `title` varchar(100) NOT NULL,
                                          `content` varchar(800) DEFAULT NULL,
                                          PRIMARY KEY (`id`),
                                          UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `title`, `content`) VALUES
                                                      (1, 'BDD SQL', 'SQL (sigle de Structured Query Language, en français langage de requête structurée) est un langage informatique normalisé servant à exploiter des bases de données relationnelles. La partie langage de manipulation des données de SQL permet de rechercher, d\'ajouter, de modifier ou de supprimer des données dans les bases de données relationnelles.'),
                                                      (2, 'BDD NoSQL', 'En informatique et en bases de données, NoSQL désigne une famille de systèmes de gestion de base de données (SGBD) qui s\'écarte du paradigme classique des bases relationnelles. L\'explicitation la plus populaire de l\'acronyme est Not only SQL (« pas seulement SQL » en anglais) même si cette interprétation peut être discutée.'),
                                                      (3, 'BDD alternatives', 'Bases de données alternatives aux SQL et NoSQL'),
                                                      (4, 'Conception de BDD', 'La conception de base de données est l\'organisation des données selon un modèle de base de données . Le concepteur détermine quelles données doivent être stockées et comment les éléments de données sont interdépendants. Avec ces informations, ils peuvent commencer à adapter les données au modèle de base de données.'),
                                                      (5, 'Outils et liens utiles', 'Outils et liens utiles sur les bases de données');

-- --------------------------------------------------------

--
-- Structure de la table `category_has_post`
--

DROP TABLE IF EXISTS `category_has_post`;
CREATE TABLE IF NOT EXISTS `category_has_post` (
                                                   `category_id` int(10) UNSIGNED NOT NULL,
                                                   `post_id` int(10) UNSIGNED NOT NULL,
                                                   PRIMARY KEY (`category_id`,`post_id`),
                                                   KEY `fk_category_has_post_post1_idx` (`post_id`),
                                                   KEY `fk_category_has_post_category1_idx` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category_has_post`
--

INSERT INTO `category_has_post` (`category_id`, `post_id`) VALUES
                                                               (1, 1),
                                                               (1, 2),
                                                               (1, 3),
                                                               (1, 4),
                                                               (1, 8),
                                                               (1, 11),
                                                               (2, 5),
                                                               (2, 8),
                                                               (3, 4),
                                                               (3, 9),
                                                               (4, 8),
                                                               (4, 12),
                                                               (5, 10),
                                                               (5, 11),
                                                               (5, 12);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
                                      `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                      `title` varchar(200) NOT NULL,
                                      `content` text NOT NULL,
                                      `datecreate` datetime DEFAULT current_timestamp(),
                                      `visible` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 => not visible\n1 => visible',
                                      `user_id` int(10) UNSIGNED DEFAULT NULL,
                                      PRIMARY KEY (`id`),
                                      KEY `fk_post_user_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `datecreate`, `visible`, `user_id`) VALUES
                                                                                      (1, 'MySQL', 'MySQL est un système de gestion de bases de données relationnelles (SGBDR). Il est distribué sous une double licence GPL et propriétaire. Il fait partie des logiciels de gestion de base de données les plus utilisés au monde, autant par le grand public (applications web principalement) que par des professionnels, en concurrence avec Oracle, PostgreSQL et Microsoft SQL Server.\n\nSon nom vient du prénom de la fille du co créateur Michael Widenius: My. \n\nSQL fait référence au Structured Query Language, le langage de requête utilisé.\n\nMySQL AB a été acheté le 16 janvier 2008 par Sun Microsystems pour un milliard de dollars américains. En 2009, Sun Microsystems a été acquis par Oracle Corporation, mettant entre les mains d\'une même société les deux produits concurrents que sont Oracle Database et MySQL. Ce rachat a été autorisé par la Commission européenne le 21 janvier 2010.\n\nDepuis mai 2009, son créateur Michael Widenius a créé MariaDB (Maria est le prénom de sa deuxième fille) pour continuer son développement en tant que projet Open Source.\n\nMySQL est un serveur de bases de données relationnelles SQL développé dans un souci de performances élevées en lecture, ce qui signifie qu\'il est davantage orienté vers le service de données déjà en place que vers celui de mises à jour fréquentes et fortement sécurisées. Il est multi-thread et multi-utilisateur.\n\nC\'est un logiciel libre, open source, développé sous double licence selon qu\'il est distribué avec un produit libre ou avec un produit propriétaire. Dans ce dernier cas, la licence est payante, sinon c\'est la licence publique générale GNU (GPL) qui s\'applique. Un logiciel qui intègre du code MySQL ou intègre MySQL lors de son installation devra donc être libre ou acquérir une licence payante. Cependant, si la base de données est séparée du logiciel propriétaire qui ne fait qu\'utiliser des API tierces (par exemple en C# ou php), alors il n\'y a pas besoin d\'acquérir une licence payante MySQL. Ce type de licence double est utilisé par d\'autres produits comme le framework de développement de logiciels Qt (pour les versions antérieures à la 4.5).\n\nWikipédia : https://fr.wikipedia.org/wiki/MySQL', '2023-02-10 10:43:08', 1, 1),
                                                                                      (2, 'MariaDB', 'MariaDB est un système de gestion de base de données édité sous licence GPL. Il s\'agit d\'un embranchement communautaire de MySQL : la gouvernance du projet est assurée par la fondation MariaDB, et sa maintenance par la société Monty Program AB, créateur du projet. Cette gouvernance confère au logiciel l’assurance de rester libre.\n\nEn 2009, à la suite du rachat de MySQL par Sun Microsystems et des annonces du rachat de Sun Microsystems par Oracle Corporation, Michael Widenius, fondateur de MySQL, quitte cette société pour lancer le projet MariaDB, dans une démarche visant à remplacer MySQL tout en assurant l’interopérabilité. Le nom vient de la 2e fille de Michael Widenius, Maria (la première s\'appelant My).\n\nLes numéros de version de MariaDB suivent le schéma de numérotation de MySQL jusqu\'à la version 5.5. Étant donné que de nouvelles fonctionnalités spécifiques ont été développées dans MariaDB, les développeurs ont décidé qu\'un changement majeur de numéro de version était nécessaire - la version suivante après 5.5 était 10.0\n\nWikipédia : https://fr.wikipedia.org/wiki/MariaDB', '2023-02-10 10:47:43', 1, 1),
                                                                                      (3, 'SQLite', 'SQLite est une bibliothèque écrite en langage C qui propose un moteur de base de données relationnelle accessible par le langage SQL. SQLite implémente en grande partie le standard SQL-92 et des propriétés ACID.\n\nContrairement aux serveurs de bases de données traditionnels, comme MySQL ou PostgreSQL, sa particularité est de ne pas reproduire le schéma habituel client-serveur mais d\'être directement intégrée aux programmes. L\'intégralité de la base de données (déclarations, tables, index et données) est stockée dans un fichier indépendant de la plateforme.\n\nD. Richard Hipp, le créateur de SQLite, a choisi de mettre cette bibliothèque ainsi que son code source dans le domaine public, ce qui permet son utilisation sans restriction aussi bien dans les projets open source que dans les projets propriétaires. Le créateur ainsi qu\'une partie des développeurs principaux de SQLite sont employés par la société américaine Hwaci.\n\nSQLite est le moteur de base de données le plus utilisé au monde, grâce à son utilisation :\n\ndans de nombreux logiciels grand public comme Firefox, Skype, Google Gears,\ndans certains produits d\'Apple, d\'Adobe et de McAfee,\ndans les bibliothèques standards de nombreux langages comme PHP ou Python.\nDe par son extrême légèreté (moins de 600 Kio), il est également très populaire sur les systèmes embarqués, notamment sur la plupart des smartphones et tablettes modernes : les systèmes d\'exploitation mobiles iOS, Android et Symbian l\'utilisent comme base de données embarquée. Au total, on peut dénombrer plus d\'un milliard de copies connues et déclarées de la bibliothèque5.\n\nWikipédia : https://fr.wikipedia.org/wiki/SQLite', '2023-02-10 10:52:43', 1, NULL),
                                                                                      (4, 'Microsoft Access', 'Microsoft Access (officiellement Microsoft Office Access) est une base de données relationnelle éditée par Microsoft. Ce logiciel fait partie de la suite Microsoft Office.\n\nMS Access est composé de plusieurs programmes : le moteur de base de données Microsoft Jet, un éditeur graphique, une interface de type Query by Example pour interroger les bases de données, et le langage de programmation Visual Basic for Applications.\n\nDepuis les premières versions, l\'interface de Microsoft Access permet de gérer graphiquement des collections de données dans des tables, d\'établir des relations entre ces tables selon les règles habituelles des bases de données relationnelles, de créer des requêtes avec le QBE (Query by Example, ou directement en langage SQL), de créer des interfaces homme/machine et des états d\'impression. Comme pour les autres logiciels Office, le VBA,Visual Basic for Applications, permet de créer des applications complètes et en réseau local, y compris en utilisant, créant ou modifiant les fichiers (documents Word, classeurs Excel, instances Outlook, etc.) des autres logiciels de la suite sans quitter Access.\n\nLa dernière version en date est la version 2019 ; elle fait partie de la suite Microsoft Office 2019 et est incluse dans certaines options de l\'abonnement à Office 365. La version par abonnement, Microsoft Office 365, est actualisée automatiquement comme celle de Windows 10.\n\nWikipédia : https://fr.wikipedia.org/wiki/Microsoft_Access', '2023-02-10 10:55:33', 1, 2),
                                                                                      (5, 'MongoDB', 'MongoDB (de l\'anglais humongous qui peut être traduit par « énorme ») est un système de gestion de base de données orienté documents, répartissable sur un nombre quelconque d\'ordinateurs et ne nécessitant pas de schéma prédéfini des données. Il est écrit en C++. Le serveur et les outils sont distribués sous licence SSPL, les pilotes sous licence Apache et la documentation sous licence Creative Commons. Il fait partie de la mouvance NoSQL.\n\nMongoDB est développé depuis 2007 par MongoDB. Cette entreprise travaillait alors sur un système de Cloud computing, informatique à données largement réparties, similaire au service Google App Engine de Google.\n\nIl est depuis devenu un des SGBD les plus utilisés, notamment pour les sites web de Craigslist, eBay, Foursquare, SourceForge.net, Viacom, pagesjaunes et le New York Times.\n\nMongoDB permet de manipuler des objets structurés au format BSON (JSON binaire), sans schéma prédéterminé. En d\'autres termes, des clés peuvent être ajoutées à tout moment « à la volée », sans reconfiguration de la base.\n\nLes données prennent la forme de documents enregistrés eux-mêmes dans des collections, une collection contenant un nombre quelconque de documents. Les collections sont comparables aux tables, et les documents aux enregistrements des bases de données relationnelles. Contrairement aux bases de données relationnelles, les champs d\'un enregistrement sont libres et peuvent être différents d\'un enregistrement à un autre au sein d\'une même collection. Le seul champ commun et obligatoire est le champ de clé principale (\"id\"). Par ailleurs, MongoDB ne permet ni les requêtes très complexes standardisées, ni les JOIN, mais permet de programmer des requêtes spécifiques en JavaScript.\n\nWikipédia : https://fr.wikipedia.org/wiki/MongoDB', '2023-02-10 11:44:04', 1, 4),
                                                                                      (6, 'Cassandra', 'Apache Cassandra est un système de gestion de base de données (SGBD) de type NoSQL conçu pour gérer des quantités massives de données sur un grand nombre de serveurs, assurant une haute disponibilité en éliminant les points de défaillance unique. Il permet une répartition robuste sur plusieurs centres de données, avec une réplication asynchrone sans nœud maître et une faible latence pour les opérations de tous les clients.\n\nCassandra met l\'accent sur la performance. En 2012, des chercheurs de l\'université de Toronto étudiant les systèmes NoSQL ont conclu : « en termes d\'adaptabilité, il y a un gagnant indiscutable. Cassandra atteint le plus fort débit sur le maximum de nœuds dans tous les tests » même si « cela se fait au détriment d\'une latence élevée sur les lectures et les écritures ».\n\nLe projet est publié en logiciel libre et porté par la fondation Apache.\n\nWikipédia : https://fr.wikipedia.org/wiki/Cassandra_(base_de_donn%C3%A9es)', '2023-02-10 12:11:12', 1, 4),
                                                                                      (7, 'Propriétés ACID', 'En informatique, les propriétés ACID (atomicité, cohérence, isolation et durabilité) sont un ensemble de propriétés qui garantissent qu\'une transaction informatique est exécutée de façon fiable.\r\n\r\nDans le domaine des bases de données, une opération sur les données est appelée une transaction ou transaction informatique. Par exemple, un transfert de fonds d\'un compte de banque à un autre, même s\'il implique plusieurs actions comme le débit d\'un compte et le crédit d\'un autre, est une seule transaction.\r\n\r\nJim Gray a défini les propriétés qui garantissent des transactions fiables à la fin des années 1970 et a développé des technologies pour les mettre en œuvre automatiquement.\r\n\r\nEn 1983, Andreas Reuter et Theo Härder ont créé l\'acronyme ACID pour désigner ces propriétés.\r\n\r\nIl faut noter qu\'il existe des modèles de bases de données qui s\'écartent des propriétés ACID, pour répondre à d\'autres priorités comme la gestion de données massives et distribuées pour les usages du Big Data notamment par les géants d\'Internet: ce sont les bases NoSQL.\r\n\r\nWikipédia : https://fr.wikipedia.org/wiki/Propri%C3%A9t%C3%A9s_ACID', '2023-02-10 14:10:35', 1, 1),
                                                                                      (8, 'Merise2', 'Merise est une méthode informatique dédiée à la modélisation qui analyse la structure à informatiser en terme de systèmes. Le gros avantage de cette méthode est qu’elle permet de cadrer le projet informatique et de « discuter » en se comprenant entre utilisateurs et informaticiens.\r\n\r\nCréée dans les années 70 sur commande de l’État français et destinée aux gros projets informatiques de l’époque, la méthode a perduré jusqu’à aujourd’hui. Son utilisation très répandue en Europe constitue un socle difficilement contournable lorsque l’on s’attache à la création de bases de données.\r\n\r\nMerise est en fait un outil analytique qui facilite la création de base de données et de projets informatique. Le principal auteur de la méthode est Hubert Tardieu qui se basa sur les travaux autour du modèle relationnel de Codd. Concrètement Merise (que l’on prononce Meurise) permet de :\r\n\r\nhiérarchiser les préoccupations du gestionnaire de projet informatique\r\ndécrire le fonctionnement du système à informatiser et notamment :\r\nLes données (MCD) : quelles sont les relations et les dépendances entres les différents acteurs (client – commande – produit – fournisseur par exemple)\r\nLes traitements (MCT) : comment les acteurs travaillent-ils ensemble (comment se passe une commande concrètement par exemple)\r\nproposer une implémentation logique (MLD, MLT) du point précédent\r\nProposer une construction concrète et utilisable du point précédent (MPD, MOT)\r\n\r\n\r\nArticle venant de https://www.base-de-donnees.com/merise/', '2023-02-13 10:27:46', 1, 1),
                                                                                      (9, 'Mnesia', 'Mnesia est un système de gestion de base de données en temps réel distribué et souple écrit dans le langage de programmation Erlang . Il est distribué dans le cadre de la plate-forme Open Telecom.\r\n\r\nComme pour Erlang, Mnesia a été développé par Ericsson pour les travaux de calcul temps réel doux distribués et à haute disponibilité liés aux télécoms . Il n\'a pas été conçu comme un système général de gestion de base de données de traitement de données de bureau , ni pour remplacer les systèmes basés sur SQL . Au lieu de cela, Mnesia existe pour prendre en charge Erlang, où une persistance de type SGBD est requise. Il a plus en commun avec les SGBD intégrables tels que Berkeley DB qu\'avec n\'importe quel serveur de base de données SQL.\r\n\r\nLes \"lignes\" des tables sont représentées sous la forme d\'enregistrements contenant une valeur clé et un champ de données. Ce champ de données peut à son tour être un tuple contenant une structure de données Erlang de n\'importe quelle complexité.\r\n\r\nWikipédia : https://en.wikipedia.org/wiki/Mnesia', '2023-02-13 12:08:23', 1, 2),
                                                                                      (10, 'Je suis un programmeur débutant, j\'aimerais savoir ce qu\'est et à quoi sert réellement la programmation orientée objet ?', 'Version Courte:\r\n\r\nLa programmation orientée objet est un paradigme de programmation impérative. Elle sert à faciliter la modélisation du programme lors de la phase de conception.\r\n\r\nWow, minute, attend, qu\'est-ce que quoi ? Paradigme ? Modélisation ? On va y aller doucement, avec la…\r\n\r\nVersion Longue:\r\n\r\nUn paradigme, déjà, c\'est quoi ? Grossièrement, c\'est une façon de programmer. En réalité, ça va un peu plus loin. En effet, le langage façonne la pensée (c\'est à dire, qu\'on pense avec les mots dont on dispose, et non qu\'on crée des mots pour exprimer des concepts que l\'on pense sans mots pour les nommer), et ça n\'est pas très différent en informatique: le paradigme va façonner votre façon de concevoir votre programme (pour le meilleur et pour le pire).\r\n\r\nIl y a beaucoup de paradigmes, de sous-paradigmes, de sous-sous-sous-paradigmes, ils se croisent, s\'entrecroisent, on en utilise en général plusieurs à la fois, même si on n\'en a pas conscience, et ils sont plus ou moins compatibles entre eux.\r\n\r\nDans la programmation impérative, on pense le programme comme la suite des transitions entre ses états possibles, lesquelles transitions sont le produit du code écrit par le développeur. On dit au programme comment il doit accomplir son changement d\'état. Par exemple, en C, on change l\'état du programme en déclarant l\'existence d\'une variable, puis on change l\'état de cette variable en lui assignant une valeur, etc.\r\n\r\nCela s\'oppose à la programmation déclarative, dans laquelle on décrit l\'état désiré, et on laisse l\'implémentation du langage gérer la transition. Par exemple, en SQL, on décrit l\'état désiré (je veux une base dans tel état après une insertion, ou une mise à jour, avec telles conditions, etc) et on laisse l\'implémentation gérer la transition.\r\n\r\nLa programmation impérative est très certainement le paradigme que vous utilisez, peut-être sans le savoir. Parmi les sous-paradigmes de la programmation impérative, on trouve la programmation procédurale (ou orientée procédure), et la programmation orientée objet. Dans ces deux paradigmes, on définit des procédures et des fonctions.\r\n\r\nUne procédure est une suite d\'instructions qui va changer l\'état du programme. C\'est un peu comme une fonction (dans beaucoup de langages impératifs, les deux mots sont utilisés de façon quasi-interchangeables), sauf que ça ne retourne pas de résultat. Ca change juste l\'état du programme. Pensez au mot-clef void dans les langages C, C++, C# ou Java. Il définit une procédure.\r\n\r\nLa limite peut être floue. On peut avoir des procédures qui retournent un résultat pour indiquer si elle se sont déroulées correctement (et éventuellement, comment elles ont échoué, le cas échéant). Par exemple, la méthode add qu\'on retrouve sur les collections (Set, List, Queue, etc) en Java est une procédure, puisqu\'elle existe pour changer l\'état de la collection en y ajoutant des données, mais elle retourne un booleen qui vaut vrai si l\'ajout a bien été fait, et faux si la donnée n\'a pas été ajoutée pour n\'importe quelle raison (par exemple, si on tente d\'ajouter une donnée dans un Set alors qu\'il contient déjà cette donnée)\r\n\r\nOu à l\'inverse, on peut avoir des fonctions qui modifient l\'état du programme, en plus de retourner leur résultat (on appelle ça un effet de bord), par exemple une fonction qui modifierait un ou plusieurs de ses paramètres passés en référence.\r\n\r\nEn programmation procédurale, on sépare très fortement l\'état du programme de ses transitions. L\'état correspond aux données, ses transitions correspondent aux procédures. Le programme se pense alors comme la succession des procédures (lesquelles peuvent appeler des fonctions, ou d\'autres procédures). Le paradigme procédural est quasiment systématiquement celui qui est utilisé lorsqu\'on apprend les bases de la programmation. Si vous êtes très débutant, c\'est probablement celui que vous utilisez.\r\n\r\nEn programmation orientée objet, cette séparation n\'est pas aussi nette. On définit des objets, qui contiennent des membres. Ces membres peuvent être des données (des variables) qui définissent l\'état de l\'objet, on parle alors d\'attributs; ou des procédures (et des fonctions), qui définissent la façon dont l\'objet peut transitionner entre ses états, on parle alors de méthodes. On regroupe alors ensemble les données et le code qui va agir sur ces données. Le programme se pense alors comme l\'ensemble des objets qui le composent.\r\n\r\nVoilà pour ce qu\'est la programmation orientée objet. Maintenant, voyons à quoi elle sert.\r\n\r\nL\'avantage de la programmation procédurale est qu\'elle facilite énormément la conceptualisation du déroulement du programme. Elle convient très bien aux programmes qui utilisent un faible niveau d\'abstraction (systèmes d\'exploitations, pilotes de périphériques, etc). A l\'inverse, la programmation orientée objet facilite la modélisation des états du programme, tout en restant dans un paradigme impératif, ce qui peut bien convenir à des programmes qui exploitent un plus fort niveau d\'abstraction (applications de bureau, web services, etc).\r\n\r\nElle sert donc à faciliter (par rapport à la programmation procédurale) la conception du programme, dans certaines circonstances. Elle est très utilisées, car il se trouve que ces circonstances constituent la majorité des cas d\'utilisation de la programmation impérative.\r\n\r\nPar Antoine Berbineau\r\n\r\nDepuis Quora :\r\n\r\nhttps://fr.quora.com/Je-suis-un-programmeur-d%C3%A9butant-jaimerais-savoir-ce-quest-et-%C3%A0-quoi-sert-r%C3%A9ellement-la-programmation-orient%C3%A9e-objet', '2023-02-17 10:51:16', 1, 1),
                                                                                      (11, 'Structured Query Language', 'SQL (sigle de Structured Query Language, en français langage de requête structurée) est un langage informatique normalisé servant à exploiter des bases de données relationnelles. La partie langage de manipulation des données de SQL permet de rechercher, d\'ajouter, de modifier ou de supprimer des données dans les bases de données relationnelles.\r\n\r\nOutre le langage de manipulation des données  :\r\n\r\nle langage de définition des données permet de créer et de modifier l\'organisation des données dans la base de données,\r\nle langage de contrôle de transaction permet de commencer et de terminer des transactions,\r\nle langage de contrôle des données permet d\'autoriser ou d\'interdire l\'accès à certaines données à certaines personnes.\r\nCréé en 1974, normalisé depuis 1986, le langage est reconnu par la grande majorité des systèmes de gestion de bases de données relationnelles (abrégé SGBDR) du marché.\r\n\r\nSQL fait partie de la même famille que les langages ALPHA (dont il est le descendant), SQUARE, QUEL (intégré à Ingres) ou QBE (Zloof). Il a été appelé SEQUEL à sa naissance, mais ce nom a été changé en SQL du fait que SEQUEL était une marque déposée de l\'avionneur Hawker-Siddeley.\r\n\r\nEn juin 1970, Edgar Frank Codd publia l\'article A Relational Model of Data for Large Shared Data Banks (« Un référentiel de données relationnel pour de grandes banques de données partagées ») dans la revue Communications of the ACM (Association for Computing Machinery). \r\n\r\nCe référentiel relationnel fondé sur la logique des prédicats du premier ordre a été rapidement reconnu comme un modèle théorique intéressant, pour l\'interrogation des bases de données, et a inspiré le développement du langage Structured English QUEry Language (SEQUEL) (« langage d\'interrogation structuré en anglais »), renommé ultérieurement SQL pour cause de conflit de marque déposée.\r\n\r\nDéveloppée chez IBM en 1970 par Donald Chamberlin et Raymond Boyce, cette première version a été conçue pour manipuler et éditer des données stockées dans la base de données relationnelle à l\'aide du système de gestion de base de données IBM System R. Le nom SEQUEL, qui était déposé commercialement par l\'avionneur Hawker Siddeley pour un système d\'acquisition de données, a été abandonné et contracté en SQL en 1975. SQL était censé alors devenir un élément clé du futur projet FS.\r\n\r\nEn 1979, Relational Software, Inc. (actuellement Oracle Corporation) présenta la première version commercialement disponible de SQL, rapidement imité par d\'autres fournisseurs.\r\n\r\nSQL a été adopté comme recommandation par l\'Institut de normalisation américaine (ANSI) en 1986, puis comme norme internationale par l\'ISO en 1987 sous le nom de ISO/CEI 9075 - Technologies de l\'information - Langages de base de données - SQL.\r\n\r\nLien wikipédia :\r\nhttps://fr.wikipedia.org/wiki/Structured_Query_Language', '2023-02-19 11:01:10', 1, 2),
                                                                                      (12, 'DataGrip', 'Découvrez DataGrip, notre nouvel IDE de base de données conçu pour répondre aux besoins spécifiques des développeurs SQL professionnels.\r\n\r\nConsole de requête intelligente\r\nVous permet d&#039;exécuter des requêtes dans différents modes et fournit un historique local qui garde une trace de toute votre activité et vous protège de la perte de votre travail.\r\n\r\nNavigation efficace dans le schéma\r\nVous permet d&#039;accéder à n&#039;importe quelle table, vue ou procédure par son nom via l&#039;action correspondante, ou directement à partir de ses utilisations dans le code SQL.\r\n\r\nExpliquer le plan\r\nVous donne un aperçu détaillé du fonctionnement de vos requêtes et du comportement du moteur de base de données, afin que vous puissiez rendre vos requêtes plus efficaces.', '2023-04-05 13:50:45', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
                                      `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
                                      `username` varchar(80) NOT NULL,
                                      `usermail` varchar(200) NOT NULL,
                                      `userpwd` varchar(255) NOT NULL,
                                      `userscreen` varchar(400) NOT NULL,
                                      `useruniqid` varchar(120) DEFAULT NULL COMMENT 'idententifiant unique',
                                      `actif` tinyint(3) UNSIGNED DEFAULT 0 COMMENT '0 => inactif\n1  => actif\n2 => banni',
                                      PRIMARY KEY (`id`),
                                      UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `usermail`, `userpwd`, `userscreen`, `useruniqid`, `actif`) VALUES
                                                                                                      (1, 'michaeljpitz', 'michael.pitz@cf2m.be', '$2y$10$KYbexAa0gbqSZax/RsK7V.rQ23CPy5im1rwo3v5VfW23DGrO/GlUm', 'Michaël Pitz', 'php_63e608cc756556.00239810', 1),
                                                                                                      (2, 'pierresandron', 'pierre.sandron@cf2m.be', '$2y$10$h02u1E3QfzqInuQupysvA.eYQZ4mBrDh4PblaNvpUiTnIXL60oEvq', 'Pierre Sandron', 'php_63e6095a9828f3.13666748', 1),
                                                                                                      (3, 'clovisreuss', 'webprod@cf2m.be', '$2y$10$QrXku6rYE9M09.UESZnYUO3HW5L4dynMftQm7tZ9AFZIpGfwJgYsO', 'Clovis Reuss', 'php_63e60ac4dfd358.31228917', 0),
                                                                                                      (4, 'andrepalmisano', 'andre.palmisano@cf2m.be', '$2y$10$chNKn69X0oJl/lnJdXctwe54HZYzdpD8ngZuULLBWUz/jMlg3VKga', 'André Palmisano', 'php_63e60bbf70fce4.56128222', 0);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category_has_post`
--
ALTER TABLE `category_has_post`
    ADD CONSTRAINT `fk_category_has_post_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
    ADD CONSTRAINT `fk_category_has_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
    ADD CONSTRAINT `fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;
