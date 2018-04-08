<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 4/7/2018
 * Time: 10:22 PM
 */?>

<html lang="en-US">
<head>
    <title>Reports</title>
    <meta charset="UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="../js/purchase_form.js"></script>
    <link rel="stylesheet" href="../style/basic_style.css">
    <link rel="stylesheet" href="../style/forms_style.css">
    <link rel="stylesheet" href="../style/entry_form_style.css">
    <link rel="stylesheet" href="../style/purchase_form_style.css">
</head>
<body>

<!-- Content wrapper -->
<div id="content-wrapper">


    <!-- Top of page -->
    <div id="logo_and_title">
        <a title="Home" href="index.php"><img id="logo" alt="Westside Auto Logo" src="../img/truck_logo.png"></a>
        <h1 id="title">Westside Auto&trade; Database System</h1>
    </div>
    <!-- /Top of page -->


    <!-- Navigation bar -->
    <div id="nav_bar">
        <ul>
            <li><a href="index.php" title="Home">Home</a></li>
            <li><a class="active" href="forms.php" title="Forms">Forms</a></li>
            <li><a href="reports.php" title="Reports">Reports</a></li>
            <li><a href="#about.php" title="About">About</a></li>
        </ul>
    </div>
    <!-- /Navigation bar -->


    <!-- Page name -->
    <h1 id="page_name">Car Purchase</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <p></p>
        <form class="entry_form" id="purchase_car_form" action="purchase_response.php" method="POST">
            <!-- Going for a two column form here -->
            <div class="form_row">
                <div class="form_col">
                    <label for="employee_id">Employee Id</label>
                    <select id="employee_id" name="employee_id">

                    </select>

                    <label for="date">Date</label>
                    <input type="date" name="date" id="date" required>

                    <label for="location">Location</label>
                    <input type="text" name="location" id="location" required>

                    <label for="seller_dealer">Seller/Dealer Name</label>
                    <input type="text" name="seller_dealer" id="seller_dealer" required>

                    <p>Was car purchased at auction?</p>
                    <div id="auction_radios">
                        <input type="radio" checked="checked" name="auction" id="auction_yes" value="1" required>
                        <label for="auction_yes">Yes</label>

                        <input type="radio" name="auction" id="auction_no" value="0" required>
                        <label for="auction_no">No</label>
                    </div>

                    <label for="vehicle_make">Vehicle Make</label>
                    <input type="text" name="vehicle_make" id="vehicle_make" required>

                    <label for="exterior_color">Exterior Color</label>
                    <select name="exterior_color" id="exterior_color" required>
                        <option value="black" selected="selected">Black</option>
                        <option value="blue">Blue</option>
                        <option value="brown">Brown</option>
                        <option value="grey">Grey</option>
                        <option value="green">Green</option>
                        <option value="red">Red</option>
                        <option value="silver">Silver</option>
                        <option value="orange">Orange</option>
                        <option value="pink">Pink</option>
                        <option value="white">White</option>
                        <option value="yellow">Yellow</option>
                    </select>

                    <label for="interior_color">Interior Color</label>
                    <select name="interior_color" id="interior_color" required>
                        <option value="black" selected="selected">Black</option>
                        <option value="blue">Blue</option>
                        <option value="brown">Brown</option>
                        <option value="grey">Grey</option>
                        <option value="green">Green</option>
                        <option value="red">Red</option>
                        <option value="silver">Silver</option>
                        <option value="orange">Orange</option>
                        <option value="pink">Pink</option>
                        <option value="white">White</option>
                        <option value="yellow">Yellow</option>
                    </select>

                </div>
                <div class="form_col">

                    <label for="style">Style</label>
                    <select name="style" id="style" required>
                        <option value="sedan" selected="selected">Sedan</option>
                        <option value="coupe">Coupe</option>
                        <option value="hatchback">Hatchback</option>
                        <option value="wagon">Wagon</option>
                        <option value="truck">Truck</option>
                        <option value="suv">SUV</option>
                        <option value="van">Van</option>
                        <option value="motorcycle">Motorcycle</option>
                    </select>

                    <label for="vehicle_model">Vehicle Model</label>
                    <input type="text" name="vehicle_model" id="vehicle_model" required>

                    <label for="vehicle_miles">Miles</label>
                    <input type="number" value="0" min="0" step="500" name="vehicle_miles" id="vehicle_miles" required>

                    <label for="vehicle_book_price">$ Book Price</label>
                    <input type="number" value="0.00" min="0" step="0.01" name="vehicle_book_price" id="vehicle_book_price" required>

                    <label for="vehicle_price_paid">$ Price Paid</label>
                    <input type="number" value="0.00" min="0." step="0.01" name="vehicle_price_paid" id="vehicle_price_paid" required>

                    <label for="vehicle_year">Vehicle Year</label>
                    <input type="number" min="1900" max="2099" step="1" value="2018" name="vehicle_year" id="vehicle_year" required>

                    <label for="vehicle_condition">Vehicle Condition</label>
                    <select name="vehicle_condition" id="vehicle_condition" required>
                        <option value="Excellent">Excellent</option>
                        <option value="Good">Good</option>
                        <option value="Average" selected="selected">Average</option>
                        <option value="Poor">Poor</option>
                        <option value="Terrible">Terrible</option>
                    </select>
                </div>
            </div>

            <div id="all_problems">
                <button type='button' id="add_new_problem_button">+ New problem</button>
                <!-- jQuery problem 1, 2, 3, ... -->
            </div>

            <!-- submit button not in either column -->
            <input id="form_submit" type="submit" value="Submit">
        </form>
    </div>
    <!-- /Content -->


    <!-- Footer -->
    <div id="footer">
        <small><p>CPSC 3660 - Introduction to Database Systems Group Project <a href="https://github.com/rmaccrimm/3660Project" title="Project Github">GitHub</a></p></small>
    </div>
    <!-- /Footer -->


</div>
<!-- /Content wrapper -->


</body>
</html>

