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
                        <a href="javascript://" class="button">Save</a>
                        <a href="javascript://" class="button">Cancel</a>
                    </div>
                </div>
                <p>Link to page <a id="hrefLinkPage" href="javascript://" class="button">Edit</a></p>
                <p>Link to section <a id="hrefLinkSection" href="javascript://" class="button">Edit</a></p>
            </div>
        </div>
        
    </div>
    <div class="mainSection">
        <div class="panel location">
            <h2>Main Menu</h2>
            <ul class="itemsContainer row">
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
                <ul class="itemsContainer row">
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
                <ul class="itemsContainer row">
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
             <ul class="itemsContainer row">
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

