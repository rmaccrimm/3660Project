<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/7/2018
 * Time: 10:27 PM
 */

require_once("database_functions.php");

if($_SERVER['REQUEST_METHOD'] != "POST") {
    die("Please use POST method");
}


$id = db_quote($_POST['employee_id']);
$date = db_quote($_POST['date']);
$location = db_quote($_POST['location']);
$seller_dealer = db_quote($_POST['seller_dealer']);
$auction = db_quote($_POST['auction']);
$make = db_quote($_POST['vehicle_make']);
$color = db_quote($_POST['vehicle_color']);
$model = db_quote($_POST['vehicle_model']);
$miles = db_quote($_POST['vehicle_miles']);
$book_price = db_quote($_POST['vehicle_book_price']);
$price_paid = db_quote($_POST['vehicle_price_paid']);
$year = db_quote($_POST['vehicle_year']);
$condition = db_quote($_POST['vehicle_condition']);


//vehicle needs to be made first, as well as customer
// then problems need to be made
//$sql = "INSERT into vehicle (miles, vehicle_condition, book_price, sales_price, style, exterior_color, interior_color, make, model, year)";

