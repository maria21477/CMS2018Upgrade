<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SiteMaster.master" AutoEventWireup="true" CodeFile="Menus.aspx.cs" Inherits="Sections_Navigation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../Scripts/menuFunctions.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mainMenu">
        <ul>
            <li class="selected"><img src="../Images/Icons/framework.png" alt="Framework" /><br />Framework</li>
            <li><img src="../Images/Icons/content.png" alt="Content" /><br />Content</li>
            <li><img src="../Images/Icons/admin.png" alt="Admin" /><br />Admin</li>
        </ul>
    </div>
    <div class="secondaryMenu">
        <ul>
            <li class="selected">Menus</li>
            <li>Header and Footer</li>
        </ul>
    </div>
    <div class="rightOptions">
        <div class="outer">
            <div class="tab" style="display:none;"><a href="javascript://">Information</a></div>
            <div class="info">
                <h3>Information</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut luctus sodales pretium. Donec malesuada bibendum lacinia. Aliquam ac placerat diam. Quisque ut justo eu eros finibus placerat. Integer sagittis euismod pretium. Donec ut turpis dolor. Nulla imperdiet ipsum risus, eu porta justo lobortis eu. Praesent orci eros, consectetur eu vulputate ac, aliquet ut lectus.</p>
                <p>Praesent rhoncus finibus ante quis interdum. Donec consequat porttitor interdum. Duis facilisis laoreet turpis, vitae faucibus tellus dapibus eget. Vestibulum scelerisque libero eget libero congue euismod. Ut et quam auctor, pulvinar enim quis, elementum tellus. Aliquam erat volutpat. Nunc efficitur blandit tortor, vitae aliquam sapien cursus nec. Donec scelerisque, purus sed bibendum hendrerit, tellus mi blandit nunc, id posuere purus mauris tincidunt diam. Duis rutrum magna in massa tincidunt tempus. Phasellus dolor nisi, ultricies ac felis vel, accumsan interdum tellus. Nullam ac vehicula odio.</p>
                <p>In faucibus ex id viverra dictum. Nullam porttitor quis sem quis consectetur. Nullam ultricies magna non tempor aliquet. Mauris euismod quis enim et congue. Curabitur condimentum eros eget sodales tincidunt. Maecenas nec posuere odio, a ultrices libero. Donec pellentesque pretium tortor in euismod. Aenean eget odio ac odio interdum facilisis quis ac nisl.</p>
            </div>
            <div class="inner" style="display:none;">
                <!-- Add -->
                <div class="formContainer">
                    <label for="txtItemName">Name</label><br />
                    <input id="txtItemName" type="text" />

                    <p class="inputLabel">Status</p>
                    <input id="rdoActive" type="radio" name="rdoStatus" value="1" />
                    <label class="radioLabel">Active</label>
            
                    <input id="rdoInactive" type="radio" name="rdoStatus" value="0" />
                    <label class="radioLabel">Inactive</label>
            
                    <div class="buttonContainer">
                        <a id="hrefSaveMenuItem" href="javascript://" class="button">Save</a>
                    </div>
                </div>
                <div class="pageContainer" style="display:none;">
                    <p>
                        <span class="label">Page</span>
                        <a id="hlnkCancelLinkPage" href="javascript://" class="button selected" style="display:none;">Cancel Update</a>
                        <a id="hlnkUnlinkPage" href="javascript://" class="icon unlink" title="Remove Link to Page"></a>
                        <a id="hrefLinkPage" href="javascript://" class="icon link" title="Add / Edit Linked Page"></a>
                    </p>
                    <div class="pageItem">
                        <div class="thumbnailHolder">
                            <div class="thumbnail" style="background-image:url('../Images/Thumbnails/yin_yang_flowers.jpg')"></div>
                            <p>Class Listing</p>
                        </div>
                    </div>
                </div>
                
                <div class="linkedItemContainer" style="display:none;">
                    <p>
                        <span class="label">Menu Item</span> 
                        <a id="hlnkCancelLinkMenu" href="javascript://" class="button selected" style="display:none;">Cancel Update</a>
                        <a id="hrefUnlinkMenu" href="javascript://" class="icon unlink disabled" title="Remove Link to Menu Item" data-ot="Remove Link to Menu Item"></a>
                        <a id="hrefLinkMenu" href="javascript://" class="icon link" title="Add / Edit Linked Page"></a>
                    </p>
                    <div class="linkedItem">
                        <p id="pLinkedMenu">[No Item Linked]</p>
                    </div>
                </div>
                
            </div>
        </div>
        
    </div>
    <div class="mainSection scrollbar-inner">
        <div id="divMenuSelection">
            <div class="panel location">
                <h2>Main Menu</h2>
                <ul class="itemsContainer row sortable">
                    <li>
                        <span class="title">Home</span><br />
                        <span class="subtitle">Home</span>
                    </li>
                    <li class="inactive">
                        <span class="title">Classes</span><br />
                        <span class="subtitle">Class Listing</span>
                    </li>
                    <li>
                        <span class="title">Retreats</span><br />
                        <span class="subtitle none">[No Page Assigned]</span>
                    </li>
                    <li class="add"></li>
                </ul>
                <div id="divRetreatsMenu" class="panel subMenu" style="display: none;">
                    <h3>Retreats Sub Menu</h3>
                    <ul class="itemsContainer row sortable">
                        <li>
                            <span class="title">Assisi</span><br />
                            <span class="subtitle">Assisi Retreat</span>
                        </li>
                        <li>
                            <span class="title">Rishikesh</span><br />
                            <span class="subtitle">Rishikesh Retreat</span>
                        </li>
                        <li>
                            <span class="title">Kerala</span><br />
                            <span class="subtitle none">[No Page Assigned]</span>
                        </li>
                        <li class="add"></li>
                    </ul>
                </div>
                <div id="divClassesMenu" class="panel subMenu" style="display: none;">
                    <h3>Classes Sub Menu</h3>
                    <ul class="itemsContainer row sortable">
                        <li>
                            <span class="title">Vinyasa</span><br />
                            <span class="subtitle none">[No Page Assigned]</span>
                        </li>
                        <li>
                            <span class="title">Yin</span><br />
                            <span class="subtitle none">[No Page Assigned]</span>
                        </li>
                        <li>
                            <span class="title">Hatha</span><br />
                            <span class="subtitle none">[No Page Assigned]</span>
                        </li>
                        <li>
                            <span class="title">Ashtanga</span><br />
                            <span class="subtitle none">[No Page Assigned]</span>
                        </li>
                        <li class="add"></li>
                    </ul>
                </div>
            </div>
        
            <div class="panel location">
                <h2>Left Menus</h2>
                <h3>Retreats</h3>
                 <ul class="itemsContainer row sortable">
                    <li>
                        <span class="title">Assisi</span><br />
                        <span class="subtitle">Assisi Retreat</span>
                    </li>
                    <li>
                        <span class="title">Rishikesh</span><br />
                        <span class="subtitle">Rishikesh Retreat</span>
                    </li>
                    <li>
                        <span class="title">Kerala</span><br />
                        <span class="subtitle none">[No Page Assigned]</span>
                    </li>
                    <li class="add"></li>
                </ul>
            </div>
        </div>
        
        <div id="divPageSelection" class="pageSelection" style="display: none;">
            <div class="menuItemSummary">
                <h2>Selected Menu Item</h2>
                <p>Main Menu - Classes - Yin</p>
            </div>
            <div class="pageListing">
                <h2>Pages</h2>
                <div class="formContainer">
                    <input id="txtPageSearch" type="text" placeholder="Keyword" />
                    <a id="hlinkPageSearch" href="javascript://" class="button">Search</a>
                </div>
                <div class="pageSearchResults">
                    <ul class="row">
                        <li class="pageItem">
                            <div class="thumbnailHolder">
                                <div class="thumbnail" style="background-image: url('../Images/Thumbnails/beginners_course.jpg')"></div>
                                <p>Beginners Course</p>
                            </div>
                        </li>
                        <li class="pageItem selected">
                            <div class="thumbnailHolder">
                                <div class="thumbnail" style="background-image: url('../Images/Thumbnails/yin_yang_flowers.jpg')"></div>
                                <p>Class Listing</p>
                            </div>
                        </li>
                        <li class="pageItem">
                            <div class="thumbnailHolder">
                                <div class="thumbnail" style="background-image: url('../Images/Thumbnails/evening_tree.jpg')"></div>
                                <p>Kerala</p>
                            </div>
                        </li>
                        <li class="pageItem">
                            <div class="thumbnailHolder">
                                <div class="thumbnail" style="background-image: url('../Images/Thumbnails/singing_bowls.jpg')"></div>
                                <p>Singing Bowls</p>
                            </div>
                        </li>
                        <li class="pageItem">
                            <div class="thumbnailHolder">
                                <div class="thumbnail" style="background-image: url('../Images/Thumbnails/relax.jpg')"></div>
                                <p>Yin Yoga</p>
                            </div>
                        </li>
                        <li class="pageItem">
                            <div class="thumbnailHolder">
                                <div class="thumbnail" style="background-image: url('../Images/Thumbnails/teen_yoga.jpg')"></div>
                                <p>Yoga for Teens</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="bottomOptions" style="display: none;">

        </div>
    </div>
    <script type="text/javascript">
    // <![CDATA[
        $(document).ready(function () {
            menuFunctions.menuReady();
        });
    //]]>
    </script>
</asp:Content>

