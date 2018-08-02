var menuFunctions = new function()
{
    this.menuReady = function () {
        $('#hrefLinkSection').click(function () {

            var editBtn = $(this);

            // Editing or cancelling
            if (editBtn.hasClass('selected')) {
                editBtn.removeClass('selected').html('Edit');

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
            }
            else {
                editBtn.addClass('selected').html('Cancel');

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

                    $(this).addClass('linked');

                    editBtn.removeClass('selected').html('Edit');

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
            }
        });
    }
}