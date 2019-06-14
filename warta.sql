-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2019 at 03:52 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id_ads` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `advertiser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `category`) VALUES
(1, 'Nasional'),
(2, 'Bola'),
(3, 'Politik'),
(4, 'Ekonomi dan Bisnis'),
(5, 'Pendidikan'),
(6, 'Teknologi'),
(7, 'Entertainment');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_bioskop`
--

CREATE TABLE `jadwal_bioskop` (
  `id_bioskop` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_sepakbola`
--

CREATE TABLE `jadwal_sepakbola` (
  `id_sepakbola` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `team` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_comment` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `id_news` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id_location` int(11) NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id_location`, `city`, `region`) VALUES
(1, 'Surabaya', 'Jawa Timur'),
(2, 'Jakarta', 'DKI Jakarta'),
(3, 'Bandung', 'Jawa Barat'),
(4, 'Ponorogo', 'Jawa Timur'),
(5, 'Raja Ampat', 'Papua Barat'),
(6, 'Denpasar', 'Bali'),
(7, 'Yogyakarta', 'DIY Yogyakarta');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1558449779),
('m130524_201442_init', 1558449784);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id_news` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `status_news` int(11) DEFAULT NULL,
  `likes` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `id_editor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id_news`, `id_post`, `status_news`, `likes`, `views`, `date`, `id_editor`) VALUES
(3, 6, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(4, 7, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(5, 8, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(6, 9, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(7, 10, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(8, 11, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(9, 12, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(10, 13, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(11, 14, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(12, 15, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(13, 16, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(14, 17, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(15, 18, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(16, 19, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(17, 20, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(18, 21, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(19, 22, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(20, 23, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(21, 24, 1, NULL, NULL, '0000-00-00 00:00:00', NULL),
(22, 25, 1, NULL, NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `title`, `content`, `created_at`, `updated_at`, `status`, `id_category`, `id_location`, `image`) VALUES
(2, 1, 'post 2', 'post 2', 1558647235, 1558647235, 1, 1, 1, '1'),
(3, 2, 'post 1', 'post 1 user 2', 1558647367, 1558647766, 1, 1, 1, '1'),
(4, 2, 'post 2', 'post 2 user 2', 1558648404, 1558648404, 1, 1, 1, 'http://localhost/advanced/common/assets/upload/googlelogo_color_120x44dp.png'),
(5, 2, 'post 2', 'post 2 user 2 image', 1558648550, 1558648550, 1, 1, 1, 'http://localhost/advanced/common/assets/upload/googlelogo_color_120x44dp.png'),
(6, 1, 'post 3', '<p>ini <strong>coba</strong></p>', 1560402042, 1560402070, 1, 1, 1, 'http://localhost/advanced/common/assets/upload/googlelogo_color_120x44dp.png'),
(7, 1, 'post 4', '<p>ini <strong>post 4</strong></p>', 1560404964, 1560405216, 1, 1, 1, '/advanced/common/assets/upload/b432a678566667.5ca88b3f1fc1d.png'),
(8, 1, 'Demo RUU di Hong Kong, Telegram Kena Serangan Siber', '<p>&nbsp;Layanan pesan instan Telegram terkena serangan siber yang diduga berasal dari China. Dilansir dari <i>AFP</i>, CEO Telegram Pavel Durov mengungkapkan serangan siber tersebut mungkin ada hubungan dengan kerusuhan politik yang sedang berlangsung di Hong Kong.<br><br>Telegram mengumumkan bahwa pihaknya menderita serangan Denial of Service (DDoS) terdistribusi yang kuat. Serangan ini melibatkan seorang hacker yang membanjiri server target dengan membuat sejumlah besar permintaan sampah yang sebagian besar datang dari China.<br><br>Durov memperingatkan pengguna di banyak wilayah mungkin menghadapi masalah koneksi.<br><br><br>\"Secara historis, semua DDoS berukuran besar (200-400 Gb/s) yang kami alami bertepatan dengan protes di Hong Kong,\" tweetnya.<br>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Lihat juga:<a href=\"https://www.cnnindonesia.com/teknologi/20181227114953-185-356704/telegram-kenalkan-fitur-pemungutan-suara-di-grup-chat/\">Telegram Kenalkan Fitur Pemungutan Suara di Grup Chat</a></td></tr></tbody></table></figure><p>\"Kasus ini bukan pengecualian.\"</p><p>Telegram kemudian mengumumkan di Twitter bahwa layanannya telah stabil. Mereka posting serangkaian tweet yang menjelaskan sifat serangan. Kementerian luar negeri dan administrasi dunia maya China tidak segera menanggapi permintaan komentar dari AFP.</p><p>Telegram memungkinkan pengguna untuk bertukar pesan teks terenkripsi, foto dan video, dan juga membuat \'saluran\' untuk sebanyak 200.000 orang. Mereka juga mendukung panggilan suara terenkripsi.</p><p>Telegram mengumumkan tahun lalu bahwa ia telah melewati 200 juta pengguna aktif bulanan. Aplikasi olahpesan terenkripsi seperti Telegram dan WhatsApp lebih disukai di seluruh dunia oleh beragam orang yang berusaha menghindari pengawasan oleh pihak berwenang seperti dari jihadis Negara Islam dan pengedar narkoba hingga aktivis hak asasi manusia dan jurnalis.</p><figure class=\"table\"><table><tbody><tr><td>Lihat juga:<a href=\"https://www.cnnindonesia.com/teknologi/20180831153103-185-326559/rusia-jajal-teknologi-baru-untuk-blokir-telegram/\">Rusia Jajal Teknologi Baru untuk Blokir Telegram</a></td></tr></tbody></table></figure><p>Pemerintah dalam beberapa tahun terakhir telah mencurahkan sumber daya yang signifikan untuk melanggar fitur keamanan aplikasi ini.</p><p>Hong Kong tak seperti China yang sangat membatasi akses internet seperti tempat Telegram diblokir.</p><p>Protes saat ini dipicu oleh kekhawatiran bahwa undang-undang yang diusulkan akan memungkinkan ekstradisi ke China dan membuat orang terkena sistem keadilan politis.</p><p>Banyak pengunjuk rasa di kota tersebut menggunakan Telegram untuk menghindari pengawasan elektronik. Para demonstrasi mengoordinasikan demonstrasi mereka terhadap rencana kontroversial yang didukung Beijing.</p><p>Demonstrasi turun menjadi aksi kekerasan pada Rabu lalu, ketika polisi menggunakan gas air mata dan peluru karet untuk membubarkan pengunjuk rasa yang mencoba untuk menyerbu parlemen kota.</p><p>Ini menjadi krisis politik terburuk Hong Kong telah terlihat sejak penyerahannya pada tahun 1997 dari Inggris ke China.&nbsp;</p>', 1560429633, 1560429661, 1, 1, 1, '/advanced/common/assets/upload/46849ab3-95fa-4bda-9e82-b8df0e1c446c_169.jpg'),
(9, 1, 'Cedera Parah di Timnas, Ramdani Lestaluhu Segera Jalani Operasi', '<p>Gelandang Persija Jakarta, Ramdani Lestaluhu, mengalami cedera patah tulang bahu saat membela timnas Indonesia dalam laga uji coba internasional berlabel FIFA Matchday kontra Yordania, Selasa lalu. Ia sudah dijadwalkan untuk naik meja operasi.</p><p>&nbsp;</p><p>Untuk membantu proses penyembuhan, tim medis Persija dilaporkan akan turun langsung setelah berkoordinasi dengan dokter timnas Indonesia. Ramdani dinilai harus segera menjalani operasi, namun keputusan final baru akan diambil setelah Ramdani tiba di Tanah Air Kamis sore, 13 Juni 2019.</p><p>&nbsp;</p><p>“Jadi kita sudah bicarakan langkah ke depannya harus seperti apa, kalau operasi sudah pasti. Terus jawabannya nanti diketahui karena kami harus menjemput dia dan juga berkoordinasi dengan PSSI,\" kata dokter klub Persija, Donny Kurniawan, Rabu.</p><p>&nbsp;</p><p>Donny menyatakan mereka bukan mengambil-alih.\"Tapi kami hanya mempermudah saja antara rumah sakit yang mengerjakan dengan klubnya. Sebenarnya langkahnya baru sampai situ,\" kata dia.</p><p>&nbsp;</p><p>&nbsp;</p><p>Rencananya, Ramdani akan menjalani operasi dan pemulihan di Rumah Sakit Premier Bintaro yang memang sudah bekerja sama dengan Persija. Di sana sudah ada paket lengkap tenaga medis dan fisioterapis untuk menangani cedera, baik saat operasi hingga masa pemulihan.</p><p>&nbsp;</p><p>\"Hal ini juga mempermudah kerja kami karena kami sudah bekerja sama dengan rumah sakit Premier Bintaro. Di sana ada tim kami dari bagian ortopedi, rehabilitasi, dan semuanya,\" jelas Dokter Donny.</p><p>&nbsp;</p><p>Ia melanjutkan, \"Kami juga sudah meyakinkan Ramdani bahwa operasi merupakan jalan terbaik. Memang kalau menyambung sendiri bagus, namun penggunaan pen pasti lebih baik lagi.\"</p><p>&nbsp;</p><p>Cedera yang dialami Ramdani tergolong serius. Dokter Donny memperkirakan pemain bernomor punggung tujuh itu akan absen cukup lama, yakni sekitar tiga sampai empat bulan.</p>', 1560431430, 1560432841, 1, 2, 2, '/advanced/common/assets/upload/bola_cederaparahditimnasramdani.jpg'),
(10, 1, 'Jadwal Liga Inggris Pekan Pertama: Ada Man United vs Chelsea', '<p>Jadwal Liga Inggris musim 2019/2020 sudah diumumkan. Pertandingan besar akan langsung tersaji pada pekan pembuka, yakni Manchester United akan menjamu Chelsea di Stadion Old Trafford.</p><p>&nbsp;</p><p>Laga panas Manchester United vs Chelsea akan digelar pada tanggal 11 Agustus 2019. Pertandingan tersebut merupakan laga penutup pekan pertama Liga Primer Inggris 2019/20.</p><p>&nbsp;</p><p>Musim lalu, duel Manchester United vs Chelsea di ajang Liga Primer Inggris selalu berakhir imbang. Pada pertemuan pertama di Stamford Bridge, Setan Merah berhasil menahan imbang tuan rumah dengan skor 2-2.</p><p>&nbsp;</p><p>Kemudian, pada pertemuan kedua di Old Trafford, gantian Chelsea yang berhasil mencuri poin setelah bermain imbang 1-1 dengan Manchester United. Meski gagal menang di Liga Primer, namun skuat asuhan Ole Gunnar Solskjaer itu berhasil mengalahkan Chelsea di ajang Piala FA.</p><p>&nbsp;</p><p>Satu-satunya kemenangan Manchester United atas Chelsea musim lalu diraih pada laga putaran kelima Piala FA yang dihelat di Stamford Bridge. Ander Herrera dan Marcus Rarshford menjadi pahlawan kemenangan dua gol tanpa balas Setan Merah atas tim tuan rumah.</p><p>&nbsp;</p><p>Selain duel panas Manchester United vs Chelsea, beberapa laga menarik lainnya juga akan tersaji pada pekan perdana Liga Primer Inggris 2019/20. Salah satunya adalah laga Newcastle United vs Arsenal.</p><p>&nbsp;</p><p>Newcastle United yang diberitakan bakal segera diakuisisi oleh miliuner asal Timur Tengah menjadi salah satu tim yang kiprahnya paling dinanti di musim baru Liga Primer Inggris.</p><p>&nbsp;</p><p>Sementara itu, juara bertahan Manchester City akan memulai musim baru dengan bertandang ke markas West Ham United. Sedangkan runner-up musim lalu, Liverpool, akan menjamu tim promosi Norwich City pada pertandingan pembuka Liga Primer Inggris 2019/20.</p><p>&nbsp;</p><p>Jadwal Liga Inggris pekan pertama</p><p>&nbsp;</p><p>9 Agustus 2019</p><p>Liverpool vs Norwich City</p><p>&nbsp;</p><p>10 Agustus 2019</p><p>West Ham United vs Manchester City</p><p>Bournemouth vs Sheffield United&nbsp;</p><p>Burnley vs Southampton&nbsp;</p><p>Crystal Palace vs Everton&nbsp;</p><p>Leicester City vs Wolverhampton</p><p>Watford vs Brighton&nbsp;</p><p>Tottenham Hotspur vs Aston Villa.</p><p>&nbsp;</p><p>11 Agustus 2019&nbsp;</p><p>Newcastle United vs Arsenal&nbsp;</p><p>Manchester United vs Chelsea.</p>', 1560431510, 1560432851, 1, 2, 2, '/advanced/common/assets/upload/bola_jadwalligainggrispekanpertama.jpg'),
(11, 1, 'Sepeninggal Ronaldo, Pengguna Nomor 7 di Man United Terus Mandul', '<p>Nomor punggung 7 di klub sepak bola Manchester United menjadi keramat setelah ditinggal Cristiano Ronaldo. Namun, para penerusnya, pemakai nomor tersebut, tak ada yang mampu menyamai ketajamannya.</p><p>&nbsp;</p><p>Ronaldo dibeli Manchester United pada tahun 2003 dari Sporting Lisbon. Ia bermain impresif dan membantu Manchester United memenangkan banyak gelar, termasuk Liga Primer Inggris, dan Liga Champions.</p><p>&nbsp;</p><p>Di Manchester United, Ronaldo dikenal dengan nomor punggung 7. Bahkan ia mendapatkan julukan CR7 karena nomor 7 sangat melekat dengan dirinya.</p><p>&nbsp;</p><p>Usai sukses besar bersama Manchester United, Ronaldo kemudian hengkang ke Real Madrid. Ia pun meninggalkan warisan nomor punggung 7 yang seperti menjadi nomor keramat. Akan tetapi, sejak ditinggal Ronaldo, para pemakai nomor punggung 7 hanya bisa mencetak total 15 gol saja.</p><p>TEMPO.CO, Jakarta - Nomor punggung 7 di klub sepak bola Manchester United menjadi keramat setelah ditinggal Cristiano Ronaldo. Namun, para penerusnya, pemakai nomor tersebut, tak ada yang mampu menyamai ketajamannya.</p><p>&nbsp;</p><p>Ronaldo dibeli Manchester United pada tahun 2003 dari Sporting Lisbon. Ia bermain impresif dan membantu Manchester United memenangkan banyak gelar, termasuk Liga Primer Inggris, dan Liga Champions.</p><p>&nbsp;</p><p>Di Manchester United, Ronaldo dikenal dengan nomor punggung 7. Bahkan ia mendapatkan julukan CR7 karena nomor 7 sangat melekat dengan dirinya.</p><p>&nbsp;</p><p>Usai sukses besar bersama Manchester United, Ronaldo kemudian hengkang ke Real Madrid. Ia pun meninggalkan warisan nomor punggung 7 yang seperti menjadi nomor keramat. Akan tetapi, sejak ditinggal Ronaldo, para pemakai nomor punggung 7 hanya bisa mencetak total 15 gol saja.</p><p>&nbsp;</p><p>Terakhir ada nama Alexis Sanchez. Dibeli dari Arsenal, publik Old Trafford awalnya berharap banyak dengan mantan pemain Barcelona ini.</p><p>&nbsp;</p><p>Namun, sampai saat ini Sanchez belum bisa memenuhi harapan publik Manchester United. Sejak kedatangannya dari Arsenal, Sanchez yang sudah tampil 32 kali bersama Manchester United hanya mencetak tiga gol.</p>', 1560431563, 1560432870, 1, 2, 2, '/advanced/common/assets/upload/bola_sepeninggalronaldopenggunanomor7dimanunited.jpg'),
(12, 1, 'Ahmad Dhani Dipindah ke Cipinang, Mulan Jameela Bahagia', '<p>Ahmad Dhani akhirnya tiba di Jakarta dan ditahan di Rumah Tahanan kelas 1 Cipinang. Sebelumnya, selama beberapa bulan ia ditahan di Rutan Kelas 1 Surabaya di Medaeng, Sidoarjo, atas permintaan Kejaksaan Negeri Surabaya.</p><p>&nbsp;</p><p>Pengacara Ahmad Dhani, Hendarsam Marantoko menuturkan kliennya saat ini sudah berada di dalam Rutan Cipinang. Hendersam juga mendampingi Mulan Jameela bersama kedua anaknya Safeea dan Airlangga. \"Tadi saya dampingi Mbak Mulan dan dua anaknya yang kecil,\" kata Hendarsam ketika dihubungi Tempo, Kamis, 13 Juni 2019.</p><p>&nbsp;</p><p>Hendarsam menuturkan, Mulan begitu senang ketika penahanan suaminya dipindahkan ke Cipinang. Alasannya, ia lebih leluasa untuk mengunjungi Ahmad Dhani, yang lokasinya tidak sejauh di Surabaya. Apalagi, ujar Hendarsam, anak-anak Ahmad Dhani begitu senang ketika berjumpa dengan ayahnya.</p><p>&nbsp;</p><p>Untuk kondisi Ahmad Dhani, kata Hendaesam, pentolan Dewa 19 ini dalam keadaan stabil. \"Sudah tidak ada lagi proses persidangan yang harus dijalani Mas Dhani, tinggal kami fokus putusan tingkat kasasi dan banding,\" tutur Hendarsam.</p><p>&nbsp;</p><p>Sebelumnya, Majelis hakim Pengadilan Negeri Surabaya menjatuhkan vonis satu tahun penjara kepada musikus Ahmad Dhani Prasetyo, Selasa, 11 Juni 2019. Ketua majelis hakim R. Anton Widyopriyono dalam amar putusannya menyatakan Ahmad Dhani terbukti secara sah dan meyakinkan bersalah melanggar Pasal 45 ayat 3 juncto Pasal 27 ayat 3 Undang-Undang ITE.</p><p>&nbsp;</p><p>Majelis berpendapat Ahmad Dhani dengan sengaja dan tanpa hak mentransmisikan konten penghinaan sehingga membuat orang lain tersinggung, khususnya penyebutan kata idiot. Sebab, menurut penjelasan saksi ahli bahasa, kata idiot mengacu kepada orang yang memiliki IQ paling rendah.</p><p>&nbsp;</p><p>Ahmad Dhani divonis atas ucapannya yang dinilai mengandung penghinaan dan pencemaran nama baik saat acara Deklarasi Ganti Presiden yang batal dilaksanakan di Surabaya, 26 Agustus 2018.</p><p>&nbsp;</p><p>\"Selanjutnya, kami akan mengembalikan Ahmad Dhani ke tempat penahanan asalnya, Rutan Cipinang, Jakarta,\" ujar Kepala Seksi Penerangan Hukum Kejaksaan Negeri Jawa Timur Richard Marpaung saat dikonfirmasi di Surabaya, Selasa 11 Juni 2019.</p>', 1560431690, 1560432903, 1, 7, 2, '/advanced/common/assets/upload/terbaru_ahmaddhanidipindahkecipinang.jpg'),
(13, 1, 'Taksi Terbang Uber Dicoba di Melbourne, 19 Km dalam 10 Menit', '<p>Uber akan melakukan uji internasional pertama untuk layanan taksi terbang UberAIR di kota terbesar kedua di Australia, Melbourne.</p><p>&nbsp;</p><p>Uber sebelumnya memilih Dubai sebagai lokasi uji internasional pertama, namun menangguhkan rencana di Timur Tengah itu kemudian mengalihkannya ke Australia.</p><p>&nbsp;</p><p>Tidak hanya Melbourne, taksi nirawak itu juga akan mengudara di sejumlah kota Amerika Serikat, termasuk Dallas dan Los Angles pada 2020, sebelum dioperasikan secara komersial pada 2023.</p><p>&nbsp;</p><p>\"Pemerintah Australia telah mengadopsi pendekatan ke depan untuk penerbangan dan teknologi transportasi di masa depan,\" ucap Manajer Regional Uber Australia, Selandia Baru dan Asia Utara, Susan Anderson, dilansir Reuters, Rabu, 12 Juni 2019.</p><p>&nbsp;</p><p>\"Hal ini, ditambah faktor demografis dan geospasial Melbourne yang unik, serta budaya inovasi dan teknologi, menjadikan Melbourne kota peluncuran yang sempurna untuk UberAir,\" kata dia.</p><p>&nbsp;</p><p>Penerbangan uji coba itu akan mengangkut penumpang dari tujuh pusat perbelanjaan Westfield, menuju bandara internasional Melbourne.</p><p>&nbsp;</p><p>Perjalanan sejauh 19 km dari pusat bisnis ke bandara diperkirakan akan memakan waktu 10 menit melalui udara, dibandingkan 25 menit jika ditempuh mobil.</p><p>&nbsp;</p><p>Layanan taksi udara berdaya listrik itu dapat dipesan pelanggan melalui aplikasi smartphone, sama seperti memesan taksi online.</p><p>&nbsp;</p><p>Pesawat, jet listrik dan helikopter yang dikembangkan Uber dapat lepas landas dan mendarat secara vertikal sehingga tidak memerlukan tempat yang luas untuk menjemput penumpang atau mengambil barang.</p>', 1560431748, 1560432914, 1, 6, 2, '/advanced/common/assets/upload/terbaru_taksiterbanguberdicobadimelbourne19kmdalam10menit.jpg'),
(14, 1, 'September 2019 Asteroid Mendekati Bumi, Ini Peluang Menabrak Kita', '<p>Dalam 3 bulan mendatang, Bumi memiliki peluang 1 banding 7.000 untuk kedatangan tamu tak diundang dari luar&nbsp;angkasa:&nbsp;<a href=\"https://www.tempo.co/tag/asteroid\">Asteroid&nbsp;</a>2006 QV89.&nbsp;Batuan antariksa ini diperkirakan akan meluncur mendekati planet kita pada 9 September 2019.</p><p>&nbsp;</p><p>Dalam daftar Badan Luar Angkasa Eropa (ESA) tentang benda-benda luar angkasa yang bisa bertabrakan dengan Bumi, yang diperbarui 6 Juni 2019, terdapat 10 objek dan Asteroid 2006 QV89 berada di peringkat keempat, demikian laman Livescience mengabarkan, Sabtu, 8 Juni 2019.</p><p>&nbsp;</p><p>Dibandingkan dengan asteroid sepanjang 10 kilometer yang diduga memusnahkan dinosaurus sekitar 66 juta tahun lalu, QV89 cukup mungil. Asteroid ini berdiameter hanya 40 meter.</p><p>&nbsp;</p><p>Dalam pemantauan ESA, rute Asteroid QV89 2006 ini diperkirakan paling dekat dengan Bumi sekitar 6,7 juta km. Sangat jauh memang, mengingat jarak Bumi dengan Bulan adalah 384.400 km.</p><p>&nbsp;</p><p>Peluang Asteroid QV89 2006 masuk atmosfer Bumi adalah 1 banding 7.299, kata ESA.</p><p>&nbsp;</p><p>Seperti namanya, Asteroid 2006 QV89 ditemukan pada 29 Agustus 2006 oleh Catalina Sky Survey, sebuah organisasi yang berbasis di observatorium dekat Tucson, Arizona.</p><p>&nbsp;</p><p>Asteroid sebenarnya adalah pengunjung yang cukup sering datang ke planet kita. Setelah kunjungan pada 2019, batu luar angkasa tersebut diperkirakan akan kembali mendekati Bumi pada 2032, 2045 dan 2062, ESA melaporkan.</p><p>&nbsp;</p><p>NASA, yang juga melacak benda-benda dekat Bumi, bersama dengan ESA bulan lalu menyatakan pemerintah dan ilmuwan harus menangani serangan asteroid.</p><p>&nbsp;</p><p>Namun, penggemar film Armageddon harus melupakan tentang meledakkan asteroid besar dengan bom. Sebuah studi yang diterbitkan pada bulan Maret di jurnal Icarus menemukan bahwa semakin besar&nbsp; asteroid, semakin sulit untuk meledak.</p>', 1560431809, 1560432926, 1, 6, 2, '/advanced/common/assets/upload/popular_september2019asteroidmendekatibumi.jpg'),
(15, 1, 'Aladdin 2019: Ini Perubahan Terbesar dari Film Animasi Asli', '<p>Film Aladdin 2019 telah menjadi hit box office untuk Disney. Meskipun mempertahankan faktor nostalgia utama, film itu membuat sejumlah perubahan pada karakter dan cerita, demikian dilansir laman Screenrent, baru-baru ini.</p><p>&nbsp;</p><p>Versi animasi asli, dirilis pada 1992, tetap menjadi salah satu animasi klasik Disney yang paling disukai dan paling ikonik. Hal itu, sebagian besar berkat Robin Williams sebagai Genie, serta lagu-lagu yang luar biasa yang ditulis oleh Alan Menken, Tim Rice, dan mendiang Howard Ashman.</p><p>&nbsp;</p><p>Remake live-action Aladdin, disutradarai oleh Guy Ritchie dan dibintangi Naomi Scott sebagai Jasmine, Mena Massoud sebagai Aladdin, dan Will Smith sebagai Genie. Namun, film sempat disambut dengan keraguan, meskipun begitu Ritchie telah berhasil membuat film keluarga yang hebat, berkat kemampuannya untuk meningkatkan dan menambah alur cerita, sambil tetap mengikuti aslinya.</p><p>&nbsp;</p><p>Ada sejumlah perubahan mendasar pada Aladdin 2019, beberapa di antaranya menjadikannya film yang lebih baik, dan beberapa di antaranya tidak berfungsi sama sekali. Berikut perubahan itu:</p><p>&nbsp;</p><p>1. Pertemuan Aladdin dan Jasmine</p><p>&nbsp;</p><p>Di Aladdin yang asli, Jasmine berkeliaran di pasar dengan menyamar ketika ia mengambil sebuah apel dari sebuah kios untuk diberikan kepada beberapa anak jalanan. Pemilik kios akan memotong tangannya karena pencurian, ketika Aladdin mengintervensi, berpura-pura Jasmine adalah saudara perempuannya yang gila.</p><p>&nbsp;</p><p>Ketika penjaga istana kemudian menangkap Aladdin karena pencurian, Jasmine mengungkapkan dirinya dan menuntut dia dibebaskan.&nbsp;</p><p>&nbsp;</p><p>Sementara Aladdin 2019, keduanya bertemu dengan cara yang sama, dengan Aladdin menyelamatkan Jasmine, tapi pertemuan pertama mereka berlangsung jauh lebih lama dibandingkan versi animasi. Mereka menyanyikan lagu \"One Jump Ahead\" bersama-sama, padahal itu lagu solo Aladdin pada awalnya.</p><p>&nbsp;</p><p>Jasmine tidak mengungkapkan siapa dia, tapi sebaliknya memungkinkan Aladdin untuk percaya bahwa dia adalah hamba perempuan sang putri. Jauh lebih banyak waktu dihabiskan untuk membangun hubungan&nbsp; di antara mereka berdua yang bertentangan dengan sudut cinta pada pandangan pertama dari kisah aslinya.</p><p>&nbsp;</p><p>2. Jasmin memiliki cerita, pelayan dan lagu baru</p><p>&nbsp;</p><p>Karakter Putri Jasmine telah lama diidolakan oleh anak-anak kecil di seluruh dunia, karakter itu tidak pernah benar-benar memiliki banyak substansi sampai sekarang. Awalnya, Jasmine bersemangat dan berkemauan keras, bertekad bahwa dia harus diizinkan untuk memilih orang yang dikenangnya, dan rindu untuk keluar dari batas-batas kehidupan istana, tapi dia berhenti menjadi seorang feminis proaktif.</p><p>&nbsp;</p><p>Dalam Aladdin 2019, Jasmine memiliki alur cerita yang lebih kuat. Dia aktif secara politik dan menaruh minat besar pada urusan Sultan, termasuk hubungan Agrabah dengan negara-negara tetangga.</p><p>&nbsp;</p><p>Jasmine terbukti cerdas, gigih, dan kuat, tapi itu tidak menghentikan perasaannya yang terperangkap. Dia diharapkan untuk menikah, dan berulang kali memohon ke ayahnya, Sultan, untuk mengubah hukum sehingga dia (wanita) bisa menjadi Sultan.</p><p>&nbsp;</p><p>Sebuah lagu baru, yang ditulis oleh Pasek dan Paul (Greatest Showman), berjudul \"Speechless,\" menyampaikan frustrasi Jasmine dengan&nbsp; sistem yang menguntungkan pria. Tambahan baru lain untuk Jasmine adalah karakter Dalia, pelayan perempuannya (Nasim Pedrad).</p><p>&nbsp;</p><p>Kedalaman hubungan antara kedua wanita itu jelas, seperti halnya rasa saling percaya yang mereka miliki bersama. Dimasukkannya Dalia dalam Aladdin 2019 tidak hanya menguntungkan karakter Jasmine. Dia juga sangat berdampak pada Jin.</p><p>&nbsp;</p><p>3. Will Smith, Jin yang berbeda</p><p>&nbsp;</p><p>Will Smith mengambil tugas yang agak tidak menyenangkan mengikuti jejak Robin Williams sebagai Genie. Itu tidak akan pernah menjadi peran yang mudah untuk dimainkan, tapi Smith membuat pekerjaan yang cukup bagus.</p><p>&nbsp;</p><p>Ada saat-saat ketika dia memerankan Jin seperti yang dilakukan Williams, dan ini terasa dipaksakan dan salah, tapitak terhindarkan. Lagu-lagu \"Friend Like Me\" dan \"Prince Ali\" akan selalu identik dengan Williams, dan tidak banyak yang bisa dilakukan Smith atau Ritchie tentang hal itu.</p><p>&nbsp;</p><p>Namun, untuk mengatasi ini, ada banyak momen dalam Aladdin 2019 di mana Smith diberikan perintahan bebas untuk menjadi dirinya sendiri, dan adegan-adegan itu cukup baik untuk ditonton. Smith adalah aktor komedi yang berbakat.</p><p>&nbsp;</p><p>Genie dan Aladdin memiliki hubungan yang lebih menyenangkan, persahabatan mereka terasa jauh lebih kuat. Perubahan besar lainnya pada Genie adalah bahwa keinginannya untuk bebas jauh spesifik: ia ingin menjadi manusia.</p><p>&nbsp;</p><p>Bahkan, ia sering mengubah dirinya menjadi manusia sementara bersama Aladdin, dan ia menyukainya. Dia juga, ternyata, mencintai Dalia, dan perasaan itu saling menguntungkan. Setelah Aladdin menggunakan keinginan terakhirnya untuk membebaskannya dan menjadikannya manusia, Genie dan Dalia membuat rencana untuk menikah, memiliki anak, dan berlayar ke seluruh dunia.</p><p>&nbsp;</p><p>4. Rencana dan sejarah Jafar diubah</p><p>&nbsp;</p><p>Salah satu penjahat terbaik Disney adalah Jafar, karena dia adalah yang terburuk. Di Aladdin 2019, bagaimanapun, dia buruk dengan cara yang sama sekali berbeda. Motivasinya telah berubah; dia jauh lebih seperti Aladdin dibandingkan penjahat yang ulung, dan perilakunya seperti anak kecil yang pemarah.</p><p>&nbsp;</p><p>Dia ingin menyerang Agrabah, tanpa alasan (tampaknya) selain ibu Jasmine tinggal di sana dan Sultan telah berjanji untuk keselamatan mereka. Jafar masih ingin menikahi Jasmine, tapi jelas bahwa dia membencinya dan hanya ingin mempermalukan Sultan.</p><p>&nbsp;</p><p>Perubahan lain pada kisah aslinya adalah bahwa Jafar diberi cerita latar tentang menjadi \'tikus jalanan\' seperti Aladdin. Dia adalah pencopet, dan mencuri kembali lampu dari Aladdin dengan menyamar dan menabraknya di pasar.</p><p>&nbsp;</p><p>5. Burung Beo Iago kurang memarik</p><p>&nbsp;</p><p>Seperti halnya perubahan pada karakter Jafar, sahabat karib burungnya, Iago, jauh kurang menarik. Awalnya disuarakan oleh Gilbert Gottfried, Iago sangat tidak sopan, sarkastik, pemarah dan jengkel yang permanen.</p><p>&nbsp;</p><p>Dia membenci Sultan, yang memanggilnya Pretty Polly dan memberinya kerupuk. Iago memiliki beberapa baris terbaik di Aladdin yang asli, tapi di Aladdin 2019 ia direduksi menjadi hanya komentar sesekali, dan hanya berfungsi sebagai pengamat bagi Jafar.</p><p>&nbsp;</p><p>Iago terlihat mendengarkan percakapan antara Aladdin dan Jin, dan melaporkan kembali ke tuannya, tapi kemenangan penuh kegembiraan yang pernah dimiliki Iago ketika dia berkokok tentang semua yang dia tahu telah hilang. Itu salah satu kekecewaan terbesar untuk Aladin 2019 (bersama Jafar), dan mengubahnya menjadi burung raksasa, mengerikan untuk mengejar Aladdin dan Jasmine di babak akhir sepertinya tidak ada gunanya dan sama sekali tidak menakutkan.</p><p>&nbsp;</p><p>6. Aladdin adalah Pangeran Ali lebih lama</p><p>&nbsp;</p><p>Aladdin 2019 melakukan pekerjaan besar untuk memperluas poin dalam cerita yang terjadi terlalu cepat pada kali pertama Aladdin menjadi Pangeran Ali, misalnya.&nbsp;</p><p>&nbsp;</p><p>Kedatangan Pangeran Ali ke Agrabah sama megahnya dengan lagu \"Pangeran Ali,\" tapi kita juga melihat Aladdin dan Genie (yang menyamar sebagai manusia) bertemu dengan Sultan dan Jasmine untuk pertama kalinya. Alih-alih bermain dingin seperti yang dilakukan Aladdin dalam film aslinya, ia canggung, gugup, dan benar-benar terlempar oleh Jasmine yang berada di ruangan itu.</p><p>&nbsp;</p><p>Dia mulai mengoceh tentang semua hadiah yang dia bawa untuk Sultan, termasuk berbagai kemacetan. Genie berdiri di sisinya, diam-diam mendesaknya untuk berhenti berbicara, tapi Aladdin melanjutkan, akhirnya memberitahu Jasmine bahwa dia datang untuk membelinya.</p><p>&nbsp;</p><p>Aladdin mencoba membuat Jasmine terkesan. Genie mencoba untuk membantu, dengan secara ajaib memungkinkannya untuk menari, dan untuk sesaat Jasmine tampak senang dengan pilihannya sebagai pasangan dansa.</p><p>&nbsp;</p><p>Namun, semua itu keluar dari rel, dengan Genie dibawa pergi dan Aladdin (sebagai Pangeran Ali) melakukan trik yang lebih aneh. Aladdin memutuskan untuk mencoba taktik yang berbeda, dan setelah membawa Jasmine naik karpet ajaib (A Whole New World) ia membuka identitas aslinya.</p><p>&nbsp;</p><p>Namun, dia mengatakan kepada Jasminebahwa dia benar-benar seorang pangeran dan hanya menyamar sebagai petani untuk melarikan diri dari kehidupan istana. Ini mengarah ke pertengkaran besar antara Jin dan Aladdin, yang hanya diperbaiki ketika Genie menyelamatkan Aladdin dari dasar laut.</p><p>&nbsp;</p><p>7. Aladdin 2019, Kisah Will Smithsebagai Jin</p><p>&nbsp;</p><p>Film Aladdin ini tidak bisa lepas dari peran Will Smith. Dia membuka film dengan cerita tentang malam Arab, yang membawa ke pasar Agrabah. Pada akhirnya, kita kembali Jin sebagai manusia bersama Dalia dan anak mereka berlayar di atas kapal. Ini adalah sentuhan yang bagus untuk keseluruhan film.</p>', 1560431880, 1560432934, 1, 7, 2, '/advanced/common/assets/upload/popular_aladdin2019iniperubahanterbesar.jpg'),
(16, 1, 'Tito Karnavian: Kemungkinan Ada Kelompok Tunggangi Aksi 21-22 Mei', '<p>Kapolri Jenderal Tito Karnavian menduga kemungkinan ada pihak lain yang menunggangi aksi di Bawaslu pada 21-22 Mei 2019. Aksi tersebut berujung kerusuhan berupa perusakan dan pembakaran di beberapa titik Jakarta.</p><p>&nbsp;</p><p>Tito mengatakan, ada tiga kelompok yang memiliki senjata ilegal yang diduga berkaitan dengan peristiwa tersebut.</p><p>&nbsp;</p><p>\"Pertama ada 15 orang dengan empat senjata api di Jawa Barat. Yang kedua adalah bapak S yang mengirimkan senjata dari Aceh, sekarang disita. Lalu bapak Kivlan Zen, ada empat senjata api. Mungkin ada pihak lain yang tak terdeteksi menggunakan senjata api,\" kata Tito di Lapangan Monas, Jakarta, Kamis, 13 Juni 2019.</p><p>&nbsp;</p><p>Mantan Kapolda Metro Jaya ini menegaskan, pihaknya tengah melakukan investigasi tentang banyaknya korban berjatuhan baik dari aparat petugas maupun massa.</p><p>&nbsp;</p><p>\"Kita lihat apakah mereka adalah korban sebagai perusuh atau mereka korban masyarakat biasa. Ini sedang didalami oleh tim,\" ujar Tito.</p><p>&nbsp;</p><p>Selain itu, Tito menegaskan saat ini timnya bekerja paralel dengan Komnas HAM dan nantinya data dari kepolisian dengan data Komnas HAM direkonsiliasi.</p><p>&nbsp;</p><p>\"Jadi kami tidak mau membuat menjadi sama, tapi masing-masing berbeda yang penting ada komunikasi karena data dan fakta itu perlu,\" kata Tito Karnavian.</p><p>&nbsp;</p><p>Sebelumnya Polri menyampaikan bahwa jumlah korban meninggal akibat kerusuhan 21-22 Mei sebanyak sembilan orang dan ratusan orang luka-luka.</p><p>&nbsp;</p><p>\"Polri sudah bentuk tim investigasi yang diketuai oleh Irwasum Polri untuk menginvestigasi semua rangkaian peristiwa 21-22 Mei termasuk juga 9 (korban),\" ujar Kepala Divisi Humas Polri Inspektur Jenderal M Iqbal di kantor Kemenko Polhukam, Jakarta, Selasa, 11 Juni 2019.</p>', 1560431926, 1560432949, 1, 3, 2, '/advanced/common/assets/upload/politik_titokarnaviankemungkinanadakelompoktunggangiaksi2122mei.jpg'),
(17, 1, 'Sri Mulyani Pastikan Gaji ke-13 PNS Cair 1 Juli 2019', '<p>Menteri Keuangan Sri Mulyani&nbsp;Indrawati memastikan gaji ke-13 bagi Pegawai Negeri Sipil atau&nbsp;<a href=\"https://bisnis.tempo.co/read/1211375/pimpin-upacara-hari-pancasila-sri-mulyani-minta-pns-tangkal-hoax\">PNS</a>&nbsp;akan segera cair bersamaan dengan penerimaan gaji pada 1 Juli 2019.&nbsp;“Iya, memang waktu itu diumumkan 1 Juli (pembayaran),\" kata Sri Mulyani&nbsp;di Istana Negara, Kamis, 13 Juni 2019.</p><p>&nbsp;</p><p>Sri Mulyani menjelaskan, dengan kondisi saat ini, setelah masa libur Lebaran, semua satuan kerja sudah mulai mengajukan permohonan pembayaran gaji. \"Proses sekarang sudah dilakukan karena sekarang sudah selesai lebaran, jadi semua satker-satker (satuan kerja) yang memegang portofolio untuk pembayaran gaji sudah mulai mengajukan,” ucapnya.</p><p>&nbsp;</p><p>Hingga saat ini, Sri Mulyani, mengungkapkan seluruh satker sedang mengajukan ke Kantor Pelayanan Perbendaharaan Negara (KPPN) sehingga proses pencairan memang sedang berproses</p><p>Aturan mengenai pembayaran gaji ke-13 diatur dalam Peraturan Pemerintah (PP) Nomor 35 Tahun 2019 tentang Perubahan Ketiga Atas PP Nomor 19 Tahun 2016 tentang Pemberian Gaji, Pensiun, atau Tunjangan Ketiga Belas Kepada PNS, Prajurit TNI, Anggota Polri, Pejabat Negara, dan Penerima Pensiun atau Tunjangan.</p><p>&nbsp;</p><p>PP tersebut ditandatangani oleh Presiden Jokowi pada 6 Mei 2019. Penyesuaian atas PP Nomor 19 Tahun 2016 mempertimbangkan atas kebutuhan perkembangan zaman.</p><p>&nbsp;</p><p>Dalam PP itu disebutkan, gaji, pensiun, atau tunjangan ketiga belas bagi PNS, Prajurit TNI, Anggota Polri, Pejabat Negara, dan Penerima Pensiun atau Tunjangan diberikan sebesar penghasilan pada bulan Juni.</p><p>&nbsp;</p><p>“Dalam hal penghasilan pada bulan Juni sebagaimana dimaksud belum dibayarkan sebesar penghasilan yang seharusnya diterima karena berubahnya penghasilan, kepada yang bersangkutan tetap diberikan selisih kekurangan penghasilan ketiga belas,” bunyi Pasal 3 ayat (2) PP ini.</p><p>&nbsp;</p><p>Penghasilan sebagaimana dimaksud, menurut PP ini, diberikan bagi&nbsp;</p><p><a href=\"https://www.tempo.co/tag/pns\">PNS</a></p><p>, Prajurit TNI, anggota Polri, dan Pejabat Negara paling sedikit meliputi gaji pokok, tunjangan keluarga, dan tunjangan jabatan atau tunjangan umum, dan paling banyak meliputi gaji pokok, tunjangan keluarga, tunjangan jabatan atau tunjangan umum, dan tunjangan kinerja; penerima pensiun meliputi pensiun pokok, tunjangan keluarga, dan atau tunjangan tambahan penghasilan; dan penerima tunjangan menerima tunjangan sesuai peraturan perundang-undangan.</p>', 1560431967, 1560432960, 1, 4, 2, '/advanced/common/assets/upload/bisnis_srimulyanipastikan.jpg'),
(18, 1, 'Soal Diskon Tarif Ojek Online, Grab: Negara Lain Tak Atur', '<p>Presiden Grab Indonesia, Ridzki Kramadibrata, angkat bicara soal diskon tarif ojek online yang diwacanakan bakal dilarang oleh pemerintah.</p><p>&nbsp;</p><p>Baca: Diskon Ojek Online Dilarang, Menhub: Agar Tak Saling Perang Tarif</p><p>&nbsp;</p><p>Ridzki mengatakan promosi dan diskon yang selama ini diberikan oleh kepada pelanggan bukanlah alat utama untuk eksis di bisnis ojek online. Menurut dia, promo dan diskon hanya dilakukan untuk tiga tujuan saja, yaitu cara pengenalan pertama kali produk Grab, unsur loyalty atau kesetiaan, dan upaya mengubah kebiasaan pelanggan.</p><p>&nbsp;</p><p>\"Jadi kami lihat tujuannya selalu itu, dan masyarakat selalu menyambut baik akan hal itu,\" kata Ridzki saat ditemui dalam acara Patungan untuk Berbagai yang diadakan Grab bersama Ovo dan Tokopedia di Sopo Del Tower, Jakarta Selatan, Kamis, 13 Juni 2019.</p><p>&nbsp;</p><p>Pernyataan ini disampaikan Ridzki merespon adanya rencana Kementerian Perhubungan yang bakal melarang perusahaan penyedia aplikasi transportasi online memberlakukan promo dan diskon. Belakangan, niat itu batal diwujudkan karena Kementerian Perhubungan menyebut mereka ternyata tidak memiliki wewenang mengaturnya.</p><p>&nbsp;</p><p>Lebih lanjut, Ridzki menyebut perusahaannya selalu terbuka dan siap untuk memberikan masukan kepada pemerintah mengenai rencana ini. \"Kami akan memberikan masukan seperti bagaimana pendapat dari mitra pengemudi dan pelanggan kami, dan pada akhirnya pemerintah yang mengatur keputusannya,\" kata dia.</p><p>&nbsp;</p><p>Saat ditanya mengenai penerapan negara lain tempat Grab beroperasi, Ridzki menyebut sepanjang informasi yang dimiliki, promo dan diskon sama sekali tidak diregulasi di negara lain. \"Saya juga tidak ingat ada yang diregulasi, itu sepanjang yang saya ketahui,\" ujarnya.</p><p>&nbsp;</p><p>Sementara itu, Ketua Pengurus Harian Yayasan Lembaga Konsumen Indonesia (YLKI) Tulus Abadi menduga Kementerian Perhubungan dalam posisi gamang untuk mengatur perihal diskon dan promo ini. Ia menilai Keputusan Menteri Perhubungan yang kini ada sebetulnya cukup untuk memberikan patokan soal tarif. \"Kemenhub tak perlu turun tangan untuk membuat aturan soal diskon,\" ujarnya.</p><p>&nbsp;</p><p>Tulus menilai Kemenhub lebih baik fokus diperketat aturan soal Standar Pelayanan Minimal (SPM) dalam transportasi ojek online, khususnya yang berdimensi keselamatan. YLKI kata dia, juga meminta perusahaan aplikasi untuk konsisten dan mematuhi standar ini. \"Sebab sejatinya dimensi keselamatan pada ojek online sangat rendah,\" ujarnya</p>', 1560432105, 1560432971, 1, 4, 2, '/advanced/common/assets/upload/bisnis_soaldiskontarifojekonline.jpg'),
(19, 1, 'Gagal SBMPTN, Ikuti Seleksi Mandiri ITB Bebas Dana Pengembangan', '<p>Institut Teknologi Bandung atau ITB membuka jalur Seleksi Mandiri, bagi calom mahasiswa yang gagal SNMPTN dan SBMPTN. Berbeda dengan kampus negeri lainnya, ITB membebaskan uang masuk atau dana pengembangan yang biasanya dipatok jutaan hingga ratusan juta rupiah.</p><p>&nbsp;</p><p>Jalur Seleksi Mandiri ITB akan mulai dibuka pendaftarannya 17 Juni hingga 12 Juli 2019. Biaya seleksi untuk pendaftar Rp 100 ribu. Khusus peminat ke Fakultas Seni Rupa dan Desain Rp150 ribu termasuk untuk biaya tes keterampilan.</p><p>&nbsp;</p><p>Bagi peserta yang lolos, nantinya hanya akan membayar uang kuliah tunggal (UKT). Besarannya dibagi enam kelompok, mulai dari Rp0, Rp 5 juta, Rp 10 juta, Rp 15 juta, Rp 20 juta, dan tertinggi Rp 25 juta per semester.</p><p>&nbsp;</p><p>“Tidak ada dana pengembangan,” kata Direktur Eksekutif Pengelolaan Penerimaan Mahasiswa dan Kerjasama Pendidikan ITB Mindriany Syafila, Senin, 10 Juni 2019.</p><p>&nbsp;</p><p>Sebelumnya Wakil Rektor ITB Bidang Akademik dan Kemahasiswaan Bermawi Priyatna mengatakan, total mahasiswa baru ITB yang akan diterima sebanyak 3.935 orang. Komposisinya SNMPTN dan SBMPTN masing-masing sama 40 persen atau 1.574 orang per jalur. Sementara SeleksiMandiri 20 persen atau 815 kursi.</p><p>&nbsp;</p><p>Pada pelaksanaan Seleksi Mandiri (SM) – ITB, calon mahasiswa dapat memilih paling banyak 2 fakultas/sekolah yang ditawarkan di ITB. Tidak hanya jurusan IPA, calon peserta yang berasal dari lulusan SMA sederajat jurusan IPS bisa memilih Fakultas Seni Rupa dan Desain (FSRD) di kampus Bandung atau Cirebon, serta Sekolah Bisnis dan Manajemen (SBM).</p><p>&nbsp;</p><p>Selain itu ITB juga membuka program studi bagi peserta seleksi yang punya minat khusus. Tawarannya ada selusin yaitu Astronomi, Kimia, Meteorologi, Oseanografi, Teknik Fisika, Manajemen Rekayasa Industri, Teknik Material, Teknik Telekomunikasi, Perencanaan Wilayah dan Kota, Teknologi Pasca Panen (Program Rekayasa), Teknik Biomedis, dan Kewirausahaan.</p><p>&nbsp;</p><p>Persyaratan pendaftar Seleksi Mandiri ITB memiliki Nomor Induk Siswa Nasional (NISN). Punya data prestasi akademik yang tercatat di Pangkalan Data Siswa dan Sekolah (PDSS) serta mengunggah nilai Rapor semester 1-6, nilai UTBK SBMPTN 2019, dan tidak diterima sebagai calon mahasiswa ITB melalui jalur seleksi SNMPTN/SBMPTN atau seleksi program Kelas Internasional ITB 2019.</p><p>&nbsp;</p><p>Khusus untuk pendaftar ke FSRD, ada Tes Keterampilan. Lulusan tahun 2017 dan 2018 dapat mendaftar asalkan memiliki nilai UTBK SBMPTN 2019. Tidak buta warna, baik buta warna total maupun buta warna parsial bagi peminat ke Sekolah Ilmu dan Teknologi Hayati, Sekolah Farmasi Fakultas Teknik Pertambangan dan Perminyakan, Fakultas Seni Rupa dan Desain, Program Studi Kimia, dan Teknologi Pasca Panen. Tata cara pendaftaran dapat diperoleh di laman http://usm.itb.ac.id.</p>', 1560432237, 1560432982, 1, 5, 3, '/advanced/common/assets/upload/pendidikan_gagalsbmptnikutiseleksiitbbebas.jpg'),
(20, 1, 'Korea Selatan, AS, dan Jepang Pimpin Penyebaran Jaringan 5G', '<p>Korea Selatan, AS, dan Jepang berada di garis depan dalam penyebaran jaringan generasi kelima atau&nbsp;<a href=\"https://tekno.tempo.co/read/1213851/jaringan-5g-diklaim-berisiko-merusak-otak-dan-kesuburan\">5G</a>. Namun, menurut panel pejabat industri di Global Digital Summit Nikkei 2019, aplikasi yang akan memanfaatkan potensi penuh teknologi tersebut akan membutuhkan waktu untuk muncul.</p><p>&nbsp;</p><p>\"Di tiga pasar 5G terkemuka, operator telekomunikasi aktif dalam memperluas area jangkauan jaringan,\" kata Satoshi Iwao, Vice Presiden of the Network Division di Samsung Electronics Jepang, seperti dikutip laman Asia Nikkei, Senin, 10 Juni 2019.</p><p>&nbsp;</p><p>Samsung meluncurkan smartphone 5G pada April lalu di Korea Selatan di mana 85 kota sudah dilengkapi dengan layanan 5G. AS juga telah meluncurkan layanan 5G, dan Jepang mengharapkan peluncuran pra-komersial dalam waktu dekat ini.</p><p>&nbsp;</p><p>\"Eropa sedikit khawatir sebenarnya, untuk tertinggal,\" kata John Harrington, kepala eksekutif Nokia Jepang. \"Eropa telah terhambat oleh kesulitan dalam mengembangkan kasus bisnis untuk teknologi ini meskipun ada keinginan untuk menerapkan.\"</p><p>&nbsp;</p><p>Teknologi 5G diyakini sebagai perubah permainan, karena akan memungkinkan transmisi data dalam volume besar dengan sedikit waktu tunda. Dengan demikian, dapat mempercepat transformasi teknologi di banyak bidang, tapi pertanyaan tentang biaya dan siapa yang membayar untuk teknologi itu masih harus diselesaikan.</p><p>&nbsp;</p><p>Iwao kembali menjelaskan bahwa perusahaan dan produsen telekomunikasi belum membuat aplikasi unggulan yang akan menunjukkan kinerja 5G yang terbaik. Namun, Takehiro Nakamura, Senior Vice President di perusahaan telekomunikasi Jepang NTT Docomo, mengatakan bahwa perusahaan telekomunikasi harus membangun infrastruktur 5G terlebih dahulu. \"Karena, kami tidak bisa menunggu aplikasi muncul begitu saja,\" kata Nakamura.</p><p>&nbsp;</p><p>Sedangkan menurut Harrington dari Nokia, 5G akan sangat menarik jika melihat bagaimana penyebaran awal di AS dan Korea Selatan, yang bergerak di luar permainan konsumen dan mobile broadband.</p><p>&nbsp;</p><p>\"Mereka harus melihat lebih banyak konektivitas industri untuk membangun kasus bisnis yang kuat untuk 5G dalam jangka panjang,\" tutur Harrington.</p><p>&nbsp;</p><p>Iwao mengakui bahwa pelanggan di Korea Selatan memilih kontrak seluler 5G bukan karena mereka tertarik pada aplikasi 5G yang unik, tapi karena penawaran data. Kemungkinan aplikasi 5G termasuk diagnosis jarak jauh oleh dokter dan dalam proses pembuatan pabrik.</p><p>&nbsp;</p><p>Takayuki Yamane, yang bertugas bekerja dengan perusahaan lain pada aplikasi 5G di operator telekomunikasi Jepang KDDI, mengatakan bahwa kualitas video akan ditingkatkan dengan 5G, yang akan membuat bantuan jarak jauh dalam perawatan pesawat lebih akurat.</p><p>&nbsp;</p><p>Nakamura di NTT menunjukkan masih ada tantangan dalam membangun infrastruktur, dan perlu waktu bertahun-tahun untuk memperluas jaringan 5G di seluruh Jepang. \"Perusahaan dan pemerintah Jepang sedang menyusun rencana untuk menawarkan 5G secara sementara kepada pengguna di daerah di mana tidak ada jaringan, seperti situs konstruksi,\" lanjut Nakamura.</p><p>&nbsp;</p><p>Tentang larangan perdagangan AS dari Huawei Technologies, Harrington menambahkan bahwa keamanan dan kepercayaan dalam jaringan telah menjadi pertimbangan penting karena 5G memiliki potensi untuk menghubungkan segalanya.</p>', 1560432303, 1560432992, 1, 6, 2, '/advanced/common/assets/upload/teknologi_koreaselatanasdanjepangpim[pin.jpg'),
(21, 1, 'Smartphone Berkualitas Foto Terbaik dengan Harga Terjangkau', '<p>Ada banyak cara untuk mengekspresikan diri, salah satunya adalah dengan fotografi. Saat ini, untuk mendapatkan hasil foto yang bagus, anda yang memiliki hobi foto tidak harus menggunakan smartphone atau kamera yang mahal.</p><p>&nbsp;</p><p>Kehadiran Mi A2 sebagai generasi kedua Android One dari Xiaomi memberikan solusi bagi anda untuk mengabadikan dan berbagi momen keseharian layaknya profesional dengan harga terjangkau.</p><p>&nbsp;</p><p>Selain diperkuat dengan sensor, kamera Mi A2 juga didukung dengan berbagai fasilitas, mulai dari fitur HDR hingga mode portrait untuk foto bokeh. Sementara itu, untuk yang suka selfie, selain ada mode beauty, anda juga bisa memanfaatkan fitur group selfie. Apiknya lagi, Xiaomi Mi A2 ternyata sudah mendukung perekaman video slow motion.</p><p>&nbsp;</p><p>Dengan dua kamera 12 MP + 20 MP pada kamera belakangnya, Mi A2 mampu memberikan efek bokeh dan hasil foto yang jernih dengan memanfaatkan mode Portrait yang tersedia di antarmuka kamera. Bahkan, Mi A2 dapat memaksimalkan masuknya cahaya dibandingkan smartphone lain dikelasnya dengan mengakses mode Manual sehingga hasil foto tetap tajam dalam kondisi low-light.</p><p>&nbsp;</p><p>Di area dengan kondisi cahaya cukup baik, hasil jepretan terlihat sangat memadai, baik dari sisi ketajamannya maupun warna yang ditampilkan. Praktisnya, hasil bidik tidak diganggu dengan adanya bintik&nbsp;<i>noise</i>. Adapun pada kondisi cahaya minim, hasil bidik kamera belakang Mi A2 juga tidak terlalu mengecewakan.</p><p>&nbsp;</p><p>Bagi anda pecinta selfie,&nbsp;<i>smartphone</i>&nbsp;ini hadir dengan kamera depan 20 MP dengan Artificial Intelligence (AI), yang membuat hasil swafoto tetap ciamik di berbagai kondisi. Sensor 20MP IMX376 di bagian depan menggunakan binning piksel untuk menghasilkan foto narsis yang penuh detail.</p><p>&nbsp;</p><p>Bagi yang ingin mendapatkan foto selfie yang lebih dramatis, pengguna juga bisa memanfaatkan mode Beautification dan mode Advanced. Tidak ketinggalan, dengan mode Portrait, anda juga dimungkinkan untuk membidik foto selfie dengan efek blur.</p><p>&nbsp;</p><p>Mi A2 adalah perangkat global dari Xiaomi yang menampilkan salah satu chipset terbaik, yaitu Snapdragon 660 yang memiliki Kryo 260 core dengan clock hingga 2.2GHz. Core Kryo menawarkan tingkat kinerja yang sama dengan Snapdragon 820, tapi dengan harga yang lebih terjangkau.</p><p>&nbsp;</p><p>Tak heran jika smartphone ini mampu melakukan multitasking dengan baik dan mampu dengan lancar menjalankan game ringan secara mulus tanpa gangguan. Smartphone ini juga dilengkapi dengan pilihan RAM yang besar, yaitu 4GB+32GB, 4GB+64GB dan 6GB+128GB.</p><p>&nbsp;</p><p>Mi A2 juga langsung menggunakan Android 8.1 dan dijanjikan mendapatkan update Android 9.0 Pie dengan segera. Hal ini akan membuat Mi A2 jadi salah satu smartphone yang pertama mendapatkan pembaruan Android Pie.</p><p>&nbsp;</p><p>Mi A2 ini memiliki rasio layar atau panel yang besar dan cukup responsif, yakni sebesar 18:9 dan bentang layar sebesar 5,99 inci FHD + (2160x1080) dengan desain bezel tipis di bagian atas dan dagu, untuk melindungi layar saat jatuh. Layar Full HD+ memberikan hasil warna yang vibrant dan jernih. Mi A2 memiliki dimensi 158,7 x 75,4 x 7,3 mm dengan berat hanya 166 gram.</p><p>&nbsp;</p><p>Mi A2 sudah dikemas dengan bodi bermaterial metal nan solid. Sementara tampilan sisi bodi yang memiliki lengkungan halus, membuat perangkat terasa ergonomis sehingga nyaman untuk digenggam. Di bagian depan, Xiaomi Mi A2 juga nampak elegan dengan mengadopsi panel kaca lengkung 2,5D nan sleek.</p><p>&nbsp;</p><p>Seperti smartphone pada umumnya, di sekitaran bodi Mi A2 terlihat adanya sejumlah komponen penting menyertainya. Seperti di area depan, khususnya di atas layar, dari kiri ke kanan masing-masing terdapat sensor kamera depan, sensor cahaya, receiver, dan LED flash.</p><p>&nbsp;</p><p>Sementara bila menyisir ke ruas sisi berketebalan 7,3 mm, di sini kita dapat adanya tombol power dan tombol volume di sisi kanan. Di ruas sisi sebelah kiri terlihat adanya slot kartu SIM.</p><p>&nbsp;</p><p>Xiaomi Mi A2 menghadirkan fitur Quick Charge 3.0, sehingga anda dapat mengisi daya baterai dengan sangat cepat. Selain itu, ponsel ini dilengkapi dengan port USB type-C yang mampu mentransfer data secara lebih efisien.</p><p>&nbsp;</p><p>Kapasitas baterai berkekuatan 3000 mAh yang sudah tertanam di dalam bodi Mi A2 ini juga cukup memadai.&nbsp; Buktinya, dengan bermain game HD selama satu jam, daya baterai Mi A2 hanya terkuras hingga 19 persen saja.</p><p>&nbsp;</p><p>Dengan pilihan warna hitam, biru, dan emas, Mi A2 tersedia di Authorized Mi Store, Mi.com, Lazada, Shopee, Blibli, and JD.ID.</p><p>&nbsp;</p><p>Jadi kapan lagi anda bisa mendapatkan handphone dengan kualitas gambar yang sangat tajam dan jernih dalam kondisi apapun dengan harga terjangkau? Belum lagi tampilan layar Mi A2 dengan dengan bagian sudut membulat, membuatnya nampak serasi dengan desain bodi smartphone memiliki sudut menumpul. Berkat layar penuh beraspek rasio 18:9, juga menjadikan pengalaman pengguna menjadi sedikit lebih apik ketika menggunakan Mi A2 untuk browsing internet, nonton video, atau main game. Secara umum, baik dari sisi kecerahan maupun responsivitasnya, layar Mi A2 tergolong sangat baik. Tidak diragukan layar smartphone telah mendukung multi-touch, di mana sudah dapat diakses maksimal hingga 10 titik secara bersamaan. (*)</p>', 1560432391, 1560433000, 1, 6, 2, '/advanced/common/assets/upload/teknologi_smartphoneberkualitasfototerbaikdenganhargaterjangkau.jpg'),
(22, 1, 'Festival Balon Udara: Reog, Doraemon, Batik Hiasi Langit Ponorogo', '<p>Festival&nbsp;<a href=\"http://www.tempo.co/tag/balon-udara\"><strong>balon udara</strong></a>&nbsp;berlangsung di Lapangan Desa Nongkodono, Kecamatan Kauman, Kabupaten Ponorogo, Jawa Timur, Rabu, 12 Juni 2019. Sebanyak 49 balon diterbangkan oleh kelompok peserta yang berasal dari wilayah setempat.</p><p>&nbsp;</p><p>Tema balon udara yang terbang bermacam-macam. Ada karakter reog, tokoh kartun Jepang Doraemon, dan motif batik. Untuk menerbangkannya, setiap balon udara harus diisi dengan gas dan asap.</p><p>&nbsp;</p><p>Setelah mengudara, balon itu diikat dengan tali tampar agar ketinggiannya tidak melebihi batas yang ditentukan, yakni 150 meter. Sejumlah anggota kelompok peserta festival balon udara menjaga agar balon tetap terkendali.</p><p>&nbsp;</p><p>\"Kami berharap tidak ada balon udara yang lepas. Semua tetap terkontrol, tetap dijaga, dan masyarakat ikut mengawasi untuk tidak membuat kegiatan-kegiatan yang mengganggu penerbangan,\" kata Komandan Pangkalan Udara atau Lanud Iswahjudi, Marsekal Pertama Widyargo Ikoputra di sela festival balon udara. Hingga kini, menurut dia, belum ada penerbangan pesawat militer dari Lanud Iswahjudi yang terganggu akibat festival balon udara di Ponorogo.</p><p>&nbsp;</p><p>Sementara itu, Direktur Teknik Air Navigation atau Airnav Indonesia, Ahmad Nurdin Aulia mengatakan telah menerima 28 laporan adanya balon udara yang mengganggu penerbangan pesawat. Laporan itu diterima selama beberapa hari setelah Lebaran hingga sekarang.</p><p>&nbsp;</p><p>\"Laporan gangguan balon udara ada di jalur udara Yogyakarta, Solo, dan Semarang,\" kata Ahmad Nurdin. \"Akibatnya, pesawat yang terbang dari Surabaya menuju Solo harus berbelok dan melewati Laut Jawa.\"</p><p>&nbsp;</p><p>Ahmad Nurdin Aulia menjelaskan risiko jika balon udara tak terkontrol sangat besar. \"Jalan satu-satunya adalah pilot harus menghindar dan tidak berani berspekulasi,\" ucap Ahmad.</p>', 1560432452, 1560433011, 1, 1, 4, '/advanced/common/assets/upload/daerah_festivalbalonudara.jpg');
INSERT INTO `post` (`id_post`, `id_user`, `title`, `content`, `created_at`, `updated_at`, `status`, `id_category`, `id_location`, `image`) VALUES
(23, 1, 'Mau Berkunjung di 5 Kampung Surga Ikan di Waigeo, Raja Ampat?', '<p>Berwisata di Pulau Waigeo kabupaten Raja Ampat, Provinsi Papua Barat, tidaklah lengkap jika tidak mengunjungi lima destinasi snorkeling yang terkenal dengan sebutan surga ikan. Lima destinasi snorkeling terindah di Waigeo tersebut adalah Kampung Arborek, Kabupaten Sawinggrai, Kampung Sawendarek, Kampung Yenbuba, dan Priwn Wol.</p><p>&nbsp;</p><p>Kelima destinasi tersebut disebut surga ikan karena tanpa harus menyelam ke dasar laut wisatawan dapat melihat berbagai jenis ikan karang bahkan anak ikan hiu putih. \"Saya sudah berkunjung ke Kampung Arborek, Kabupaten Sawinggrai, Kampung Sawendarek, Kampung Yenbuba, dan Priwn Wol cukup snorkeling dapat melihat berbagai jenis ikan karang serta terumbu karang yang mempesona,\" kata Ayuna wisatawan asal Surabaya di Waisai, Rabu 12 Juni 2019.</p><p>&nbsp;</p><p>Dia mengatakan, tanpa snorkeling pun wisatawan dapat melihat berbagai jenis ikan dari atas dermaga dengan cara memberi sisa makanan.</p><p>&nbsp;</p><p>Ayuna berharap keindahan dan keunikan lima destinasi tersebut bahkan Raja Ampat secara utuh dijaga dan dilestarikan oleh masyarakat setempat sehingga keindahan itu tetap berkelanjutan sepanjang masa.</p><p>&nbsp;</p><p>Kepala Dinas Pariwisata Kabupaten Raja Ampat, Yusdi Lamatenggo mengatakan salah satu alasan banyaknya ikan di Raja Ampat, khususnya di 5 destinasi itu adalah karena masyarakat menjaga kelestarian laut. Dia menjelaskan bahwa di Kabupaten Raja Ampat terdapat salah satu tradisi masyarakat lokal guna menjaga laut yang diberi nama Sasi.</p><p>&nbsp;</p><p>Tradisi Sasi, kata dia, merupakan satu komitmen bersama masyarakat adat untuk menjaga kelestarian alam yang sudah berlangsung sejak dahulu kala. \"Apabila masyarakat lokal di kampung-kampung Raja Ampat menyatakan Sasi laut maka tidak ada aktivitas penangkapan ikan secara liar,\" ujarnya.</p><p>&nbsp;</p><p>Karena itu, kata Yusdi, sebagian besar warga kampung wisata di Raja Ampat, terutama lima Kampung tersebut tanpa menyelam wisatawan dapat melihat berbagai jenis ikan karang</p>', 1560432498, 1560433023, 1, 1, 5, '/advanced/common/assets/upload/daerah_mauberkunjungdi5kampungsurgaikan.jpg'),
(24, 1, 'Choi Siwon Super Junior Liburan di Bali, Netizen Sibuk Buat Meme', '<p>Personel Super Junior, Choi Siwon mengunggah foto dirinya sedang berada di Bali. Ia mengunggah foto-fotonya yang terlihat santai dan menikmati udara Bali dengan bebas di akun Instagram dan Twitternya, Rabu, 12 Juni 2019.</p><p>&nbsp;</p><p>Ada tiga dua foto yang dia unggah, yakni saat dia sendirian menunggangi sepeda motor bebek yang deoannya ditutup sticker singa melenggang bebas di jalanan di Bali. Gayanya tampak santai dan bebas dengan mengenakan kaos tanpa lengan dan jins hitam. Unggahan kedua saat dia bertelanjang dada mengenakan sarung Bali dengan membawa papan surfing siap berselancar. Choi Siwon menambahkan tulisan pada kedua foto itu, “Live it up!”</p><p>&nbsp;</p><p>Di Twitter, unggahan perwakilan spesial Korea Selatan untuk UNICEF ini ramai komentar netizen Indonesia dan netizen yang menggunakan bahasa Spanyol. Mereka pun membuat meme-meme seperti tunggangan sepeda motor bebek itu diubah menjadi motor besar dan di belakangnya api untuk mengesankan seorang hero dalam sebuah film action. Untuk meme ini, Choi Siwon mencuit ulang dengan membalas, “Hahaha.”</p><p>&nbsp;</p><p>&nbsp;</p><p>Selebgram Raden Rauf pun usil menjawab cuitan pemain drama Korea She Was Pretty itu dengan bahasa Indonesia. “Jam 10 gua jemput di lobby, kita parteeeeeehhh malam ini.”</p><p>&nbsp;</p><p>Netizen pun menggoda Choi Siwon yang tahun ini berusia 32 tahun. “Mau ke warung beli garem, jangan lama-lama bang keburu mateng nih rendangnya,” cuit Lee Yong Dae.</p>', 1560432538, 1560433034, 1, 7, 6, '/advanced/common/assets/upload/daerah_choisiwonsuperjuniorliburandibali.jpg'),
(25, 1, 'Revisi Juknis, Pemprov Yogyakarta Perluas Zonasi PPDB SMA dan SMK', '<p>Pemerintah Daerah Istimewa Yogyakarta menyatakan pihaknya telah merevisi petunjuk teknis tentang aturan Penerimaan Peserta Didik Baru (PPDB) Online SMA/SMK DIY untuk Tahun Pelajaran 2019/2020.</p><p>&nbsp;</p><p>Hal itu dilakukan pasca adanya rekomendasi dari Ombudsman Republik Indonesia (ORI), DPRD DIY dan Lembaga Ombudsman DIY (LO) DIY agar ketentuan soal zonasi penerimaan peserta didik diperluas.</p><p>&nbsp;</p><p>\"Dengan revisi juknis itu, maka kebijakan soal zonasi berubah, bukan lagi satu kelurahan/desa satu sekolah, tapi bisa lebih,\" ujar Kepala Dinas Pendidikan Pemuda dan Olahraga DIY, Kadarmanta Baskara Aji di kantornya, Rabu, 12 Juni 2019.</p><p>&nbsp;</p><p>Dengan perubahan itu, peserta didik bisa memiliki dua sampai tiga pilihan sekolah, baik SMA maupun SMK, dalam satu zona. Bahkan dalam satu zona itu, siswa juga bisa menentukan pilihan jurusan berbeda di sekolah zonasi pilihannya.</p><p>&nbsp;</p><p>Meski pilihan sekolah lebih banyak, Baskara mengingatkan calon siswa harus cermat memilih sekolah. Sebab secara otomatis persaingan akan bertambah besar antara satu peserta dengan peserta lainnya yang juga ingin bersekolah di tempat yang dianggap favorit.</p><p>&nbsp;</p><p>Baskara meminta calon peserta PPDB Online agar teliti dengan pilihannya saat pendaftaran dibuka 24-26 Juni 2019. “Website PPDB 2019 sudah kami buat sesederhana mungkin agar mudah dipahami dengan tahapan sejelas mungkin,\" ujarnya.</p><p>&nbsp;</p><p>Dalam desain website PPDB yang sudah disempurnakan itu, ujar Baskara, satu nomor ujian nasional hanya bisa mendapat satu token. Token itu bisa didapatkan di sekolah terdekat dengan kediaman calon peserta mulai 20 Juni 2019.</p><p>&nbsp;</p><p>Pada tahapan pendafaran juga ada tiga pilihan sekolah yang perlu dicermati peserta didik. Sebab Pilihan pertama, kedua, dan ketiga bisa menjadi pertimbangan penerimaan. Pendaftar dengan nilai tinggi sangat mungkin kalah dengan pendaftar lain yang nilainya berada di bawahnya. Zonasi dan pilihan sekolah tetap menjadi indikator yang lebih menentukan dibanding nilai yang dimiliki peserta.</p><p>&nbsp;</p><p>“Jadi sistem yang berlaku saat ini tetap bukan berdasar nilai semata, ukuran pertama tetap zonasi peserta didik tinggal, baru kemudian pilihan kedua dan ketiga soal nilai,\" ujarnya.</p><p>&nbsp;</p><p>Kursi tersedia untuk PPDB SMA tahun 2019 di DIY sendiri tercatat sebanyak 14.471. Sementara untuk SMK sebanyak 17.208 kursi.</p><p>&nbsp;</p><p>Baskara mengatakan alokasi zonasi sendiri persentasenya 90 persen dari keseluruhan siswa di sebuah sekolah. Sebanyak 20 persen dari 90 persen tersebut dialokasikan untuk siswa miskin sementara 5 persen siswa jalur prestasi dan 5 persen sisanya pindahan dinas orangtua siswa.</p>', 1560432797, 1560433053, 1, 5, 7, '/advanced/common/assets/upload/daerah_revisijuknispemprovyogyakartazonasippdbsma.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'username', '', 'knnOO3ZS_yFJ0TFam7W16YxO5BWe6Dub', '$2y$13$hHQhpWWTMpFLLSC7taVAyurkivc5XQkgOfgziyIuCpr5KUQUSZZzu', NULL, 'user@email.com', 10, 1558583617, 1558583617),
(2, 'coba', '', 'HkhT1YacapNmKhBVTKVMh3015OetIEyR', '$2y$13$WiQcJacr0CtG4toArjBwHu7Avo.SWb2ZmW7XpVG6fcqOmK9dxiGWu', NULL, 'username@email.com', 10, 1558647324, 1558647324),
(3, 'example', '', 'rqso0zVQnPiRd5aN35E-Yrc4JrxN6crS', '$2y$13$cVN8874o1fubT7d8hbzwpeDDRJqLbhOljp92Xs6afRwkZQPh3H9VC', NULL, 'example@email.com', 10, 1560430196, 1560430196);

-- --------------------------------------------------------

--
-- Table structure for table `user_premium`
--

CREATE TABLE `user_premium` (
  `id_premium` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id_ads`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `jadwal_bioskop`
--
ALTER TABLE `jadwal_bioskop`
  ADD PRIMARY KEY (`id_bioskop`);

--
-- Indexes for table `jadwal_sepakbola`
--
ALTER TABLE `jadwal_sepakbola`
  ADD PRIMARY KEY (`id_sepakbola`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_news` (`id_news`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_location`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id_news`),
  ADD KEY `news_ibfk_2` (`id_editor`),
  ADD KEY `id_post` (`id_post`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_category` (`id_category`,`id_location`),
  ADD KEY `id_location` (`id_location`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user_premium`
--
ALTER TABLE `user_premium`
  ADD PRIMARY KEY (`id_premium`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id_ads` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jadwal_bioskop`
--
ALTER TABLE `jadwal_bioskop`
  MODIFY `id_bioskop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwal_sepakbola`
--
ALTER TABLE `jadwal_sepakbola`
  MODIFY `id_sepakbola` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id_location` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id_news` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_premium`
--
ALTER TABLE `user_premium`
  MODIFY `id_premium` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_news`) REFERENCES `news` (`id_news`);

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_location`) REFERENCES `location` (`id_location`),
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`),
  ADD CONSTRAINT `post_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
