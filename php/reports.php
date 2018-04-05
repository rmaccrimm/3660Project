<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 3/31/2018
 * Time: 1:12 PM
 */ ?>

<html lang="en-US">
<head>
    <title>Reports</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../style/basic_style.css">
    <link rel="stylesheet" href="../style/forms_style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../js/reports_php.js"></script>
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
            <li><a href="forms.php" title="Forms">Forms</a></li>
            <li><a class="active" href="reports.php" title="Reports">Reports</a></li>
            <li><a href="#about.php" title="About">About</a></li>
        </ul>
    </div>
    <!-- /Navigation bar -->


    <!-- Page name -->
    <h1 id="page_name">Reports</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <p>Please select a report to generate: </p>
        <form name='report_form' id="report_form">
            <select name="report_select" id="report_select">
                <option value="" selected="selected" disabled>Choose here</option>
                <option value="test1">test1</option>
                <option value="test2">test2</option>
                <option value="test3">test3</option>
            </select>
            <input type="submit" value="Generate">
        </form>

        <div id="form_ajax_result">
            <!-- stuff gets put here -->
        </div>
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
