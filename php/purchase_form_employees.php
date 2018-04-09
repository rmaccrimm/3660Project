<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/8/2018
 * Time: 2:18 PM
 */

require_once("../php/database_functions.php");

populate_employee_id_dropdown();

function populate_employee_id_dropdown() {
    /*
     * All all employees as 'options' to a select menu
     * i.e.
     * <select>
     *   <option value="1">(1) Gideon Richter</option>
     * </select>
     */
    $query =
        'SELECT *
         FROM employee, employee_job 
         WHERE employee.job_id=employee_job.job_id AND employee_job.job_title=\'buyer\'';
    $all_employees = db_select($query);

    foreach($all_employees as $employee):
        $id = $employee['employee_id'];
        $f_name = $employee['first_name'];
        $l_name = $employee['last_name'];?>

        <!-- (id) f_name l_name -->
        <option value="<?php echo $id;?>">
            <?php echo "(" . $id . ") " . $f_name . " " . $l_name;?>
        </option>
    <?php endforeach;
}?>
