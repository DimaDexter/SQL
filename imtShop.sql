-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 30 2017 г., 09:55
-- Версия сервера: 5.7.13
-- Версия PHP: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `imtShop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '""',
  `visible` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '""',
  `parent_id` bigint(20) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `user_name` varchar(255) NOT NULL DEFAULT '""',
  `user_phone` varchar(255) NOT NULL DEFAULT '""',
  `user_email` varchar(255) NOT NULL DEFAULT '""',
  `user_adress` varchar(255) NOT NULL DEFAULT '""',
  `user_comment` text,
  `date_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_price` float NOT NULL DEFAULT '14.2',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '""',
  `description` text,
  `url` varchar(255) NOT NULL DEFAULT '""',
  `visible` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '""',
  `description` text,
  `image` varchar(255) NOT NULL DEFAULT '""',
  `url` varchar(255) NOT NULL DEFAULT '""',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `visible` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `product_categories`
--

CREATE TABLE IF NOT EXISTS `product_categories` (
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `category_id` bigint(20) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `purchases`
--

CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `price(sale)` float NOT NULL DEFAULT '14.2',
  `amount` int(11) NOT NULL DEFAULT '0',
  `product_name` varchar(255) NOT NULL DEFAULT '""',
  `variant_id` bigint(20) NOT NULL DEFAULT '0',
  `variant_name` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '""',
  `phone` varchar(255) NOT NULL DEFAULT '""',
  `email` varchar(255) NOT NULL DEFAULT '""',
  `adress` varchar(255) NOT NULL DEFAULT '""',
  `password` varchar(255) NOT NULL DEFAULT '""',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `variants`
--

CREATE TABLE IF NOT EXISTS `variants` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '""',
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '14.2',
  `sku` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `sale_price` float NOT NULL DEFAULT '14.2',
  `position` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `variants`
--
ALTER TABLE `variants`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
