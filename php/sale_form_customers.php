<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/8/2018
 * Time: 8:53 PM
 */

require_once("database_functions.php");

populate_customer_id_dropdown();

function populate_customer_id_dropdown() {
    /*
     * Add all customers as 'options' to a select menu
     * i.e.
     * <select>
     *   <option value="1">(1) Gideon Richter</option>
     * </select>
     */
    $all_customers = db_select("SELECT * from customer");

    foreach($all_customers as $customer):
        $id = $customer['customer_id'];
        $f_name = $customer['first_name'];
        $l_name = $customer['last_name'];?>

        <!-- (id) f_name l_name -->
        <option value="<?php echo $id;?>">
            <?php echo "(" . $id . ") " . $f_name . " " . $l_name;?>
        </option>
    <?php endforeach;
}?>
