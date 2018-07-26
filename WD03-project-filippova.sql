-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 24 2018 г., 21:26
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
(1, 'Мария Филиппова', '<p>Занимаюсь разработкой сайтов с нуля, под ключ.&nbsp;Выполняю верстку, программирование и наполнение сайтов, так же могу сделать небольшой дизайн.&nbsp;Мне нравится делать интересные и современные проекты.</p>\r\n\r\n<p>&nbsp;Созданный сайт&nbsp;будет иметь весь необходимый функционал и отлично выглядеть на всех устройствах. Вы можете заказать у меня разработку сайта или связаться со мной для сотрудничества.</p>\r\n\r\n<h2>Что я умею</h2>\r\n\r\n<p>Меня привлекет Frontend и Backend разработка, это не только моя работа, но и хобби.&nbsp;</p>\r\n', '231318080.JPG');

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
(5, 'HTML');

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
(6, 7, 51, 'Красивая картинка', '2018-07-22 23:54:54');

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
(1, 'admin@test.ru', '5555555', 'Moscow city', 'Мария', 'Филиппова', '', 'Maria', '', 'gituser', '');

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
(5, 'апрель 2018 - по настоящее время', 'Веб разработчик', 'Верстка сайтов под ключ. Кроссбраузерная, адаптивная верстка.								');

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
(11, 'info@test.ru', 'Мария', 'Нужна верстка такого макета.', '6ef46b3effe5891d3e3ad86579a40218.jpg', '-69094137.jpg', '2018-07-24 00:25:19');

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
(2, 'HTML', 'Стандартизированный язык разметки документов во Всемирной паутине. Большинство веб-страниц содержат описание разметки на языке HTML. Язык HTML интерпретируется браузерами; полученный в результате интерпретации форматированный текст отображается на экране монитора компьютера или мобильного устройства. ', 51, '2018-07-18 18:20:49', '1', NULL, NULL, NULL),
(3, 'PHP', 'Скриптовый язык общего назначения, интенсивно применяемый для разработки веб-приложений. В настоящее время поддерживается подавляющим большинством хостинг-провайдеров и является одним из лидеров среди языков, применяющихся для создания динамических веб-сайтов.', 51, '2018-07-18 18:21:04', '2', NULL, NULL, NULL),
(5, 'Стандартизированный язык разметки документов во Всемирной паутине. Большинство веб-страниц содержат описание разметки на языке HTML. Язык HTML интерпретируется браузерами; полученный в результате интерпретации форматированный текст отображается на экране монитора компьютера или мобильного устройства. ', '<p>Стандартизированный язык разметки документов во Всемирной паутине. Большинство веб-страниц содержат описание разметки на языке HTML. Язык HTML интерпретируется браузерами; полученный в результате интерпретации форматированный текст отображается на экране монитора компьютера или мобильного устройства. Стандартизированный язык разметки документов во Всемирной паутине. Большинство веб-страниц содержат описание разметки на языке HTML. Язык HTML интерпретируется браузерами; полученный в результате интерпретации форматированный текст отображается на экране монитора компьютера или мобильного устройства.</p>\r\n', 51, '2018-07-18 19:23:56', '1', '-105682044.jpg', '320--105682044.jpg', '2018-07-20 12:31:07'),
(6, 'php для начинающих', '<p>Язык программирования PHP много лет сохраняет первенство в этой сфере. На нем написаны сотни тысяч ресурсов, и даже такие монстры как facebook.com и vk.com. PHP славится своей простотой, низким порогом вхождения и невероятной гибкостью.</p>\r\n', 51, '2018-07-19 19:58:24', '2', '457368489.jpg', '320-457368489.jpg', '2018-07-20 13:43:03'),
(7, 'Горы', '<p>Горные системы занимают около сорока процентов поверхности нашей планеты: их можно увидеть на каждом континенте, на многих островах и на океаническом дне.</p>\r\n', 51, '2018-07-19 21:20:53', '2', '-326869878.jpg', '320--326869878.jpg', '2018-07-20 12:30:52'),
(10, 'Простой редактор изображений на VueJS', '<p>Недавно мне выпала возможность написать сервис для интернет-магазина, который помогал бы оформить заказ на печать своих фото.<br />\r\n<br />\r\nСервис предполагал наличие &laquo;простого&raquo; редактора изображений, созданием которого, я бы хотел поделиться. А все потому, что среди обилия всевозможных плагинов я не нашел подходящего функционала, к тому же, нюансы CSS трансформаций, неожиданно стали для меня весьма нетривиальной задачей</p>\r\n', 51, '2018-07-20 13:41:03', '4', '843883852.jpg', '320-843883852.jpg', '2018-07-20 14:03:41'),
(11, 'Пост 1', '<p>&lt;script&gt;alert(&#39;привет&#39;);&lt;/script&gt;</p>\r\n', 51, '2018-07-20 14:21:22', '1', NULL, NULL, '2018-07-20 14:29:21');

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
(1, 100, 100, 85, 95, 50, 50, 70, 90, 95, 90);

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
(50, 'info5@test.ru', '$2y$10$B7oBMY1SMil//cVR0MB5P.iHkuQzKrkeglh./YXL6KaD4BH6ZAJ.e', 'user', 'Профиль', 'Тестовый', '222', '111', '607811796.jpg', '48-607811796.jpg', NULL, NULL),
(51, 'marykaweb@yandex.ru', '$2y$10$D5T288L5IP0p6rUhnMNeAeAeJr9G.ZybIOT.9BtFNjbQSLjkMYOoe', 'admin', 'Мария', 'Филиппова', 'Москва', 'Россия', '-147903421.JPG', '48--147903421.JPG', NULL, NULL),
(52, 'info@test.test', '$2y$10$gVIovMTAgTnhNLB50NwjAeAdwbfVLO46mp4vzZvmAN73esIyvM9U2', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
