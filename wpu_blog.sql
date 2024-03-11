-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Mar 2024 pada 04.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programing', 'web-programing', '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(2, 'Personal', 'personal', '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(3, 'Web Design', 'web-design', '2023-11-29 23:19:51', '2023-11-29 23:19:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_22_044249_create_posts_table', 1),
(6, '2023_10_22_064321_create_categories_table', 1),
(7, '2023_11_01_041818_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Architecto odio fugit molestias sed.', 'exercitationem-qui-architecto-porro-consectetur-libero-ad', NULL, 'Necessitatibus quod ea tempora consectetur laboriosam.', '<p>Quo et in cumque ad officia qui. Fugit velit harum enim illum eaque qui. Harum similique aspernatur assumenda consequuntur rerum temporibus. Soluta delectus odio aliquid vero dolores magnam aspernatur.</p><p>Libero fuga impedit omnis culpa. Necessitatibus reiciendis ex consequatur tempora maiores expedita repellendus. Consequatur neque hic sed dolor accusantium culpa natus. Voluptatem dolore aperiam blanditiis quis perferendis iure enim.</p><p>At tempora minima est non veniam qui ullam. Eos dolor incidunt quo accusamus.</p><p>Quia consequatur vero mollitia beatae dolor. Voluptatem possimus cupiditate laboriosam eos molestiae nobis sit. Nostrum nihil reprehenderit odit numquam. Et et repellendus laborum earum sapiente nihil voluptatem tempore.</p><p>Autem alias aliquam animi magnam eos qui aut. Minima quia consequatur porro eum nobis sunt deleniti. Qui aut amet dolores modi qui nesciunt fugiat. Consequuntur numquam et fuga laborum blanditiis nemo.</p><p>Distinctio libero sequi at fugiat est vero ut. Non aut delectus velit ut. Perspiciatis nihil ullam aspernatur laudantium nemo consectetur a. Culpa iusto sunt at.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(2, 3, 1, 'Commodi in optio.', 'et-doloribus-neque-voluptatem-quam-voluptatem-magni-qui', NULL, 'Ipsam rerum voluptatum hic sunt sint id sit rerum autem odit.', '<p>Ad sed natus ut ea aliquid. Consequatur voluptatibus explicabo alias laboriosam qui sit qui. Labore quod aut optio nesciunt tempora.</p><p>Hic doloremque eum et sed. Id vitae at voluptatibus earum ab. Similique earum et aspernatur quod eum qui. Sint magni tempore illum excepturi et maiores reprehenderit.</p><p>Enim repudiandae voluptatum iste explicabo magni rerum. Fuga laborum aut iure dolorum quos nulla ab. Rerum sit non consectetur magnam fugit. Doloremque nemo non architecto rerum molestias culpa aut nostrum.</p><p>Et qui sed doloremque labore. Optio aut neque excepturi aut molestiae nihil. Harum ratione et reprehenderit aliquid eveniet. Eum ut saepe molestiae eveniet et molestias.</p><p>Sit officia officiis voluptates saepe qui architecto. Est voluptatem unde quo odio temporibus accusamus. Eaque exercitationem praesentium occaecati error non. Expedita dicta est excepturi aliquid voluptas sit. Omnis vel ullam et eum perspiciatis dolores.</p><p>Corporis optio fuga quas sed nihil itaque est omnis. Quis nemo est voluptatem cum. In dolore aliquid voluptas voluptatum voluptates libero voluptates qui. Id reprehenderit saepe voluptas libero.</p><p>Placeat quae neque dolores sequi. Et quae error magni molestias ab. Omnis earum consectetur non officiis mollitia et.</p><p>Aliquid porro facere deleniti fugit ea architecto ea officia. Soluta similique libero delectus et sit. Ipsa iure aut reprehenderit nihil soluta distinctio dicta.</p><p>Non ex ut eveniet perferendis est similique. Fuga reiciendis dolore sed aut nam. Corporis sit at qui quo quae. Dolore nesciunt et soluta sit et ea.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(3, 1, 5, 'Est sint sunt.', 'eveniet-excepturi-dolorum-asperiores-et', NULL, 'Nemo dicta accusamus libero vel atque excepturi repellat occaecati deserunt cupiditate sit omnis consequatur exercitationem numquam excepturi.', '<p>Consequatur numquam ratione et soluta. Qui facilis iusto nihil debitis est.</p><p>Quos impedit illum alias mollitia eaque dolorem. Eius dolorum magnam modi. Non deleniti modi quia sed excepturi et.</p><p>Nobis nam quidem mollitia ex veritatis. Repellendus sed cumque voluptates ut tenetur culpa. Necessitatibus voluptatem et molestiae.</p><p>Dolorem accusantium vero quia sed dolorem eaque id voluptate. Sed eum ducimus eaque voluptate quibusdam culpa repellendus. Tenetur pariatur labore voluptates tempore. Maiores aliquam ab incidunt quis.</p><p>Ratione provident amet ut sed numquam autem impedit. Temporibus aspernatur earum esse possimus et quas et illo. Explicabo rerum similique cumque quis deleniti.</p><p>Soluta dignissimos mollitia voluptatibus culpa magnam esse. Deserunt quo sit aut accusantium.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(4, 1, 4, 'Aut error optio sit odio.', 'pariatur-autem-consectetur-sint-omnis-dignissimos', NULL, 'Nam neque doloremque quis velit minus ut consequatur officia provident.', '<p>Consequuntur maiores doloribus quisquam nulla sapiente. Voluptate adipisci modi qui sunt aliquid quidem nobis. Ut et qui nihil nemo est. Et et fugit earum ut dolorem.</p><p>Deleniti veniam ut possimus. Velit dolores animi exercitationem aliquid possimus. Tempora sunt necessitatibus sed incidunt aspernatur omnis rerum. Soluta ut tenetur est maxime.</p><p>Molestias dolorem occaecati error consequuntur unde sint voluptate. Ullam et esse praesentium. Officiis tempora saepe est expedita.</p><p>Accusamus magni aut aut et fugit eos unde. Veniam nihil non quos et ut. Est est eos suscipit. Error voluptatibus totam necessitatibus quidem ab.</p><p>Magni mollitia est illo est sapiente quam temporibus. Quo nobis architecto nihil necessitatibus illo dolorem ipsa. Corrupti quia et hic quo dolorem consequatur. Non quos consequatur cumque ratione aspernatur aperiam non.</p><p>Deleniti aperiam architecto labore nostrum dolorem aut eos. Id non inventore et placeat aperiam id. Rerum incidunt hic quidem.</p><p>Nihil sint impedit dolore quidem consequatur qui recusandae. Ut sed vel enim nobis ipsa culpa. Eveniet officiis ea rerum odit placeat rem eos.</p><p>Ipsum et deleniti aut dicta. Sapiente et unde enim vero autem architecto quam. Cum numquam dolorum nobis nisi saepe id.</p><p>Sint sint quod doloremque. Ut libero aut laborum quae consequatur tempora culpa. Quasi sint provident aut. Architecto sequi error non aut et.</p><p>Suscipit omnis natus mollitia voluptatem ullam quo expedita culpa. Mollitia consequatur aut natus aspernatur suscipit et. Sit sit excepturi sunt dolor enim ut ut aut.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(5, 2, 5, 'Est aut voluptatem omnis omnis.', 'voluptas-atque-qui-commodi-eveniet-ut-est', NULL, 'Aspernatur cum quisquam quo sed dolores harum impedit commodi occaecati sapiente reiciendis.', '<p>Dolorem explicabo maiores commodi possimus illum. Dolorem ut ipsam omnis placeat. Consectetur aliquam aut qui molestiae fugiat.</p><p>Eum nobis distinctio aut cupiditate qui enim. Molestiae sint reprehenderit et cum. Nihil est accusamus aperiam iste quae est. Ea et sunt aut rerum aut at vero facilis.</p><p>Tempore totam ut vel eum non officiis. Nihil nam officiis odit corrupti eveniet. In dolor deleniti quisquam voluptatem id qui.</p><p>Accusantium ea in ut consequatur a illum reprehenderit. Fuga placeat nulla nihil nulla voluptas id officia. Corporis aliquid quam beatae doloribus et quos accusantium. Dolor et assumenda natus perspiciatis ut rerum est.</p><p>Cum et asperiores ipsum aliquam. Nobis enim consequatur aut. Consequuntur commodi voluptatum laborum ut aspernatur. Repudiandae omnis non accusamus consequatur et rerum commodi sunt. Et porro sit esse dolor et.</p><p>Amet quisquam enim cum occaecati eum ipsa. Voluptatem et in ducimus. Sed fugiat et ut quia.</p><p>Ut quidem voluptatibus libero ea odio sunt. Delectus explicabo blanditiis deserunt deserunt commodi libero ab. Aut qui eum architecto quos. Quae quia vero maxime possimus cupiditate similique tempore.</p><p>A facere doloribus perferendis quasi. Nam et ipsa omnis. Saepe dicta exercitationem nesciunt sed. Molestiae dolores et praesentium voluptas vero.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(6, 3, 2, 'Ea quis distinctio vero quia dolorum.', 'nihil-voluptatem-possimus-aut-quod-aspernatur-ullam', NULL, 'Sit fugiat voluptas consequatur et consectetur alias saepe debitis sint tempora.', '<p>Ea deserunt accusamus beatae reprehenderit corporis. Debitis ipsam nam cumque culpa molestias. Dolores animi et perspiciatis voluptate. Temporibus voluptatibus est natus ut in deserunt ad sit.</p><p>Qui facere et dolorum. Odio reiciendis nihil veniam velit omnis. Odit omnis culpa id aliquam similique. Doloribus ea qui quis et error. Dolorum repellat omnis inventore quia.</p><p>Fugit reprehenderit voluptatem provident voluptatum. Adipisci laudantium nostrum aliquid alias facilis. Voluptate et occaecati et excepturi. Sapiente vel voluptatibus quam ea.</p><p>Quam odit fugiat velit ipsam voluptatem laudantium voluptas. Necessitatibus sint totam odio ea nihil consequatur. Voluptate iure magni molestiae aspernatur rerum.</p><p>Et qui possimus aliquam consequuntur repudiandae quidem laudantium dolores. Non laborum qui error qui officia aut quas. Voluptas iure libero neque eos rem qui.</p><p>Voluptatem blanditiis ut quo nisi qui. Ex harum rerum quo ea. Quisquam eum voluptatem itaque quas quos rem.</p><p>Sit quo quia earum consectetur sed molestiae. Qui dicta soluta nam error molestiae nostrum quo.</p><p>Eos aspernatur qui maxime corrupti illum. Vero occaecati dolores in. Ea sit voluptas sequi dolore architecto quia sed. Officiis omnis reprehenderit illum. Sed porro sed aliquid voluptates sit.</p><p>Eligendi adipisci corporis sint accusantium. Architecto omnis autem dolorem incidunt. Voluptate excepturi sunt molestias consequuntur.</p><p>Debitis eius repellendus sit. Accusantium voluptatibus quia dolorum architecto dignissimos eius. Ab minima perspiciatis commodi quia facere.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(7, 1, 2, 'Consequatur nostrum aut exercitationem hic.', 'ullam-ut-vel-ullam-doloribus-assumenda-ut', NULL, 'Et deserunt consequatur sit rem doloremque.', '<p>Voluptas laudantium eaque porro rem nobis sit. Enim id debitis iusto consequatur voluptatem. Enim enim voluptas et aperiam nostrum. Ipsam odit ad minus ut aliquid placeat in dolor.</p><p>Omnis eveniet totam harum reprehenderit magni. Amet sit accusantium voluptatum eum. Aperiam voluptatem laboriosam natus debitis soluta. Est odit molestiae accusantium fuga.</p><p>Accusamus occaecati dolor voluptatem rerum id incidunt architecto. Dolore sint et qui. Commodi aut reprehenderit architecto molestiae rerum est.</p><p>Quo quia quae et error. Illo aut fugiat ratione ut earum voluptas. Reiciendis totam eos repellat vitae corporis optio veniam ut. Et quaerat placeat autem. Fugiat doloribus eum nisi ipsa itaque unde.</p><p>Autem nihil ea quo dolorum. Veniam temporibus maxime sed corrupti. Praesentium saepe incidunt voluptatem velit quasi.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(8, 3, 5, 'Repudiandae quia.', 'est-error-consequatur-voluptatem-occaecati-blanditiis-qui', NULL, 'Quod libero molestiae quos beatae quo suscipit repellendus et repellat alias aliquid consectetur sunt autem voluptate.', '<p>Illum asperiores error excepturi nemo. Saepe atque eveniet recusandae unde nesciunt id. Est quibusdam laudantium quasi ut minus sed voluptates.</p><p>Nesciunt voluptatem porro quos molestiae fugiat nisi recusandae praesentium. Quasi vero ea et ut dolore eaque aut. Aut occaecati ex nam adipisci. Aut accusantium soluta eos aliquid aliquid dignissimos voluptatem.</p><p>Assumenda autem autem unde explicabo sapiente debitis ullam. Natus quia praesentium maxime. Delectus iusto est quaerat.</p><p>Animi quod occaecati voluptate eum vel. Blanditiis ad laborum saepe vel deleniti. Qui eos earum et.</p><p>Necessitatibus quibusdam eaque repellendus sequi modi vel eligendi. Omnis magni non quas perferendis nostrum. Fugiat nemo quis rerum iure fugiat. Commodi autem rerum maxime eius est quo.</p><p>Quam suscipit officia ratione quasi. Qui esse doloribus et ab dolor nisi quisquam. Reiciendis est sit quam consequatur dolores repellat enim. Ad consequatur perferendis nisi dolorem.</p><p>Dolores qui inventore perspiciatis iusto facilis sed. Laborum qui beatae ut atque sint labore. Et aut est natus est. Nulla ratione error repellat sunt quis nobis. Vero voluptatem doloremque saepe dignissimos asperiores.</p><p>Sunt expedita doloremque explicabo quasi placeat. Fugiat quisquam eligendi et est. Voluptate consequatur recusandae omnis.</p><p>Modi voluptatum repellendus culpa soluta eos sequi enim. Optio autem rerum ut non in. Dolorum amet accusamus laborum molestiae deserunt.</p><p>Similique porro beatae dolores voluptas odio. Consequatur libero quam tenetur sequi. Iure dicta unde autem. Sapiente dolorem nihil eveniet consequatur consequatur facilis aperiam ea.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(9, 3, 1, 'Dignissimos voluptatum et veritatis quis.', 'aut-quis-aut-error-dolorum-non', NULL, 'Est praesentium unde illum et et minus atque facilis necessitatibus porro laborum.', '<p>Deserunt quo amet quis non deleniti. Est ratione ut a aut qui nesciunt autem.</p><p>Omnis est inventore dicta explicabo vero. Dolorem quia sint eius aliquam autem sit laudantium et. Quis et labore perspiciatis ex cumque. Ab in fugit perspiciatis blanditiis qui.</p><p>Et possimus quo assumenda in expedita a fuga veritatis. Nobis necessitatibus quis nesciunt labore odio sed veritatis optio. Delectus sunt animi quia. Maiores pariatur consequatur est consequatur.</p><p>Ut dolorem suscipit incidunt iste sit optio sunt dolores. Cumque temporibus consequatur est voluptate est itaque blanditiis. Facere sit rerum et. Temporibus sit sed deleniti quasi error eum.</p><p>Ut sit id dolorem. Omnis pariatur est voluptatem debitis aut iste consequuntur dicta. Error facilis molestias magni incidunt. Aut expedita aliquid deserunt quis.</p><p>Perspiciatis et quasi et sequi quis maiores optio. Consectetur aut ratione cumque reiciendis aut. Id maxime est minus omnis veritatis voluptatem ducimus perferendis. Doloribus nulla impedit dolorem nesciunt.</p><p>Commodi veniam quis impedit ut. Pariatur enim similique nesciunt ratione. Ea non nisi aut fugiat vel. Doloribus praesentium sunt qui qui eligendi.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(10, 1, 2, 'Nobis ab enim alias.', 'quo-provident-provident-cumque-nam-vero', NULL, 'Esse dolor id quisquam reiciendis ullam sed fugit officia commodi velit veritatis atque.', '<p>Aut nostrum illo odio corporis officiis recusandae optio. Vel autem inventore rem repudiandae ut in.</p><p>Doloribus distinctio est qui corrupti officia placeat. Iure non perferendis excepturi ut. Exercitationem ratione voluptatem exercitationem ipsum debitis ut velit. A cum nesciunt pariatur quod est.</p><p>Enim quia ad blanditiis suscipit. Est corporis pariatur hic. Aspernatur tempore porro doloribus ducimus. Enim aliquam sunt quia placeat.</p><p>Qui iste qui autem eius. Fugit omnis qui quidem aut alias dolor ullam. Odit aut voluptatem aut sit tempora voluptatem quam. Occaecati porro explicabo est numquam.</p><p>Dolores saepe in qui dolores aliquid velit. Sed adipisci qui doloremque voluptates voluptas nihil veniam. Unde exercitationem et officia esse et sit.</p><p>Quod quo possimus iure nihil repellat. Eum sed est omnis. Ut hic dolorem ducimus voluptatem voluptatem ipsum quia porro. Et veritatis corporis soluta et.</p><p>Labore molestiae alias vitae quod. Et ipsam facere et beatae vero. Sit sint et non aut voluptas tempore omnis.</p><p>Fuga tempora eum sed quas et aspernatur. Et deserunt harum molestias rerum et cum ab. Cumque velit sit nihil error. Porro earum fugiat deserunt nesciunt perferendis voluptatem quidem. Voluptas vero doloribus saepe ratione dicta non natus.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(11, 2, 1, 'Sint et quod et.', 'voluptatem-magnam-placeat-neque', NULL, 'Nisi autem consequuntur est et voluptatibus pariatur qui.', '<p>Omnis animi temporibus nostrum molestias et quae esse. Repudiandae animi aut recusandae dolorem laborum.</p><p>Consequatur modi eligendi consectetur doloribus eius et pariatur. Laborum officiis unde aut magnam excepturi a. Natus cum similique consequatur ipsa tempore ipsa. Earum aliquid praesentium aut dolorem.</p><p>Facere quis exercitationem consequatur quae et aperiam natus. Ea esse cupiditate et est aliquam fuga. Reprehenderit velit suscipit mollitia dicta nulla.</p><p>Ea quae ut qui et voluptatem sequi quisquam. Corporis consequatur officia occaecati laudantium. Ut ullam at nesciunt accusamus aut.</p><p>Est laborum voluptatem expedita eaque. Eum aperiam nemo alias aliquam qui reiciendis blanditiis rerum. Doloremque velit fuga dolores voluptatem. Eius earum excepturi labore doloribus. Recusandae officia atque eligendi sunt quam vel.</p><p>Exercitationem officia eum debitis exercitationem. Repudiandae blanditiis ducimus cupiditate aspernatur rerum. Et eum rerum minus enim voluptates.</p><p>Ducimus ratione voluptas quibusdam eaque est. Aspernatur nam dolor aut et. Sint ex dolor rerum error.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(12, 1, 4, 'Asperiores tempora.', 'rerum-maiores-et-vitae-laborum-quae-ut', NULL, 'Aut ipsa sed ut ut reiciendis culpa.', '<p>Eius ratione et inventore eum. Sed voluptate hic est neque ullam ut quis. Doloribus ex magnam sint in non voluptatem.</p><p>Modi molestias eos hic tempora quae eius quis culpa. Maxime et ut voluptate sit. Dolores quia dolorum nostrum sed et modi dolorem incidunt. Exercitationem totam ea minima veniam quas itaque omnis.</p><p>Aperiam in at ipsam sit tenetur velit labore. Modi perspiciatis adipisci recusandae quia temporibus. Sint doloribus illo tempora. Optio praesentium rem voluptas rerum.</p><p>Numquam aspernatur occaecati aliquam error fugit similique. Et ut voluptatibus ipsam est ut omnis doloribus. Quaerat sit quo ipsa itaque.</p><p>Voluptas optio nobis voluptas saepe aut. Iusto quo maiores cum quia. Et dolor voluptas reprehenderit.</p><p>Qui mollitia ut animi quia id ipsam nemo. Et accusantium excepturi ducimus aut voluptatibus dolore. At a voluptas doloremque.</p><p>Deleniti aut qui consequatur excepturi cumque. Rerum sit non doloribus nulla. Fuga inventore suscipit neque mollitia. Vel sit veritatis explicabo enim accusamus voluptatum alias non.</p><p>Recusandae est eligendi autem fugiat adipisci nostrum. Corrupti quaerat laboriosam consequatur explicabo ut quia quis. Magnam voluptates omnis dolores amet dolor dolorem. Dolorem quia qui nihil veritatis.</p><p>Recusandae libero doloribus et eum sed et vitae. Illum et minus sed modi sed architecto. Doloremque neque error ea. Rerum nihil dolore qui et est eos placeat.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(13, 2, 4, 'Voluptatem impedit.', 'ex-non-id-et', NULL, 'Totam sint mollitia nobis necessitatibus quaerat dolorem vel quos.', '<p>Aliquam esse expedita consequuntur saepe beatae cum. Nulla sed perferendis et asperiores beatae nam. Qui dolores quo sequi id minus est molestiae.</p><p>Quia aliquam quo ut sunt quae dolorem aliquam. Fugit sit aliquam facere provident qui quis. Voluptatem aut velit nisi dolorum dolorum veniam laborum aliquid.</p><p>Neque odio est asperiores est aut eum. Earum delectus aspernatur odit sint aut sunt sapiente. Non ut odio ipsam ut.</p><p>Suscipit quo similique quos omnis non quibusdam repudiandae necessitatibus. Harum rerum magni voluptatem harum vel ex in. Ratione sed velit beatae nihil ea.</p><p>Sunt nisi consequatur reprehenderit neque. Neque tenetur saepe non omnis qui voluptate. Velit cum facilis impedit ab voluptatem. Corporis dignissimos nobis eligendi iure iusto.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(14, 3, 4, 'Quae ea recusandae culpa.', 'sint-consequatur-corporis-veritatis-dolorem-itaque-doloribus-nam-voluptatibus', NULL, 'Veritatis at modi voluptas est officiis est.', '<p>Officiis sapiente et voluptatibus. Velit quaerat beatae atque qui. Voluptatem aliquid omnis doloribus quos.</p><p>Saepe consequatur ex harum eaque animi quidem eum. Quibusdam omnis voluptatem assumenda omnis totam consequatur. A veniam voluptates debitis qui sit numquam deleniti. Unde pariatur quidem laborum harum sint.</p><p>Nulla esse ut saepe blanditiis illum distinctio praesentium debitis. Quia quidem facere dolor omnis. Necessitatibus soluta nesciunt cupiditate repellendus. Nobis itaque ut et aliquam dolorem.</p><p>Velit excepturi ut suscipit. Recusandae rem ipsum possimus voluptatem molestiae qui similique. Dolorem facilis consequatur culpa quod reprehenderit. Ut ipsa ad sunt neque quod. Dolore et nam magni in et voluptatum odit.</p><p>Aut sint omnis consequatur non. Eaque molestiae ex eveniet repellat nulla sapiente similique. Consectetur maxime similique molestiae nihil. Culpa non excepturi dolorem sit iusto qui.</p><p>Architecto error ex molestiae ex. Perferendis quidem fugit sit nesciunt. Blanditiis et nihil voluptas porro. Voluptatem qui sequi natus.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(15, 1, 1, 'Et molestiae sed assumenda ipsum.', 'voluptatem-necessitatibus-a-vero-sed-quam-dolorem', NULL, 'Exercitationem consequatur quos ipsa non similique unde fugiat.', '<p>Saepe alias quia quisquam. A rerum veritatis quam et et sint.</p><p>Ex sit dignissimos doloribus ea sit. Omnis quaerat sed dolores consequatur. Ut natus qui accusantium veritatis voluptates tenetur. Asperiores sit iusto eius.</p><p>Odit omnis vel doloribus numquam unde quae nisi. Accusantium quod velit et quis necessitatibus consequatur aliquid. Aut et nobis enim reprehenderit. Velit qui occaecati et velit. Et laudantium voluptas natus et natus.</p><p>Tempora veritatis quibusdam occaecati mollitia deleniti quam et. Laboriosam dolor dolores ipsum a. Minima nihil est animi fugiat sit.</p><p>Laudantium soluta recusandae non est natus vel. Consequatur et dolorem nostrum rerum rerum molestiae similique. Animi quaerat beatae praesentium et laborum numquam optio. Maiores rerum dolorem omnis consequatur tempora minima. Eaque rerum error quasi id odit vel rerum.</p><p>Et repudiandae neque illum temporibus aut maiores ea qui. Veritatis non a error qui enim aut. Omnis est omnis fugit iure placeat. Odio ipsum dolore nostrum eaque consectetur quo.</p><p>Et error doloremque tempore impedit. Rem ut voluptatibus quas. Sed sed necessitatibus ratione rerum dolorem assumenda. Ut beatae magni aut veritatis explicabo architecto commodi.</p><p>Illo debitis ut deserunt voluptatem eum eum qui. Praesentium sint rerum voluptatem beatae. Deleniti dicta omnis pariatur eius.</p><p>Repudiandae ut occaecati eius eius. Quo tempore maxime mollitia officiis provident dolores. Totam commodi id mollitia qui similique unde.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(16, 3, 1, 'Veritatis minima.', 'eum-quia-repudiandae-voluptas-reiciendis', NULL, 'Aliquam laboriosam magni ex pariatur voluptatum ut.', '<p>Odio dignissimos molestiae ut ea. Velit dolore ab qui ea.</p><p>Numquam expedita voluptas nam vel voluptatum in nulla. Iste sapiente temporibus distinctio veniam saepe facere magni. Earum necessitatibus qui sed molestiae dolore.</p><p>Ullam adipisci ut soluta accusamus cum similique autem odio. Rerum vel consectetur dicta numquam dolor sequi laudantium. Fugiat dolorem placeat explicabo dolores ut et vel. Dolorem aut odio dolor eum vitae dolores.</p><p>Fugiat et autem aut veniam aut minus. Possimus porro accusamus id ut fugiat rerum. Asperiores autem est ex quidem. Deserunt ut quas eum esse recusandae.</p><p>Qui eius alias aut qui consequatur ipsa. Molestiae expedita optio rem non quo commodi. Aspernatur ea exercitationem voluptatibus temporibus et saepe. Deserunt molestiae sed quasi quidem quas est laudantium.</p><p>Ducimus in dolore itaque nam ea voluptate doloribus. Molestiae impedit ducimus ratione nihil doloribus at aut. Itaque incidunt asperiores hic accusantium possimus.</p><p>Quia quo officiis sint est illum beatae. Et modi sunt repudiandae totam eaque.</p><p>Enim maiores et voluptatem ut. Cumque voluptas blanditiis qui illum. Rerum quo vel magni. Laboriosam sint dicta ullam ea.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(17, 2, 3, 'Iure similique laboriosam.', 'maxime-consectetur-cum-id', NULL, 'Qui alias quas omnis soluta nihil aliquid officiis praesentium.', '<p>Possimus tempora labore aut libero debitis quisquam. Perferendis enim ratione quia in enim et quia. Quidem mollitia nam quia recusandae laborum.</p><p>Aspernatur ab voluptas architecto. Ea perferendis et quasi sit atque. Velit consectetur dignissimos non in in rem est. Excepturi pariatur excepturi repellendus nihil beatae accusamus dolore. Quisquam adipisci doloremque qui.</p><p>Architecto sequi omnis repellat nulla voluptates. Nemo dolor et et vero id. Esse nam dolorem magni quidem.</p><p>Vero doloribus ab voluptatem ut. Cum ad provident ea est rem. Laboriosam dolorem unde aperiam vel.</p><p>Fuga minima non laudantium non. Architecto illo dolorum fugit voluptatem. Voluptas nulla et quaerat dolore ea.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(18, 3, 1, 'Placeat eligendi blanditiis.', 'ab-et-dicta-quia-iste-quidem-possimus-natus', NULL, 'Illo sit ad reprehenderit laudantium velit repellendus dolorem itaque.', '<p>Corrupti dolores vel veniam atque et et nemo. Culpa perspiciatis debitis similique necessitatibus consequatur excepturi. Porro veritatis ab rem recusandae nobis. Sint animi amet dolor veritatis esse quia minus.</p><p>Aut magnam nihil consectetur id nesciunt quo. Ratione nobis eius harum nisi. Eum iure id quis veritatis corporis. Quia itaque incidunt a.</p><p>Facilis eius et est dolor harum aut consequatur. In dolores omnis molestiae. Quasi aut quaerat eum id ut. Sed ea ad aut repellendus optio deserunt.</p><p>Ut adipisci aliquid veritatis sint. Facere cum distinctio deserunt qui. Commodi ut ad ipsa excepturi autem aut ut sed.</p><p>Molestiae recusandae qui autem nihil dolore labore. Ratione laudantium dolorum qui nihil dolorem. Perferendis deleniti nobis ducimus ad repellat nemo aspernatur. Ea omnis consequatur unde accusantium voluptatem voluptatibus aut consequatur.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(19, 3, 5, 'Vero dolor autem sed recusandae.', 'placeat-magni-quam-aut-eum-porro-illo-tempore', NULL, 'Aut ipsam eaque veniam quia omnis perferendis qui voluptas quidem sunt.', '<p>Repellat ipsum eum sed accusamus neque adipisci ipsum mollitia. Provident itaque aperiam et quia aut molestiae quam. Et id error vel repudiandae debitis a corporis. Deserunt et maxime rerum nobis.</p><p>Iste voluptas voluptatem eos ea sed vitae. Officiis tempora facilis quia neque eius et at. Quibusdam nemo totam in optio nulla.</p><p>Amet et quia molestiae blanditiis sed. Modi aperiam consequatur commodi exercitationem voluptatem.</p><p>Nihil et occaecati sapiente minus et cupiditate. Qui dolorem qui sint. Ea illo odio similique totam cum. Dolores non laudantium vero ullam nihil.</p><p>Est sunt beatae sunt sed aut repellendus sapiente minus. Eum quas qui consequatur. Et recusandae sit quia harum excepturi. Sed velit et harum aut omnis veritatis.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(20, 1, 3, 'In ipsam quam.', 'officiis-rerum-autem-quisquam-consequatur-earum-aliquam-unde', NULL, 'Ratione quia consequatur sit aut aliquam qui similique blanditiis quae dicta.', '<p>Tenetur qui architecto voluptatem architecto sint fugit at. Aut et sed voluptatem nam accusantium. Et distinctio dolores in aliquid dignissimos. Atque id mollitia et nostrum.</p><p>Maiores et quaerat molestias quod. Quos possimus mollitia rerum laboriosam ut. Consequuntur corporis officia voluptas consequatur.</p><p>Animi et sint aspernatur ut. Perferendis neque aliquam voluptas rerum ea. Enim facere inventore voluptas qui ipsum sunt mollitia.</p><p>Autem dolores eum et qui neque. Neque magnam et unde. Velit aliquid nihil ut.</p><p>Illo asperiores nostrum temporibus quasi nihil accusantium saepe porro. Aut velit sed minima dolorum voluptatibus et. Ducimus dolor enim vero sint at.</p><p>Omnis doloremque aperiam animi eaque consequatur odit. Et est sed sit assumenda. Eaque nihil dicta quaerat iste. Eligendi ea facere sint earum dicta dolores repellat. Nihil laborum autem id voluptas non distinctio.</p><p>Aut quia sit tempora dolor aut pariatur. Tempora iure ex voluptatibus mollitia dolor. Omnis eligendi consequuntur aut optio qui voluptatum vero. Ea tempore et delectus in ut optio.</p><p>Beatae omnis esse aliquid exercitationem ducimus hic dolores odio. Vero ut error officiis et reiciendis.</p><p>Perspiciatis pariatur explicabo labore veritatis ea cupiditate asperiores. Qui inventore eveniet esse natus placeat omnis impedit. Quia nobis voluptatem dicta id voluptates est nesciunt.</p><p>Reprehenderit velit consequatur dolor in natus laboriosam velit est. Explicabo optio dolorem aperiam nihil qui quia.</p>', NULL, '2023-11-29 23:19:51', '2023-11-29 23:19:51'),
(21, 1, 1, 'belajar coding', 'belajar-coding', 'post-images/W50LuvZP5sg5Es1qd6mPJJTdEk2IGv4Ms4eYU9j5.png', 'yuk bisa yukk&nbsp;', '<div>yuk bisa yukk&nbsp;</div>', NULL, '2023-11-29 23:38:19', '2023-11-29 23:38:19'),
(22, 1, 4, 'Mencoba hal baru', 'mencoba-hal-baru', NULL, 'test', '<div>test</div>', NULL, '2024-02-17 06:27:33', '2024-02-17 06:31:17'),
(23, 1, 4, 'test satu dua', 'test-satu-dua', NULL, 'astest 2', '<blockquote><blockquote><blockquote>astest 2</blockquote></blockquote></blockquote>', NULL, '2024-02-17 06:33:01', '2024-02-17 06:37:17'),
(24, 2, 1, 'test', 'test', 'post-images/AeDJkah2xPFLLXHVHz2VuThnIYDtx3AmvLHl3mYj.jpg', 'assalamualaikum', '<div>assalamualaikum</div>', NULL, '2024-02-19 09:28:26', '2024-02-19 09:28:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'M Ridwan M.Kom', 'ridwan', 'ridwan@gmail.com', '2024-02-20 16:17:42', '$2y$10$aDdOy83r14kMu34TVna3XekzoYnK8brJUlMHbXbLh7cEmgObK8PSW', 'MFOxyS86Pg', '2023-11-29 23:19:51', '2023-11-29 23:19:51', 0),
(2, 'Ikhsan Salahudin S.I.Kom', 'laksita.radika', 'faizah14@example.net', '2023-11-29 23:19:51', '$2y$10$088o27WGBBps/KdECx02e.aEPYkxUPJXhgVxcVljpPEgltynK3GxG', 'VXSd2AvNOk', '2023-11-29 23:19:51', '2023-11-29 23:19:51', 0),
(3, 'Yuni Usamah S.IP', 'praba.riyanti', 'labuh.santoso@example.net', '2023-11-29 23:19:51', '$2y$10$KRgTVl86HbuJf3CgxlzOy.x9w9RRF4KyXN59lOZXQxdWVPcVU6nyi', 'iBBVJZIv41', '2023-11-29 23:19:51', '2023-11-29 23:19:51', 0),
(4, 'Aurora Sudiati', 'kastuti', 'nilam16@example.org', '2023-11-29 23:19:51', '$2y$10$MXZpiHcXl5EUochWyFbDZePgeh8bMwyZb8G95NNsGjd5nnLLwmu/q', 'CTwj3E37k7', '2023-11-29 23:19:51', '2023-11-29 23:19:51', 0),
(5, 'Cahya Gunawan', 'ramadan.anastasia', 'iastuti@example.net', '2023-11-29 23:19:51', '$2y$10$DUkp6fwhtaOgfXU88xo2auKRISXLhj5BCVTOqyySIXIjQdTUfLor6', 'kd9AFJBjcr', '2023-11-29 23:19:51', '2023-11-29 23:19:51', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
