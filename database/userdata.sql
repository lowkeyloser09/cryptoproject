-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2025 at 01:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `current_prices`
--

CREATE TABLE `current_prices` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `one_hour_change` decimal(5,2) DEFAULT NULL,
  `twenty_four_hour_change` decimal(5,2) DEFAULT NULL,
  `seven_day_change` decimal(5,2) DEFAULT NULL,
  `market_cap` decimal(20,2) DEFAULT NULL,
  `volume` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `current_prices`
--

INSERT INTO `current_prices` (`id`, `name`, `price`, `one_hour_change`, `twenty_four_hour_change`, `seven_day_change`, `market_cap`, `volume`) VALUES
(1, 'Bitcoin', 41354.39, 0.18, 2.35, 9.77, 810437872294.00, 26663491506.00),
(2, 'Ethereum', 2486.54, 0.13, 0.92, 7.44, 298338459103.00, 11481058624.00),
(3, 'Tether USDT', 1.00, 0.00, 0.04, 0.11, 94881345230.00, 45088234975.00),
(4, 'BNB', 314.97, 0.25, 0.72, 0.97, 47101516500.00, 1087212276.00),
(5, 'Solana', 94.04, 0.15, 4.77, 3.98, 40709318999.00, 2381412440.00),
(6, 'Bitcoin', 41354.39, 0.18, 2.35, 9.77, 810437872294.00, 26663491506.00),
(7, 'Ethereum', 2486.54, 0.13, 0.92, 7.44, 298338459103.00, 11481058624.00),
(8, 'Tether USDT', 1.00, 0.00, 0.04, 0.11, 94881345230.00, 45088234975.00),
(9, 'BNB', 314.97, 0.25, 0.72, 0.97, 47101516500.00, 1087212276.00),
(10, 'Solana', 94.04, 0.15, 4.77, 3.98, 40709318999.00, 2381412440.00),
(11, 'Bitcoin', 41354.39, 0.18, 2.35, 9.77, 810437872294.00, 26663491506.00),
(12, 'Ethereum', 2486.54, 0.13, 0.92, 7.44, 298338459103.00, 11481058624.00),
(29, 'BNB', 314.97, 0.25, 0.72, 0.97, 47101516500.00, 1087212276.00),
(30, 'Solana', 94.04, 0.15, 4.77, 3.98, 40709318999.00, 2381412440.00),
(31, 'adsadsadsad', 500.00, 100.00, 0.00, 300.00, 200.00, 500.00),
(32, 'NewCrypto', 7000009009.00, 999.99, 0.00, 999.99, 10000.00, 20000.00),
(33, '123123123', 1232131232131.00, 999.99, 0.00, 999.99, 350.00, 123500.00),
(34, 'cryp', 120.00, 110.00, 0.00, 100.00, 150.00, 500.00),
(35, 'wow', 100.00, 0.01, 0.69, 0.33, 450.00, 3000.00),
(36, 'Doge', 0.03, 0.02, 0.02, 0.04, 50.00, 1000.00),
(37, '', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00),
(38, 'dasds', 0.01, 0.01, 0.04, 0.07, 200.00, 2000.00),
(39, 'sadadasd', 0.41, 0.38, 0.19, 0.11, 450.00, 3500.00),
(40, 'dsa', 0.01, 0.01, 0.01, 0.01, 50.00, 500.00),
(41, 'dsadsads', 0.03, 999.99, 999.99, 999.99, 324350.00, 342000.00),
(42, 'Dale Horvath', 999.00, 999.99, 999.99, 999.99, 500.00, 1000.00);

-- --------------------------------------------------------

--
-- Table structure for table `exchanges`
--

CREATE TABLE `exchanges` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `volume` decimal(20,2) DEFAULT NULL,
  `markets` int(11) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exchanges`
--

INSERT INTO `exchanges` (`id`, `name`, `volume`, `markets`, `change_24h`) VALUES
(1, 'Binance', 10000000000.00, 1500, 5.00),
(2, 'Coinbase', 5000000000.00, 500, 3.00),
(3, 'Binance', 25000000000.00, 1200, 2.50),
(4, 'Coinbase', 15000000000.00, 800, 1.20),
(5, 'Kraken', 10000000000.00, 600, 1.00),
(6, 'Bitfinex', 5000000000.00, 400, 0.80),
(7, 'Bittrex', 3000000000.00, 200, 0.50),
(8, 'Binance', 25000000000.00, 1200, 2.50),
(9, 'Coinbase', 15000000000.00, 800, 1.20),
(10, 'Kraken', 10000000000.00, 600, 1.00),
(11, 'Bitfinex', 5000000000.00, 400, 0.80),
(12, 'Bittrex', 3000000000.00, 200, 0.50),
(13, 'Binance', 25000000000.00, 1200, 2.50),
(14, 'Coinbase', 15000000000.00, 800, 1.20),
(15, 'Kraken', 10000000000.00, 600, 1.00),
(16, 'Bitfinex', 5000000000.00, 400, 0.80),
(17, 'Bittrex', 3000000000.00, 200, 0.50),
(18, 'Binance', 25000000000.00, 1200, 2.50),
(19, 'Coinbase', 15000000000.00, 800, 1.20),
(20, 'Kraken', 10000000000.00, 600, 1.00),
(21, 'Bitfinex', 5000000000.00, 400, 0.80),
(22, 'Bittrex', 3000000000.00, 200, 0.50),
(23, 'Binance', 25000000000.00, 1200, 2.50),
(24, 'Coinbase', 15000000000.00, 800, 1.20),
(25, 'Kraken', 10000000000.00, 600, 1.00),
(26, 'Bitfinex', 5000000000.00, 400, 0.80),
(27, 'Bittrex', 3000000000.00, 200, 0.50);

-- --------------------------------------------------------

--
-- Table structure for table `historical_data`
--

CREATE TABLE `historical_data` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `open_price` decimal(15,2) DEFAULT NULL,
  `close_price` decimal(15,2) DEFAULT NULL,
  `high_price` decimal(15,2) DEFAULT NULL,
  `low_price` decimal(15,2) DEFAULT NULL,
  `volume` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historical_data`
--

INSERT INTO `historical_data` (`id`, `date`, `name`, `open_price`, `close_price`, `high_price`, `low_price`, `volume`) VALUES
(1, '2023-06-21', 'Bitcoin', 41000.00, 41354.39, 41500.00, 40800.00, 20000000000.00),
(2, '2023-06-21', 'Ethereum', 2450.00, 2486.54, 2500.00, 2430.00, 8000000000.00),
(3, '2024-06-01', 'Bitcoin', 40000.00, 41000.00, 41500.00, 39500.00, 30000000000.00),
(4, '2024-06-01', 'Ethereum', 2400.00, 2450.00, 2500.00, 2350.00, 12000000000.00),
(5, '2024-06-01', 'Tether USDT', 1.00, 1.00, 1.00, 1.00, 50000000000.00),
(6, '2024-06-01', 'BNB', 300.00, 310.00, 320.00, 290.00, 1500000000.00),
(7, '2024-06-01', 'Solana', 90.00, 92.00, 95.00, 88.00, 2500000000.00),
(8, '2024-06-01', 'Bitcoin', 40000.00, 41000.00, 41500.00, 39500.00, 30000000000.00),
(9, '2024-06-01', 'Ethereum', 2400.00, 2450.00, 2500.00, 2350.00, 12000000000.00),
(10, '2024-06-01', 'Tether USDT', 1.00, 1.00, 1.00, 1.00, 50000000000.00),
(11, '2024-06-01', 'BNB', 300.00, 310.00, 320.00, 290.00, 1500000000.00),
(12, '2024-06-01', 'Solana', 90.00, 92.00, 95.00, 88.00, 2500000000.00),
(13, '2024-06-01', 'Bitcoin', 40000.00, 41000.00, 41500.00, 39500.00, 30000000000.00),
(14, '2024-06-01', 'Ethereum', 2400.00, 2450.00, 2500.00, 2350.00, 12000000000.00),
(15, '2024-06-01', 'Tether USDT', 1.00, 1.00, 1.00, 1.00, 50000000000.00),
(16, '2024-06-01', 'BNB', 300.00, 310.00, 320.00, 290.00, 1500000000.00),
(17, '2024-06-01', 'Solana', 90.00, 92.00, 95.00, 88.00, 2500000000.00),
(18, '2024-06-01', 'Bitcoin', 40000.00, 41000.00, 41500.00, 39500.00, 30000000000.00),
(19, '2024-06-01', 'Ethereum', 2400.00, 2450.00, 2500.00, 2350.00, 12000000000.00),
(20, '2024-06-01', 'Tether USDT', 1.00, 1.00, 1.00, 1.00, 50000000000.00),
(21, '2024-06-01', 'BNB', 300.00, 310.00, 320.00, 290.00, 1500000000.00),
(22, '2024-06-01', 'Solana', 90.00, 92.00, 95.00, 88.00, 2500000000.00),
(23, '2024-06-01', 'Bitcoin', 40000.00, 41000.00, 41500.00, 39500.00, 30000000000.00),
(24, '2024-06-01', 'Ethereum', 2400.00, 2450.00, 2500.00, 2350.00, 12000000000.00),
(25, '2024-06-01', 'Tether USDT', 1.00, 1.00, 1.00, 1.00, 50000000000.00),
(26, '2024-06-01', 'BNB', 300.00, 310.00, 320.00, 290.00, 1500000000.00),
(27, '2024-06-01', 'Solana', 90.00, 92.00, 95.00, 88.00, 2500000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `market_trends`
--

CREATE TABLE `market_trends` (
  `id` int(11) NOT NULL,
  `cryptocurrency` varchar(255) NOT NULL,
  `trend_7d` decimal(5,2) DEFAULT NULL,
  `trend_30d` decimal(5,2) DEFAULT NULL,
  `trend_90d` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `market_trends`
--

INSERT INTO `market_trends` (`id`, `cryptocurrency`, `trend_7d`, `trend_30d`, `trend_90d`) VALUES
(1, 'Bitcoin', 5.00, 10.00, 15.00),
(2, 'Ethereum', 3.00, 7.00, 12.00),
(3, 'Bitcoin', 5.00, 10.00, 20.00),
(4, 'Ethereum', 4.00, 8.00, 16.00),
(5, 'Tether USDT', 0.10, 0.20, 0.50),
(6, 'BNB', 3.50, 7.00, 14.00),
(7, 'Solana', 6.00, 12.00, 24.00),
(8, 'Bitcoin', 5.00, 10.00, 20.00),
(9, 'Ethereum', 4.00, 8.00, 16.00),
(10, 'Tether USDT', 0.10, 0.20, 0.50),
(11, 'BNB', 3.50, 7.00, 14.00),
(12, 'Solana', 6.00, 12.00, 24.00),
(13, 'Bitcoin', 5.00, 10.00, 20.00),
(14, 'Ethereum', 4.00, 8.00, 16.00),
(15, 'Tether USDT', 0.10, 0.20, 0.50),
(16, 'BNB', 3.50, 7.00, 14.00),
(17, 'Solana', 6.00, 12.00, 24.00),
(18, 'Bitcoin', 5.00, 10.00, 20.00),
(19, 'Ethereum', 4.00, 8.00, 16.00),
(20, 'Tether USDT', 0.10, 0.20, 0.50),
(21, 'BNB', 3.50, 7.00, 14.00),
(22, 'Solana', 6.00, 12.00, 24.00),
(23, 'Bitcoin', 5.00, 10.00, 20.00),
(24, 'Ethereum', 4.00, 8.00, 16.00),
(25, 'Tether USDT', 0.10, 0.20, 0.50),
(26, 'BNB', 3.50, 7.00, 14.00),
(27, 'Solana', 6.00, 12.00, 24.00);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `date`, `title`, `source`, `link`) VALUES
(1, '2023-06-21', 'Bitcoin reaches new high', 'Crypto News', 'https://example.com/bitcoin-new-high'),
(2, '2023-06-20', 'Ethereum 2.0 update', 'Crypto Daily', 'https://example.com/ethereum-2-update'),
(3, '2024-06-01', 'Bitcoin Hits New Highs', 'CryptoNews', 'https://cryptonews.com/bitcoin-hits-new-highs'),
(4, '2024-06-02', 'Ethereum 2.0 Launch', 'CryptoTimes', 'https://cryptotimes.com/ethereum-2-launch'),
(5, '2024-06-03', 'Tether Stability Report', 'CryptoDaily', 'https://cryptodaily.com/tether-stability-report'),
(6, '2024-06-04', 'BNB Price Surge', 'CryptoWorld', 'https://cryptoworld.com/bnb-price-surge'),
(7, '2024-06-05', 'Solana DeFi Growth', 'CryptoInsight', 'https://cryptoinsight.com/solana-defi-growth'),
(8, '2024-06-01', 'Bitcoin Hits New Highs', 'CryptoNews', 'https://cryptonews.com/bitcoin-hits-new-highs'),
(9, '2024-06-02', 'Ethereum 2.0 Launch', 'CryptoTimes', 'https://cryptotimes.com/ethereum-2-launch'),
(10, '2024-06-03', 'Tether Stability Report', 'CryptoDaily', 'https://cryptodaily.com/tether-stability-report'),
(11, '2024-06-04', 'BNB Price Surge', 'CryptoWorld', 'https://cryptoworld.com/bnb-price-surge'),
(12, '2024-06-05', 'Solana DeFi Growth', 'CryptoInsight', 'https://cryptoinsight.com/solana-defi-growth'),
(13, '2024-06-01', 'Bitcoin Hits New Highs', 'CryptoNews', 'https://cryptonews.com/bitcoin-hits-new-highs'),
(14, '2024-06-02', 'Ethereum 2.0 Launch', 'CryptoTimes', 'https://cryptotimes.com/ethereum-2-launch'),
(15, '2024-06-03', 'Tether Stability Report', 'CryptoDaily', 'https://cryptodaily.com/tether-stability-report'),
(16, '2024-06-04', 'BNB Price Surge', 'CryptoWorld', 'https://cryptoworld.com/bnb-price-surge'),
(17, '2024-06-05', 'Solana DeFi Growth', 'CryptoInsight', 'https://cryptoinsight.com/solana-defi-growth'),
(18, '2024-06-01', 'Bitcoin Hits New Highs', 'CryptoNews', 'https://cryptonews.com/bitcoin-hits-new-highs'),
(19, '2024-06-02', 'Ethereum 2.0 Launch', 'CryptoTimes', 'https://cryptotimes.com/ethereum-2-launch'),
(20, '2024-06-03', 'Tether Stability Report', 'CryptoDaily', 'https://cryptodaily.com/tether-stability-report'),
(21, '2024-06-04', 'BNB Price Surge', 'CryptoWorld', 'https://cryptoworld.com/bnb-price-surge'),
(22, '2024-06-05', 'Solana DeFi Growth', 'CryptoInsight', 'https://cryptoinsight.com/solana-defi-growth'),
(23, '2024-06-01', 'Bitcoin Hits New Highs', 'CryptoNews', 'https://cryptonews.com/bitcoin-hits-new-highs'),
(24, '2024-06-02', 'Ethereum 2.0 Launch', 'CryptoTimes', 'https://cryptotimes.com/ethereum-2-launch'),
(25, '2024-06-03', 'Tether Stability Report', 'CryptoDaily', 'https://cryptodaily.com/tether-stability-report'),
(26, '2024-06-04', 'BNB Price Surge', 'CryptoWorld', 'https://cryptoworld.com/bnb-price-surge'),
(27, '2024-06-05', 'Solana DeFi Growth', 'CryptoInsight', 'https://cryptoinsight.com/solana-defi-growth');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `cryptocurrency` varchar(255) NOT NULL,
  `amount` decimal(15,8) DEFAULT NULL,
  `value` decimal(20,2) DEFAULT NULL,
  `change_24h` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `cryptocurrency`, `amount`, `value`, `change_24h`) VALUES
(1, 'Bitcoin', 0.50000000, 20677.20, 2.35),
(2, 'Ethereum', 10.00000000, 24865.40, 0.92),
(3, 'Bitcoin', 1.50000000, 62031.59, 2.35),
(4, 'Ethereum', 10.00000000, 24865.40, 0.92),
(5, 'Tether USDT', 1000.00000000, 999.00, 0.04),
(6, 'BNB', 20.00000000, 6299.40, 0.72),
(7, 'Solana', 50.00000000, 4702.00, 4.77),
(8, 'Bitcoin', 1.50000000, 62031.59, 2.35),
(9, 'Ethereum', 10.00000000, 24865.40, 0.92),
(10, 'Tether USDT', 1000.00000000, 999.00, 0.04),
(11, 'BNB', 20.00000000, 6299.40, 0.72),
(12, 'Solana', 50.00000000, 4702.00, 4.77),
(13, 'Bitcoin', 1.50000000, 62031.59, 2.35),
(14, 'Ethereum', 10.00000000, 24865.40, 0.92),
(15, 'Tether USDT', 1000.00000000, 999.00, 0.04),
(16, 'BNB', 20.00000000, 6299.40, 0.72),
(17, 'Solana', 50.00000000, 4702.00, 4.77),
(18, 'Bitcoin', 1.50000000, 62031.59, 2.35),
(19, 'Ethereum', 10.00000000, 24865.40, 0.92),
(20, 'Tether USDT', 1000.00000000, 999.00, 0.04),
(21, 'BNB', 20.00000000, 6299.40, 0.72),
(22, 'Solana', 50.00000000, 4702.00, 4.77),
(23, 'Bitcoin', 1.50000000, 62031.59, 2.35),
(24, 'Ethereum', 10.00000000, 24865.40, 0.92),
(25, 'Tether USDT', 1000.00000000, 999.00, 0.04),
(26, 'BNB', 20.00000000, 6299.40, 0.72),
(27, 'Solana', 50.00000000, 4702.00, 4.77);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_` varchar(255) NOT NULL,
  `gender` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password_`, `gender`) VALUES
(8, 'George', 'milleroglu@gmail.com', 'miller', 'Male'),
(18, 'CristianoRonaldo', 'cristiano@gmail.com', 'cristiano', 'Male'),
(20, 'messi', 'messi2011@gmail.com', '$2y$10$hDe9wZN7/q.bH6kLt/r.oudmH0f4WmWaiu0yu5pa4ESUKvM94oiaC', 'Male'),
(21, 'avto', 'avto@gmail.com', '$2y$10$0POfDaoO7lBi33Hm2qnF6OYoIEVpruwis2JWDQMButY5E7oe43YaO', 'Female'),
(22, 'lowkeyloser09', 'sfdsfsd@gmail.com', '$2y$10$/o0QN9JlkGtMcFLd//jNKezjQ5YgwEcID4.k6KTC3nJCSgSykV3Cq', 'Male'),
(23, '123456', '123456@gmail.com', '$2y$10$7LO/rlWdzcnlUdjNPLyeP.woEUmusfzQI6c8FCIvgEdxxwGdvqLpm', 'Male'),
(24, 'Lebron', 'Lebombom@gmail.com', '$2y$10$bOvqxhv6laelq12GU9rY/edhB8Too/ADEVem1FjqQ/mq1x.oDdgs2', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `current_prices`
--
ALTER TABLE `current_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exchanges`
--
ALTER TABLE `exchanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historical_data`
--
ALTER TABLE `historical_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `market_trends`
--
ALTER TABLE `market_trends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `current_prices`
--
ALTER TABLE `current_prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `exchanges`
--
ALTER TABLE `exchanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `historical_data`
--
ALTER TABLE `historical_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `market_trends`
--
ALTER TABLE `market_trends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
