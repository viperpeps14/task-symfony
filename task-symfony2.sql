-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 27 2019 г., 23:59
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task-symfony2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20190525092233', '2019-05-25 09:23:26'),
('20190525092520', '2019-05-25 09:25:37');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `year`, `username`) VALUES
(1, 'df@frg', '[]', '$2y$13$Woo8pK5rzMEi4jzLP8yrGev.5BSabmcl9KzSDpRG5F6Y60dsv3jAu', 2232, 'sfg'),
(2, 'peps@mail.ru', '[]', '$2y$13$h4fTo29.bhk7/2o/eda0XuTF2uA2yIBfzsvPm0kcbQJobvYXC.cb6', 1993, 'Peps'),
(3, 'test@test', '[\"ROLE_ADMIN\"]', '$2y$13$vv3wqRpQyqAIGlxUbucRqOr2EwM8JHXoO9v7/vJ9OasKatInLQykW', NULL, 'Test'),
(4, 'test2@test', '[]', '$2y$13$2tXzPJkve5mLz3oH4jJdOOPuOfW3tP78TTE6qkxV/Gn1pZ3RUjQHy', NULL, 'test2'),
(5, 'test3@test', '[]', '$2y$13$28O/7h7Af4KycIsW4hkXDeWrl/1iGAxL5kLIbjLGImno/sB/7Chg6', NULL, 'Test'),
(6, 'test4@test', '[]', '$2y$13$bbvTWbRhZ71FkP6WmTOISuw9fcsGnGDBw2fZzqV.tcUUqATPWWULW', NULL, 'Test'),
(7, 'tes5t@test', '[]', '$2y$13$fc53brhwQLi8vkQtQtVEg.M9AH5DaPn0P6vjDP.wbdC.dZ2uLaUei', 1993, 'Пепс');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
