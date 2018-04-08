<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 1:52 PM
 */

function make_table($query_result, $headers, $columns, $caption)
{
    echo '<table id=form_table><caption>'.$caption.'</caption>';
    if (!$query_result) {
        echo "<tr><td>No results found</td></tr>";
    }
    else {
        echo '<tr>';
        foreach ($headers as $col) {
            echo '<th>'.$col.'</th>';
        }
        echo '</tr>';
        while ($row = $query_result->fetch_assoc()) {
            echo "<tr>";
            foreach($columns as $col) {
                echo "<td>{$row[$col]}</td>";
            }
            echo "</tr>";
        }
    }
    echo '</table>';
}

?>