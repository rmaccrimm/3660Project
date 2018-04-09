$(function() {

    // Populate vehicle id dropdown
    $.ajax({
        url: "vehicle_report_values.php",
        type: "post",
        success: function (response) {
            $("#vehicle_id").html(response);
        }
    });

    $("#vehicle_select").on('submit', function(e) {
        e.preventDefault();
        $.post(
            'vehicle_report_response.php',
            $(this).serialize(),
            function (response) {
                $('#vehicle_report_response').html(response);
            });
    });
});