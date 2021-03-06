﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SiteMaster.master" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Sections_Pages_Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="../../Scripts/pageFunctions.js"></script>
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
                <li class="tab information" style="display:none;" data-ot="Information"><a href="javascript://">i</a></li>
            </ul>
            <div class="info">
                <h3>Information</h3>
                <p class="icon"><img src="../../Images/Icons/info/pages.png" /></p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut luctus sodales pretium. Donec malesuada bibendum lacinia. Aliquam ac placerat diam. Quisque ut justo eu eros finibus placerat. Integer sagittis euismod pretium. Donec ut turpis dolor. Nulla imperdiet ipsum risus, eu porta justo lobortis eu. Praesent orci eros, consectetur eu vulputate ac, aliquet ut lectus.</p>
                <p>Praesent rhoncus finibus ante quis interdum. Donec consequat porttitor interdum. Duis facilisis laoreet turpis, vitae faucibus tellus dapibus eget. Vestibulum scelerisque libero eget libero congue euismod. Ut et quam auctor, pulvinar enim quis, elementum tellus. Aliquam erat volutpat. Nunc efficitur blandit tortor, vitae aliquam sapien cursus nec. Donec scelerisque, purus sed bibendum hendrerit, tellus mi blandit nunc, id posuere purus mauris tincidunt diam. Duis rutrum magna in massa tincidunt tempus. Phasellus dolor nisi, ultricies ac felis vel, accumsan interdum tellus. Nullam ac vehicula odio.</p>
                <p>In faucibus ex id viverra dictum. Nullam porttitor quis sem quis consectetur. Nullam ultricies magna non tempor aliquet. Mauris euismod quis enim et congue. Curabitur condimentum eros eget sodales tincidunt. Maecenas nec posuere odio, a ultrices libero. Donec pellentesque pretium tortor in euismod. Aenean eget odio ac odio interdum facilisis quis ac nisl.</p>
            </div>
            <div class="inner" style="display:none;">
                
            </div>
        </div>
        
    </div>
    <div class="mainSection scrollbar-inner">
        <div class="welcome">
            <h1>Create Page</h1>

            <div class="buttonContainer large selection">
                <a id="hrefTemplate" href="javascript://" class="button">Choose Template</a>
                <a id="hrefSections" href="javascript://" class="button">Select Sections</a>
            </div>
            <div class="formContainer large" style="display: none;">
                <p class="errorMessage" style="display: none;">Please make a selection!</p>
                <select id="ddlTemplate" style="display: none;">
                    <option value="0">Please Select</option>
                    <option value="1">Product Page</option>
                    <option value="2">Standard Content Page</option>
                </select>
                <ul id="ulSections" class="checkboxList" style="display: none;">
                    <li><span class="fakeCheckbox"></span><label>Full Width Top Bar</label></li>
                    <li><span class="fakeCheckbox"></span><label>Full Width Bottom Bar</label></li>
                    <li><span class="fakeCheckbox"></span><label>Main Section</label></li>
                    <li><span class="fakeCheckbox"></span><label>Left Bar</label></li>
                    <li><span class="fakeCheckbox"></span><label>Right Bar</label></li>
                </ul>
                <div class="buttonContainer">
                    <a id="hrefCreate" href="javascript://" class="button">Create</a>
                </div>
            </div>
        </div>

        <div class="bottomOptions" style="display: none;">
            
        </div>
    </div>
    <script type="text/javascript">
        //<![CDATA[
        $(document).ready(function () {
            pageFunctions.addPageReady();
        });
        //]]>

    </script>
</asp:Content>

