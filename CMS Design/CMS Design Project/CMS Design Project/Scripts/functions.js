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
        siteFunctions.itemSelection($(this));
    });

    $('.rightOptions .outer .tab').click(function () {
        $(".rightOptions .inner").hide();
        $(this).fadeOut('fast', function () {
            $('.rightOptions .outer .info').show();
        });
    });
    
});

var siteFunctions = new function () {

    // Item selection
    this.itemSelection = function (button) {
        button.siblings('.selected').removeClass('selected');
        button.toggleClass('selected');
        $('.itemsContainer li.linked').removeClass('linked');

        // Remove selection from other sub menus as well as submenus themselves - this may change once we have actual data
        var menuContainer = button.parent('ul');

        menuContainer.nextAll('.subMenu').hide();
        menuContainer.nextAll('.panel').find('.selected').removeClass('selected');

        // Deselect everything in another menu location
        var locationContainer = button.parents('.location');
        locationContainer.siblings('.location').find('.selected').removeClass('selected');
        locationContainer.siblings('.location').find('.subMenu').hide();

        // If this was the add button, show the right bar with add options
        if (!button.hasClass('add')) {
            $('#txtItemName').val(button.find('.title').html());

            if (button.hasClass('inactive')) {
                $('#rdoInactive').attr('checked', 'checked');
            }
            else {
                $('#rdoActive').attr('checked', 'checked');
            }
        }

        if (button.hasClass('selected')) {
            $('.rightOptions .outer .info').hide('fast');
            $('.rightOptions .outer .tab').fadeIn('fast', function () {

                $(".rightOptions .inner").fadeIn('slow').animate({ width: '250px' }, 300);
            });

            // **** Demo of sub items ***/
            if (button.find('.title').html() == 'Retreats') {
                $('#divRetreatsMenu').show();
            }

            if (button.find('.title').html() == 'Classes') {
                $('#divClassesMenu').show();
            }
        }
        else {
            $(".rightOptions .inner").hide();
            $('.rightOptions .outer .tab').hide('fast', function () {
                $(".rightOptions .outer .info").fadeIn('slow').animate({ width: '280px' }, 300);

            });

            // **** Demo of sub items ***/
            if (buttonfind('.title').html() == 'Retreats') {
                $('#divRetreatsMenu').hide();
            }

            if (button.find('.title').html() == 'Classes') {
                $('#divClassesMenu').hide();
            }
        }
    }
};