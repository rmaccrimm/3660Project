<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/3/2018
 * Time: 11:16 PM
 */

include 'database_functions.php';
include 'customer_report_response.php';
$selection = $_POST['report_select'];
?>


<!-- Output the opening table tag -->
<table id="form_table" ><caption><?=$selection?></caption>

<!-- Depending on the selection fill table with query result rows -->
<?php if ($selection == 'Customers') :

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
