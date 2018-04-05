<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 3/31/2018
 * Time: 1:12 PM
 */ ?>

<html lang="en-US">
<head>
    <title>Forms</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../style/basic_style.css">
    <link rel="stylesheet" href="../style/forms_style.css">
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
    <h1 id="page_name">Forms</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <table id="form_table">
            <caption>Forms to Fill Out</caption>
            <tr>
                <th>Name</th>
                <th>Description</th>
            </tr>
            <tr>
                <td><a href="#customer_form.php" title="Customer Form">New Customer</a></td>
                <td>A form with to enter customer information into the system. It is necessary to will this
                    form out before the <em>Purchase Car</em> form can be filled out.</td>
            </tr>
            <tr>
                <td><a href="#purchase_form.php" title="Purchase Car">Purchase Car</a></td>
                <td>Form that buyers fill out when purchasing a car. Individual problems are spotted
                    and numbered. It is company policy to avoid cars in need of major repairs.</td>
            </tr>
            <tr>
                <td><a href="#sell_form.php" title="Sell Car">Sell Car</a></td>
                <td>A <em>salesperson</em> helps a customer select a car and negotiates the price.
                    When the customer decides to proceed, the salesperson needs to fill out this form.</td>
            </tr>
            <tr>
                <td><a href="#warranty_form.php" title="Warranty Form">Warranty</a></td>
                <td>This form should be filled out after the <em>Sell Car Form</em>. Separate warranties are offered
                    for various car components.</td>
            </tr>
            <tr>
                <td><a href="#payment_form.php" title="Payment Form">Payment</a></td>
                <td>Form to fill out when a customer makes a payment on their car.</td>
            </tr>
        </table>
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
