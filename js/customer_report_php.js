$(function() {
    $("#customer_name").on('submit', function(e) {
        e.preventDefault();
        $.post(
            '../php/customer_report_response.php',
            $(this).serialize(),
            function (response) {
                $('#customer_report_result').html(response);
            });
    });
});