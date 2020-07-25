-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Jul 2020 pada 12.14
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duniabiologi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `id_kategori` int(11) UNSIGNED NOT NULL,
  `id_admin` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id`, `title`, `slug`, `deskripsi`, `featured_img`, `accepted`, `id_kategori`, `id_admin`, `created_at`, `updated_at`, `deleted_at`) VALUES
(32, 'A. STRUKTUR DAN FUNGSI ORGAN REPRODUKSI PADA LAKI-LAKI', 'struktur-dan-fungsi-organ-reproduksi-pada-laki-laki', '<p>Secara garis besar organ reproduksi pada laki-laki dapat digambarkan sebagai berikut :</p>\r\n<div>\r\n<div><img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab1.jpg\" /></div>\r\n<div>\r\n<p style=\"text-align: center;\">Gambar 1. Struktur Organ Reproduksi pada Laki-laki</p>\r\n<p>Organ reproduksi dibedakan menjadi organ yang tampak dari luar dan organ yang berada di dalam tubuh.</p>\r\n<p><strong>Organ reproduksi pada laki-laki yang tampak dari luar, antara lain :</strong></p>\r\n<ol>\r\n<li><strong>Skrotum</strong>\r\n<p>Skotrum merupakan organ genitalia eksterna (yang ada di luar tubuh) yang nampak dari luar. Bagian ini berupa kantung yang disusun oleh kulit tipis dan fascia superficial. Lokasi skrotum dan kontraksi serabut-serabut ototnya dapat mengatur temperatur testis.</p>\r\n</li>\r\n<li><strong>Penis</strong>\r\n<p>Penis manusia mengandung uretra, tiga silinder jaringan erektil, glands, dan prepusium. Penis digunakan untuk menyalurkan sperma ke dalam vagina (organ reproduksi wanita). Pada saat dipengaruhi oleh gairah seksual, jaringan erektil yang mengandung vena-vena dan kapiler-kapiler yang termodifikasi, terisi dengan darah dari yang berasal dari arteri. Saat jaringan erektil ini terisi, terjadi peningkatan tekanan mengakibatkan penyumbatan vena-vena yang mengalirkan darah dari penis ke jantung, sehingga penispun membengkak akibat terisi darah. Hal tersebut dinamakan dengan ereksi.</p>\r\n<img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab1.2.jpg\" /></li>\r\n</ol>\r\n<p style=\"text-align: center;\">Gambar 2. Struktur Anatomi Penis</p>\r\n<p style=\"text-align: left;\">&nbsp;</p>\r\n<p style=\"text-align: left;\"><strong>Organ reproduksi pada laki-laki yang berada dalam tubuh, antara lain :</strong></p>\r\n<ol>\r\n<li><strong>Testis</strong>\r\n<p>Testis disebut juga buah zakar. Laki-laki memiliki sepasang testis yang memiliki bentuk oval. Testis ditutupi oleh lapisan padat dari jaringan fibrosa putih yang disebut tunica albuginea. Testis terdiri dari banyak saluran yang menggulung. Saluran-saluran tersebut antara lain tubulus seminiferous (tempat sperma terbentuk). Sel-sel leydig yang berada pada tubulus seminiferous menghasilkan testosteron.</p>\r\n</li>\r\n<li><strong>Saluran reproduksi laki-laki terdiri dari bagian-bagian : </strong><br /><strong>1. Epididimis </strong><br />Epididimis merupakan saluran&nbsp;berkelok-kelok yang letaknya di dalam skrotum dan menempel pada testis.&nbsp;Fungsi saluran epididimis ini sebagai tempat pematangan sperma. <br /> <strong>2.&nbsp;Saluran (vas) deferens </strong><br />\r\n<p>Saluran epididimis selanjutnya akan diteruskan menuju vas deferens. Fungsi saluran deferens ini adalah menyimpan sperma sampai beberapa bulan dan mendorong sperma ke arah uretra selama ejakulasi melalui kontraksi peristaltik dan otot-otot penutupnya.</p>\r\n</li>\r\n<li><strong>Kelenjar tambahan</strong>&nbsp;<br />- Kelenjar prostat sebagai kelenjar tambahan yang terletak di sebelah bawah kantung kemih dan mengelilingi uretra bagian atas. Kelenjar ini hanya satu buah dan menghasilkan cairan alkalin yang dimasukkan kedalam uretra prostatik. Cairan ini berperan di dalam menetralisasi asam-asam yang terdapat di dalam uretra dan di dalam vagina karena sperma tidak tahan suasana asam.<br />- Kelenjar bulbouretra atau kelenjar cowper merupakan kelenjar tambahan lainnya yang berfungsi untuk menghasilkan lendir dan zat yang bersifat untuk menetralisasi urine. Jumlah kelenjar ini satu pasang dan terletak sebelah bawah sisi membran uretra.</li>\r\n</ol>\r\n</div>\r\n</div>', '', 1, 1, 1, '2019-04-01 02:23:59', '2019-04-04 03:43:37', NULL),
(33, 'B. STRUKTUR DAN FUNGSI ORGAN REPRODUKSI PADA WANITA', 'struktur-dan-fungsi-organ-reproduksi-pada-wanita', '<p style=\"text-align: center;\"><img class=\"img-fluid\" src=\"../../../img/materi/bab2.jpg\" /></p>\r\n<p style=\"text-align: center;\">Gambar 3. Struktur Organ Reproduksi</p>\r\n<ol style=\"list-style-type: lower-alpha;\">\r\n<li><strong>Ovarium</strong>\r\n<p>Ovarium disebut juga sebagai gonad wanita. Ovarium berjumlah sepasang dan letaknya mengapit uterus. Lapisan luar dari setiap ovarium disarati dengan folikel yang masing-masing terdiri dari satu oosit. Ovarium berfungsi untuk memproduksi sel telur haploid melalui proses pembelahan reduksi (meiosis).</p>\r\n</li>\r\n<li><strong>Oviduk dan Uterus</strong>\r\n<p>Oviduk atau tuba fallopi membentang dari uterus ke arah masing-masing ovarium. Pada oviduk terdapat silia yang berfungsi untuk mengumpulkan dan mengangkut sel telur ke dalam uterus. Sedangkan uterus merupakan tempat implatansi sel telur yang telah dibuahi, bahkan perkembangan fetus sampai saatnya dilahirkan juga terjadi di dalam uterus ini. Uterus terletak di antara kantung kemih dan rektum, bentuknya menyerupai buah pir yang terbalik. Bagian dari uterus antara lain endometrium (yang banyak disuplai dengan pembuluh darah) dan leher rahim (srviks) yang membuka ke dalam vagina.</p>\r\n</li>\r\n<li><strong>Vagina</strong>\r\n<p>Vagina merupakan ruang berotot yang bersifat elastis. Vagina ini memiliki fungsi yaitu&nbsp; tempat keluarnya aliran haid, saluran lahir bayi,&nbsp; tempat penyisipan penis, dan penampungan sperma selama kopulasi.</p>\r\n</li>\r\n<li><strong>Vulva</strong>\r\n<p>Vulva atau pudendum merupakan kumpulan dari beberapa organ, genitalia eksternal wanita. Bagian-bagian tersebut meliputi :</p>\r\n-&nbsp;Veneris (mons pubis), suatu daerah yang ditumbuhi oleh rambut kemaluan yang kasar.<br />- Labium mayor, terdapat dua buah merupakan lipatan longitudinal kulit yang meluas kearah bawah dan ke arah belakang. Ke arah tengah dari labium mayor terdapat dua buah kelipatan membran mukosa yang disebut labium minor. Labium ini tidak memiliki rambut dan lemak, hanya memiliki beberapa kelenjar keringat namun banyak memiliki kelenjar minyak. <br />-&nbsp;Klitoris, suatu organ yang terdiri dari pembuluh darah dan syaraf. Terletak sebalah anterior, bersatu dengan labirin minor. <br />-&nbsp;Vestibula, celah yang terdapat di labium minor. Di dalam vestibula ini terdapat hymen (selaput), lubang&nbsp;veginal uretra, dan lubang-lubang dari beberapa saluran.&nbsp;</li>\r\n</ol>', '', 1, 1, 1, '2019-04-04 03:08:37', '2019-04-04 03:43:20', NULL),
(34, 'C. PEMBENTUKAN SEL KELAMIN / GAMET ', 'pembentukan-sel-kelamin-gamet', '<ol>\r\n<li style=\"text-align: left;\"><strong>SPERMATOGENESIS</strong>\r\n<p>Sel-sel germinal awal atau <em>primordial </em>dari testis embrionik membelah dan berdiferensiasi ke dalam sel-sel punca yang membelah secara mitosis hingga membentuk <strong>spermatogonium</strong>, yang akan menghasilkan <strong>spermatosit</strong> melalui mitosis. Setiap spermatosit memunculkan empat <strong>spermatid </strong>melalui pembelahan sel meiosis. Spermatid mengalami perubahan dalam bentuk dan organisasi sel sehingga berdiferensiasi menjadi <strong>sperma</strong>. Di dalam tubulus seminiferus, terdapat organisasi konsentrik dari langkah-langkah spermatogenesis. Pada langkah terakhir, sperma yang matang dilepaskan ke dalam lumen tubulus. Sperma mengalir dari lumen tubulus ke epididimis, tempat ia menjadi motil.</p>\r\n<img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab3.jpg\" />&nbsp;\r\n<p style=\"text-align: center;\">Gambar 4. Tahap Pembentukan Sel Kelamin pada Laki-laki (Spermatogenesis)</p>\r\n<p><strong><u>SPERMA</u></strong></p>\r\n<p>Sel sperma dihasilkan kira-kira 300 juta per hari dan bila telah memasuki alat reproduksi wanita dapat hidup 18 jam. Sel sperma ini memiliki adaptasi yang sangat tinggi untuk dapat mencapai dan menembus sel telur. Sel sperma terdiri atas kepala, bagian tengah dan ekor. Pada bagian kepala terdapat materi inti dan akrosom yang berisi enzim-enzim hyaluronidase dan proteinase yang berpengaruh ketika sel sperma menembus sel telur. Bagian tengah memiliki sejumlah mitokondria yang berfungsi untuk melakukan metabolisme sehingga banyak dihasilkan energi untuk pergerakan. Sedangkan bagian ekor berbentuk seperti cambuk yang berperan di dalam membantu pergerakan.</p>\r\n<img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab3.2.jpg\" />&nbsp;\r\n<p style=\"text-align: center;\">Gambar 5. Struktur Sel Sperma</p>\r\n</li>\r\n<li><strong>OOGENESIS</strong>\r\n<p>Oogenesis dimulai di dalam embrio perempuan dengan produksi <strong>oogonium</strong> dari sel-sel punca primordial. Oogonium membelah secara mitosis untuk membentuk <strong>oosit primer</strong>, yang terkandung di dalam folikel kecil. Dimulai saat pubertas, hormon perangsang folikel (FSH), secara periodik merangsang sekelompok kecil folikel untuk melanjutkan pertumbuhan dan perkembangan. Biasanya hanya satu folikel yang matang penuh setiap bulan, dengan oosit primernya menuntaskan meiosis I. Pembelahan meiosis II dimulai, oosit sekunder dilepaskan saat ovulasi ketika folikelnya pecah. Pada tahap terakhir akan menghasilkan satu sel telur yang matang, dengan sel-sel yang lebih kecil menjadi badan kutub yang akhirnya hancur.</p>\r\n<img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab3.3.jpg\" />\r\n<p style=\"text-align: center;\">Gambar 6. Tahap Pembentukan Sel Kelamin pada Wanita (Oogenesis) dan Perkembangan Folikel</p>\r\n</li>\r\n</ol>', '', 1, 1, 1, '2019-04-04 03:18:32', '2019-04-04 03:43:28', NULL),
(35, 'D. OVULASI DAN MENSTRUASI', 'ovulasi-dan-menstruasi', '<p>Ovulasi terjadi hanya setelah endometrium mulai menebal dan mengembangkan suplai darah yang kaya, sehingga mempersiapkan uterus untuk implantasi embrio yang mungkin terjadi. Jika kehamilan tidak terjadi, lapisan uterus terlepas, dan siklus berikutnya dimulai. Pelepasan siklus endometrium dari uterus, yang terjadi dalam suatu aliran melewati serviks dan vagina disebut menstruasi.</p>\r\n<p><img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab4.jpg\" /></p>\r\n<p style=\"text-align: center;\">Gambar 7. Siklus Reproduktif Wanita</p>', '', 1, 1, 1, '2019-04-04 03:20:34', '2019-04-04 03:42:40', NULL),
(36, 'E.	FERTILISASI, GESTASI, DAN PERSALINAN', 'efertilisasi-gestasi-dan-persalinan', '<ol>\r\n<li><strong>FERTILISASI</strong>\r\n<p>Fertilisasi adalah pembuahan ovum oleh sperma yang terjadi di tuba fallopi. Agar berhasil, fertilisasi harus terjadi sebelum 24 jam setelah terjadinya ovulasi karena dalam jangka waktu itulah ovum dapat dibuahi, sedangkan sperma dapat bertahan 72 jam di dalam tubuh wanita. Saat ejakulasi, jutaan sperma memasuki saluran vagina wanita, apabila koitus dilakukan pada waktu yang sama dengan ovulasi maka beberapa sperma ini akan berkelana ke arah yang berlawanan dengan arah gerak ovum, namun hanya satu yang dapat masuk dan membuahi ovum.&nbsp; Setelah sperma masuk ovum, kepalanya membangkak cepat untuk membentuk pronukleus jantan. Kemudian, 23 kromosom pronukleus jantan dan 23 kromosom pronukleus betina saling bersekutu untuk membentuk kembali unsur 46 kromosom dalam ovum yang telah mengalami fertilisasi.</p>\r\n</li>\r\n<li><strong>GESTASI</strong>\r\n<p>Gestasi bisa disebut juga dengan kehamilan. Gestasi atau kehamilan merupakan kondisi mengandung satu atau lebih embrio dalam uterus. Kehamilan pada manusia berlangsung selama 266 hari (38 minggu) dari fertilisasi telur atau 40 minggu dari awal siklus menstruasi terakhir. Setelah 24 jam, zigot yang dihasilkan dari fertilisasi kemudian membelah yang disebut dengan penyibakan (cleavage). Setelah 2-3 hari, embrio sampai pada uterus sebagai bola yang terdiri dari 16 sel. Setelah 1 minggu fertilisasi, penyibakan menghasilkan blastosit.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Setelah blastosit terbentuk, embrio tertanam di dalam endometrium dan berkembang menjadi fetus. Embrio yang terimplantasi/tertanam akan menghasilkan hormon-hormon embrionik. Hormon-hormon tersebut antara lain, gonadotropin korionik manusia/hCG.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gestasi pada manusia terbagi ke dalam tiga trimester, dimana setiap trimester terdiri dari 3 bulan. Trimester pertama adalah saat terjadi perubahan paling radikal pada ibu maupun embrio. Setelah 2-4 minggu pertama perkembangan, embrio memperoleh nutrien secara langsung dari endometrium. Sementara itu, lapisan terluar blastosit (trophoblast) tumbuh ke luar dan bercampur dengan endometrium, pada akhirnya membentuk plasenta. Trimester pertama merupakan periode pertama organogenesis (perkembangan organ-organ tubuh). Pada minggu ke-8 embrio telah dapat dikatakan janin atau fetus. Jantung mulai berdetak pada minggu ke-4. Pada trimester pertama, terjadi peningkatan progesteron.</p>\r\n<p>Pada trimester kedua, uterus tumbuh semakin cepat sehingga kehamilan mulai jelas. Ibu merasakan pergerakan-pergerakan fetus di trimester kedua ini. Kadar hormon menajdi stabil seiring dengan penurunan hCG, korpus luteum hancur, dan plasenta sepenuhnya mengambil alih produksi progesteron, hormon yang mempertahankan kehamilan.</p>\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada trimester ketiga, seiring dengan pertumbuhan fetus dan pelebaran uterus, organ-organ abdominal ibu menjadi tertekan dan terimpit sehingga mengakibatkan ibu sering buang air kecil, susah buang air besar, dan pegal-pegal pada otot punggung. Interaksi antara progstaglandin dan hormon (estradiol dan oksitosin) menginduksi persalinan.</p>\r\n</li>\r\n<li><strong>PERSALINAN</strong>\r\n<p>Persalinan merupakan bagian dari proses melahirkan. Sebagai respon terhadap kontraksi uterus, segmen bawah uterus meregang dan menipis, serviks berdilatasi, jalan lahir terbentuk dan bayi bergerak turun ke bawah melalui rongga panggul. Persalinan dan kelahiran normal adalah proses pengeluaran janin yang terjadi pada kehamilan cukup bulan (37-42 minggu), lahir spontan, dengan presentasi belakang kepala berlangsung dalam 18 jam tanpa komplikasi baik pada ibu maupun pada janin.</p>\r\n<img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab5.jpg\" />&nbsp;\r\n<p style=\"text-align: center;\">Gambar 8. Tahap Kelahiran Bayi</p>\r\n</li>\r\n</ol>', '', 1, 1, 1, '2019-04-04 03:42:03', '2019-04-04 03:42:13', NULL),
(37, 'F.	AIR SUSU IBU (ASI)', 'fair-susu-ibu-asi', '<p><strong><em><u>Proses Pembentukan ASI / Laktogen</u></em></strong></p>\r\n<ul>\r\n<li>Laktogenesis I</li>\r\n</ul>\r\n<p>Pada fase terakhir kehamilan, payudara wanita memasuki fase Laktogenesis I. Saat itu payudara memproduksi kolostrum, yaitu berupa cairan kental yang kekuningan. Pada saat itu, tingkat progesteron yang tinggi mencegah produksi ASI sebenarnya.</p>\r\n<ul>\r\n<li>Laktogenesis II</li>\r\n</ul>\r\n<p>Saat melahirkan keluarnya plasenta menyebabkan turunnya tingkat hormon progesteron, estrogen, dan human placental lactogen (HPL) secara tiba-tiba, tetapi hormon prolaktin tetap tinggi. Hal ini menyebabkan produksi ASI besar-besaran yang dikenal dengan fase Laktogenesis II.</p>\r\n<ul>\r\n<li>Laktogenesis III</li>\r\n</ul>\r\n<p>Sistem kontrol hormon endokrin mengatur produksi ASI selama kehamilan dan beberapa hari pertama setelah melahirkan. Ketika produksi ASI mulai stabil, sistem kontrol autokrin dimulai. Fase ini dinamakan Laktogenesis III.</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em><u>Pentingnya ASI / Laktogen</u></em></strong></p>\r\n<p>Pada saat hamil, ibu harus menjaga kondisi janin. Ibu harus mengkonsumsi makanan yang sehat sebagai nutrisi untuk si jabang bayi. Seperti halnya saat bayi tersebut dilahirkan, juga harus terpenuhi kebutuhan nutrisi nya hingga berusia 6 bulan melalui pemberian ASI eksklusif. ASI eksklusif adalah pemberian ASI tanpa makanan tambahan lain pada bayi berumur 0-6 bulan.</p>\r\n<p>Salah satu kandungan ASI yaitu kolostrum. Berdasarkan penelitian, ada 4 manfaat kolostrum pada ASI bagi bayi diantaranya :</p>\r\n<ul>\r\n<li>Mengandung zat kekebalan terutama immunoglobulin A (IgA) untuk melindungi bayi dari berbagai penyakit infeksi seperti diare.</li>\r\n<li>Jumlah kolostrum yang diproduksi bervariasi, tergantungisapan bayi pada hari-hari pertama lahiran.</li>\r\n<li>Mengandung protein dan vitamin A yang tinggi, serta mengandung karbohidrat dan lemak yang rendah sehingga sesuai dengan kebutuhan gizi bayi pada hari-hari pertama lahiran.</li>\r\n<li>Membantu mengeluarkan meconium, yaitu kotoran bayi yang pertama berwarna hitam kehijauan.</li>\r\n</ul>', '', 1, 1, 1, '2019-04-04 03:44:56', '2019-04-04 03:44:56', NULL),
(38, 'G.	ALAT KONTRASEPSI (KB)', 'galat-kontrasepsi-kb', '<p>Kontrasepsi merupakan pencegahan kehamilan secara sengaja yang dapat tercapai melalui beberapa cara. Beberapa metode kontrasepsi bekerja dengan cara mencegah pelepasan dan perkembangan gamet dari gonad laki-laki dan wanita. Metode yang lain bekerja dengan dengan mencegah fertilisasi dengan menjaga agar sperma dan ovum tetap terpisah.&nbsp; Dan ada juga metode yang cara kerjanya dengan mencegah implantasi embrio.</p>\r\n<p><strong>Macam-macam metode kontrasepsi &nbsp;:</strong></p>\r\n<p>&nbsp;&nbsp;<img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab6.jpg\" width=\"300\" height=\"200\" /></p>\r\n<p><img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab6.2.jpg\" width=\"300\" height=\"200\" /></p>\r\n<p><img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab6.3.jpg\" width=\"300\" height=\"200\" /></p>\r\n<p><img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab6.4.jpg\" width=\"300\" height=\"200\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Berikut penjelasan mengenai macam metode kontrasepsi :</p>\r\n<ol>\r\n<li>Kontrasepsi Hormonal</li>\r\n</ol>\r\n<p>Contohnya adalah pil kombinasi, suntikan kombinasi, suntikan progestin, pil progestin, dan implan.</p>\r\n<ul>\r\n<li>Cara Kerja Pil Kombinasi</li>\r\n</ul>\r\n<p>Pil kombinasi menekan ovulasi, mencegah implantasi, mengentalkan lendir serviks sehingga sulit dilalui oleh sperma, dan menganggu pergerakan tuba sehingga transportasi telur terganggu. Pil ini diminum setiap hari.</p>\r\n<ul>\r\n<li>Cara Kerja Suntikan Kombinasi</li>\r\n</ul>\r\n<p>Suntikan kombinasi menekan ovulasi, mengentalkan lendir serviks sehingga penetrasi sperma terganggu, atrofi pada endometrium sehingga implantasi terganggu, dan menghambat transportasi gamet oleh tuba. Suntikan ini diberikan sekali tiap bulan.</p>\r\n<ul>\r\n<li>Cara Kerja Suntikan Progestin</li>\r\n</ul>\r\n<p>Suntikan progestin mencegah ovulasi, mengentalkan lendir serviks sehingga penetrasi sperma terganggu, menjadikan selaput rahim tipis dan atrofi, dan menghambat transportasi gamet oleh tuba. Suntikan diberikan 3 bulan sekali (DMPA).</p>\r\n<ul>\r\n<li>Cara Kerja Pil Progestin</li>\r\n</ul>\r\n<p>Minipil menekan sekresi gonadotropin dan sintesis steroid seks di ovarium, endometrium mengalami transformasi lebih awal sehingga implantasi lebih sulit, mengentalkan lendir serviks sehingga menghambat penetrasi sperma, mengubah motilitas tuba sehingga transportasi sperma terganggu. Pil diminum setiap hari.</p>\r\n<ul>\r\n<li>Cara Kerja Implan</li>\r\n</ul>\r\n<p>Minipil menekan sekresi gonadotropin dan sintesis steroid seks di ovarium, endometrium mengalami transformasi lebih awal sehingga implantasi lebih sulit, mengentalkan lendir serviks sehingga menghambat penetrasi sperma, mengubah motilitas tuba sehingga transportasi sperma terganggu. Pil diminum setiap hari.</p>\r\n<p>&nbsp;</p>\r\n<ol start=\"2\">\r\n<li>Alat Kontrasepsi Dalam Rahim (AKDR)</li>\r\n</ol>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Mekanisme kerja :</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Dalam Rahim AKDR dimasukkan ke dalam uterus. AKDR menghambat (AKDR) kemampuan sperma untuk masuk ke tuba falopii, mempengaruhi fertilisasi sebelum ovum mencapai kavum uteri, mencegah sperma dan ovum bertemu, mencegah implantasi telur dalam uterus.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp; &nbsp; 3. Mekanisme Mantap</p>\r\n<ol style=\"list-style-type: lower-alpha;\">\r\n<li>Tubektomi</li>\r\n</ol>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Menutup tuba falopii (mengikat dan memotong atau memasang cincin), sehingga sperma tidak dapat bertemu dengan ovum.</p>\r\n<p>&nbsp; &nbsp; b. Vasektomi</p>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Menghentikan kapasitas reproduksi pria dengan jalan melakukan oklusi vasa deferens sehingga alur transportasi sperma terhambat dan proses fertilisasi tidak terjadi.</p>', '', 1, 1, 1, '2019-04-04 03:45:57', '2019-04-04 03:52:18', NULL),
(39, 'H.	KELAINAN PADA SISTEM REPRODUKSI', 'hkelainan-pada-sistem-reproduksi', '<ol>\r\n<li><strong>Gonorrhoea </strong></li>\r\n</ol>\r\n<p>Suatu infeksi penyakit yang ditularkan melalui hubungan kelamin yang mula-mula mempengaruhi atau menyerang selaput lendir saluran urogenital, rektum dan kadang- kadang mata. Penyakit ini disebabkan oleh bakteri <em>Neisseria gonorrhoea.</em> Selaput lendir yang telah terinfeksi merupakan sumber infeksi penularan, bakteri dapat dipindahkan melalui hubungan langsung (biasanya hubungan seksual) atau dapat juga dipindahkan dari ibu yang menderita gonorrhoea.</p>\r\n<p>Pada laki-laki akan terjadi peradangan yang serius di bagian urethra yang disertai dengan keluarnya nanah dan rasa sakit pada sistem urinary. Gonorrhoea Suatu infeksi penyakit yang ditularkan melalui hubungan kelamin yang mula-mula mempengaruhi atau menyerang selaput lendir saluran urogenital, rektum dan kadang- kadang mata.</p>\r\n<ol start=\"2\">\r\n<li><strong>Syphillis </strong></li>\r\n</ol>\r\n<p>Penyakit ini disebabkan oleh bakteri <em>Triponema pallidum</em>. Penularan ini dapat terjadi melalui kontak seksual atau melalui plasenta ibu kepada bayinya. Penyakit ini memiliki beberapa tingkat yaitu tingkat pertama , kedua, ketiga, laten, dan kadang-kadang keempat.</p>\r\n<ul>\r\n<li>Pada tingkat pertama nampak adanya borok yang disebut chancre pada daerah terjadinya kontak. Borok tersebut akan sembuh dengan sendirinya dalam waktu 1 minggu tetapi penyakitnya akan terus menjalar di dalam tubuh.</li>\r\n<li>Setelah 6-21 minggu biasanya akan masuk pada tingkat kedua ditandai dengan gejala-gejala seperti demam, kulit kasar dan pegal-pegal pada setiap persendian dan otot. Gejala ini pun biasanya akan menghilang dengan sendirinya, namun pemeriksaan darah untuk menentukan adanya bakteri biasanya bersifat positif.</li>\r\n<li>Keadaan tsb berlanjut dengan tingkat laten yaitu suatu keadaan yang tidak menampakkan adanya gejala namun bakteri akan menyerang organ &ndash; organ tubuh. Bila ditandai dengan adanya kerusakan atau degenerasi organorgan tubuh berarti keadaan ini telah memasuki tingkat tertier.</li>\r\n</ul>\r\n<ol start=\"3\">\r\n<li><strong>Herpes Genital </strong></li>\r\n</ol>\r\n<p>Penyakit ini sangat umum terjadi di Amerika Serikat. Hal ini mungkin disebabkan oleh bebasnya hubungan seks dinegara tersebut. Tidak seperti syphilis dan gonorrhoea, herpes genital tidak dapat diobati. Tipe I, virus herpes simplex menyebabkan demam yang disertai rasa pedih. Pada tipe II virus herpes simplex menyebabkan rasa sakit dan pelepuhan di bagian genital, glans penis dan batang penis pada laki-laki. Sedangkan pada wanita terjadi didaerah vagina dan vulva.</p>\r\n<ol start=\"4\">\r\n<li><strong>Trichomoniasis </strong></li>\r\n</ol>\r\n<p>Penyakit ini disebabkan oleh protozoa kelas Flagellata yang disebut Trichomonas vaginalis. Penyakitnya sendiri disebut Trichomoniasis yang menyebabkan peradangan atau luka didaerah selaput lendir vagina pada wanita dan saluran urethra pada laki-laki. Gejala pada wanita dapat berupa gatal-gatal dan rasa sakit di daerah vagina, sedangkan pada laki-laki kadangkadang tanpa gejala yang jelas, tetapi dapat ditularkan pada patner seksualnya.</p>\r\n<ol start=\"5\">\r\n<li><strong>Infertilitas</strong></li>\r\n</ol>\r\n<p>Infertilitas merupakan ketidakmampuan untuk menghasilkan keturunan. Penyebab infertilitas bervariasi, dengan cacat reproduktif yang hampir sama besar pada laki-laki dan wanita.</p>\r\n<ol start=\"6\">\r\n<li><strong>Kanker Serviks</strong></li>\r\n</ol>\r\n<p>Kanker serviks terjadi ditandai dengan adanya pertumbuhan sel-sel pada leher rahim yang tidak normal. Kanker serviks adalah suatu proses keganasan yang terjadi pada leher rahim, sehingga jaringan di sekitarnya tidak dapat melaksanakan fungsi sebagaimana mestinya. Keadaan tersebut ditandai dengan adanya pendarahan dan pengeluaran cairan vagina yang abnormal.</p>\r\n<p>&nbsp;<img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab7.1.jpg\" /></p>\r\n<ol start=\"7\">\r\n<li><strong>Kanker Ovarium</strong></li>\r\n</ol>\r\n<p>Kanker ovarium yang sering dialami wanita terbagi dalam dua jenis yaitu kanker jinak dan kanker ganas. Kanker ovarium pada stadium dini tidak memberikan keluhan, sedangkan keluhan pada stadium lanjut yaitu rasa nyeri di area abdomen, tidak nyaman dan cepat merasa kenyang. Gejala lain yang timbul adalah mudah lelah, perut membuncit, sering kencing, dan nafas pendek.</p>\r\n<p><img class=\"img-fluid\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"../../../img/materi/bab7.2.jpg\" /></p>', '', 1, 1, 1, '2019-04-04 03:53:16', '2019-04-04 03:55:22', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikelcomments`
--

CREATE TABLE `artikelcomments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_artikel` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int(10) UNSIGNED NOT NULL,
  `jwb1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jwb2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jwb3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jwb4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jwb5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nilai` int(11) NOT NULL,
  `id_soal` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `jawaban`
--

INSERT INTO `jawaban` (`id`, `jwb1`, `jwb2`, `jwb3`, `jwb4`, `jwb5`, `nilai`, `id_soal`, `id_user`, `created_at`, `updated_at`) VALUES
(22, 'C', 'C', 'E', 'C', 'C', 40, 1, 1, '2019-04-07 01:17:42', '2019-04-07 01:17:42'),
(24, 'B', 'C', 'E', 'C', 'C', 20, 1, 1, '2019-04-07 01:23:04', '2019-04-07 01:23:04'),
(25, 'C', 'B', 'D', 'D', 'B', 20, 2, 1, '2019-04-07 01:55:09', '2019-04-07 01:55:09'),
(26, 'A', 'A', 'E', 'D', 'C', 0, 1, 1, '2019-04-07 03:07:13', '2019-04-07 03:07:13'),
(27, 'B', 'D', 'D', 'B', 'D', 20, 1, 20, '2019-04-07 05:28:42', '2019-04-07 05:28:42'),
(28, 'C', 'E', 'A', 'E', 'A', 0, 2, 20, '2019-04-07 05:29:02', '2019-04-07 05:29:02'),
(29, 'D', 'A', 'C', 'A', 'A', 0, 1, 18, '2019-09-01 06:46:48', '2019-09-01 06:46:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawaban_essay`
--

CREATE TABLE `jawaban_essay` (
  `id` int(11) NOT NULL,
  `jawaban` text NOT NULL,
  `jawaban2` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `type_soal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jawaban_essay`
--

INSERT INTO `jawaban_essay` (`id`, `jawaban`, `jawaban2`, `id_user`, `type_soal`, `created_at`, `updated_at`) VALUES
(5, 'sadsadasf', 'asfsafsafasf', 1, 2, '2019-04-07 08:55:00', '0000-00-00 00:00:00'),
(6, 'Ini jawabanku untuk fisrt meeting', '', 20, 1, '2019-04-07 12:28:33', '0000-00-00 00:00:00'),
(7, 'ini jawaban unruk kedua', 'keduaa broo', 20, 2, '2019-04-07 12:28:56', '0000-00-00 00:00:00'),
(8, 'ini untuk ketiga broo', '', 20, 3, '2019-04-07 12:29:09', '0000-00-00 00:00:00'),
(9, 'Hayoooo\r\n', '', 18, 1, '2019-09-01 13:46:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoriartikel`
--

CREATE TABLE `kategoriartikel` (
  `id` int(10) UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `kategoriartikel`
--

INSERT INTO `kategoriartikel` (`id`, `kategori`) VALUES
(1, 'materi'),
(2, 'artikel'),
(3, 'tips');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`) VALUES
(1, 'X IPA'),
(2, 'X IPS'),
(4, 'XI IPA'),
(5, 'XI IPS'),
(6, 'XII IPA'),
(7, 'XII IPS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id` int(10) UNSIGNED NOT NULL,
  `mapel` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id`, `mapel`) VALUES
(1, 'Matematika'),
(2, 'Kimia'),
(3, 'Fisika'),
(4, 'Biologi'),
(5, 'Bahasa Indonesia'),
(6, 'Sejarah'),
(7, 'Sosiologi'),
(8, 'Geografi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_10_24_115418_create_artikel__table', 1),
('2017_10_25_100734_create_video_table', 2),
('2017_10_25_102754_create_kategoriartikel_table', 3),
('2017_10_25_112952_create_videos_table', 3),
('2017_11_22_072425_create_tambahdatauser', 4),
('2017_11_22_074006_create_tambahartikel_table', 5),
('2017_11_22_074606_create_artikel_table', 6),
('2017_11_22_075300_create_artikelss_table', 7),
('2017_11_22_080242_create_mapel_table', 7),
('2017_11_23_153032_create_artikel_comment_table', 8),
('2017_11_27_175409_create_notification_table', 9),
('2019_03_21_083010_create_table_setting', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_model` int(10) UNSIGNED NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `setting_name`, `setting_value`, `created_at`, `updated_at`) VALUES
(1, 'kd', '<p>1.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mengagumi keteraturan dan kompleksitas ciptaan Tuhan tentang struktur dan fungsi sel, jaringan, organ penyusun sistem, dan bioproses yang terjadi pada makhluk hidup.</p>\r\n<p>1.2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Menyadari dan mengagumi pola pikir ilmiah dalam kemampuan mengamati bioproses.</p>\r\n<p>1.3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peka dan peduli terhadap permasalahan lingkungan hidup, menjaga dan menyayangi lingkungan sebagai manifestasi pengamalan ajaran agama yang dianutnya.</p>\r\n<p>2.1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Berperilaku ilmiah : teliti, tekun, jujur terhadap data dan fakta, disiplin, tanggung jawab, dan peduli dalam observasi dan eksperimen, berani dan santun dalam mengajukan pertanyaan dan berargumentasi, peduli lingkungan, gotong royong, bekerjasama, cinta damai, dan berpendapat secara ilmiah dan kritis, responsive dan proaktif dalam setiap tindakan dan dalam melakukan pengamatan dan percobaan di dalam kelas / laboratorium maupun di luar kelas / laboratorium.</p>\r\n<p>2.2&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peduli terhadap keselamatan diri dan lingkungan dengan menerapkan prinsip keselamatan kerja saat melakukan kegiatan pengamatan dan percobaan di laboratorium dan di lingkungan sekitar.</p>\r\n<p>3.12&nbsp;&nbsp;&nbsp;&nbsp; Menganalisis hubungan antara struktur jaringan penyusun organ reproduksi dengan fungsinya dalam proses reproduksi manusia melalui studi literatur, pengamatan, percobaan dan simulasi.</p>\r\n<p>3.13&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Menerapkan pemahaman tentang prinsip reproduksi manusia untuk menanganggulangi pertambahan penduduk melalui program keluarga berencana (KB) dan peningkatan kualitas hidup SDM melalui pemberian ASI eksklusif.</p>\r\n<p>4.13&nbsp;&nbsp;&nbsp;&nbsp; Menyajikan hasil analisis tentang kelainan pada struktur dan fungsi organ yang menyebabkan gangguan sistem reproduksi manusia melalui berbagai bentuk media presentasi.</p>\r\n<p>4.14&nbsp;&nbsp;&nbsp;&nbsp; Memecahkan masalah kepadatan penduduk dengan menerapkan prinsip reproduksi manusia.</p>\r\n<p>4.15&nbsp;&nbsp;&nbsp;&nbsp; Merencanakan dan melakukan kampanye tentang upaya penanggulangan pertambahan penduduk dan peningkatan kualitas SDM melalui program keluarga berencana (KB) dan pemberian ASI eksklusif dalam bentuk poster dan spanduk.</p>', '2019-03-21 09:17:52', '2019-03-21 02:17:52'),
(2, 'tujuan', '<p>1. Siswa dapat membedakan organ-organ reproduksi pada laki-laki dan wanita melalui kegiatan studi literasi.</p>\r\n<p>2. Siswa dapat menjabarkan fungsi masing-masing organ reproduksi pada laki-laki dan wanita melalui kegiatan diskusi dan studi literasi.</p>\r\n<p>3. Siswa mampu menerangkan proses pembentukan sel kelamin pada laki-laki dan wanita melalui kegiatan literasi.</p>\r\n<p>4. Siswa mampu mendeskripsikan proses ovulasi dan menstruasi pada wanita melalui studi kasus dan literatur.</p>\r\n<p>5. Siswa mampu menganalisis proses fertilisasi, gestasi, dan persalinan melalui studi kasus dan literatur.</p>\r\n<p>6. Siswa mampu menerangkan pentingnya mengkonsumsi ASI pada bayi melalui studi literatur.</p>\r\n<p>7. Siswa mampu mengemukakan berbagai macam alat kontrasepsi untuk laki-laki dan wanita melalui studi literatur.</p>\r\n<p>8. Siswa mampu menganalisis berbagai jenis kelainan sistem reproduksi pada pria dan wanita serta pengobatan maupun pencegahannya.</p>', '2019-03-21 09:25:23', '2019-03-21 02:25:23'),
(3, 'about', '<p><em>E-modul</em> ini didesain sesuai dengan model <em>Learning Cycle</em> 7E yang akan diterapkan untuk pembelajaran materi sistem reproduksi. Model pembelajaran <em>Learning Cycle 7</em>E mempunyai 7 tahapan :</p>\r\n<ul>\r\n<li><em>Elicit</em></li>\r\n<li><em>Engage</em></li>\r\n<li><em>Explore</em></li>\r\n<li><em>Explain</em></li>\r\n<li><em>Elaborate</em></li>\r\n<li><em>Evaluate</em></li>\r\n<li><em>Extend</em></li>\r\n</ul>\r\n<p>Pada <em>e-modul</em> ini terdapat peta konsep, materi (uraian, gambar, video), studi kasus, kuis-kuis, dan evaluasi. Peta konsep digunakan untuk menyatakan hubungan yang bermakna antara konsep-konsep dalam bentuk proporsi-proporsi. Uraian materi berisi pembahasan materi yang berkaitan dengan penguasaan kompetensi yang dibutuhkan. Studi kasus dan kuis-kuis berfungsi agar siswa lebih mampu memahami materi. Evaluasi digunakan untuk mengetahui ketercapaian hasil belajar siswa.</p>', '2019-03-21 09:20:12', '2019-03-21 02:20:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `settting`
--

CREATE TABLE `settting` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `e` varchar(255) NOT NULL,
  `jawaban` varchar(255) NOT NULL,
  `type_soal` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id`, `pertanyaan`, `a`, `b`, `c`, `d`, `e`, `jawaban`, `type_soal`, `created_at`, `updated_at`) VALUES
(1, 'Andi sudah melewati masa pubertas, namun dia belum mengalami perubahan suara maupun pertumbuhan rambut di berbagai bagian tubuhnya. Menurut Anda, apa yang terjadi pada sistem reproduksi Andi? ', 'Kekurangan hormon estrogen ', 'Kelebihan homon estrogen ', 'Kekurangan hormon testosteron ', 'Kelebihan hormon testosteron ', 'Kekurangan hormon progesteron', 'C', 1, '2019-04-04 11:00:04', '0000-00-00 00:00:00'),
(2, 'Perhatikan nama bagian dari sistem reproduksi di bawah ini. <br> \r\n1) Testis               5) Uretra <br> \r\n2) Penis 		6) Skrotum <br>\r\n3) Epididimis 		7) Vesikula seminalis <br>\r\n4) Vas deferens <br> \r\nBagian sistem reproduksi di atas yang mempunyai type saluran adalah......... \r\n', '1, 3, 7 ', '2, 3, 4 	', '4, 5, 7', '3, 4, 5', '5, 6, 7', 'B', 1, '2019-04-04 11:03:47', '0000-00-00 00:00:00'),
(3, 'Perbedaan spermatogenesis dan oogenesis yaitu...... ', '	Spermatogenesis menghasilkan 4 sel sperma fungsional, oogenesis menghasilkan 3 ovum dan 1 polosit', '	Spermatogenesis terjadi di testis, oogenesis terjadi di oviduk', '	Spermatogenesis terjadi melalui siklus, oogenesis terjadi terus menerus', '	Spermatogenesis menghasilkan 4 spermatozoa, oogenesis menghasilkan 1 ovum dan 3 polosit', '	Spermatogenesis dipengaruhi testosteron, oogenesis dipengaruhi oksitosin', 'D', 1, '2019-04-04 11:08:01', '0000-00-00 00:00:00'),
(4, 'Perhatikan gambar di bawah ini! <br>\r\n<img class=\"img-fluid\" src=\"/img/materi/soal1.4.jpg\"> <br>\r\nBagian yang diberi tanda “X” mempunyai perananan yaitu….', 'Dihasilkan ovum', 'Terjadinya fertilisasi / pembuahan', 'tempat implantasi sel telur yang telah dibuahi', 'Tempat Saluran Bayi ', 'Penyisipan penis', 'C', 1, '2019-04-04 11:11:05', '0000-00-00 00:00:00'),
(5, 'Perhatikan tabel berikut! <br>\r\n<img class=\"img-fluid\" src=\"/img/materi/tabel.jpg\"> <br>\r\nDengan memperhatikan tabel di atas, tentukan pasangan antara nama organ dan fungsinya yang benar adalah', '1 dengan D', '2 dengan A', '2 dengan C', '3 dengan B', '4 dengan C', 'B', 1, '2019-04-06 17:17:29', '0000-00-00 00:00:00'),
(6, 'Hormon pada wanita yang berperan untuk pertumbuhan folikel yaitu ……..', 'Progesteron', 'Estrogen', 'GnRH', 'FSH dan LH', 'Hcg', 'D', 2, '2019-04-06 17:14:13', '0000-00-00 00:00:00'),
(10, 'Siklus mesntruasi dibagi menjadi tiga fase, antara lain ……..', 'Sekesi, ovulasi, menstruasi', 'Luteus, proliferasi, sekresi', 'Menstruasi, proliferasi, sekresi', 'Menstruasi, sekresi, ejakulasi', 'Ovulasi, proliferasi, luteus', 'C', 2, '2019-04-06 17:16:56', '0000-00-00 00:00:00'),
(11, 'Organogenesis (perkembangan organ-organ) pada masa kehamilan terjadi pada trimester ke-….', 'Ketiga', 'Kedua', 'Pertama', 'Semua Jawaban Benar', 'Semua Jawaban Salah', 'C', 2, '2019-04-06 17:16:37', '0000-00-00 00:00:00'),
(12, 'Berikut merupakan fungsi dari plasenta, kecuali…….', 'Pertukaran nutrisi, hormone', 'Immune protection', 'Sebagai kelenjar endokrin', 'Menggantikan peran LH selama kehamilan', 'Barrier (mencegah bercampurnya darah induk dan fetus)', 'D', 2, '2019-04-06 17:18:59', '0000-00-00 00:00:00'),
(13, 'Di bawah ini yang bukan merupakan tahapan-tahapan persalinan yaitu…..', 'Pelebaran serviks', 'Pengeluaran Bayi', 'Pengeluran Plasenta', 'Hanya B dan C yang benar', 'A,B,C benar semua', 'E', 2, '2019-04-06 17:20:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal_essay`
--

CREATE TABLE `soal_essay` (
  `id` int(11) NOT NULL,
  `soal` text NOT NULL,
  `type_soal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal_essay`
--

INSERT INTO `soal_essay` (`id`, `soal`, `type_soal`, `created_at`, `updated_at`) VALUES
(1, '<img class=\"img-fluid\" width=\"300\" height=\"200\"src=\"/img/materi/soal1.jpg\">\r\n<img class=\"img-fluid\" width=\"300\" height=\"200\"src=\"/img/materi/soal1.1.jpg\">\r\n<br><br>\r\nCoba jelaskan yang Anda ketahui nama-nama organ dan fungsinya dari kedua gambar di atas!', 1, '2019-04-06 17:55:47', '0000-00-00 00:00:00'),
(2, 'Dalam dunia medis dikenal istilah infertilitas. Infertilitas didefinisikan sebagai kegagalan satu pasangan untuk mendapatkan kehamilan setelah melakukan hubungan seksual secara teratur selama satu tahun tanpa memakai alat kontrasepsi. Coba diskusikan dengan teman kelompokmu, apa saja yang menjadi faktor penyebab terjadinya infertilisasi!', 2, '2019-04-06 17:42:02', '0000-00-00 00:00:00'),
(3, 'Anda mengenal peristiwa hamil anggur? Dari pengetahuan yang sudah Anda peroleh tentang fertilisasi, coba jelaskan bagaimana peristiwa hamil anggur itu dapat terjadi? Diskusikan dengan teman kelompok!', 2, '2019-04-06 17:42:02', '0000-00-00 00:00:00'),
(4, 'Kasus PMS (Penyakit Menular Seksual) dan AIDS tidak sedikit terjadi di kalangan remaja. Apa yang Anda ketahui tentang PMS dan AIDS? Apa bahayanya jika seseorang terkena PMS?\r\nBagaimana cara Anda untuk tidak tertular PMS?\r\n', 3, '2019-04-06 17:42:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `type_soal`
--

CREATE TABLE `type_soal` (
  `id` int(11) NOT NULL,
  `type_soal` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `type_soal`
--

INSERT INTO `type_soal` (`id`, `type_soal`, `created_at`, `updated_at`) VALUES
(1, 'First Meeting', '2019-03-28 06:32:28', '0000-00-00 00:00:00'),
(2, 'Second Meeting', '2019-03-28 06:32:28', '0000-00-00 00:00:00'),
(3, 'Third Meeting', '2019-04-06 18:04:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tempatasal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `sekolah` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`, `tempatasal`, `tanggal_lahir`, `sekolah`) VALUES
(1, 'Admin', 'admin@admin.com', 2, '$2y$10$UA1R88iahO7Dc608r32fCOkdT3K0tVOwHpnuPEuwQA8I9vSftdayq', 'nbcVzzpOTOpGOBrHvRvUdrJs3ftN0DdsU3oqVqmdWB7rxUC7TEMRAfe84och', '2017-09-22 00:41:15', '2019-04-07 05:27:41', 'Pemalang', '1996-02-13', 'SMA N 1 Moga'),
(2, 'chaemim', 'chaemim@yahoo.com', 2, '$2y$10$zDhupjNOgrnxNPPAln7RK.GcLibOT.1cb2bXgy/oU13Gvxj2U5zPq', 'qEDbEQVojRmEmgsotKqhi4taXQcw7DeZfAHcIDk3BMGOkwlAcEWu7QGCm1xr', '2017-10-22 00:47:16', '2019-09-01 06:46:05', 'Pekalongan', '0000-00-00', 'Sma N 1 Pekalongan'),
(18, 'Abdul Khamim', 'test@test.com', 1, '$2y$10$t.GIYW1Ec316CXnGeXJX.uwirqUXg42R6o6Oci/ErG4Vf4NMTr46e', 'bQHVzMkwFBwjQj6L7VQVIJXV2LQf04UTNRPUa2Sthqr84pUdvBxprD4J60DU', '2019-04-07 03:41:15', '2019-09-01 06:46:58', '', '0000-00-00', ''),
(19, 'asdsdasd', 'casd@asdas.com', 1, '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0000-00-00', ''),
(20, 'chaemimmmm', 'chaemim13@gmail.com', 1, '$2y$10$MuHt0uRbrTMipnVKzPt4XOB7BtlwBu.0nlTZ2ZieH7qCNHgBui/rq', 'T5GBLeWF4JtghmyyfKOlgy8nFfz2f9PX1zXUPIvHHajfmRHnrwo2ESxtfRPY', '2019-04-07 05:28:18', '2019-04-07 05:29:21', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_video` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_kelas` int(11) UNSIGNED NOT NULL,
  `id_mapel` int(11) UNSIGNED NOT NULL,
  `id_admin` int(11) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `title`, `deskripsi`, `file_video`, `id_kelas`, `id_mapel`, `id_admin`, `created_at`, `updated_at`) VALUES
(17, 'Gejala Mentruasi Pada Wanita', 'Gejala Mentruasi Pada Wanita', 'lBZrV-s5GS8', 4, 4, 1, '2019-04-04 07:09:17', '2019-04-04 07:12:30'),
(18, 'Proses Oogenesis', 'Proses Oogenesis\r\n', 'R8IEzhcfBKA', 4, 4, 1, '2019-04-04 07:10:45', '2019-04-04 07:10:45'),
(19, 'Proses Spermatogenesis', 'Proses Spermatogenesis\r\n', 'VKiedh4zj4Y', 4, 4, 1, '2019-04-04 07:11:32', '2019-04-04 07:11:32'),
(20, 'Siklus menstruasi Manusia', 'Siklus menstruasi Manusia\r\n', 'ciQJAqnrA88', 4, 4, 1, '2019-04-04 07:12:09', '2019-04-04 07:12:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `artikelcomments`
--
ALTER TABLE `artikelcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikelcomments_id_artikel_foreign` (`id_artikel`),
  ADD KEY `artikelcomments_id_user_foreign` (`id_user`);

--
-- Indeks untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawaban_essay`
--
ALTER TABLE `jawaban_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoriartikel`
--
ALTER TABLE `kategoriartikel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_id_user_foreign` (`id_user`),
  ADD KEY `notifications_id_model_foreign` (`id_model`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `settting`
--
ALTER TABLE `settting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_soal` (`type_soal`);

--
-- Indeks untuk tabel `soal_essay`
--
ALTER TABLE `soal_essay`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `type_soal`
--
ALTER TABLE `type_soal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `artikelcomments`
--
ALTER TABLE `artikelcomments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `jawaban_essay`
--
ALTER TABLE `jawaban_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `kategoriartikel`
--
ALTER TABLE `kategoriartikel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `mapel`
--
ALTER TABLE `mapel`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `settting`
--
ALTER TABLE `settting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `soal_essay`
--
ALTER TABLE `soal_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `type_soal`
--
ALTER TABLE `type_soal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `artikel_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artikel_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategoriartikel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `artikelcomments`
--
ALTER TABLE `artikelcomments`
  ADD CONSTRAINT `artikelcomments_id_artikel_foreign` FOREIGN KEY (`id_artikel`) REFERENCES `artikel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `artikelcomments_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_id_model_foreign` FOREIGN KEY (`id_model`) REFERENCES `artikel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
