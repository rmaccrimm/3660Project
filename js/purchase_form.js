$(function() {

    // Populate employee id dropdown on car purchase form
    $.ajax({
        url: "../php/purchase_form_employees.php",
        type: "post",
        success: function (response) {
            // Replace div content with response
            $("#employee_id").html(response);
        }
    });

    // Add new problem form section
    var problem_counter = 0;
    var new_problem_button = $("#add_new_problem_button");
    var problem_div = $("#all_problems");

    new_problem_button.on('click', function(e) {

        let div_id = format_str_and_counter('problem', problem_counter);
        let description_id = format_str_and_counter('problem_desc', problem_counter);
        let estimated_cost_id = format_str_and_counter('problem_estimated_cost', problem_counter);
        let actual_cost_id = format_str_and_counter('problem_actual_cost', problem_counter);

        let new_elements = "<br><hr>";
        new_elements = "<div id=" + div_id + ">";

        // Problem counter is incremented by one to avoid 'Problem 0' being displayed
        new_elements += "<p>Problem " + (problem_counter + 1) + "</p>";

        // Delete problem button, all buttons are same class and delete their parent
        // @see below
        new_elements += "<button type='button' class='delete_button'>Delete</button>";

        // Problem Description Text Box
        new_elements += "<label for='problem_desc'>Description</label>";
        new_elements += "<input type='text' name=" + description_id + " id=" + description_id + ">";

        // Estimated Cost Input
        new_elements += "<label for='problem_estimated_cost'>$ Estimated Cost</label>";
        new_elements += "<input value='0' type='number' min='0' step='10' name=" + estimated_cost_id + " id=" + estimated_cost_id + ">";

        //Actual Cost Input
        new_elements += "<label for='problem_actual_cost'>$ Actual Cost</label>";
        new_elements += "<input value='0' type='number' min='0' step='10' name=" + actual_cost_id + " id=" + actual_cost_id + ">";

        new_elements += "</div>";

        // We want the new problem button to be at the bottom all the time
        $(new_elements).insertBefore('#add_new_problem_button');

        problem_counter++;
    });

    var delete_problem_button = $('.delete_button');

    $("#all_problems").on('click', '.delete_button', function(e){
        // Bind dynamically created delete button to delete parents
        $(this).parent().remove();
        problem_counter--;
    });

    function format_str_and_counter(str, counter) {
        return "'" + str + "_" + counter + "'";
    }

});
