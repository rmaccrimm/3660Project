<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/7/2018
 * Time: 10:14 PM
 */
include '../database_functions.php';
include 'report_functions.php';

$full_name = $_POST['name_hint'];
echo '<p>'.$full_name.'</p>';

$names = explode(' ', $full_name);
$first = strtoupper($names[0]);
$last = strtoupper($names[1]);

$contact_query =
    'SELECT first_name, last_name, address, city, state, zip_code, phone
     FROM customer
     WHERE first_name=\''.$first.'\' AND last_name=\''.$last.'\'';
$vehicle_query =
    'SELECT make, model, year, exterior_color, interior_color, style, vehicle_condition, miles
     FROM customer, vehicle, vehicle_owner
     WHERE first_name=\''.$first.'\' AND last_name=\''.$last.'\' 
           AND customer.customer_id=vehicle_owner.customer_id 
           AND vehicle.vehicle_id=vehicle_owner.vehicle_id';
$payment_query =
    'SELECT payment_info.tax_id, payment_info.avg_days_late, payment_info.late_payments
     FROM customer, payment_info
     WHERE first_name=\''.$first.'\' AND last_name=\''.$last.'\' 
           AND customer.customer_id=payment_info.customer_id';
$warranty_cost_query =
    'SELECT employee.first_name, employee.last_name, sale_date, total_cost, monthly_cost
     FROM customer, warranty, employee
     WHERE customer.first_name=\''.$first.'\' AND customer.last_name=\''.$last.'\'
           AND warranty.customer_id=customer.customer_id AND warranty.employee_id=employee.employee_id';
$warranty_item_query =
    'SELECT item_covered, start_date, length, cost, deductible
     FROM warranty_item, customer, warranty
     WHERE first_name=\''.$first.'\' AND last_name=\''.$last.'\'
           AND warranty.customer_id=customer.customer_id AND warranty_item.warranty_id=warranty.warranty_id';

make_table(
    db_query($contact_query),
    ['Address', 'City', 'State', 'Zip Code', 'Phone'],
    ['address', 'city', 'state', 'zip_code', 'phone'],
    'Contact Info'
);

make_table(
    db_query($vehicle_query),
    ['Make', 'Model', 'Year', 'Exterior', 'Interior', 'Style', 'Condition', 'Miles'],
    ['make', 'model', 'year', 'exterior_color', 'interior_color', 'style', 'vehicle_condition', 'miles'],
    'Vehicles'
);

make_table(
    db_query($payment_query),
    ['Tax ID', 'Avg days late', 'Late payments'],
    ['tax_id', 'avg_days_late', 'late_payments'],
    'Payments'
);

make_table(
    db_query($warranty_cost_query),
    ['First Name', 'Last Name', 'Sale Date', 'Total Cost', 'Monthly Cost'],
    ['first_name', 'last_name', 'sale_date', 'total_cost', 'monthly_cost'],
    'Warranty Info'
);

make_table(
    db_query($warranty_item_query),
    ['Item', 'Start Date', 'Length', 'Cost', 'Deductible'],
    ['item_covered', 'start_date', 'length', 'cost', 'deductible'],
    'Warranty Items'
);

?>