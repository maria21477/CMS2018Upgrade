var menuFunctions = new function()
{
    this.menuReady = function () {

        // Add a link to another menu item
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

        // Cancel the add link to menu item
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

        // Add a link to a page within the site
        $('#hrefLinkPage').click(function () {
            var editBtn = $(this);

            editBtn.hide();
            editBtn.siblings('.icon').hide();
            editBtn.siblings('.button').show();

            // Hide the menu panel
            $('#divMenuSelection').slideUp();

            // Show the page panel
            $('#divPageSelection').slideToggle();

            // Add click event to page items
            $('#divPageSelection .pageListing .pageSearchResults ul li.pageItem').unbind('click').click(function () {

                // Remove selected class from any page item already selected
                $('#divPageSelection .pageListing .pageSearchResults ul li.pageItem.selected').removeClass('selected');

                // Add selected style to page item
                $(this).addClass('selected');

                // Show new page in right bar
                $('.rightOptions .inner .pageContainer .pageItem').html($(this).html());

                // Put buttons back as they were
                $('#hlnkCancelLinkPage').hide();
                $('#hlnkCancelLinkPage').siblings('.icon').show();

                // Hide page panel
                $('#divMenuSelection').slideDown();

                // Show menu panel
                $('#divPageSelection').slideToggle();
            });
        });

        // Cancel a link to a page within the site
        $('#hlnkCancelLinkPage').click(function () {

            // Hide page panel
            $('#divMenuSelection').slideDown();

            // Show menu panel
            $('#divPageSelection').slideToggle();

            $(this).hide();
            $(this).siblings('.icon').show();
        });

        // Unlink a linked page
        $('#hlnkUnlinkPage').click(function () {

            if (!$(this).hasClass('disabled')) {

                // Show overlay
                var overlayParams = {};
                var contentParams = {};

                contentParams.Title = 'Unlink Page';
                contentParams.Message = 'Are you sure you want to unlink this menu item from it\'s associated page?';
                contentParams.ConfirmBtnCallback = function () {

                    // Update database - TODO

                    // Update rightbar
                    $('.pageItem').html('<p>[No Page Linked]</p>');

                    // Close overlay
                    overlay.Close();
                };

                overlayParams.Content = overlay.GetContent("CONFIRMATION", contentParams);
                overlay.Open(overlayParams);

            }
        });

        // Unlink a menu item
        $('#hrefUnlinkMenu').click(function () {
            if (!$(this).hasClass('disabled')) {

                // Show overlay
                var overlayParams = {};
                var contentParams = {};

                contentParams.Title = 'Unlink Menu Item';
                contentParams.Message = 'Are you sure you want to unlink the menu item from it\'s associated menu item?';
                contentParams.ConfirmBtnCallback = function () {
                    if (!$(this).hasClass('disabled')) {

                        // Show overlay
                        var overlayParams = {};
                        var contentParams = {};

                        contentParams.Title = 'Unlink Page';
                        contentParams.Messages = 'Are you sure you want to unlink this menu item from it\'s associated page?';
                        contentParams.ConfirmBtnCallback = function () {

                            // Update database - TODO

                            // Update right bar
                            $('#pLinkedMenu').html('[No Item Linked]');

                            // Close overlay
                            overlay.Close();
                        };

                        overlayParams.Content = overlay.GetContent("CONFIRMATION", contentParams);
                        overlay.Open(overlayParams);

                    }
                };

                overlayParams.Content = overlay.GetContent("CONFIRMATION", contentParams);
                overlay.Open(overlayParams);

            }
        });
    }
}