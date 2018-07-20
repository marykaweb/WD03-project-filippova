-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 20 2018 г., 14:09
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
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `name`, `description`) VALUES
(1, 'Егор Казаков', 'Я веб-разработчик.');

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
(1, 'Путешествия'),
(2, 'PHP'),
(4, 'JavaScript');

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
(10, 'Простой редактор изображений на VueJS', '<p>Недавно мне выпала возможность написать сервис для интернет-магазина, который помогал бы оформить заказ на печать своих фото.<br />\r\n<br />\r\nСервис предполагал наличие &laquo;простого&raquo; редактора изображений, созданием которого, я бы хотел поделиться. А все потому, что среди обилия всевозможных плагинов я не нашел подходящего функционала, к тому же, нюансы CSS трансформаций, неожиданно стали для меня весьма нетривиальной задачей</p>\r\n', 51, '2018-07-20 13:41:03', '4', '843883852.jpg', '320-843883852.jpg', '2018-07-20 14:03:41');

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
(51, 'admin@test.ru', '$2y$10$D5T288L5IP0p6rUhnMNeAeAeJr9G.ZybIOT.9BtFNjbQSLjkMYOoe', 'admin', 'Мария', 'Филиппова', 'Москва', 'Россия', '-623961313.jpg', '48--623961313.jpg', NULL, NULL);

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
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_foreignkey_posts_author` (`author_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
