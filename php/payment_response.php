<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 5:50 PM
 */

include "database_functions.php";

if($_SERVER["REQUEST_METHOD"] != "POST") {
    die("Please use POST method");
}

?>

<html lang="en-US">
<head>
    <title>Reports</title>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../js/payment_form.js"></script>
    <link rel="stylesheet" href="../style/basic_style.css">
    <link rel="stylesheet" href="../style/forms_style.css">
    <link rel="stylesheet" href="../style/entry_form_style.css">
</head>
<body>

<!-- Content wrapper -->
<div id="content-wrapper">


    <!-- Top of page -->
    <div id="logo_and_title">
        <a title="Home" href="index.php"><img id="logo" alt="Westside Auto Logo" src="../img/truck_logo.png"></a>
        <h1 id="title">Westside Auto&trade; Database System</h1>
    </div>
    <!-- /Top of page -->


    <!-- Navigation bar -->
    <div id="nav_bar">
        <ul>
            <li><a href="index.php" title="Home">Home</a></li>
            <li><a class="active" href="forms.php" title="Forms">Forms</a></li>
            <li><a href="reports.php" title="Reports">Reports</a></li>
            <li><a href="about.php" title="About">About</a></li>
        </ul>
    </div>
    <!-- /Navigation bar -->


    <!-- Page name -->
    <h1 id="page_name">Payment</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <?php
        $id = $_POST['customer_id'];
        $due = $_POST['due_date'];
        $date = $_POST['date'];
        $amt = $_POST['payment_amount'];
        $acc_num = $_POST['bank_account_number'];

        $values = implode(', ', [$id, '\''.$date.'\'', '\''.$due.'\'', $amt, $acc_num]);

        $insert_query =
            'INSERT INTO payment(customer_id, payment_date, due_date, amount, bank_account)
             VALUES (' . $values . ');';

        $insert_result = db_query($insert_query);

        if (!$insert_result) {
            echo '<p>FAILURE: Create new payment failed. </p>';
        }
        else {
            echo '<p>SUCCESS: New payment created</p>';

            $paid_date = new DateTime($date);
            $due_date = new DateTime($due);
            $interval = $paid_date->diff($due_date);
            $diff = (int) $interval->format('%r%a');

            // Check if the payment was late
            if ($diff < 0) {
                echo "<p>Payment was ". abs($diff) . " day(s) late</p>";

                // Update num late payments and average days late
                $result = db_query('SELECT * FROM payment_info WHERE customer_id=' . $id)->fetch_assoc();
                $tax_id = $result['tax_id'];
                $avg = (float)$result['avg_days_late'];
                $n = (float)$result['late_payments'];
                $new_avg = ($avg * $n + abs($diff)) / ($n + 1);
                db_query('DELETE FROM payment_info WHERE customer_id='. $id);
                db_query('INSERT INTO payment_info VALUES ('. $tax_id . ', ' . $id . ', ' . $new_avg . ', '
                          . strval($n + 1) .')');
            }
            else {
                echo "<p>Payment was ". abs($diff) . " day(s) early</p>";
            }
        }

        ?>
    </div>
    <!-- /Content -->


    <!-- Footer -->
    <div id="footer">
        <small><p>CPSC 3660 - Introduction to Database Systems Group Project <a href="https://github.com/rmaccrimm/3660Project" title="Project Github">GitHub</a></p></small>
    </div>
    <!-- /Footer -->


</div>
<!-- /Content wrapper -->


</body>
</html>


