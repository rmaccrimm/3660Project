$(function() {
    $("#customer_name").on('submit', function(e) {
        e.preventDefault();
        $('#customer_report_result').html('<p>SOME TEXT</p>');
        $.post(
            '../../php/reports/customer_report_response.php',
            $(this).serialize(),
            function (response) {
                $('#customer_report_result').html(response);
            });
    });
});