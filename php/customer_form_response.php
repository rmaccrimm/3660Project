<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/4/2018
 * Time: 9:48 PM
 */

include "database_functions.php";

// This page should be usable unless posted to
if(!$_SERVER["REQUEST_METHOD"] == "POST") {
    die("Please use POST method");
}

// Clean all the values, should do validation but no time
$f_name = db_quote($_POST['customer_first_name']);
$l_name = db_quote($_POST['customer_last_name']);
$phone = db_quote($_POST['customer_telephone']);
$address = db_quote($_POST['customer_address']);
$city = db_quote($_POST['customer_city']);
$state = db_quote($_POST['customer_state']);
$zip = db_quote($_POST['customer_zip']);
$gender = db_quote($_POST['customer_gender']);
$tax = db_quote($_POST['customer_tax_id']);
$dob = db_quote($_POST['customer_dob']);

// Check if the customer already exists
$rows = db_select("SELECT customer_id FROM customer WHERE first_name={$f_name} AND last_name={$l_name} AND date_of_birth={$dob}");
$already_exists = ($rows) ? true : false;


$result = false;
if (!$already_exists) {
    // Make a new customer
    $result = db_query("INSERT INTO customer " .
        "(first_name, last_name, phone, address, city, state, zip_code, gender, tax_id, date_of_birth) " .
        "VALUES ({$f_name}, {$l_name}, {$phone}, {$address}, {$city}, {$state}, {$zip}, {$gender}, {$tax}, {$dob})");
}?>

<!-- Output some text to the user depending on result, a little janky -->
<?php if($result): ?>
    <p>Success! To go back, click <a href="customer_form.php" title="Go back to customer form">here</a></p>
<?php elseif(!$result and !$already_exists):?>
    <p>Failure! To go back, click <a href="customer_form.php" title="Go back to customer form">here</a></p>
<?php endif;?>

<?php if($already_exists): ?>
    <p>Customer already exists! To go back, click <a href="customer_form.php" title="Go back to customer form">here</a></p>
<?php endif;?>

