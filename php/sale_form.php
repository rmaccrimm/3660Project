<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/8/2018
 * Time: 7:52 PM
 */?>

<html lang="en-US">
<head>
    <title>Car Sale</title>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../js/sale_form.js"></script>
    <link rel="stylesheet" href="../style/basic_style.css">
    <link rel="stylesheet" href="../style/forms_style.css">
    <link rel="stylesheet" href="../style/entry_form_style.css">
    <link rel="stylesheet" href="../style/sale_form_style.css">
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
    <h1 id="page_name">Car Sale</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <p>Note: Customers who pay full in cash have 0% finance and Total Due = Down Payment</p>
        <form class="entry_form" id="sell_car_form" action="sale_response.php" method="POST">
            <!-- Going for a two column form here -->
            <div class="form_row">
                <div class="form_col">
                    <label for="date">Date</label>
                    <input type="date" name="date" id="date" required>

                    <label for="employee_id">Employee Id</label>
                    <select name="employee_id" id="employee_id" required>
                        <!-- jQuery employee 1, 2, 3, ... -->
                    </select>

                    <label for="customer_id">Customer Id</label>
                    <select name="customer_id" id="customer_id" required>
                        <!-- jQuery customer 1, 2, 3, ... -->
                    </select>

                    <label for="car_id">Car Id</label>
                    <select name="car_id" id="car_id" required>
                        <!-- jQuery car 1, 2, 3, ... -->
                    </select>

                </div>
                <div class="form_col">
                    <label for="total_due">$ Total Due</label>
                    <input type="number" min="0" value="0" name="total_due" id="total_due" required>

                    <label for="down_payment">$ Down Payment</label>
                    <input type="number" min="0" value="0" name="down_payment" id="down_payment" required>

                    <label for="finance_amount">% Finance Amount</label>
                    <input type="number" min="0" value="0" name="finance_amount" id="finance_amount" required>
                </div>
            </div>
            <div id="all_employment_history">
                <button type="button" id="new_employment_history">+ Employment history</button>
                <!-- jquery employment history -->
            </div>
            <!-- submit button not in either column -->
            <input id="form_submit" type="submit" value="Submit">
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

