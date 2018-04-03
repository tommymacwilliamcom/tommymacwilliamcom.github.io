$(function() {
    $('.collapse-list > li > a').on('click', function(e) {
        var $list = $(this).siblings('ul');
        if ($list.is(':visible')) {
            $(this).find('span').html('&gt;');
            $(this).siblings('ul').fadeOut('fast');
        }

        else {
            $(this).find('span').html('&or;');
            $(this).siblings('ul').fadeIn('fast');
        }

        return false;
    });
});
