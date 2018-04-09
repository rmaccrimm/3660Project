<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/8/2018
 * Time: 9:05 PM
 */

require_once("database_functions.php");

popular_car_id_dropdown();

function popular_car_id_dropdown() {
    /*
     * Add all cars as 'options' to a select menu
     * i.e.
     * <select>
     *   <option value="1"> 2001 Red Honda Accord</option>
     * </select>
     */
    $all_cars = db_select("SELECT * from vehicle WHERE vehicle_id NOT IN (SELECT vehicle_id FROM vehicle_owner)");

    foreach($all_cars as $car):
        $id = $car['vehicle_id'];
        $color = $car['exterior_color'];
        $make = $car['make'];
        $model = $car['model'];
        $year = $car['year'];?>

        <!-- (id) f_name l_name -->
        <option value="<?php echo $id;?>">
            <?php echo "(" . $id . ") " . $year. " " . $color . " " . $make . " " . $model;?>
        </option>
    <?php endforeach;
}?>
