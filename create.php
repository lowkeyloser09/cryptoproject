<?php
include "connection.php";


$tableQueries = [
    "CREATE TABLE IF NOT EXISTS current_prices (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        price DECIMAL(15, 2) NOT NULL,
        one_hour_change DECIMAL(5, 2) NOT NULL,
        twenty_four_hour_change DECIMAL(5, 2) NOT NULL,
        seven_day_change DECIMAL(5, 2) NOT NULL,
        market_cap DECIMAL(20, 2) NOT NULL,
        volume DECIMAL(20, 2) NOT NULL
    )",
    "CREATE TABLE IF NOT EXISTS historical_data (
        id INT AUTO_INCREMENT PRIMARY KEY,
        date DATE NOT NULL,
        name VARCHAR(255) NOT NULL,
        open_price DECIMAL(15, 2) NOT NULL,
        close_price DECIMAL(15, 2) NOT NULL,
        high_price DECIMAL(15, 2) NOT NULL,
        low_price DECIMAL(15, 2) NOT NULL,
        volume DECIMAL(20, 2) NOT NULL
    )",
    "CREATE TABLE IF NOT EXISTS exchanges (
        id INT AUTO_INCREMENT PRIMARY KEY,
        name VARCHAR(255) NOT NULL,
        volume DECIMAL(20, 2) NOT NULL,
        markets INT NOT NULL,
        change_24h DECIMAL(5, 2) NOT NULL
    )",
    "CREATE TABLE IF NOT EXISTS news (
        id INT AUTO_INCREMENT PRIMARY KEY,
        date DATE NOT NULL,
        title VARCHAR(255) NOT NULL,
        source VARCHAR(255) NOT NULL,
        link VARCHAR(255) NOT NULL
    )",
    "CREATE TABLE IF NOT EXISTS portfolio (
        id INT AUTO_INCREMENT PRIMARY KEY,
        cryptocurrency VARCHAR(255) NOT NULL,
        amount DECIMAL(20, 8) NOT NULL,
        value DECIMAL(20, 2) NOT NULL,
        change_24h DECIMAL(5, 2) NOT NULL
    )",
    "CREATE TABLE IF NOT EXISTS market_trends (
        id INT AUTO_INCREMENT PRIMARY KEY,
        cryptocurrency VARCHAR(255) NOT NULL,
        trend_7d DECIMAL(5, 2) NOT NULL,
        trend_30d DECIMAL(5, 2) NOT NULL,
        trend_90d DECIMAL(5, 2) NOT NULL
    )"
];


$insertQueries = [
    "INSERT INTO current_prices (name, price, one_hour_change, twenty_four_hour_change, seven_day_change, market_cap, volume) VALUES
    ('Bitcoin', 41354.39, 0.18, 2.35, 9.77, 810437872294, 26663491506),
    ('Ethereum', 2486.54, 0.13, 0.92, 7.44, 298338459103, 11481058624),
    ('Tether USDT', 0.999, 0.001, 0.04, 0.11, 94881345230, 45088234975),
    ('BNB', 314.97, 0.25, 0.72, 0.97, 47101516500, 1087212276),
    ('Solana', 94.04, 0.15, 4.77, 3.98, 40709318999, 2381412440)",

    "INSERT INTO historical_data (date, name, open_price, close_price, high_price, low_price, volume) VALUES
    ('2024-06-01', 'Bitcoin', 40000.00, 41000.00, 41500.00, 39500.00, 30000000000),
    ('2024-06-01', 'Ethereum', 2400.00, 2450.00, 2500.00, 2350.00, 12000000000),
    ('2024-06-01', 'Tether USDT', 1.00, 1.00, 1.00, 1.00, 50000000000),
    ('2024-06-01', 'BNB', 300.00, 310.00, 320.00, 290.00, 1500000000),
    ('2024-06-01', 'Solana', 90.00, 92.00, 95.00, 88.00, 2500000000)",

    "INSERT INTO exchanges (name, volume, markets, change_24h) VALUES
    ('Binance', 25000000000, 1200, 2.5),
    ('Coinbase', 15000000000, 800, 1.2),
    ('Kraken', 10000000000, 600, 1.0),
    ('Bitfinex', 5000000000, 400, 0.8),
    ('Bittrex', 3000000000, 200, 0.5)",

    "INSERT INTO news (date, title, source, link) VALUES
    ('2024-06-01', 'Bitcoin Hits New Highs', 'CryptoNews', 'https://cryptonews.com/bitcoin-hits-new-highs'),
    ('2024-06-02', 'Ethereum 2.0 Launch', 'CryptoTimes', 'https://cryptotimes.com/ethereum-2-launch'),
    ('2024-06-03', 'Tether Stability Report', 'CryptoDaily', 'https://cryptodaily.com/tether-stability-report'),
    ('2024-06-04', 'BNB Price Surge', 'CryptoWorld', 'https://cryptoworld.com/bnb-price-surge'),
    ('2024-06-05', 'Solana DeFi Growth', 'CryptoInsight', 'https://cryptoinsight.com/solana-defi-growth')",

    "INSERT INTO portfolio (cryptocurrency, amount, value, change_24h) VALUES
    ('Bitcoin', 1.5, 62031.59, 2.35),
    ('Ethereum', 10.0, 24865.40, 0.92),
    ('Tether USDT', 1000.0, 999.00, 0.04),
    ('BNB', 20.0, 6299.40, 0.72),
    ('Solana', 50.0, 4702.00, 4.77)",
    
    "INSERT INTO market_trends (cryptocurrency, trend_7d, trend_30d, trend_90d) VALUES
    ('Bitcoin', 5.0, 10.0, 20.0),
    ('Ethereum', 4.0, 8.0, 16.0),
    ('Tether USDT', 0.1, 0.2, 0.5),
    ('BNB', 3.5, 7.0, 14.0),
    ('Solana', 6.0, 12.0, 24.0)"
];

foreach ($tableQueries as $query) {
    if ($conn->query($query) === TRUE) {
        echo "Table created successfully.<br>";
        exit();
    } else {
        echo "Error creating table: " . $conn->error . "<br>";
    }
}

foreach ($insertQueries as $query) {
    if ($conn->query($query) === TRUE) {
        echo "Data inserted successfully.<br>";
        exit();
    } else {
        echo "Error inserting data: " . $conn->error . "<br>";
    }
}

$conn->close();
?>
