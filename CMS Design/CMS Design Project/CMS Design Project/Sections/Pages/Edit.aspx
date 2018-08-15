<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SiteMaster.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Sections_Pages_Edit" %>

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
                    <li>Data</li>
                    <li>Event List</li>
                    <li>Filter</li>
                    <li>Gallery</li>
                    <li>Html</li>
                    <li>Product List</li>
                    <li>Scrolling Banner</li>
                    <li>Single Banner</li>
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
                            <div class="bannerContainer"></div>
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
                            <div class="widgetHeader"></div>
                            <div class="eventListContainer"></div>
                        </div>
                        <div class="widgetContainer">
                            <div class="widgetHeader"></div>
                            <div class="productListContainer"></div>
                        </div>
                    </div>
                </div>
                <div class="columns two section">
                    <div class="header">
                        <div class="iconContainer">
                            <a href="javascript://" class="icon add"></a>
                        </div>
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
                $('#divSelectWidget').hide();
                $('#divPageInfo').show();
            });
        });
        //]]>
    </script>
</asp:Content>

