<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 3/31/2018
 * Time: 1:12 PM
 */

include '../database_functions.php';
include 'report_functions.php';
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
            <li><a href="../index.php" title="Home">Home</a></li>
            <li><a href="../forms.php" title="Forms">Forms</a></li>
            <li><a class="active" href="../reports.php" title="Reports">Reports</a></li>
            <li><a href="../about.php" title="About">About</a></li>
        </ul>
    </div>
    <!-- /Navigation bar -->


    <!-- Page name -->
    <h1 id="page_name">Inventory</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
    </div>
    <!-- /Content -->



    <?php
    $unsold_query =
        'SELECT make, model, `year`, style, vehicle_condition, exterior_color, interior_color, miles, book_price
         FROM vehicle 
         WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_owner)';

    make_table(
        db_query($unsold_query),
        ['Make', 'Model', 'Year', 'Style', 'Condition', 'Exterior Color', 'Interior Color', 'Miles', 'Book Price'],
        ['make', 'model', 'year', 'style', 'vehicle_condition', 'exterior_color', 'interior_color', 'miles', 'book_price'],
        ''
    );
    ?>

    <!-- Footer -->
    <div id="footer">
        <small><p>CPSC 3660 - Introduction to Database Systems Group Project
                <a href="https://github.com/rmaccrimm/3660Project" title="Project Github">GitHub</a></p>
        </small>
    </div>
    <!-- /Footer -->

</div>
<!-- /Content wrapper -->


</body>
</html>
