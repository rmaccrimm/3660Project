$(function() {
    $("#employee_name").on('submit', function(e) {
        e.preventDefault();
        $.post(
            '../../php/employee_report_response.php',
            $(this).serialize(),
            function (response) {
                $('#employee_report_result').html(response);
            });
    });
});