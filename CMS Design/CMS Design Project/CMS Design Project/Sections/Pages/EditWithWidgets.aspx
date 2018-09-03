<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SiteMaster.master" AutoEventWireup="true" CodeFile="EditWithWidgets.aspx.cs" Inherits="Sections_Pages_EditWithWidgets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mainMenu">
        <ul>
            <li><img src="../../Images/Icons/framework.png" /><br />Framework</li>
            <li class="selected"><img src="../../Images/Icons/content.png" alt="Content" /><br />Content</li>
            <li><img src="../../Images/Icons/admin.png" alt="Admin" /><br />Admin</li>
        </ul>
    </div>
    <div class="secondaryMenu">
        <ul>
            <li class="selected"><a href="Sections/Pages/Listing.aspx"><img src="../../Images/Icons/pages.png" alt="Pages" /><br />Pages</a></li>
        </ul>
    </div>
    <div class="rightOptions">
        <div class="outer">
            <ul class="tabs">
                <li class="tab information" data-ot="Information"><a href="javascript://">i</a></li>
                <li class="tab details" data-ot="Details" style="display:none;"><a class="icon" href="javascript://">...</a></li>
            </ul>
            <div class="info" style="display:none;">
                <h3>Information</h3>
                <p class="icon"><img src="../../Images/Icons/info/pages.png" /></p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut luctus sodales pretium. Donec malesuada bibendum lacinia. Aliquam ac placerat diam. Quisque ut justo eu eros finibus placerat. Integer sagittis euismod pretium. Donec ut turpis dolor. Nulla imperdiet ipsum risus, eu porta justo lobortis eu. Praesent orci eros, consectetur eu vulputate ac, aliquet ut lectus.</p>
                <p>Praesent rhoncus finibus ante quis interdum. Donec consequat porttitor interdum. Duis facilisis laoreet turpis, vitae faucibus tellus dapibus eget. Vestibulum scelerisque libero eget libero congue euismod. Ut et quam auctor, pulvinar enim quis, elementum tellus. Aliquam erat volutpat. Nunc efficitur blandit tortor, vitae aliquam sapien cursus nec. Donec scelerisque, purus sed bibendum hendrerit, tellus mi blandit nunc, id posuere purus mauris tincidunt diam. Duis rutrum magna in massa tincidunt tempus. Phasellus dolor nisi, ultricies ac felis vel, accumsan interdum tellus. Nullam ac vehicula odio.</p>
                <p>In faucibus ex id viverra dictum. Nullam porttitor quis sem quis consectetur. Nullam ultricies magna non tempor aliquet. Mauris euismod quis enim et congue. Curabitur condimentum eros eget sodales tincidunt. Maecenas nec posuere odio, a ultrices libero. Donec pellentesque pretium tortor in euismod. Aenean eget odio ac odio interdum facilisis quis ac nisl.</p>
            </div>
            <div id="divPageInfo" class="inner">
                <h3>Page Title</h3>
                <div class="pageItem">
                    <div class="thumbnailHolder">
                        <div class="thumbnail" style="background-image:url('/Images/Thumbnails/yin_yang_flowers.jpg')"></div>
                    </div>
                </div>
                <ul class="itemInfo">
                    <li>
                        <label>Status</label><br />
                        Active
                    </li>
                    <li>
                        <label>Attached Menu Item</label><br />
                        Main Menu - Classes - Vinyasa<br />
                        <span class="italic">[Secondary]</span>
                    </li>
                    <li>
                        <label>Url</label><br />
                        /power_yoga
                    </li>
                    <li>
                        <label>Summary</label><br />
                        Sed non nulla a sapien sollicitudin dictum sed eget lectus. Praesent scelerisque diam eu est scelerisque, non finibus diam ullamcorper. Sed sit amet dolor sed ipsum accumsan lobortis. Praesent a ligula...
                    </li>
                        
                </ul>
            </div>
            <div id="divSelectWidget" class="inner" style="display:none;">
                <h3>Select Widget</h3>
                <ul class="widgetList">
                    <li>Class List</li>
                    <li>Comments</li>
                    <li>Contact List</li>
                    <li>Data</li>
                    <li>Event List</li>
                    <li>Filter</li>
                    <li>Gallery</li>
                    <li>Html</li>
                    <li>Product List</li>
                    <li>Resource List</li>
                    <li>Scrolling Banner</li>
                    <li>Single Banner</li>
                    <li>Staff List</li>
                    <li>Triple Banner</li>
                </ul>

                <div class="buttonContainer">
                    <a id="hrefCloseWidgetSelection" href="javascript://" class="button">Close</a>
                </div>
            </div>
        </div>
    </div>
    <div class="mainSection scrollbar-inner">
        <div class="page">
            <div class="row top">
                <div class="columns section twelve">
                    <div class="header">
                        <div class="iconContainer">
                            <a href="javascript://" class="icon add"></a>
                        </div>
                    </div>
                    <div class="content">
                        <div class="widgetContainer">
                            <div class="widgetHeader"></div>
                            <div class="widgetContent empty" data-widget-type="single-banner">Configure Single Banner Widget</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row middle">
                <div class="columns two section">
                    <div class="header">
                        <div class="iconContainer">
                            <a href="javascript://" class="icon add"></a>
                        </div>
                    </div>
                    <div class="content">
                        <div class="widgetContainer">
                            <div class="widgetHeader"></div>
                            <div class="htmlContainer"></div>
                        </div>
                    </div>
                </div>
                <div class="columns eight section">
                    <div class="header">
                        <div class="iconContainer">
                            <a href="javascript://" class="icon add"></a>
                        </div>
                    </div>
                    <div class="content">
                        <div class="widgetContainer">
                            <div class="widgetHeader">
                                <a href="javascript://" class="delete">X</a>
                            </div>
                            <div class="widgetContent empty" data-widget-type="html">Configure Html Widget</div>
                        </div>
                    </div>
                </div>
                <div class="columns two section">
                    <div class="header">
                        <div class="iconContainer">
                            <a href="javascript://" class="icon add"></a>
                        </div>
                    </div>
                    <div class="content">

                    </div>
                </div>
            </div>
            <div class="row bottom">
                <div class="columns twelve section">
                    <div class="header">
                        <div class="iconContainer">
                            <a href="javascript://" class="icon add"></a>
                        </div>
                    </div>
                    <div class="content">

                    </div>
                </div>
            </div>
        </div>
        <div class="bottomOptions" style="display: none;">
            <ul>
                <li><a href="Edit.aspx">Edit</a></li>
                <li><a href="javascript://">Delete</a></li>
            </ul>
        </div>
    </div>
    <div id="divResourceOverlay" style="display: none;">
        <div class="resources">
            <div class="header row">
                     <div class="formContainer">
                         <select id="ddlResourceTypes">
                             <option value="0">All Resources</option>
                             <option value="1">Images Only</option>
                             <option value="2">Documents Only</option>
                         </select>
                     </div>   
            </div>
            <div class="row">
                <div class="columns three folderList">
                    <ul>
                        <li><span class="folder"></span><a href="javascript://">Documents</a></li>
                        <li><span class="folder"></span><a href="javascript://">Images</a></li>
                    </ul>
                </div>
                <div class="columns nine mainArea">
                    <div class="files row">
                        <div class="thumbnailHolder">
                            <div class="thumbnail" style="background-image:url('/Images/Thumbnails/beginners_course.jpg')"></div>
                        </div>
                        <div class="thumbnailHolder">
                            <div class="thumbnail" style="background-image:url('/Images/Thumbnails/evening_tree.jpg')"></div>
                        </div>
                        <div class="thumbnailHolder">
                            <div class="thumbnail" style="background-image:url('/Images/Thumbnails/relax.jpg')"></div>
                        </div>
                        <div class="thumbnailHolder">
                            <div class="thumbnail" style="background-image:url('/Images/Thumbnails/singing_bowls.jpg')"></div>
                        </div>
                        <div class="thumbnailHolder">
                            <div class="thumbnail" style="background-image:url('/Images/Thumbnails/teen_yoga.jpg')"></div>
                        </div>
                        <div class="thumbnailHolder">
                            <div class="thumbnail" style="background-image:url('/Images/Thumbnails/yin_yang_flowers.jpg')"></div>
                        </div>
                        <div class="thumbnailHolder">
                            <div class="thumbnail">Upload</div>
                        </div>
                    </div>
                    <div class="row footer">
                        <div class="formContainer">
                            <input id="txtNewFolder" type="text" />
                            <a href="javascript://" class="button inline">Add Folder</a>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>
    </div>
    <script type="text/javascript">
    //<![CDATA[
        $(document).ready(function () {
            $('.section .header .iconContainer .icon.add').click(function () {
                $('.section .header.selected').removeClass('selected');
                $(this).parents('.header').addClass('selected')
                $('#divPageInfo').hide();
                $('#divSelectWidget').show();
            });

            $('.rightOptions .inner ul.widgetList li').click(function () {

                var widgetHtml = $('<div class="widgetContainer"></div>');
                var widgetHeaderHtml = $('<div class="widgetHeader"></div>');
                var widgetContentHtml = $('<div class="widgetContent empty"></div>');

                var widgetName = $(this).html();

                widgetContentHtml.html('Configure ' + widgetName + ' Widget');
                widgetHtml.append(widgetHeaderHtml).append(widgetContentHtml);

                // Add empty widget to section

                $('.section .header.selected').siblings('.content').append(widgetHtml);
            });

            // Close widget selection right bar
            $('#hrefCloseWidgetSelection').click(function () {

                // Deselect selected area
                $('.section .header.selected').removeClass('selected');

                // Close right bar
                $('#divSelectWidget').hide();
                $('#divPageInfo').show();
            });

            // Remove widget
            $('.widgetHeader a.delete').click(function () {

                var overlayParams = {};
                var contentParams = {};

                contentParams.Title = 'Delete Widget';
                contentParams.Message = 'Are you sure you want to delete this widget?  This action cannot be undone.';
                contentParams.ConfirmBtnParams = {};
                contentParams.ConfirmBtnParams.Btn = $(this);
                contentParams.ConfirmBtnCallback = function (params) {

                    var deleteBtn = params.Btn;

                    // Remove widget
                    deleteBtn.parents('.widgetContainer').remove();

                    // Close overlay
                    overlay.Close();
                };

                overlayParams.Content = overlay.GetContent("CONFIRMATION", contentParams);
                overlay.Open(overlayParams);

            });

            // Edit different widgets
            $('.widgetContent').click(function () {

                // highlight widget
                $(this).addClass('selected');

                // Different actions depending on the type of widget
                switch ($(this).attr('data-widget-type')) {

                    case 'html':

                        widgetFunctions.ConfigureHtmlWidget($(this));
                        break;

                    case 'single-banner':
                        overlayParams = {};
                        overlayParams.Content = $('#divResourceOverlay').html();
                        overlay.Open(overlayParams);
                        break;
                }

            });
        });
        //]]>
    </script>
</asp:Content>

