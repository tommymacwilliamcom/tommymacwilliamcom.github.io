$(function() {
    $('#btn-submit').on('click', function(e) {
        // construct tweet from ui
        var tweet = {
            content: $('#txt-content').val(),
            username: $('#txt-username').val(),
            tags: [$('#txt-tag1').val(), $('#txt-tag2').val()]
        };

        // send tweet to server
        $.post('/tweets/add', tweet, function(response) {
            response = JSON.parse(response);

            // display tweet if successful
            if (response.success) {
                $('#tweets').prepend('<li><h4>' + tweet.username + '</h4>' + tweet.content + 
                    '<small>' + tweet.tags.join(', ') + '</small></li>')
                    .listview('refresh');

                // clear tweet and tag textbox
                $('form textarea, form input:not(#txt-username)').val('');
            }

        });

        e.preventDefault();
        return false;
    });
});
