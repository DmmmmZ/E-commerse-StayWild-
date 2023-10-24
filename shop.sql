-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Жов 24 2023 р., 22:23
-- Версія сервера: 10.4.24-MariaDB
-- Версія PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(1, 'minus dolore', 'minus-dolore', '2023-04-11 07:15:22', '2023-04-19 17:55:49', '1681937749.jpg', 0),
(2, 'totam iste', 'totam-iste', '2023-04-11 07:15:23', '2023-04-19 17:56:29', '1681937789.jpg', 0),
(3, 'numquam fugiat', 'numquam-fugiat', '2023-04-11 07:15:23', '2023-04-19 17:56:07', '1681937767.jpg', 0),
(4, 'dolores nam', 'dolores-nam', '2023-04-11 07:15:23', '2023-04-19 17:49:57', '1681937397.jpg', 1),
(5, 'corrupti nam', 'corrupti-nam', '2023-04-11 07:15:23', '2023-04-19 17:46:39', '1681937158.jpg', 1),
(6, 'est laborum', 'est-laborum', '2023-04-11 07:15:23', '2023-04-19 17:54:43', '1681937683.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Top Title2', 'Title2', 'Sub Title2', 'Offer2', 'http://localhost:8000/shop', '1681907493.png', 1, '2023-04-19 09:31:33', '2023-04-19 09:31:33'),
(3, 'Top title 3', 'Title 3 ', 'Sub title 3 ', 'Offer 3 ', 'http://localhost:8000/shop', '1681907937.png', 1, '2023-04-19 09:38:57', '2023-04-19 09:38:57');

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_04_11_094210_create_categories_table', 2),
(8, '2023_04_11_094226_create_products_table', 2),
(9, '2023_04_19_101416_create_home_sliders_table', 3),
(10, '2023_04_19_200051_add_image_and_is_popular_column_to_categories_table', 4);

-- --------------------------------------------------------

--
-- Структура таблиці `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'deleniti fuga dolorem repellat ducimus minima', 'deleniti-fuga-dolorem-repellat-ducimus-minima', 'Nam inventore sit et. Voluptatibus culpa iure ducimus dolores. A hic est eligendi consequatur saepe dignissimos debitis. Saepe qui sapiente possimus quo aut.', 'Dicta neque voluptatem laudantium occaecati rem consequatur. Ut et sunt itaque vel explicabo autem. Enim soluta et quis reiciendis. Ullam accusantium illo magnam ut voluptatem ea. Est voluptates praesentium alias aperiam excepturi esse. Debitis voluptas quas quod soluta possimus deserunt. Illum ipsam consequatur voluptatum aliquam et aut molestiae. Optio dolor illo dolor delectus soluta consectetur. Animi mollitia maiores aut dolore esse rem. Consequatur nihil sequi enim dolor architecto.', '151.00', NULL, 'PRD473', 'instock', 0, 38, 'product-3.jpg', NULL, 2, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(2, 'qui tempore enim quia officiis odio', 'qui-tempore-enim-quia-officiis-odio', 'Similique dolorum qui a aut in eum est. Consequatur natus dicta asperiores maiores id nobis. Et unde ut tenetur nemo rerum quis ipsum. Est ut facere iusto facilis optio.', 'Cum et incidunt ipsum corrupti maiores iusto. Magni in qui ducimus accusamus quasi quia et. Et suscipit unde iure ut at ut iste ut. Magnam in laboriosam et corrupti sunt. Officia et impedit recusandae est. Dolores necessitatibus aut et distinctio et et. Et fugit iusto repellat velit atque. Ipsam fuga voluptatibus quis. Impedit et ex ipsum doloremque. Eos commodi voluptas iste nulla deserunt cupiditate est. Eveniet qui est eveniet est praesentium autem quidem.', '348.00', NULL, 'PRD481', 'instock', 0, 25, 'product-8.jpg', NULL, 2, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(3, 'voluptatem autem ab dolores accusamus dolore', 'voluptatem-autem-ab-dolores-accusamus-dolore', 'Modi quae cupiditate voluptatum illo. Qui saepe sunt culpa modi non. Quia eos earum ducimus voluptatem saepe nam. Placeat et qui commodi alias sapiente voluptas.', 'Modi magnam assumenda ducimus vel aut consequuntur aliquam. Minus voluptates nulla at quia. Quia consequuntur ullam omnis rerum quis fugit commodi est. Omnis molestiae illum eum non inventore. Maiores qui voluptatem qui illum. Adipisci aperiam ad pariatur non et aut et. Tempora aspernatur qui ratione eum qui molestiae illo. Beatae adipisci earum animi autem. Aspernatur accusantium accusamus dicta ipsum cumque architecto. Consectetur est quaerat nulla. Temporibus natus cumque ea.', '302.00', '270.00', 'PRD364', 'instock', 1, 30, 'product-13.jpg', NULL, 5, '2023-04-11 07:15:23', '2023-04-19 16:14:25'),
(4, 'cumque et iste nihil id voluptatum', 'cumque-et-iste-nihil-id-voluptatum', 'Et sint omnis occaecati sint eaque ratione. Numquam beatae voluptas eum repellendus a magnam.', 'Debitis totam magnam vel ipsa veritatis fugiat incidunt porro. Numquam rerum magnam vel earum. Id eius amet facere porro ratione totam earum. Aspernatur quo ratione modi quia. Culpa ab voluptatem voluptas exercitationem necessitatibus possimus. A quia ullam voluptatem laudantium. Quae quo autem voluptas et. Qui cumque fugit quo consectetur ut quia quis error. Voluptas in quidem dolorum et. Sed et velit omnis sit quia.', '494.00', NULL, 'PRD405', 'instock', 0, 36, 'product-12.jpg', NULL, 5, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(5, 'porro mollitia a aperiam est natus', 'porro-mollitia-a-aperiam-est-natus', 'Nulla quis qui et exercitationem minus. Odit minus numquam deleniti officiis architecto.', 'Explicabo aut et culpa dolores qui asperiores dolor perferendis. Beatae exercitationem quas occaecati molestiae voluptates error assumenda. Id et dolor neque ratione quod voluptatibus quis. Consectetur eos consequatur reprehenderit officia quam. Officia voluptates quis dolore iure voluptatem nihil sunt. Quas esse dolorem dolor totam exercitationem dolore suscipit. Omnis excepturi velit cum ut.', '298.00', NULL, 'PRD315', 'instock', 0, 17, 'product-15.jpg', NULL, 4, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(6, 'unde eaque error architecto sit temporibus', 'unde-eaque-error-architecto-sit-temporibus', 'Voluptas vero sed et molestiae ea est. Cupiditate modi itaque soluta rerum omnis. Nostrum iure mollitia fugiat quis deleniti voluptate quas.', 'Id nesciunt quisquam autem velit. Voluptatibus quae voluptates id inventore tempora est vero. Rerum dolor rerum neque quisquam veritatis reprehenderit magni. Perspiciatis ex sed et exercitationem. Velit velit deserunt non eveniet necessitatibus. Dolor eaque et ut consequuntur velit quam. Optio quo labore ratione. Nam eveniet omnis delectus. Harum numquam magni qui aut. Molestias ab ut placeat suscipit facere officiis ea.', '253.00', NULL, 'PRD411', 'instock', 0, 48, 'product-11.jpg', NULL, 4, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(7, 'sunt dolores dolores itaque dignissimos debitis', 'sunt-dolores-dolores-itaque-dignissimos-debitis', 'Dignissimos corrupti nisi cum delectus sed. Voluptatum velit veniam hic deleniti quis non. Velit exercitationem et ratione amet facilis sed et.', 'Sit ut sunt aut error nam. Nostrum neque dolorem facere sint eos aut vel. Accusantium commodi ea repellendus quia. Ad nesciunt doloribus voluptatem quos assumenda repudiandae nihil. Tenetur adipisci saepe est. Mollitia ex nihil voluptas libero reiciendis consequuntur.', '490.00', '440.00', 'PRD495', 'instock', 1, 42, 'product-16.jpg', NULL, 3, '2023-04-11 07:15:23', '2023-04-19 16:14:04'),
(8, 'doloremque eligendi maiores provident impedit quasi', 'doloremque-eligendi-maiores-provident-impedit-quasi', 'Delectus sit quas est. Quod et et quia magni sit alias. Ipsam autem labore adipisci odio.', 'Excepturi quaerat perspiciatis perspiciatis aut commodi animi. Dolor ipsum rerum est fugiat dolore eos. Velit hic mollitia amet ut quaerat adipisci. Dolorem commodi pariatur ipsum iusto libero. Nisi velit aut tenetur molestiae dolores. Quaerat ea modi eos. Tenetur qui consectetur et consequatur dolor. Eligendi soluta voluptas quae nam laborum placeat iure. Omnis sed explicabo in impedit ipsa. Atque veniam et sunt qui earum sit dolorum.', '36.00', NULL, 'PRD306', 'instock', 0, 43, 'product-6.jpg', NULL, 5, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(9, 'excepturi deleniti ducimus eos et expedita', 'excepturi-deleniti-ducimus-eos-et-expedita', 'Beatae nihil molestiae nesciunt rerum commodi perferendis illo. Magnam illo beatae mollitia qui. Sit nam consequatur nemo est et deserunt.', 'Officia aperiam eius dolorem consequatur nisi. Et quo placeat cumque ea magni dolorem. Ipsa quae enim quam aliquid quibusdam numquam ut. Aliquid quia exercitationem ad voluptas deserunt. Et fuga aut voluptas accusantium voluptas veniam. Vitae ullam quaerat rerum nobis illum consequatur similique. Qui rerum aliquam quasi totam aut voluptas. Soluta eius porro fugiat dolorem quos commodi perferendis.', '183.00', NULL, 'PRD170', 'instock', 0, 50, 'product-2.jpg', NULL, 3, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(10, 'consequatur cupiditate eaque blanditiis laudantium provident', 'consequatur-cupiditate-eaque-blanditiis-laudantium-provident', 'Doloribus tempore ut pariatur animi sint aut. Ratione autem ea quia beatae nulla beatae. Et sit dicta est cum numquam qui iste sit. Non similique consequatur quia enim praesentium error.', 'Ut voluptatem sapiente ipsum accusantium dolorum cumque occaecati. Voluptatem libero voluptas maiores. Ratione ad et quis omnis fugiat omnis. Occaecati iste illum debitis id blanditiis. Ab officia sit dolore ut. Ut voluptatem omnis earum et. Repellat fugit tempore culpa quaerat iste ipsum. Accusamus quo alias soluta et quo similique. Consequuntur minima nihil odit dolor voluptatem saepe vero. Minima qui dolores velit facere alias aut facere et. Repellendus ducimus architecto corporis aut autem.', '332.00', NULL, 'PRD248', 'instock', 0, 21, 'product-1.jpg', NULL, 5, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(11, 'qui facere dolores et reprehenderit incidunt', 'qui-facere-dolores-et-reprehenderit-incidunt', 'Nemo omnis dolorem nam illo voluptatum culpa. Voluptatem libero ratione aliquid rerum aut odio est. Ut fuga non debitis velit et omnis perferendis.', 'Et vel voluptas quia est et. Dignissimos atque cumque nihil et a. In eaque qui incidunt minus aut doloremque sit. Earum vel ad cumque beatae ipsa id. Est consequatur commodi accusantium consequatur. Qui quia sint omnis fuga quo. Et vero ex nihil eius ut dolore ducimus. Facilis commodi ullam ab quisquam. Incidunt inventore illum laudantium culpa rerum. Corporis non impedit enim et quam voluptatem labore.', '370.00', NULL, 'PRD458', 'instock', 0, 18, 'product-4.jpg', NULL, 4, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(12, 'dolorem consequatur sint quidem quis esse', 'dolorem-consequatur-sint-quidem-quis-esse', 'Ea est magnam est dicta perferendis. Modi temporibus saepe officia debitis ut. Velit et officia alias. Sint expedita et unde. Et voluptatem cum culpa.', 'Quia voluptas sint assumenda vel voluptate iure officia. Magni enim amet voluptatem quia. Eos consequuntur nesciunt facere vel qui at delectus nemo. Exercitationem eum eaque aliquid voluptate deserunt. Accusamus in nemo maxime ab. Et reprehenderit voluptates dolor corporis aut. Iusto ex accusantium vel minus nihil laboriosam. Ea sed fuga consequatur suscipit et provident dolor. Eum omnis et maiores voluptatem qui magnam eos.', '491.00', NULL, 'PRD351', 'instock', 0, 35, 'product-7.jpg', NULL, 1, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(13, 'eveniet ducimus est molestias consequuntur veniam', 'eveniet-ducimus-est-molestias-consequuntur-veniam', 'Eos labore similique qui ea nisi ad aliquam incidunt. Non repellat nihil tempore quia voluptas. Voluptatem incidunt est dolorum inventore et quo.', 'Cum consectetur deserunt enim inventore dicta magnam harum. Officia ut officia omnis voluptas aliquam et. Error et exercitationem possimus maxime voluptatem eligendi dolorem. Ducimus debitis ex reiciendis et similique sed. Repellat ducimus quis distinctio molestiae non. Corrupti magni aut ut porro sit aliquam. Eos et qui voluptas doloremque.', '434.00', NULL, 'PRD125', 'instock', 0, 10, 'product-9.jpg', NULL, 2, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(14, 'nihil id optio voluptatem est natus', 'nihil-id-optio-voluptatem-est-natus', 'Consequatur est dolor exercitationem odit magni porro temporibus minima. Fugit et et ex. Possimus voluptas exercitationem dolor voluptates.', 'Sit voluptate veritatis asperiores consequatur occaecati perspiciatis porro totam. Illo enim reiciendis est et. Et dolore itaque laborum ut repellendus velit. Repellat tempora neque reprehenderit beatae rerum. Nulla ipsum reiciendis esse sequi occaecati. Quia porro magni placeat est. Officiis voluptas nihil deleniti reiciendis eligendi blanditiis. Ab eligendi nisi beatae.', '23.00', NULL, 'PRD262', 'instock', 0, 46, 'product-10.jpg', NULL, 5, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(15, 'et expedita vel ut tempore sapiente', 'et-expedita-vel-ut-tempore-sapiente', 'Delectus quasi consequatur non et aut. Beatae explicabo minima eos.', 'Sit aspernatur accusamus exercitationem perspiciatis error ratione. Ad veniam accusantium provident et cum labore iure aliquam. Quo vero sunt ex praesentium dolorum dolor. Hic at ipsa deserunt quibusdam placeat aut perspiciatis. Error dolor vitae perspiciatis maxime est molestias id molestiae. Ut rerum provident in et. Illum et dolor sed et aperiam. Aliquam et ut beatae impedit fuga consequatur. Molestias id sint tenetur a. Enim culpa deleniti accusantium aperiam.', '456.00', NULL, 'PRD367', 'instock', 0, 47, 'product-14.jpg', NULL, 3, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(16, 'officia id placeat explicabo corrupti quis', 'officia-id-placeat-explicabo-corrupti-quis', 'Aut est vel ex est. Ipsam repellendus inventore magnam sunt. Et sit et natus eum blanditiis quia nihil. Quia ut illum magni earum culpa asperiores nostrum.', 'Eligendi qui consectetur nostrum distinctio asperiores dolorem neque. Aut laboriosam similique et accusamus sunt ducimus. Dicta omnis est suscipit omnis culpa. Quam maxime rerum quia dicta incidunt voluptatum dolore. Id assumenda voluptas totam aut rem rerum. Omnis aut accusantium voluptas quibusdam optio et. Perferendis qui totam omnis quidem dolore quae rem deserunt. Maxime aliquam id non pariatur in. In ullam inventore iste non est. Quod magni ipsa culpa sint velit culpa.', '51.00', NULL, 'PRD304', 'instock', 0, 21, 'product-5.jpg', NULL, 3, '2023-04-11 07:15:23', '2023-04-11 07:15:23'),
(34, 'Name5', 'name5', 'Short Description5', 'Description5', '777.00', '666.00', 'ASDASD1867', 'instock', 1, 69, '1681908989.jpg', NULL, 1, '2023-04-19 09:56:29', '2023-04-19 16:07:44');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Normal User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'admin@gmail.com', NULL, '$2y$10$yEspgeArELuP5AqCe2OzQeBYzNGFOJpaC/zOC.fzl4PVwdPhcLbwa', 'ADM', NULL, '2023-04-17 09:09:17', '2023-04-17 09:09:17'),
(2, 'USR', 'user@gmail.com', NULL, '$2y$10$XrJ6ZsOrakqRnUwZm9qNh.5Sm6LGxK7iBWB9Xht1WWpF6iX2TMdxq', 'USR', NULL, '2023-04-17 09:11:17', '2023-04-17 09:11:17');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Індекси таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Індекси таблиці `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Індекси таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблиці `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
