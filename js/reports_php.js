$(function() {
    // When report form is 'Generated' run this:
    $("#report_form").on('submit', function(e) {

        // Prepare values of form
        var values = $(this).serialize();

        // Prepare ajax and send request to php
        $.ajax({
            url: "../php/report_response.php",
            type: "post",
            data: values,
            success: function (response) {
                // Replace div content with response
                $("#form_ajax_result").html(response);
            }
        });
        // Normal form event is to go to form:action, which
        // by default refreshes the same page. Don't do that.
        e.preventDefault();
    });
});


