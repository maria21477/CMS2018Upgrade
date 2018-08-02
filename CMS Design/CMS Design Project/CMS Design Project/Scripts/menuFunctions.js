var menuFunctions = new function()
{
    this.menuReady = function () {
        $('#hrefLinkSection').click(function () {

            var editBtn = $(this);

            editBtn.hide();
            editBtn.siblings('.icon').hide();
            editBtn.siblings('.button').show();

            // Find the location that our currently selected menu item is in
            var currentLocationContainer = $('.itemsContainer li.selected:last').parents('.panel.location');

            // Disable all menu items in this location
            currentLocationContainer.addClass('disabled');

            // Remove click event from disabled items
            currentLocationContainer.find('li').unbind('click');

            // Highlight the allowed items
            currentLocationContainer.siblings('.panel').addClass('available');

            // Disable add buttons in available locations with an information tooltip
            currentLocationContainer.siblings('.panel').find('ul.itemsContainer li.add').addClass('disabled').unbind('click');

            // Change click event of available items
            currentLocationContainer.siblings('.panel').find('ul.itemsContainer li').unbind('click').click(function () {

                $('.linkedItemContainer.button').hide();
                $('.linkedItemContainer.icon').show();

                // Update the database here and update the name of linked section in the right bar

                // Put back the click events on disabled items
                $('.panel.location.disabled').find('li').click(function () {
                    siteFunctions.itemSelection($(this));
                });

                // Reactivate menu items
                $('.panel.location.disabled').removeClass('disabled');

                // Reactivate add button under available items
                $('.panel.location.available ul.itemsContainer li.add').click(function () {
                    siteFunctions.itemSelection($(this));
                });

                // Remove available styling
                $('.panel.location.available').removeClass('available');

                // Return to previous click event
                currentLocationContainer.siblings('.panel').find('ul.itemsContainer li').unbind('click').click(function () {
                    siteFunctions.itemSelection($(this));
                });
            });
        });

        $('#hlnkCancelLinkMenu').click(function () {
            // Put back the click events on disabled items
            $('.panel.location.disabled').find('li').click(function () {
                siteFunctions.itemSelection($(this));
            });

            // Reactivate menu items
            $('.panel.location.disabled').removeClass('disabled');

            // Reactivate add button under available items
            $('.panel.location.available ul.itemsContainer li.add').click(function () {
                siteFunctions.itemSelection($(this));
            });

            // Remove available styling
            $('.panel.location.available').removeClass('available');

            $(this).hide();
            $(this).siblings('.icon').show();
        });
    }
}