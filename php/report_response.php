<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/3/2018
 * Time: 11:16 PM
 */

$selection = $_POST['report_select'];

?>

<!-- Output the opening table tag -->
<table id="form_table"><caption><?=$selection?></caption>

<?php if ($selection == 'test1') : ?>
    <!-- Depending on the selection fill table with query result rows -->
    <tr>
        <th>test1 col 1</th>
        <th>test1 col2</th>
    </tr>
    <tr>
        <td>bing</td>
        <td>bong</td>
    </tr>
<?php endif; ?>

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
