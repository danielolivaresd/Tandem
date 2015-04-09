$(function()
{
    $("#contact form").submit(function()
    {
        var form = $(this);
        var str = form.serialize();
        $.ajax(
        {
            type: "POST",
            url: "contact.php",
            data: str,
            success: function(msg)
            {
                $("#contact .result .alert").remove();
                msg = JSON.parse(msg);

                if(msg.status == 'OK')
                {
                    $('#contact .result').append('<div class="alert alert-success">Your message has been sent. Thank you!</div');
                }
                else if(msg.text)
                {
                    $.each(msg.text, function(i, elem){
                        $('#contact .result').append('<div class="alert alert-error">' + elem + '</div');
                    })
                }
                else
                {
                    $('#contact .result').append('<div class="alert alert-error">Error</div');
                }
            }
        })
        return false;
    })
})