<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 9:44 PM
 */

include 'report_functions.php';
include '../database_functions.php';

$id = $_POST['vehicle_id'];

$info_query =
    'SELECT style, interior_color, vehicle_condition, book_price, sale_price, auction
     FROM vehicle, purchase
     WHERE vehicle.vehicle_id=purchase.vehicle_id AND vehicle.vehicle_id='.$id;

$problems_query =
    'SELECT description, estimated_cost, actual_cost
     FROM vehicle_problem as VP, purchase as P
     WHERE VP.purchase_id=P.purchase_id AND P.vehicle_id=' . $id;

make_table(
    db_query($info_query),
    ['Style', 'Interior', 'Condition', 'Book Price($)', 'Sale Price($)', 'Auction'],
    ['style', 'interior_color', 'vehicle_condition', 'book_price', 'sale_price', 'auction'],
    ''
);

make_table(
    db_query($problems_query),
    ['Description', 'Estimated Cost($)', 'Actual Cost($)'],
    ['description', 'estimated_cost', 'actual_cost'],
    'Repairs'
);

?>