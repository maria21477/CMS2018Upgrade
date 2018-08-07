var pageFunctions = new function () {

    this.pageListingReady = function () {

        $('#hrefShowFilter').click(function () {
            pageFunctions.showFilter();
        });

        // Selecting page
        $('.pageListing .pageSearchResults ul li.pageItem').click(function () {

            // Show edit and delete options
            $('.bottomOptions').show();
            $('.mainSection .bottomOptions').css({ width: $(window).innerWidth() - 161 + 'px' });

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