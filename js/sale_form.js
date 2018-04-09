$(function() {

    let employee_id = $("#employee_id");
    let customer_id = $("#customer_id");

    // Populate employee id dropdown on car sale form
    $.ajax({
        url: "../php/purchase_form_employees.php",
        type: "post",
        success: function (response) {
            // Replace div content with response
            employee_id.html(response);
        }
    });

    // Populate customer id dropdown on car sale form
    $.ajax({
        url: "../php/sale_form_customers.php",
        type: "post",
        success: function (response) {
            // Replace div content with response
            customer_id.html(response);
        }
    });

    var employment_counter = 0;
    var new_employment_history_button = $("#new_employment_history");

    new_employment_history_button.on('click', function(e) {

        let div_id = format_str_and_counter('history', employment_counter);
        let employer_id = format_str_and_counter('history_employer', employment_counter);
        let title_id = format_str_and_counter('history_title', employment_counter);
        let supervisor_id = format_str_and_counter('history_supervisor', employment_counter);
        let phone_id = format_str_and_counter('history_phone', employment_counter);
        let address_id = format_str_and_counter('history_address', employment_counter);
        let start_id = format_str_and_counter('history_start', employment_counter);

        let new_elements = "<br><hr>";
        new_elements = "<div id=" + div_id + ">";

        // Problem counter is incremented by one to avoid 'Employment 0' being displayed
        new_elements += "<p>Employment History " + (employment_counter + 1) + "</p>";

        // Delete problem button, all buttons are same class and delete their parent
        // @see below
        new_elements += "<button type='button' class='delete_button'>Delete</button>";

        // Employer name text box
        new_elements += "<label for='history_employer'>Employer Name</label>";
        new_elements += "<input type='text' name=" + employer_id + " id=" + employer_id + " required>";

        // Title text box
        new_elements += "<label for='history_title'>Title</label>";
        new_elements += "<input type='text' name=" + title_id + " id=" + title_id + " required>";

        // Supervisor text box
        new_elements += "<label for='history_supervisor'>Supervisor</label>";
        new_elements += "<input type='text' name=" + supervisor_id + " id=" + supervisor_id + " required>";

        // Phone text box
        new_elements += "<label for='history_phone'>Phone</label>";
        new_elements += "<input type='text' minlength='9' maxlength='20' name=" + phone_id + " id=" + phone_id + " required>";

        // Address text box
        new_elements += "<label for='history_address'>Address</label>";
        new_elements += "<input type='text' name=" + address_id + " id=" + address_id + " required>";

        // Start date select
        new_elements += "<label for='history_start'>Start Date</label>";
        new_elements += "<input type='date' name=" + start_id + " id=" + start_id + " required>";

        new_elements += "</div>";

        // We want the new problem button to be at the bottom all the time
        $(new_elements).insertBefore(new_employment_history_button);

        employment_counter++;
    });

    var delete_problem_button = $('.delete_button');

    $("#all_employment_history").on('click', '.delete_button', function(e){
        // Bind dynamically created delete button to delete parents
        $(this).parent().remove();
        employment_counter--;
    });


    function format_str_and_counter(str, counter) {
        return "'" + str + "_" + counter + "'";
    }
});