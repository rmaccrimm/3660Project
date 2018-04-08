$(function() {
    $.ajax({
        url: "../php/purchase_form_employees.php",
        type: "post",
        success: function (response) {
            // Replace div content with response
            $("#employee_id").html(response);
        }
    });
});