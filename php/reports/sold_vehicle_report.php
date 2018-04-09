<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 4:00 PM
 */

include '../database_functions.php';
include 'report_functions.php'
?>

<html lang="en-US">
<head>
    <title>Page Title</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../../style/basic_style.css">
    <link rel="stylesheet" href="../../style/forms_style.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="http://code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
</head>
<body>

<!-- Content wrapper -->
<div id="content-wrapper">


    <!-- Top of page -->
    <div id="logo_and_title">
        <a title="Home" href="../template.php"><img id="logo" alt="Westside Auto Logo" src="../../img/truck_logo.png"></a>
        <h1 id="title">Westside Auto&trade; Database System</h1>
    </div>
    <!-- /Top of page -->


    <!-- Navigation bar -->
    <div id="nav_bar">
        <ul>
            <li><a href="../template.php" title="Home">Home</a></li>
            <li><a href="../forms.php" title="Forms">Forms</a></li>
            <li><a class="active" href="../reports.php" title="Reports">Reports</a></li>
            <li><a href="../about.php" title="About">About</a></li>
        </ul>
    </div>
    <!-- /Navigation bar -->


    <!-- Page name -->
    <h1 id="page_name">Vehicles Sold</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
    </div>
    <!-- /Content -->

    <!-- Footer -->
    <div id="footer">
        <small><p>CPSC 3660 - Introduction to Database Systems Group Project
                <a href="https://github.com/rmaccrimm/3660Project" title="Project Github">GitHub</a></p>
        </small>
    </div>
    <!-- /Footer -->

    <?php
    $sold_query =
        'SELECT make, model, `year`, style, vehicle_condition, book_price, sale_price, E.last_name as sold, C.last_name as bought, `date`
         FROM vehicle as V, vehicle_owner as VO, employee as E, customer as C, sale as S
         WHERE VO.vehicle_id = V.vehicle_id 
               AND VO.customer_id = C.customer_id
               AND S.customer_id = C.customer_id
               AND S.employee_id = E.employee_id';

    make_table(
            db_query($sold_query),
            ['Make', 'Model', 'Year', 'Style', 'Condition', 'Book Price', 'Sale Price', 'Sold by', 'Sold to', 'Date'],
            ['make', 'model', 'year', 'style', 'vehicle_condition', 'book_price', 'sale_price', 'sold', 'bought', 'date'],
            ''
    );
    ?>

</div>
<!-- /Content wrapper -->


</body>
</html>
