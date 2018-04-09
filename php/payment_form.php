<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 5:23 PM
 */
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
            <li><a href="#about.php" title="About">About</a></li>
        </ul>
    </div>
    <!-- /Navigation bar -->


    <!-- Page name -->
    <h1 id="page_name">Payment</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <p></p>
        <form class="entry_form" id="payment_form" action="payment_response.php" method="POST">
            <!-- Going for a two column form here -->
            <div class="form_row">
                <div class="form_col">
                    <label for="customer_id">Customer Id</label>
                    <select id="customer_id" name="customer_id">
                    </select>

                    <label for="date">Date</label>
                    <input type="date" name="date" id="date" required>

                    <label for="due_date">Due Date</label>
                    <input type="date" name="due_date" id="due_date" required>

                    <label for="payment_amount">$ Payment Amount</label>
                    <input type="number" value="0.00" min="0" step="0.01" name="payment_amount" id="payment_amount" required>

                    <label for="bank_account_number">Bank Account Number</label>
                    <input type="number" value="0" min="0" max="99999" placeholder="12345" step="1" name="bank_account_number" id="bank_account_number" required>

                    <input type="submit", value="Submit"/>
                </div>
            </div>
        </form>
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
