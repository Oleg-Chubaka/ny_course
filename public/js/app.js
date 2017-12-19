$(document).ready(function() {
    $("#submit").click(function(){
        $.post("calc", { quantity: $("#quantity").val() },
            function(result) {
                $("#result").html(result);
            });
    });
});

$(document).ready(function() {
    $('#quantity').slideControl();
    prettyPrint();
});