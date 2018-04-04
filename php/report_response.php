<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/3/2018
 * Time: 11:16 PM
 */

$selection = $_POST['report_select'];

//make first part of table
$to_output = "<table id=form_table><caption>{$selection}</caption>";

//depending on selection, build appropriate table
if ($selection == 'test1') {
    // really we would just be looping the results of a query to build this
    // i.e. for i in result { result.append(<tr>i</tr>) }
    $to_output .= "
        <tr>
            <th>test1 col 1</th>
            <th>test1 col2</th>
        </tr>
        <tr>
            <td>bing</td>
            <td>bong</td>
        </tr>
";
}

if ($selection == 'test2') {
    $to_output .= "
        <tr>
            <th>test2 col 1</th>
            <th>test2 col 2</th>
        </tr>
        <tr>
            <td>bong</td>
            <td>bing</td>
        </tr>
";
}

if ($selection == 'test3') {
    $to_output .= "
        <tr>
            <th>test3 col 1</th>
            <th>test3 col 2</th>
        </tr>
        <tr>
            <td>bang</td>
            <td>bang</td>
        </tr>
";
}

// add on closing table tag
$to_output .= "</table>";

//result of php script is what ajax call gets
echo $to_output;
?>