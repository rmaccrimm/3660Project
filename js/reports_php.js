$(function() {
    $("#report_form").on('submit', function(e) {
        var values = $(this).serialize();

        $.ajax({
            url: "../php/report_response.php",
            type: "post",
            data: values,
            success: function (response) {
                $("#form_ajax_result").html(response);
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.log(textStatus, errorThrown);
            }
        });
        e.preventDefault();
    });
});
