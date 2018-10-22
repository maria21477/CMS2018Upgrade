var resourceFunctions = new function()
{
    this.ResourceOverlayReady = function () {

        // Open and close folder structure
        $('.overlayContainerInner .folderList ul li a.folder').click(function () {

            if ($(this).hasClass('expanded')) {
                $(this).removeClass('expanded').html('+');
                $(this).siblings('ul').hide();
                $(this).siblings('ul').find('ul').hide();
            }
            else {
                $(this).addClass('expanded').html('-');
                $(this).siblings('ul').show();
            }
        });
    }
}