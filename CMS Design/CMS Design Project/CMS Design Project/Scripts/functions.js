$(document).ready(function () {

    // Set the minimum height of the menus and options panels to be the height of the window.
    $(".mainMenu, .secondaryMenu, .rightOptions").css({ minHeight: $(window).innerHeight() + 'px' });
    $(window).resize(function () {
        $(".mainMenu, .secondaryMenu, .rightOptions").css({ minHeight: $(window).innerHeight() + 'px' });
    });

    // Toggle hints
    $('.hintToggle ul li.hintSelector a').click(function () {
        $(this).parent('.hintSelector').find('.selected').removeClass('selected');
        $(this).addClass('selected');
    });

    // Show and Hide Profile Menu
    $('.profileIcon').hover(function () {
        $(this).find('.profileMenu').toggleClass('hidden');
    });

    // Highlight selected menu options
    $('.mainMenu ul li').click(function () {
        $(this).addClass('selected').siblings('.selected').removeClass('selected');
        $('.secondaryMenu').show();
    });

    $('.secondaryMenu ul li').click(function () {
        $(this).addClass('selected').siblings('.selected').removeClass('selected');
    });
});