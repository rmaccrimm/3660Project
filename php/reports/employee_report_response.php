<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 1:56 PM
 */

include '../database_functions.php';
include 'report_functions.php';


$full_name = $_POST['name_hint'];
echo '<p>'.$full_name.'</p>';

$names = explode(' ', $full_name);
$first = strtoupper($names[0]);
$last = strtoupper($names[1]);

$contact_query =
    'SELECT address, city, state, zip_code, phone, job_title, commission
     FROM employee, employee_job
     WHERE first_name=\''.$first.'\' AND last_name=\''.$last.'\'
           AND employee.job_id=employee_job.job_id';

$sales_query =
    'SELECT make, model, year, C.first_name, C.last_name, total_due, down_payment, finance_amount, date
     FROM customer as C, employee as E, sale, vehicle as V, vehicle_owner as VO
     WHERE sale.employee_id=E.employee_id AND sale.customer_id=C.customer_id AND VO.customer_id=C.customer_id
           AND VO.vehicle_id=V.vehicle_id';

$purchase_query =
    'SELECT make, model, year, book_price, sale_price, date, auction, location
     FROM employee, purchase, vehicle
     WHERE first_name=\''.$first.'\' AND last_name=\''.$last.'\'
           AND purchase.employee_id=employee.employee_id AND purchase.vehicle_id=vehicle.vehicle_id';

$warranty_query =
    'SELECT vehicle_id, sale_date, total_cost, monthly_cost
     FROM warranty, employee
     WHERE first_name=\''.$first.'\' AND last_name=\''.$last.'\'
           AND warranty.employee_id=employee.employee_id';

$contact_result = db_query($contact_query);
$title = $contact_result->fetch_assoc()['job_title'];

// Result has already been fetched so query again
$contact_result = db_query($contact_query);

if ($title == 'salesperson') {
    make_table(
        $contact_result,
        ['Address', 'City', 'State', 'Zip Code', 'Phone', 'Title', 'Commission'],
        ['address', 'city', 'state', 'zip_code', 'phone', 'job_title', 'commission'],
        'Contact Information'
    );

    make_table(
        db_query($sales_query),
        ['Make', 'Model', 'Year', 'First Name', 'Last Name', 'Total Due', 'Down Payment', 'Finance Amount', 'Date'],
        ['make', 'model', 'year', 'first_name', 'last_name', 'total_due', 'down_payment', 'finance_amount', 'date'],
        'Sales'
    );
}
else if ($title == 'buyer') {
    make_table(
        $contact_result,
        ['Address', 'City', 'State', 'Zip Code', 'Phone', 'Title'],
        ['address', 'city', 'state', 'zip_code', 'phone', 'job_title'],
        'Contact Information'
    );

    make_table(
        db_query($purchase_query),
        ['Make', 'Model', 'Year', 'Book Price', 'Sale Price', 'Date', 'Auction', 'Location'],
        ['make', 'model', 'year', 'book_price', 'sale_price', 'date', 'auction', 'location'],
        'Purchases'
    );

    make_table(
        db_query($warranty_query),
        ['Vehicle ID', 'Sale Date', 'Total Cost', 'Monthly Cost'],
        ['vehicle_id', 'sale_date', 'total_cost', 'monthly_cost'],
        'Warranties Sold'
    );
}

?>