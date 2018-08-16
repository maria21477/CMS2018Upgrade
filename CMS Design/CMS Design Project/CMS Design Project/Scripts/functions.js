$(document).ready(function () {

    // Set the minimum height of the menus and options panels to be the height of the window.
    $('.mainMenu, .secondaryMenu').outerHeight($(window).innerHeight() - $('.header').outerHeight() + 'px');
    $('.rightOptions, .rightOptions .inner').outerHeight($(window).innerHeight() - $('.header').outerHeight() + 'px');
    $('.mainSection').outerHeight($(window).innerHeight() - $('.header').outerHeight() + 'px' );

    // Set width of the bottom options panel
    $('.mainSection .bottomOptions').outerHeight({ width: $(window).innerWidth() - 161 + 'px' });

    
    $(window).resize(function () {
        $('.mainMenu, .secondaryMenu').outerHeight($(window).innerHeight() - $('.header').outerHeight() + 'px');
        $('.rightOptions, .rightOptions .inner').outerHeight($(window).innerHeight() - $('.header').outerHeight() + 'px');
        $('.mainSection').outerHeight($(window).innerHeight() - $('.header').outerHeight() + 'px');
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

    // Enabling drag and drop re-ordering
    $('.sortable').sortable();

    // Initialise Tooltips
    ToolTip.Initialise();
    
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

            // Show the page and menu link sections
            $('.rightOptions .outer .inner .pageContainer').show();
            $('.rightOptions .outer .inner .linkedItemContainer').show();
        }
        else {
            $('#txtItemName').val('');

            // Hide the page and menu link sections
            $('.rightOptions .outer .inner .pageContainer').hide();
            $('.rightOptions .outer .inner .linkedItemContainer').hide();
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

        // Click events for 'Save' and 'Cancel' buttons in the right bar
        $('#hrefSaveMenuItem').click(function () {

            var valid = true;

            // Validation
            if (valid) {
                if (button.hasClass('add')) {

                    // Create new menu item
                    var menuItem = $('<li class="ui-sortable-handle"></li>');
                    var title = $('<span class="title">' + $('#txtItemName').val() + '</span >');
                    var subTitle = $('<span class="subtitle none">[No Page Assigned]</span>');

                    menuItem.append(title);
                    menuItem.append('<br />');
                    menuItem.append(subTitle);

                    menuItem.insertBefore(button);

                    // Show linked page and menu link
                    $('.rightOptions .outer .inner .pageContainer').show();
                    $('.rightOptions .outer .inner .linkedItemContainer').show();
                }
                else {
                    // Update name of item
                    button.find('li span.title').html($('#txtItemName').val());
                }
            }
        });

    }
};

var overlay = new function () {

    // Gets one of the content types configured for the site
    this.GetContent = function (code, contentParams) {
        var content;

        switch (code) {

            case 'CONFIRMATION':
                content = overlay.BuildConfirmationContent(contentParams);
                break;

            case 'TINYMCE':
                content = overlay.BuildTinyMCEArea(contentParams);
                break;
        }

        return content;
    }

    this.Open = function (params) {
        var content;
        var callback;

        if (params !== undefined && params != null) {
            content = params.Content;
            callback = params.Callback;
        }

        $('#overlay').hide();
        $('.overlayContainer').hide();

        // Clear contents that are currently in overlay
        $('.overlayContainer .overlayContainerInner').html('');

        // Put the content in the overlay
        if (content !== undefined && content != null) {
            $('.overlayContainer .overlayContainerInner').append(content);
        }

        // Do anything else we need to with the contents of the overlay
        if (callback !== undefined && callback != null) {
            callback();
        }

        // Work out the 'left' attribute
        var leftPos = ($(window).width() - $('.overlayContainer').width()) / 2;

        $('.overlayContainer').css({ left: leftPos + 'px' });

        $('#overlay').show();

        // Set top position
        var wHeight = $(window).height();
        var overlayHeight = $('.overlayContainer').height();

        var overlayTop = (wHeight / 2) - (overlayHeight / 2) + $(document).scrollTop();

        $('.overlayContainer').css({ 'top': overlayTop });

        $('.overlayContainer').show();
    };

    // Updates what is displayed in an already open overlay
    this.SetContent = function (content) {
        var container = $('<div class="overlayContainerInner"></div>');
        container.append(content);

        $('.overlayContainer .overlayContainerInner').replaceWith(container);
    }

    this.Close = function () {
        $('#overlay').hide();
        $('.overlayContainer').hide();

        // Clear contents
        $('.overlayContainer .overlayContainerInner').html('');
    };

    this.BuildConfirmationContent = function (params) {
        var title = '';
        var message = '';
        var includeComments = false;
        var cancelBtnText = 'Cancel';
        var confirmBtnText = 'Confirm';
        var cancelBtnCallback = function () { overlay.Close(); };
        var confirmBtnCallback = function () { overlay.Close(); };
        var confirmBtnParams;

        // Replace defaults with info passed in
        if (params !== undefined && params != null) {
            if (params.Title !== undefined && params.Title != null) {
                title = params.Title;
            }

            if (params.Message !== undefined && params.Message != null) {
                message = params.Message;
            }

            if (params.IncludeComments !== undefined && params.IncludeComments != null) {
                includeComments = params.IncludeComments;
            }

            if (params.CancelBtnText !== undefined && params.CancelBtnText != null) {
                cancelBtnText = params.CancelBtnText;
            }

            if (params.ConfirmBtnText !== undefined && params.ConfirmBtnText != null) {
                confirmBtnText = params.ConfirmBtnText;
            }

            if (params.CancelBtnCallback !== undefined && params.CancelBtnCallback != null) {
                cancelBtnCallback = params.CancelBtnCallback;
            }

            if (params.ConfirmBtnCallback !== undefined && params.ConfirmBtnCallback != null) {
                confirmBtnCallback = params.ConfirmBtnCallback;
            }

            if (params.ConfirmBtnParams !== undefined && params.ConfirmBtnParams != null) {
                confirmBtnParams = params.ConfirmBtnParams;
            }
        }

        // Build out content of overlay
        var contentContainer = $('<div></div>');
        var buttonContainer = $('<div class="buttonContainer"></div>');
        var button = '<a href="javascript://" class="button"></a>';

        if (title != '') {
            contentContainer.append('<h2>' + title + '</h2>');
        }

        if (message != '') {
            contentContainer.append('<p>' + message + '</p>');
        }

        // Add a text area for comments if required
        if (includeComments) {
            var textArea = $('<textarea id="txtComments" rows="10" cols="5"></textarea>');

            contentContainer.append(textArea);
        }

        // Confirm button
        var confirmBtn = $(button);
        confirmBtn.html(confirmBtnText);
        confirmBtn.click(function () {

            if (includeComments) {
                // Assuming we want the comments if we asked for the box!
                confirmBtnParams.Comments = $('#txtComments').html();
            }

            confirmBtnCallback(confirmBtnParams);
        });
        buttonContainer.append(confirmBtn);

        // Cancel button
        var cancelBtn = $(button);
        cancelBtn.html(cancelBtnText);
        cancelBtn.click(function () {
            cancelBtnCallback();
        });
        buttonContainer.append(cancelBtn);

        contentContainer.append(buttonContainer);

        return contentContainer;
    }

    // Builds  area containing a tiny mce text area
    this.BuildTinyMCEArea = function (params) {

        var widget = null;

        if (params !== undefined && params != null) {
            widget = params.Widget;
        }

        var contentContainer = $('<div></div>');
        var buttonContainer = $('<div class="buttonContainer"></div>');
        var button = '<a href="javascript://" class="button"></a>';

        var textArea = $('<textarea id="txtTinyMce"></textarea>');
        var saveBtn = $(button);
        var cancelBtn = $(button);

        saveBtn.html('Save');
        cancelBtn.html('Cancel');

        cancelBtn.click(function () {

            // Close without saving
            overlay.Close();
        });

        saveBtn.bind('click', { Widget: widget}, function (e) {

            // Remove empty class from widget
            e.data.Widget.removeClass('empty');

            // Set widget html to be the contents of the textarea
            e.data.Widget.html(textArea.html());

            // Close the overlay
            overlay.Close();
        });

        buttonContainer.append(saveBtn);
        buttonContainer.append(cancelBtn);

        contentContainer.append(textArea);
        contentContainer.append(buttonContainer);

        return contentContainer;
    }
}

var ToolTip = new function () {
    this.Initialise = function () {

        if ($('.icon.disabled').length > 0) {
            new Opentip('.icon.disabled');
        }

        //Opentip.styles.infotip = {
        //    extends: 'alert',
        //    color: '#ffffff',
        //    opacity: 0,
        //    height: '100px',
        //    padding: '5px',
        //    background: '#0b0b3b',
        //    borderColor: '#0b0b3b'
        //}

        //// Add tool tip to each error info icon
        //$('.icon.disabled').each(function () {

        //    var tip = new Opentip($(this), content,
        //        {
        //            target: '#' + $(this).attr('id'),
        //            tipJoint: 'right',
        //            fixed: true,
        //            style: 'infotip',
        //            showOn: 'mouseover'
        //        });
        //});
    }
}