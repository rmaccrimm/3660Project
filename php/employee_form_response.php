<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 8:10 PM
 */
?>
<html>
<head>
    <link rel="stylesheet" href="../style/basic_style.css">
</head>
<body>
<div id="content-wrapper">

<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/4/2018
 * Time: 9:48 PM
 */

include "database_functions.php";

// This page should be usable unless posted to
if($_SERVER["REQUEST_METHOD"] != "POST") {
    die("Please use POST method");
}

// Clean all the values, should do validation but no time
$f_name = db_quote($_POST['employee_first_name']);
$l_name = db_quote($_POST['employee_last_name']);
$phone = db_quote($_POST['employee_telephone']);
$address = db_quote($_POST['employee_address']);
$city = db_quote($_POST['employee_city']);
$state = db_quote($_POST['employee_state']);
$zip = db_quote($_POST['employee_zip']);
$gender = db_quote($_POST['employee_gender']);
$job = db_quote($_POST['employee_position']);
$dob = db_quote($_POST['employee_dob']);
if (isset($_POST['employee_commission'])) {
    $commission = db_quote($_POST['employee_commission']);
}
else {
    $commission = 'NULL';
}


// Check if the employee already exists

$already_exists = db_select(
    "SELECT employee_id FROM employee" .
    " WHERE first_name={$f_name} " .
    "AND last_name={$l_name} " .
    "AND date_of_birth={$dob}"
) ? true : false;

$result = false;
if (!$already_exists) {
    // Make a new employee
    $result = db_query(
            "INSERT INTO employee " .
            "(first_name, last_name, phone, address, city, state, zip_code, gender, job_id, date_of_birth, commission) " .
            "VALUES ({$f_name}, {$l_name}, {$phone}, {$address}, {$city}, {$state}, {$zip}, {$gender}, {$job}, {$dob}, {$commission})");
}?>

<!-- Output some text to the user depending on result, a little janky -->
<?php if($result): ?>
    <p>Success! To go back, click <a href="employee_form.php" title="Go back to employee form">here</a></p>
<?php elseif(!$result and !$already_exists):?>
    <p>Failure! To go back, click <a href="employee_form.php" title="Go back to employee form">here</a></p>
<?php endif;?>

<?php if($already_exists): ?>
    <p>employee already exists! To go back, click <a href="employee_form.php" title="Go back to employee form">here</a></p>
<?php endif;?>

</div>
</body>

</html>
