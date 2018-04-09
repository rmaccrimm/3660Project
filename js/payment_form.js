$(function() {

    // Populate employee id dropdown on car purchase form
    $.ajax({
        url: "payment_form_customers.php",
        type: "post",
        success: function (response) {
            // Replace div content with response
            $("#customer_id").html(response);
        }
    });
});