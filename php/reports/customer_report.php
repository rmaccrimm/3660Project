<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 3/31/2018
 * Time: 1:12 PM
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
    <script src="../../js/customer_report_php.js"></script>
</head>
<body>

<!-- Content wrapper -->
<div id="content-wrapper">


    <!-- Top of page -->
    <div id="logo_and_title">
        <a title="Home" href="../index.php"><img id="logo" alt="Westside Auto Logo" src="../../img/truck_logo.png"></a>
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
    <h1 id="page_name">Customer Info</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <form name="customer_name" id="customer_name">
            <label for="name_hint">Full Name: </label>
            <input type="text" id="name_hint" name="name_hint" />
            <input type="submit", value="Submit" />
        </form>

        <div id="customer_report_result">
        </div>
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
