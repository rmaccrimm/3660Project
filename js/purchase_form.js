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
        e.preventDefault();

        let description_id = format_str_and_counter('problem_desc', problem_counter);
        let estimated_cost_id = format_str_and_counter('problem_estimated_cost', problem_counter);
        let actual_cost_id = format_str_and_counter('problem_actual_cost', problem_counter);

        let new_elements = "<br><hr>";
        new_elements += "<p>Problem " + (problem_counter + 1) + "</p>";
        new_elements += "<label for='problem_desc'>Description</label>";
        new_elements += "<input type='text' name=" + description_id + " id=" + description_id + ">";

        new_elements += "<label for='problem_estimated_cost'>$ Estimated Cost</label>";
        new_elements += "<input value='0' type='number' min='0' step='10' name=" + estimated_cost_id + " id=" + estimated_cost_id + ">";

        new_elements += "<label for='problem_actual_cost'>$ Actual Cost</label>";
        new_elements += "<input value='0' type='number' min='0' step='10' name=" + actual_cost_id + " id=" + actual_cost_id + ">";

        $(new_elements).insertBefore('#add_new_problem_button');

        problem_counter += 1;
    });

    function format_str_and_counter(str, counter) {
        return "'" + str + "_" + counter + "'";
    }

});
