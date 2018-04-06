<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/3/2018
 * Time: 11:16 PM
 */

$selection = $_POST['report_select'];

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "auto_company";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

?>

<!-- Output the opening table tag -->
<table id="form_table"><caption><?=$selection?></caption>

<!-- Depending on the selection fill table with query result rows -->
<?php if ($selection == 'Customers') :
    $cust_query = 'SELECT * FROM `customer`';
    $cust_data = $conn->query($cust_query);

    $cust_headers = [
        'Last name', 'First name', 'Address', 'City', 'State', 'Zip Code', 'Phone', 'Date of Birth', 'Tax ID',
        'Average Days Late', 'Late Payments'];

    $cust_cols = [
        'last_name', 'first_name', 'address', 'city', 'state', 'zip_code', 'phone', 'date_of_birth', 'tax_id',
        'avg_days_late', 'late_payments'];

    foreach ($cust_headers as $h) {
        echo "<th>" . $h . "</th>";
    }

    while ($row = $cust_data->fetch_assoc()) {
        echo "<tr>";
        foreach($cust_cols as $col) {
            echo "<td>" . $row[$col] . "</td>";
        }
        echo "</tr>";
    }

endif; ?>

<?php if ($selection == 'test2') : ?>
    <tr>
        <th>test2 col 1</th>
        <th>test2 col 2</th>
    </tr>
    <tr>
        <td>bong</td>
        <td>bing</td>
    </tr>
<?php endif; ?>

<?php if ($selection == 'test3') : ?>
    <tr>
        <th>test3 col 1</th>
        <th>test3 col 2</th>
    </tr>
    <tr>
        <td>bang</td>
        <td>bang</td>
    </tr>
<?php endif; ?>

</table>
