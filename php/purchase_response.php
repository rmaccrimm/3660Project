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
$exterior = db_quote($_POST['exterior_color']);
$interior = db_quote($_POST['interior_color']);
$model = db_quote($_POST['vehicle_model']);
$miles = db_quote($_POST['vehicle_miles']);
$book_price = db_quote($_POST['vehicle_book_price']);
$price_paid = db_quote($_POST['vehicle_price_paid']);
$year = db_quote($_POST['vehicle_year']);
$condition = db_quote($_POST['vehicle_condition']);

$problems = find_car_problems($_POST);

function find_car_problems($array) {
    /*
     * Look for 3 fields that make up 1 car problem
     * (desc, estimated, actual). When all are found,
     * add  group to a master list.
     */
    $problem = array();
    $problems = array();
    foreach($_POST as $key => $value) {

        $is_problem_field = preg_match('/^problem/', $key);

        if($is_problem_field) {
            // Regex: Starts with description_
            $is_description = preg_match('/desc_.$/', $key);

            // Regex: Ends with estimated_cost_ + any character
            $is_estimated = preg_match('/estimated_cost_.$/', $key);

            // Regex: Ends with actual_cost_ + any character
            $is_actual = preg_match('/actual_cost_.$/', $key);

            if($is_description) {
                $problem['description'] = $value;
            } elseif($is_estimated) {
                $problem['estimated'] = $value;
            } else {
                $problem['actual'] = $value;
            }

            if(count($problem) == 3) {
                // Add problem to problems and clear problem
                $problems[] = $problem;
                $problem = array();
            }
        }
    }
    return $problems;
}

// for each value that starts with problem_
//    create array of values that endwith _0, _1, _2,...
//    make new database entry for each thing in array

//vehicle needs to be made first, as well as customer
// then problems need to be made
//$sql = "INSERT into vehicle (miles, vehicle_condition, book_price, sales_price, style, exterior_color, interior_color, make, model, year)";

