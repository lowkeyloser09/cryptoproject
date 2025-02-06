<?php
session_start();
include "connection.php";

if (!isset($_SESSION['loggedin']) || $_SESSION['loggedin'] !== true) {
    header("Location: login.php");
    exit();
}
 
$currentPrices = $conn->query("SELECT * FROM current_prices");
$historicalData = $conn->query("SELECT * FROM historical_data");
$exchanges = $conn->query("SELECT * FROM exchanges");
$news = $conn->query("SELECT * FROM news");
$portfolio = $conn->query("SELECT * FROM portfolio");
$marketTrends = $conn->query("SELECT * FROM market_trends");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./stylemain.css">
    <title>Crypto Dashboard</title>
</head>

<body>
    <div class="logout">
        <a href="insert.php">Add</a>
        <a class="logout" href="logout.php">Logout</a>
    </div> 

    <div class="img1"><a href="index.php"><img src="./logo.png" id="market" width="200px" alt="Logo"></a></div>
    <input type="search" id="searchInput" placeholder="Search by cryptocurrency" onkeyup="filterTable()">

    <h1>Cryptocurrency Dashboard</h1>
    
    <h2>Current Prices</h2>
    <table id="currentPricesTable">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Price</th>
                <th>1h %</th>
                <th>24h %</th>
                <th>7d %</th>
                <th>Market Cap</th>
                <th>Volume (24h)</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $currentPrices->fetch_assoc()): ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['name'] ?></td>
                    <td>$<?= number_format($row['price'], 2) ?></td>
                    <td><?= $row['one_hour_change'] ?>%</td>
                    <td><?= $row['twenty_four_hour_change'] ?>%</td>
                    <td><?= $row['seven_day_change'] ?>%</td>
                    <td>$<?= number_format($row['market_cap'], 2) ?></td>
                    <td>$<?= number_format($row['volume'], 2) ?></td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <h2>Historical Data</h2>
    <table id="historicalDataTable">
        <thead>
            <tr>
                <th>Date</th>
                <th>Name</th>
                <th>Open</th>
                <th>Close</th>
                <th>High</th>
                <th>Low</th>
                <th>Volume</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $historicalData->fetch_assoc()): ?>
                <tr>
                    <td><?= $row['date'] ?></td>
                    <td><?= $row['name'] ?></td>
                    <td>$<?= number_format($row['open_price'], 2) ?></td>
                    <td>$<?= number_format($row['close_price'], 2) ?></td>
                    <td>$<?= number_format($row['high_price'], 2) ?></td>
                    <td>$<?= number_format($row['low_price'], 2) ?></td>
                    <td>$<?= number_format($row['volume'], 2) ?></td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <h2>Top Exchanges</h2>
    <table id="exchangesTable">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Volume (24h)</th>
                <th>Markets</th>
                <th>Change (24h)</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $exchanges->fetch_assoc()): ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['name'] ?></td>
                    <td>$<?= number_format($row['volume'], 2) ?></td>
                    <td><?= $row['markets'] ?></td>
                    <td><?= $row['change_24h'] ?>%</td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <h2>Latest News</h2>
    <table id="newsTable">
        <thead>
            <tr>
                <th>Date</th>
                <th>Title</th>
                <th>Source</th>
                <th>Link</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $news->fetch_assoc()): ?>
                <tr>
                    <td><?= $row['date'] ?></td>
                    <td><?= $row['title'] ?></td>
                    <td><?= $row['source'] ?></td>
                    <td><a href="<?= $row['link'] ?>">Read more</a></td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <h2>User Portfolio</h2>
    <table id="portfolioTable">
        <thead>
            <tr>
                <th>#</th>
                <th>Cryptocurrency</th>
                <th>Amount</th>
                <th>Value</th>
                <th>Change (24h)</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $portfolio->fetch_assoc()): ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['cryptocurrency'] ?></td>
                    <td><?= $row['amount'] ?></td>
                    <td>$<?= number_format($row['value'], 2) ?></td>
                    <td><?= $row['change_24h'] ?>%</td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

    <h2>Market Trends</h2>
    <table id="trendsTable">
        <thead>
            <tr>
                <th>#</th>
                <th>Cryptocurrency</th>
                <th>7d Trend</th>
                <th>30d Trend</th>
                <th>90d Trend</th>
            </tr>
        </thead>
        <tbody>
            <?php while($row = $marketTrends->fetch_assoc()): ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['cryptocurrency'] ?></td>
                    <td><?= $row['trend_7d'] ?>%</td>
                    <td><?= $row['trend_30d'] ?>%</td>
                    <td><?= $row['trend_90d'] ?>%</td>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>

<footer>
    <div class="footer-content" style="background-color: #272727; margin-top: 50px; width: 100%; padding: 10px; color: white">
        <p>&copy; <?= date("Y"); ?> Crypto Dashboard. All rights reserved.</p>
        <p>Contact us: <a href="mailto:support@cryptodashboard.com">support@cryptodashboard.com</a></p>
        <p><a href="">Privacy Policy</a> | <a href="">Terms of Service</a></p>
    </div>
</footer>


    <script src="./script.js"></script>
</body>
</html>
