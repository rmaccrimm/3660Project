<?php
/**
 * Created by PhpStorm.
 * User: Gideon
 * Date: 3/31/2018
 * Time: 1:12 PM
 */ ?>

<html lang="en-US">
<head>
    <title>Reports</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../style/basic_style.css">
    <link rel="stylesheet" href="../style/forms_style.css">
    <link rel="stylesheet" href="../style/entry_form_style.css">
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
    <h1 id="page_name">New Customer</h1>
    <!-- /Page name -->


    <!-- Content -->
    <div id="page_content">
        <!-- TODO: Remember to give this form action -->
        <form class="entry_form" id="new_customer_form" action="customer_form_response.php" method="POST">
            <!-- Going for a two column form here -->
            <div class="form_row">
                <div class="form_col">
                    <label for="customer_first_name">First Name</label>
                    <input id="customer_first_name" name="customer_first_name" type="text" required>

                    <label for="customer_last_name">Last Name</label>
                    <input id="customer_last_name" name="customer_last_name" type="text" required>

                    <label for="customer_telephone">Telephone</label>
                    <input id="customer_telephone" name="customer_telephone" type="tel"
                           placeholder="123-4567-8901" minlength="9" maxlength="14" required>

                    <label for="customer_address">Address</label>
                    <input id="customer_address" name="customer_address" type="text" required>

                    <label for="customer_city">City</label>
                    <input id="customer_city" name="customer_city" type="text" required>
                </div>

                <div class="form_col">
                    <label for="customer_state">State</label>
                    <select id="customer_state" name="customer_state" required>
                        <option value="AL">Alabama</option>
                        <option value="AK">Alaska</option>
                        <option value="AZ">Arizona</option>
                        <option value="AR">Arkansas</option>
                        <option value="CA">California</option>
                        <option value="CO">Colorado</option>
                        <option value="CT">Connecticut</option>
                        <option value="DE">Delaware</option>
                        <option value="DC">District Of Columbia</option>
                        <option value="FL">Florida</option>
                        <option value="GA">Georgia</option>
                        <option value="HI">Hawaii</option>
                        <option value="ID">Idaho</option>
                        <option value="IL">Illinois</option>
                        <option value="IN">Indiana</option>
                        <option value="IA">Iowa</option>
                        <option value="KS">Kansas</option>
                        <option value="KY">Kentucky</option>
                        <option value="LA">Louisiana</option>
                        <option value="ME">Maine</option>
                        <option value="MD">Maryland</option>
                        <option value="MA">Massachusetts</option>
                        <option value="MI">Michigan</option>
                        <option value="MN">Minnesota</option>
                        <option value="MS">Mississippi</option>
                        <option value="MO">Missouri</option>
                        <option value="MT">Montana</option>
                        <option value="NE">Nebraska</option>
                        <option value="NV">Nevada</option>
                        <option value="NH">New Hampshire</option>
                        <option value="NJ">New Jersey</option>
                        <option value="NM">New Mexico</option>
                        <option value="NY">New York</option>
                        <option value="NC">North Carolina</option>
                        <option value="ND">North Dakota</option>
                        <option value="OH">Ohio</option>
                        <option value="OK">Oklahoma</option>
                        <option value="OR">Oregon</option>
                        <option value="PA">Pennsylvania</option>
                        <option value="RI">Rhode Island</option>
                        <option value="SC">South Carolina</option>
                        <option value="SD">South Dakota</option>
                        <option value="TN">Tennessee</option>
                        <option value="TX">Texas</option>
                        <option value="UT">Utah</option>
                        <option value="VT">Vermont</option>
                        <option value="VA">Virginia</option>
                        <option value="WA">Washington</option>
                        <option value="WV">West Virginia</option>
                        <option value="WI">Wisconsin</option>
                        <option value="WY">Wyoming</option>
                    </select>

                    <label for="customer_zip">Zip</label>
                    <input id="customer_zip" name="customer_zip" type="text" placeholder="90210" required>

                    <label for="customer_gender">Gender</label>
                    <select id="customer_gender" name="customer_gender" required>
                        <option value="male">Male</option>
                        <option value="female">Female</option>
                        <option value="other">Other</option>
                        <option value="prefer_no">Prefer Not to Identify</option>
                    </select>

                    <label for="customer_tax_id">Tax Id</label>
                    <input id="customer_tax_id" maxlength="6" name="customer_tax_id" type="text" placeholder="012345" required>

                    <label for="customer_dob">Date of Birth</label>
                    <input id="customer_dob" name="customer_dob" type="date" required>
                </div>
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
