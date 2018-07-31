$(document).ready(function () {

    // Set the minimum height of the menus and options panels to be the height of the window.
    $(".mainMenu, .secondaryMenu, .rightOptions, .rightOptions .inner").css({ minHeight: $(window).innerHeight() - $('.header').outerHeight() + 'px' });

    // Set width of the bottom options panel
    $('.mainSection .bottomOptions').css({ width: $(window).innerWidth() - 161 + 'px' });

    $(window).resize(function () {
        $(".mainMenu, .secondaryMenu, .rightOptions, .rightOptions .inner").css({ minHeight: $(window).innerHeight() - $('.header').outerHeight() + 'px' });
        $('.mainSection .bottomOptions').css({ width: $(window).innerWidth() - 161 + 'px' });
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

    // Item selection
    $('.itemsContainer li').click(function () {
        $(this).siblings('.selected').removeClass('selected');
        $(this).toggleClass('selected');

        // If this was the add button, show the right bar with add options
        if (!$(this).hasClass('add')) {
            $('#txtItemName').val($(this).find('.title').html());

            if ($(this).hasClass('inactive')) {
                $('#rdoInactive').attr('checked', 'checked');
            }
            else {
                $('#rdoActive').attr('checked', 'checked');
            }
        }

        $('.rightOptions .outer .tab').fadeToggle('fast', function () {
            $('.rightOptions .outer .info').toggle('fast');
        });
        $(".rightOptions .inner").animate({ width: 'toggle' }, 300);
        
    });

    $('.rightOptions .outer .tab').click(function () {
        $(".rightOptions .inner").hide();
        $(this).fadeOut('fast', function () {
            $('.rightOptions .outer .info').show();
        });
    });
    
});