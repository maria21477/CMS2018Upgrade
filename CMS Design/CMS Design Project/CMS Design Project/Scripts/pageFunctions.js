var pageFunctions = new function () {

    this.pageListingReady = function () {

        $('#hrefShowFilter').click(function () {
            pageFunctions.showFilter();
        });

        // Selecting page
        $('.pageListing .pageSearchResults ul li.pageItem').click(function () {

            if ($(this).hasClass('selected')) {

                $(this).removeClass('selected');

                // Check if filter was showing and go back to that if it was, otherwise back to info
                if (!$('.tab.filter').is(':hidden')) {
                    $("#divPageInfo").hide();
                    $('.rightOptions .outer .tab.filter').hide('fast', function () {
                        $("#divSearchForm").fadeIn('slow').animate({ width: '280px' }, 300);

                    });
                }
                else {
                    $(".rightOptions .inner").hide();
                    $('.rightOptions .outer .tab').hide('fast', function () {
                        $(".rightOptions .outer .info").fadeIn('slow').animate({ width: '280px' }, 300);
                    });
                }                
            }
            else {
                // Highlight selected item
                $(this).siblings('.selected').removeClass('selected');
                $(this).addClass('selected');

                // Update the right bar (only doing title and thumbnail here for demo)
                $('#divPageInfo h3').html($(this).find('.thumbnailHolder p').html());

                var thumbnailEl = $(this).find('.thumbnailHolder .thumbnail').clone();
                $('#divPageInfo .pageItem .thumbnailHolder .thumbnail').replaceWith(thumbnailEl);

                // Show edit and delete options
                $('.bottomOptions').show();

                // Set the left margin for the options
                var noOfOptions = $('.bottomOptions ul li').length;
                var totalOptionWidth = (50 * noOfOptions) + (20 * (noOfOptions - 1));
                var bottomOptionsWidth = $(window).width() - 160 - 280;

                $('.mainSection .bottomOptions').css({ width: $(window).innerWidth() - 161 + 'px' });
                $('.mainSection .bottomOptions ul').css({ marginLeft: (bottomOptionsWidth / 2) - (totalOptionWidth / 2) + 'px' });

                // Show page info on the right but if the search had been triggered, this needs to be moved to the side like the information bar
                if (!$('.tab.information').is(':hidden')) {

                    // Filter is visible
                    $('#divSearchForm').hide();
                    $('.tab.filter').show();

                    // Show page info
                    $('#divPageInfo').show();
                }
                else {

                    // Information page is showing

                    // Show page info
                    $('#divPageInfo').show();

                    $('.rightOptions .outer .info').hide('fast');
                    $('.rightOptions .outer .tab.information').fadeIn('fast', function () {

                        $(".rightOptions .inner").fadeIn('slow').animate({ width: '250px' }, 300);
                    });
                }
            }
            
        });
    }

    this.addPageReady = function () {

        // Create by template button
        $('#hrefTemplate').click(function () {

            // Hide previously shown error message
            $('.errorMessage').hide();

            $(this).addClass('selected');
            $('#hrefSections').removeClass('selected');

            $('.formContainer.large').show();
            $('#ddlTemplate').show();
            $('#ulSections').hide();
        });

        // Choose sections required on page
        $('#hrefSections').click(function () {

            // Hide previously shown error message
            $('.errorMessage').hide();

            $(this).addClass('selected');
            $('#hrefTemplate').removeClass('selected');

            $('.formContainer.large').show();
            $('#ulSections').show();
            $('#ddlTemplate').hide();
        });

        $('#hrefCreate').click(function () {

            var valid = true;

            // Hide previously shown error message
            $('.errorMessage').hide();

            // template selection
            if (!$('#ddlTemplate').is(':hidden') && $('#ddlTemplate').val() == 0) {
                valid = false;
            }

            // Section selection
            if (!$('#ulSections').is(':hidden') && $('#ulSections li .fakeCheckbox.selected').length == 0) {
                valid = false;
            }

            if (valid) {
                window.location.href = 'Edit.aspx';
            }
            else {
                $('.errorMessage').show();
            }
        });

        $('.fakeCheckbox').click(function () {
            if ($(this).hasClass('selected')) {
                $(this).removeClass('selected');
            }
            else {
                $(this).addClass('selected');
            }
        });
    }

    this.showFilter = function () {

        $('#divPageInfo').hide();
        $('#divSearchForm').show();

        $('.rightOptions .outer .info').hide('fast');
        $('.rightOptions .outer .tab.information').fadeIn('fast', function () {

            $(".rightOptions .inner").fadeIn('slow').animate({ width: '250px' }, 300);
        });
    }
}

var widgetFunctions = new function () {

    this.ConfigureHtmlWidget = function (widget) {

        // Show tinymce in an overlay
        var overlayParams = {};
        var contentParams = {};

        contentParams.Title = 'Edit Content';
        contentParams.Widget = widget;

        overlayParams.Content = overlay.GetContent("TINYMCE", contentParams);
        overlayParams.Callback = function () {
            tinymce.init({
                selector: '#txtTinyMce',
                plugins: 'link, image, lists, code',
                toolbar: 'undo redo | styleselect | bold italic | bullist numlist | alignleft aligncenter alignright alignjustify | link unlink | image | code',
                file_picker_types: 'image',
                file_picker_callback: function (cb, value, meta) {
                    var input = document.createElement('input');
                    input.setAttribute('type', 'file');
                    input.setAttribute('accept', 'image/*');


                }
            });
        };

        overlay.Open(overlayParams);

    }
}