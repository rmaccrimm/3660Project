<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 9:43 PM
 */

include '../database_functions.php';
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
    <script src="../../js/vehicle_report.js"></script>
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
            <li><a href="about.php" title="About">About</a></li>
        </ul>
    </div>
    <!-- /Navigation bar -->


    <!-- Page name -->
    <h1 id="page_name">Vehicle Info</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <form name="vehicle_select" id="vehicle_select">
        <label for="vehicle_id">Vehicle Id</label>
        <select id="vehicle_id" name="vehicle_id">
        </select>
            <input type="submit" value="Submit"/>
        </form>

        <div id="vehicle_report_result"></div>
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
    $query_names = 'SELECT first_name, last_name FROM customer';
    $names = db_query($query_names);
    $json = array();

    while($row = $names->fetch_assoc()) {
        array_push($json,
        ucfirst(strtolower($row['first_name']))
            . ' '
            . ucfirst(strtolower($row['last_name'])));
    }
    ?>

    <script type="text/javascript">
        var names = <?php echo json_encode($json); ?>;
        $("#name_hint").autocomplete({
            source: names
        });
    </script>

</div>
<!-- /Content wrapper -->


</body>
</html>
