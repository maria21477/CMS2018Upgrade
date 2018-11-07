<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SiteMaster.master" AutoEventWireup="true" CodeFile="EditWithEmptyWidgets.aspx.cs" Inherits="Sections_Pages_EditWithWidgets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="../../Scripts/pageFunctions.js"></script>
    <script type="text/javascript" src="../../Scripts/resourceFunctions.js"></script>
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
                <div id="divPageInfo" class="inner" data-simplebar="true" data-simplebar-auto-hide="false">
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
                <div id="divSelectWidget" class="inner" style="display:none;" data-simplebar="true" data-simplebar-auto-hide="false">
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
        <div class="mainSection" data-simplebar="true" data-simplebar-auto-hide="false">
            <div class="mainSectionInner">
                <div class="page">
                    <div class="row top">
                        <div class="columns section twelve">
                            <div class="header">
                                <div class="iconContainer">
                                    <a href="javascript://" class="icon add"></a>
                                </div>
                            </div>
                            <div class="content">
                                <!-- Single Banner Widget -->
                                <div class="widgetContainer">
                                    <a href="javascript://" class="delete">X</a>
                                    <div class="widgetContent" data-widget-type="single-banner">
                                        <div class="title">Single Banner</div>
                                        <div class="thumbnailContainer banner">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Edit</a>
                                                <a href="javascript://" class="icon">Label</a>
                                                <a href="javascript://" class="icon">Link</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Single Banner Widget -->
                                <!-- Triple Banner Widget -->
                                <div class="widgetContainer">
                                    <a href="javascript://" class="delete">X</a>
                                    <div class="widgetContent" data-widget-type="triple-banner">
                                        <div class="title">Triple Banner</div>
                                        <div class="thumbnailContainer banner triple large">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="thumbnailContainer banner triple small">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>

                                        <div class="widgetFooter" style="display: none;">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Edit</a>
                                                <a href="javascript://" class="icon">Label</a>
                                                <a href="javascript://" class="icon">Link</a>
                                                <a href="javascript://" class="icon">Direction</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Triple Banner Widget -->
                                <!-- Scrolling Banner Widget -->
                                <div class="widgetContainer">
                                    <a href="javascript://" class="delete">X</a>
                                    <div class="widgetContent" data-widget-type="scrolling-banner">
                                        <div class="title">Scrolling Banner</div>
                                        <div class="thumbnailContainer banner scrolling">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Edit</a>
                                                <a href="javascript://" class="icon">Label</a>
                                                <a href="javascript://" class="icon">Link</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Scrolling Banner Widget -->
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
                                <!-- Filter Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="filter">
                                        <div class="title">Filter</div>
                                        <div class="thumbnailContainer filter">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Link</a>
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Filter Widget -->
                                <!-- Class Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="classes">
                                        <div class="title">Classes</div>
                                        <div class="thumbnailContainer class">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Class Widget -->
                                <!-- Contact List Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="contact_list">
                                        <div class="title">Contact List</div>
                                        <div class="thumbnailContainer contact">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Contact List Widget -->
                                <!-- Staff List Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="staff_list">
                                        <div class="title">Staff List</div>
                                        <div class="thumbnailContainer staff">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Staff List Widget -->
                            </div>
                        </div>
                        <div class="columns eight section">
                            <div class="header">
                                <div class="iconContainer">
                                    <a href="javascript://" class="icon add"></a>
                                </div>
                            </div>
                            <div class="content">
                                <!-- HTML Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="html">
                                        <div class="title">Html Content</div>
                                        <div class="thumbnailContainer html">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Edit</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End HTML Widget -->
                                <!-- Product List Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="product-list">
                                        <div class="title">Product List Widget</div>
                                        <div class="thumbnailContainer product">
                                            <div class="thumbnail iconContainer">
                                                <p>Paged List</p>
                                            </div>
                                            <div class="thumbnail iconContainer">
                                                <p>Horizontal Scroll</p>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Type</a>
                                                <a href="javascript://" class="icon">Listing Config</a>
                                                <a href="javascript://" class="icon">Field Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Product List Widget -->
                                <!-- Gallery Widget -->
                                <div class="widgetContainer">
                                    <a href="javascript://" class="delete">X</a>
                                    <div class="widgetContent" data-widget-type="gallery">
                                        <div class="title">Gallery</div>
                                        <div class="thumbnailContainer gallery">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Edit</a>
                                                <a href="javascript://" class="icon">Label</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Gallery Widget -->
                            </div>
                        </div>
                        <div class="columns two section">
                            <div class="header">
                                <div class="iconContainer">
                                    <a href="javascript://" class="icon add"></a>
                                </div>
                            </div>
                            <div class="content">
                                <!-- Data Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="data">
                                        <div class="title">Data Widget</div>
                                        <div class="thumbnailContainer product">
                                            <div class="thumbnail iconContainer">
                                                <p>Product</p>
                                            </div>
                                            <div class="thumbnail iconContainer">
                                                <p>Class</p>
                                            </div>
                                            <div class="thumbnail iconContainer">
                                                <p>Contact</p>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Data Widget -->
                                <!-- Event Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="events">
                                        <div class="title">Events</div>
                                        <div class="thumbnailContainer event">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Event Widget -->
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
                                <!-- Comments Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="comments">
                                        <div class="title">Comments</div>
                                        <div class="thumbnailContainer comment">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Comments Widget -->
                                <!-- Resources Widget -->
                                <div class="widgetContainer">
                                    <div class="widgetHeader">
                                        <a href="javascript://" class="delete">X</a>
                                    </div>
                                    <div class="widgetContent" data-widget-type="resources">
                                        <div class="title">Resources</div>
                                        <div class="thumbnailContainer resource">
                                            <div class="thumbnail iconContainer add">
                                                <div class="top left"></div>
                                                <div class="top right"></div>
                                                <div class="bottom left"></div>
                                                <div class="bottom right"></div>
                                            </div>
                                        </div>
                                        <div class="widgetFooter">
                                            <div class="iconContainer">
                                                <a href="javascript://" class="icon">Config</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End Resources Widget -->
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
                        <li>
                            <a href="javascript://" class="folder">+</a><a href="javascript://" class="folderName">Documents</a>
                            <ul style="display: none;">
                                <li><a href="javascript://" class="folderName">Specifications</a></li>
                                <li>
                                    <a href="javascript://" class="folder">+</a><a href="javascript://" class="folderName">Staff Info</a>
                                    <ul style="display: none;">
                                        <li><a href="javascript://" class="folderName">Handbooks</a></li>
                                        <li><a href="javascript://" class="folderName">Disciplinary Procedures</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li><a href="javascript://" class="folder">+</a><a href="javascript://" class="folderName">Images</a></li>
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
                            <div class="thumbnail upload">Upload</div>
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
            widgetFunctions.PageWidgetsReady();
        });
        //]]>
    </script>
</asp:Content>

