<?php
/**
 * Created by PhpStorm.
 * User: Roderick
 * Date: 4/8/2018
 * Time: 9:52 PM
 */

require_once("../database_functions.php");

$all_cars = db_select('SELECT exterior_color, `year`, make, model, vehicle_id FROM vehicle');

foreach($all_cars as $car):
    $id = $car['vehicle_id'];
    $make = $car['make'];
    $model = $car['model'];
    $year = $car['year'];
    $color = $car['exterior_color']; ?>

    <option value="<?php echo $id;?>">
        <?php echo '(' . $id . ') ' . $year . ' ' . $color . ' ' . $make . ' ' . $model; ?>
    </option>
<?php endforeach;