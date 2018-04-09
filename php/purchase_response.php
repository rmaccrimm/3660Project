<html>
<head>
    <link rel="stylesheet" href="../style/basic_style.css">
</head>
</html>
<body>
<div id="content-wrapper">

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

$car_values = array();
$car_values['make'] = db_quote($_POST['vehicle_make']);
$car_values['exterior'] = db_quote($_POST['exterior_color']);
$car_values['interior'] = db_quote($_POST['interior_color']);
$car_values['style'] = db_quote($_POST['style']);
$car_values['model'] = db_quote($_POST['vehicle_model']);
$car_values['miles'] = db_quote($_POST['vehicle_miles']);
$car_values['book_price'] = db_quote($_POST['vehicle_book_price']);
$car_values['price_paid'] = db_quote($_POST['vehicle_price_paid']);
$car_values['condition'] = db_quote($_POST['vehicle_condition']);
$car_values['year'] = db_quote($_POST['vehicle_year']);

$vehicle_id = make_car_entry($car_values);

if (!$vehicle_id) {
    $msg = "Could not make new car, click <a href='purchase_form.php' title='Purchase form'>here</a> to go back. ";
}

$sale_values = array();
$sale_values['employee_id'] = db_quote($_POST['employee_id']);
$sale_values['date'] = db_quote($_POST['date']);
$sale_values['location'] = db_quote($_POST['location']);
$sale_values['auction'] = db_quote($_POST['auction']);

$purchase_id = make_purchase_entry($sale_values, $vehicle_id);

$problem_id = make_problem_entries($purchase_id);

function make_purchase_entry($inputs, $vehicle_id) {
    /*
     * Create a row in the purchase table
     */
    $sql = ("INSERT INTO purchase" .
        "(date, location, auction, employee_id, vehicle_id)" .
        "VALUES({$inputs['date']}, {$inputs['location']}, {$inputs['auction']}, {$inputs['employee_id']}, {$vehicle_id})");

    db_query($sql);
    return db_last_insert();
}

function make_problem_entries($purchase_id) {
    /*
     * Create as many rows in vehicle_problem as there are problems
     */
    $problems = find_car_problems($_POST);
    foreach($problems as $problem) {
        $sql = ("INSERT INTO vehicle_problem".
            "(description, purchase_id, estimated_cost, actual_cost)".
            "VALUES ({$problem['description']}, {$purchase_id}, {$problem['estimated']}, {$problem['actual']})");
        db_query($sql);
    }
    return db_last_insert();
}

function make_car_entry($inputs) {
    /*
     * Create a row in the vehicle table
     */
    $sql = ("INSERT INTO vehicle " .
        "(miles, vehicle_condition, book_price, sale_price, style, exterior_color, interior_color, make, model, year)" .
        "VALUES ({$inputs['miles']}, {$inputs['condition']}, {$inputs['book_price']}, {$inputs['price_paid']}, {$inputs['style']},{$inputs['exterior']}, {$inputs['interior']}, {$inputs['make']}, {$inputs['model']}, {$inputs['year']})");
    db_query($sql);
    return db_last_insert();
}

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
                $problem['description'] = db_quote($value);
            } elseif($is_estimated) {
                $problem['estimated'] = db_quote($value);
            } else {
                $problem['actual'] = db_quote($value);
            }

            if(count($problem) == 3) {
                // Add problem to problems and clear problem
                $problems[] = $problem;
                $problem = array();
            }
        }
    }
    return $problems;
}?>

<?php if ($vehicle_id and $purchase_id and $problem_id):?>
    <p>Success! To go back, click <a href="purchase_form.php" title="Go back to customer form">here</a></p>
<?php else:?>
    <p>Failure! To go back, click <a href="purchase_form.php" title="Go back to purchase form">here</a></p>
<?php endif;?>

</div>
</body>

