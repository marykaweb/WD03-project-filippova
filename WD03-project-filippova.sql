-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 26 2018 г., 14:04
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `WD03-project-filippova`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `photo` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`, `photo`) VALUES
(1, 'Мария Филиппова', '<p>Занимаюсь разработкой сайтов с нуля, под ключ.&nbsp;Выполняю верстку, программирование и наполнение сайтов, так же могу сделать небольшой дизайн.&nbsp;Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>&nbsp;Созданный сайт&nbsp;будет иметь весь необходимый функционал и отлично выглядеть на всех устройствах. Вы можете заказать у меня разработку сайта или <a href=\"http://wd03-project-filippova/contacts\">связаться со мной</a>&nbsp; для сотрудничества&nbsp;</p>\r\n\r\n<h2>Что я умею</h2>\r\n\r\n<p>Меня привлекет Frontend и Backend разработка, это не только моя работа, но и хобби.&nbsp;</p>\r\n', '231318080.JPG');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `cat_title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `cat_title`) VALUES
(2, 'PHP'),
(4, 'JavaScript'),
(5, 'HTML'),
(7, 'Животные'),
(8, 'Разное');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `text`, `date_time`) VALUES
(1, 6, 51, 'Замечательный парк, обязательно отправлюсь туда этим летом.', '2018-07-22 22:33:55'),
(2, 6, 51, 'Язык программирования PHP', '2018-07-22 22:34:32'),
(3, 6, 51, 'Комментарий', '2018-07-22 23:37:25'),
(4, 11, 51, 'Проверка работоспособности', '2018-07-22 23:47:15'),
(5, 10, 51, 'Комментарий для JS', '2018-07-22 23:53:23'),
(6, 7, 51, 'Красивая картинка', '2018-07-22 23:54:54'),
(7, 10, 53, 'Очень интересная статья', '2018-07-25 12:36:24'),
(8, 21, 51, 'Супер', '2018-07-26 13:07:05');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `secondname` varchar(191) DEFAULT NULL,
  `skype` varchar(191) DEFAULT NULL,
  `vk` varchar(191) DEFAULT NULL,
  `fb` varchar(191) DEFAULT NULL,
  `github` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `phone`, `address`, `name`, `secondname`, `skype`, `vk`, `fb`, `github`, `twitter`) VALUES
(1, 'admin@test.ru', '+7977123-45-67', 'Москва', 'Мария', 'Филиппова', '', 'http://vk.com/fmpantera', '', 'https://github.com/marykaweb', '');

-- --------------------------------------------------------

--
-- Структура таблицы `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) UNSIGNED NOT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `jobs`
--

INSERT INTO `jobs` (`id`, `period`, `title`, `description`) VALUES
(3, 'август 2015 &mdash; по настоящее время', 'Руководитель контент отдела', 'Работа в самописной CMS, в 1С Предприятие;\r\nВ мои обязанности входит отслеживание контента на сайте; добавление, редактирование и удаление товаров; создание новых категорий; наполнение контентом; подбор фотографий и написание статьей;\r\nРабота с ценами и остатками товара;\r\nГенерация новых идей по улучшению работы сайта;\r\nВ подчинении 4 удаленных контент-менеджера;\r\nРабота в тандеме с программистами и SEO-оптимизаторами.						'),
(9, 'апрель 2018 - по настоящее время', 'Веб разработчик', 'Разработка сайтов под ключ.');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file_name_original` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_file` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `email`, `name`, `message`, `message_file_name_original`, `message_file`, `date_time`) VALUES
(11, 'info@test.ru', 'Мария', 'Нужна верстка такого макета.', '6ef46b3effe5891d3e3ad86579a40218.jpg', '-69094137.jpg', '2018-07-24 00:25:19'),
(13, 'info@test.ru', 'Емельян', 'позвоните', NULL, NULL, '2018-07-25 14:37:41');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `text` text COLLATE utf8mb4_unicode_520_ci,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `cat` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `post_img_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `update_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `author_id`, `date_time`, `cat`, `post_img`, `post_img_small`, `update_time`) VALUES
(6, 'php для начинающих', '<p>Язык программирования PHP много лет сохраняет первенство в этой сфере. На нем написаны сотни тысяч ресурсов, и даже такие монстры как facebook.com и vk.com. PHP славится своей простотой, низким порогом вхождения и невероятной гибкостью.</p>\r\n', 51, '2018-07-19 19:58:24', '2', '457368489.jpg', '320-457368489.jpg', '2018-07-20 13:43:03'),
(7, 'Горы', '<p><strong>Алтайские горы</strong>, или&nbsp;<strong>Алтай</strong>&nbsp;(<a href=\"https://ru.wikipedia.org/wiki/%D0%9C%D0%BE%D0%BD%D0%B3%D0%BE%D0%BB%D1%8C%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Монгольский язык\">монг.</a>&nbsp;Алтайн нуруу, алт. Туулу Алтай&nbsp;&mdash; горная земля,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AE%D0%B6%D0%BD%D0%BE%D0%B0%D0%BB%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Южноалтайский язык\">южноалт.</a>&nbsp;Алтай туулар,<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%80%D0%B3%D0%B8%D0%B7%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Киргизский язык\">кирг.</a>&nbsp;Алтай тоолору,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Казахский язык\">каз.</a>&nbsp;Алтай таулары,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B8%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA\" title=\"Китайский язык\">кит.</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BF%D1%80%D0%BE%D1%89%D0%B5%D0%BD%D0%B8%D0%B5_%D0%B8%D0%B5%D1%80%D0%BE%D0%B3%D0%BB%D0%B8%D1%84%D0%BE%D0%B2\" title=\"Упрощение иероглифов\">упр.</a>&nbsp;阿尔泰山脉,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9F%D0%B8%D0%BD%D1%8C%D0%B8%D0%BD%D1%8C\" title=\"Пиньинь\">пиньинь</a>:&nbsp;<em>Ā&#39;ěrt&agrave;i shānm&agrave;i</em>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A2%D1%80%D0%B0%D0%BD%D1%81%D0%BA%D1%80%D0%B8%D0%BF%D1%86%D0%B8%D0%BE%D0%BD%D0%BD%D0%B0%D1%8F_%D1%81%D0%B8%D1%81%D1%82%D0%B5%D0%BC%D0%B0_%D0%9F%D0%B0%D0%BB%D0%BB%D0%B0%D0%B4%D0%B8%D1%8F\" title=\"Транскрипционная система Палладия\">палл.</a>:&nbsp;<em>Аэртай шаньмай</em>)&nbsp;&mdash; горная система в Азии, на юге Сибири и в Центральной Азии, состоящая из высокогорных и среднегорных хребтов<sup><a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B5_%D0%B3%D0%BE%D1%80%D1%8B#cite_note-2\">[2]</a></sup>, разделённых глубокими&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%94%D0%BE%D0%BB%D0%B8%D0%BD%D0%B0\" title=\"Долина\">долинами</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D0%BA%D0%B0\" title=\"Река\">рек</a>&nbsp;и обширными внутригорными и межгорными котловинами. Простирается с северо-запада на юго-восток более чем на 2000&nbsp;км.</p>\r\n\r\n<p>Горная система расположена на границе России (<a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D0%BA%D1%80%D0%B0%D0%B9\" title=\"Алтайский край\">Алтайский край</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D1%81%D0%BF%D1%83%D0%B1%D0%BB%D0%B8%D0%BA%D0%B0_%D0%90%D0%BB%D1%82%D0%B0%D0%B9\" title=\"Республика Алтай\">Республика Алтай</a>), Монголии (<a href=\"https://ru.wikipedia.org/wiki/%D0%91%D0%B0%D1%8F%D0%BD-%D0%A3%D0%BB%D0%B3%D0%B8%D0%B9\" title=\"Баян-Улгий\">Баян-Ульгийский</a>&nbsp;и&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A5%D0%BE%D0%B2%D0%B4_(%D0%B0%D0%B9%D0%BC%D0%B0%D0%BA)\" title=\"\">Ховдский аймаки</a>), Китая (<a href=\"https://ru.wikipedia.org/wiki/%D0%A1%D0%B8%D0%BD%D1%8C%D1%86%D0%B7%D1%8F%D0%BD-%D0%A3%D0%B9%D0%B3%D1%83%D1%80%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%B2%D1%82%D0%BE%D0%BD%D0%BE%D0%BC%D0%BD%D1%8B%D0%B9_%D1%80%D0%B0%D0%B9%D0%BE%D0%BD\" title=\"Синьцзян-Уйгурский автономный район\">Синцзян-Уйгурский автономный район</a>) и Казахстана (<a href=\"https://ru.wikipedia.org/wiki/%D0%92%D0%BE%D1%81%D1%82%D0%BE%D1%87%D0%BD%D0%BE-%D0%9A%D0%B0%D0%B7%D0%B0%D1%85%D1%81%D1%82%D0%B0%D0%BD%D1%81%D0%BA%D0%B0%D1%8F_%D0%BE%D0%B1%D0%BB%D0%B0%D1%81%D1%82%D1%8C\" title=\"Восточно-Казахстанская область\">Восточно-Казахстанская область</a>).</p>\r\n\r\n<p><a href=\"https://ru.wikipedia.org/wiki/%D0%90%D0%BB%D1%82%D0%B0%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D0%B7%D0%B0%D0%BF%D0%BE%D0%B2%D0%B5%D0%B4%D0%BD%D0%B8%D0%BA\" title=\"Алтайский заповедник\">Алтайский</a>,&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%82%D1%83%D0%BD%D1%81%D0%BA%D0%B8%D0%B9_%D0%B7%D0%B0%D0%BF%D0%BE%D0%B2%D0%B5%D0%B4%D0%BD%D0%B8%D0%BA\" title=\"Катунский заповедник\">Катунский заповедники</a>&nbsp;и плоскогорье&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%A3%D0%BA%D0%BE%D0%BA\" title=\"Укок\">Укок</a>&nbsp;в совокупности образуют объект&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%92%D1%81%D0%B5%D0%BC%D0%B8%D1%80%D0%BD%D0%BE%D0%B5_%D0%BD%D0%B0%D1%81%D0%BB%D0%B5%D0%B4%D0%B8%D0%B5\" title=\"Всемирное наследие\">Всемирного наследия</a>&nbsp;<a href=\"https://ru.wikipedia.org/wiki/%D0%AE%D0%9D%D0%95%D0%A1%D0%9A%D0%9E\" title=\"ЮНЕСКО\">ЮНЕСКО</a>&nbsp;&laquo;<a href=\"https://ru.wikipedia.org/wiki/%D0%97%D0%BE%D0%BB%D0%BE%D1%82%D1%8B%D0%B5_%D0%B3%D0%BE%D1%80%D1%8B_%D0%90%D0%BB%D1%82%D0%B0%D1%8F\" title=\"Золотые горы Алтая\">Золотые горы Алтая</a>&raquo;.</p>\r\n', 51, '2018-07-19 21:20:53', '8', '50098235.jpg', '320-50098235.jpg', '2018-07-26 12:43:00'),
(10, 'Простой редактор изображений на VueJS', '<p>Недавно мне выпала возможность написать сервис для интернет-магазина, который помогал бы оформить заказ на печать своих фото.<br />\r\n<br />\r\nСервис предполагал наличие &laquo;простого&raquo; редактора изображений, созданием которого, я бы хотел поделиться. А все потому, что среди обилия всевозможных плагинов я не нашел подходящего функционала, к тому же, нюансы CSS трансформаций, неожиданно стали для меня весьма нетривиальной задачей</p>\r\n', 51, '2018-07-20 13:41:03', '4', '843883852.jpg', '320-843883852.jpg', '2018-07-25 22:40:20'),
(12, 'Как использовать рекурcивную функцию в php?', '<p>Рекурcия (или рекурcивный вызов) &ndash; это когда функция вызывает саму себя. Рекурсия довольно часто используется в php-скриптах. Но необходимо учитывать то, что данная операция использует много ресурсов.</p>\r\n\r\n<p>Давайте рассмотрим рекурсию не реальном примере. &nbsp;Допустим у нас есть сайт, в котором существует раздел &laquo;Услуги компании&raquo;. &nbsp;&nbsp;В этом разделе в свою очередь есть подраздел &laquo;Веб-разработка&raquo; с еще одним подразделом &laquo;Сайты-визитки&raquo;. В результате получается иерархическая структура, с родительскими и дочерними разделами. Обратите внимание, раздел &laquo;Веб-разработка&raquo; &nbsp;является родительским для подраздела &laquo;Сайты-визитки&raquo; и дочерним для раздела &laquo;Услуги компании&raquo;. Нужно составить cкрипт, который позволит &nbsp;проверять наличие подразделов у любого раздела.</p>\r\n', 51, '2018-07-25 15:32:30', '2', '1074322438.jpg', '320-1074322438.jpg', '2018-07-25 19:58:02'),
(13, 'Панда', '<p>Вид млекопитающих из семейства медвежьих со своеобразной чёрно-белой окраской шерсти, обладающих некоторыми признаками енотов. Единственный современный вид рода Ailuropus подсемейства Ailuropodinae. Большие панды обитают в горных регионах центрального Китая: Сычуань и Тибет. Со второй половины XX века панда стала&nbsp;чем-то вроде национальной эмблемы Китая. Китайское название означает &laquo;медведь-кошка&raquo;. Его западное имя происходит от малой панды. Раньше его также называли пятнистым медведем. Известны случаи нападений больших панд на человека</p>\r\n', 51, '2018-07-25 16:49:58', '7', '-141914153.jpg', '320--141914153.jpg', '2018-07-26 12:40:17'),
(20, 'HTML: основы для начинающих', '<p>HTML &ndash; язык разметки гипертекста, который сделал интернет таким, каким мы его знаем и любим. Именно благодаря этому замечательному инструменту сайты выглядят красиво и современно, а также обеспечивается удобство их использования. Язык HTML просто компонует элементы веб-страницы в удобный для пользователя вариант. Его работа сравнима с тем, что делают текстовые редакторы типа MS Word или OpenOffice. Они превращают безликую массу букв в документ, в котором есть абзацы, жирный текст, курсив, таблицы и даже изображения. Примерно то же самое делает язык HTML, с той лишь разницей, что его документы отображаются в браузере, да и возможности этого инструмента гораздо шире, чем у текстового редактора. Для разметки используются теги &mdash; специальные команды, описывающие структуру веб-страницы. Они заключены в угловые скобки - &lt;тег&gt;, чтобы браузер мог отличить их от общей массы текста. Далее мы рассмотрим основы HTML для начинающих.</p>\r\n\r\n<h2>Визуальные редакторы</h2>\r\n\r\n<p>Новички, только ступившие на путь изучения HTML, часто начинают свою работу с программ, позволяющих создавать сайты без каких-либо знаний. В них можно просто расположить элементы на экране так, как они будут отображаться в браузере. Казалось бы, вот он &mdash; источник вечной благодати, позволяющий избавиться от большинства веб-разработчиков. Но не всё так просто, так как у визуальных редакторов есть масса недостатков, которые делают невозможным их использование в серьёзных проектах. Все эти программы создают много ненужных тегов, которые делают конечный вариант страницы громоздким и неоптимальным. Конечно, в наш век скоростного интернета это имеет меньшее значение, чем раньше, но есть ряд причин, по которым лаконичный и грамотно написанный сайт получается более практичным, чем его собрат, созданный в визуальном редакторе. Веб-страница, сделанная в такой программе, будет плохо обрабатываться поисковыми роботами, так как для них важен каждый килобайт кода, а громоздкий и нелогичный код с кучей семантических ошибок едва ли придётся им по вкусу. Помимо этого, редакторы часто отстают от времени, становясь неактуальными, а тратить ресурсы на их развитие нецелесообразно, так как ни один профессионал не пользуется этими продуктами. Поэтому каждый, кто хочет работать в сфере создания сайтов, должен знать основы HTML.</p>\r\n', 51, '2018-07-25 22:42:55', '5', '-557545663.jpg', '320--557545663.jpg', '2018-07-26 12:39:49'),
(21, 'Тигр', '<p><strong>Тигр &ndash; самый крупный и грозный представитель&nbsp; кошачьего семейства.</strong>&nbsp;О лютом нраве хищника ходят легенды, его жестокости и напору уступают даже львы. Флюиды дикой, не контролируемой силы, исходящие от большого и величавого тела тигра, вызывают у обитателей леса немотивированное беспокойство и панический страх ещё задолго до появления зверя в пределах видимости. Такие же сильные по накалу эмоции испытывает и человек, находящийся недалеко от приближающегося хищника.</p>\r\n\r\n<h2>Мифы и легенды</h2>\r\n\r\n<p>В мифологии многих народов мира тигр выступает хозяином леса, царём зверей, обладателем магических качеств и мощной энергетики. В древнем Китае хищник считался грозой демонов и защитником от болезней, в Корее он был известен как дух пещер и гор.</p>\r\n\r\n<p>Нивхи, проживающие на территории Японии и России, относили зверя к особой породе &laquo;людей &mdash; тигров&raquo;. При встрече с ним необходимо было кланяться и произносить приветственную речь, а вот ранить или убивать тигра категорически запрещалось. Многие индийские племена считали и считают животное своим предком, стоявшим у истоков рода.</p>\r\n\r\n<p>&laquo;Лютым&raquo; называли тигра охотники Забайкалья и обходили стороной протоптанные им тропы. Если же случайно набредали на след идущего вперёд зверя, старались с него не сходить, а двигаться спиной уже в обратном направлении, совершая при этом частые поклоны. Так, по их мнению, можно было избежать тигриного гнева и неминуемой беды. Киргизские шаманы в процессе ритуальных действий обращаются за помощью к доброму белому тигру.</p>\r\n\r\n<p>В китайском буддизме зверь олицетворяет злость. Для индийцев он является символом воинской доблести. Согласно японской традиции хищник в бамбуковой роще символизирует человеческое зло.</p>\r\n\r\n<blockquote>\r\n<p>В восточной медицине тигр рассматривался как источник ценного материала для изготовления лечебных снадобий. Чтобы вылечиться от бесплодия, женщинам рекомендовалось употреблять мясо хищника в пищу или прыгать через его шкуру. Китайские целители изготавливали из различных частей тела животного жаропонижающие средства и афродизиаки.</p>\r\n</blockquote>\r\n', 51, '2018-07-26 13:01:50', '7', '1103379285.jpg', '320-1103379285.jpg', '2018-07-26 13:01:58');

-- --------------------------------------------------------

--
-- Структура таблицы `skills`
--

CREATE TABLE `skills` (
  `id` int(11) UNSIGNED NOT NULL,
  `html` int(11) UNSIGNED DEFAULT NULL,
  `css` int(11) UNSIGNED DEFAULT NULL,
  `js` int(11) UNSIGNED DEFAULT NULL,
  `jquery` int(11) UNSIGNED DEFAULT NULL,
  `php` int(11) UNSIGNED DEFAULT NULL,
  `mysql` int(11) UNSIGNED DEFAULT NULL,
  `git` int(11) UNSIGNED DEFAULT NULL,
  `gulp` int(11) UNSIGNED DEFAULT NULL,
  `yarn` int(11) UNSIGNED DEFAULT NULL,
  `npm` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `skills`
--

INSERT INTO `skills` (`id`, `html`, `css`, `js`, `jquery`, `php`, `mysql`, `git`, `gulp`, `yarn`, `npm`) VALUES
(1, 100, 100, 70, 95, 50, 50, 70, 90, 95, 90);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secondname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `recovery_code_times` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `name`, `secondname`, `city`, `country`, `avatar`, `avatar_small`, `recovery_code`, `recovery_code_times`) VALUES
(26, 'info@test.ru', '$2y$10$Gk0R.OwtrKi1QsyfUQ6wfegr3ZprG7NGEW8s63Ir76N5uu23hL2rG', 'user', 'Мария', 'Филиппова', 'Москва', 'Россия', '1067918072.jpg', '48-1067918072.jpg', 'gGyVPpHvq39MWuh', 0),
(32, 'user@test.ru', '$2y$10$b6rrM5IYuNgc4ZxVbPikgewiO19u8Yl/8Xo9fDcUfPY39QQYes59a', 'user', 'Емельян', 'Казаков', 'Рязань', 'Россия', '-95482498.jpg', '48--95482498.jpg', NULL, NULL),
(33, 'info2@test.ru', '$2y$10$jExYeYIzlqGoP29DxyWDj.ebWp2IfWv4PHGM9HClVziyTwgSa1HHO', 'user', 'Василий', 'Петров', 'Москва', 'Россия', '379330100.jpg', '48-379330100.jpg', NULL, NULL),
(50, '123@test.ru', '$2y$10$B7oBMY1SMil//cVR0MB5P.iHkuQzKrkeglh./YXL6KaD4BH6ZAJ.e', 'user', 'Профиль', 'Тестовый', '222', '111', '607811796.jpg', '48-607811796.jpg', NULL, NULL),
(51, 'admin@test.ru', '$2y$10$D5T288L5IP0p6rUhnMNeAeAeJr9G.ZybIOT.9BtFNjbQSLjkMYOoe', 'admin', 'Мария', 'Филиппова', 'Москва', 'Россия', '-147903421.JPG', '48--147903421.JPG', NULL, NULL),
(52, 'info@test.test', '$2y$10$gVIovMTAgTnhNLB50NwjAeAdwbfVLO46mp4vzZvmAN73esIyvM9U2', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'test@test.ru', '$2y$10$Qmk.VvaQtVr9fGa/TauIqO839QF/lL/zFmzKTsLCYQ3yz/zau06YK', 'user', 'Тест', 'Тестовый', '', '', '-496644883.jpg', '48--496644883.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `works`
--

CREATE TABLE `works` (
  `id` int(11) UNSIGNED NOT NULL,
  `work_name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `result` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `technology` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_project` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_github` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `maket` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `maket_small` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` int(11) UNSIGNED DEFAULT NULL,
  `date_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `works`
--

INSERT INTO `works` (`id`, `work_name`, `description`, `result`, `technology`, `link_project`, `link_github`, `maket`, `maket_small`, `author_id`, `date_time`) VALUES
(13, 'Мандарин', '<p>Верстка сайта по макету. Адаптивная, кроссбраузерная верстка.</p>\r\n', '<p>Сайт сделан адаптивно, кроссбраузерно.</p>\r\n', '', 'http://marykaweb.hol.es/portfolio/mandarin/', 'https://github.com/marykaweb/mandarin', '671440361.jpg', '320-671440361.jpg', 51, '2018-07-25 11:24:03'),
(14, 'Аполло', '<p>Верстка сайта из psd макета. Реализованы слайдеры галлереи. Адаптив, кроссбраузерность.</p>\r\n', '', '<p>HTML, CSS, jQuery</p>\r\n', 'http://marykaweb.hol.es/portfolio/apollo/', 'https://github.com/marykaweb/apollo', '510323110.jpg', '320-510323110.jpg', 51, '2018-07-25 11:40:03'),
(15, 'Portland', '<p>Верстка основной страницы интернет-магазина из psd макета. Нет мобильной адаптации.</p>\r\n', '', '', '', 'https://github.com/marykaweb/portland', '-117957079.jpg', '320--117957079.jpg', 51, '2018-07-25 11:47:30'),
(16, 'ToDo приложение', '<p>В работе</p>\r\n', '', '', '', '', '340963202.jpg', '320-340963202.jpg', 51, '2018-07-25 11:55:42');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_comments_post` (`post_id`),
  ADD KEY `index_foreignkey_comments_user` (`user_id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

--
-- Индексы таблицы `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_works_author` (`author_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT для таблицы `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
