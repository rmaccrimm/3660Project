<html>
<head>
    <link rel="stylesheet" href="../style/basic_style.css">
    <title>Car Sale</title>
</head>
<body>
<div id="content-wrapper">

<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/8/2018
 * Time: 8:20 PM
 */

require_once("database_functions.php");

if($_SERVER['REQUEST_METHOD'] != "POST") {
    die("Please use POST method");
}

$employment_id = make_employment_entry($_POST);
$sale_id = make_sale_entry($_POST);
$owner_id = make_owner_entry($_POST);

function make_employment_entry($input) {
    /*
     * Create as many employment_history rows as there
     * are histories for the customer
     */
    $cust_id = $_POST['customer_id'];

    $employments = find_employment_history($input);

    foreach($employments as $employer) {
        $name = db_quote($employer['employer']);
        $title = db_quote($employer['title']);
        $supervisor = db_quote($employer['supervisor']);
        $phone = db_quote($employer['phone']);
        $address = db_quote($employer['address']);
        $start = db_quote($employer['start']);

        db_query("INSERT INTO employment_history (customer_id, employer, title, supervisor, phone, address, start)" .
            "VALUES ({$cust_id}, {$name}, {$title}, {$supervisor}, {$phone}, {$address}, {$start})");
    }

    $employment_id = db_last_insert();
    if ($employment_id == 0) {
        // if there is no history, this will return 0 (false) which is not correct
        return 1;
    } else {
        return $employment_id;
    }
}

function make_owner_entry($input) {
    /*
     * Create a row in the vehicle_owner table
     * Associate customer with vehicle
     */
    $cust_id = db_quote($input['customer_id']);
    $vehicle_id = db_quote($input['car_id']);

    $sql = ("INSERT INTO vehicle_owner" .
        "(customer_id, vehicle_id)" .
        "VALUES ({$cust_id}, ${vehicle_id})");
    $result = db_query($sql);
    return $result;
}

function make_sale_entry($input) {
    /*
     * Create a row in the sale table
     */
    $emp_id = db_quote($input['employee_id']);
    $cust_id = db_quote($input['customer_id']);
    $date = db_quote($input['date']);
    $due = db_quote($input['total_due']);
    $down = db_quote($input['down_payment']);
    $finance = db_quote($input['finance_amount']);

    $sql = ("INSERT INTO sale" .
        "(employee_id, customer_id, date, total_due, down_payment, finance_amount)" .
        "VALUES ({$emp_id}, {$cust_id}, {$date}, {$due}, {$down}, {$finance})");
    db_query($sql);
    return db_last_insert();
}

function find_employment_history($array) {
    /*
     * Look for 6 fields that make up 1 employer history
     * (employer, title, supervisor, phone, address, start date).
     *  When all are found, add  group to a master list.
     */
    $history = array();
    $histories = array();
    foreach($array as $key => $value) {

        $is_history_field = preg_match('/^history_/', $key);

        if($is_history_field) {
            $is_employer = preg_match('/employer_.$/', $key);
            $is_title = preg_match('/title_.$/', $key);
            $is_supervisor = preg_match('/supervisor_.$/', $key);
            $is_phone = preg_match('/phone_.$/', $key);
            $is_address = preg_match('/address_.$/', $key);
            $is_start = preg_match('/start_.$/', $key);

            if($is_employer) {
                $history['employer'] = $value;
            } elseif($is_title) {
                $history['title'] = $value;
            } elseif($is_supervisor) {
                $history['supervisor'] = $value;
            } elseif($is_phone) {
                $history['phone'] = $value;
            } elseif($is_address) {
                $history['address'] = $value;
            } elseif($is_start) {
                $history['start'] = $value;
            }

            if(count($history) == 6) {
                // Add history to histories and clear history
                $histories[] = $history;
                $history = array();
            }
        }
    }
    return $histories;
}
?>

<?php if ($sale_id and $owner_id and $employment_id):?>
    <p>Success! To go back, click <a href="sale_form.php" title="Go back to sale form">here</a></p>
<?php else:?>
    <p>Failure! To go back, click <a href="sale_form.php" title="Go back to sale form">here</a></p>
<?php endif;?>

</div>
</body>
</html>