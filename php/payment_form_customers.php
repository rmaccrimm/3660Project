<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 5:34 PM
 */


require_once("../php/database_functions.php");

populate_customer_id_dropdown();

function populate_customer_id_dropdown() {
    /*
     * All all employees as 'options' to a select menu
     * i.e.
     * <select>
     *   <option value="1">(1) Gideon Richter</option>
     * </select>
     */
    $all_customers = db_select("SELECT * from customer");

    foreach($all_customers as $cust):
        $id = $cust['customer_id'];
        $f_name = $cust['first_name'];
        $l_name = $cust['last_name']; ?>

        <!-- (id) f_name l_name -->
        <option value="<?php echo $id; ?>">
            <?php echo "(" . $id . ") " . $f_name . " " . $l_name;?>
        </option>
    <?php endforeach;
}?>
