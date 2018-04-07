<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/3/2018
 * Time: 11:16 PM
 */

include 'database_functions.php';
$selection = $_POST['report_select'];
?>

<!-- Output the opening table tag -->
<table id="form_table" ><caption><?=$selection?></caption>

<!-- Depending on the selection fill table with query result rows -->
<?php if ($selection == 'Customers') :?>

    <form name="customer_name" id="customer_name">
        <label for="name_hint">Full Name: </label>
        <input tyep="text" id="name_hint" name="name_hint" />
        <input type="submit", value="Submit" />
    </form>

    <div id="customer_report_result">
        <p>THINGS GO HERE </p>
    </div>

<?php
    $cust_headers = ['Last name', 'First name', 'Address', 'City', 'State', 'Zip Code', 'Phone', 'Date of Birth'];
    $cust_cols = ['last_name', 'first_name', 'address', 'city', 'state', 'zip_code', 'phone', 'date_of_birth'];
    $query = 'SELECT ';
    $query_names = 'SELECT first_name, last_name FROM customer';
    $names = db_query($query_names);
    $json = array();

    while($row = $names->fetch_assoc()) {
        array_push($json,
            ucfirst(strtolower($row['first_name']))
            . ' '
            . ucfirst(strtolower($row['last_name'])));
    }
?>

    <script type="text/javascript">
        var names = <?php echo json_encode($json); ?>;
        $(function() {
            $("#name_hint").autocomplete({
                source: names
            });

            $(document).on('click', '#customer_name', function(e) {
                e.preventDefault();
                $('#customer_report_result').html('<p>SOME TEXT THAT IS REALLY LONG SO I CAN SEE IT EASILY</p>');
            });
        });
    </script>

<?php
    /*foreach ($cust_cols as $col) {
        $query = $query . $col . ',';
    }
    $query = rtrim($query, ',');
    $query = $query . ' FROM customer';
    $cust_data = db_query($query);

    foreach ($cust_headers as $h) {
        echo "<th>" . $h . "</th>";
    }

    while ($row = $cust_data->fetch_assoc()) {
        echo "<tr>";
        foreach($cust_cols as $col) {
            echo "<td>" . $row[$col] . "</td>";
        }
        echo "</tr>";
    }*/

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
