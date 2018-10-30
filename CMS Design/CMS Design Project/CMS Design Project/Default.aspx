<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SiteMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="mainMenu">
        <ul>
            <li><img src="Images/Icons/framework.png" alt="Framework" /><br />Framework</li>
            <li><img src="Images/Icons/content.png" alt="Content" /><br />Content</li>
            <li><img src="Images/Icons/admin.png" alt="Admin" /><br />Admin</li>
        </ul>
    </div>
    <div class="secondaryMenu" style="display:none;">
        <ul>
            <li><a href="Sections/Menus.aspx">Menus</a></li>
            <li>Header and Footer</li>
            <li><a href="Sections/Pages/Listing.aspx"><img src="../Images/Icons/pages.png" alt="Pages" /><br />Pages</a></li>
        </ul>
    </div>
    <div class="mainSection">
        <div class="mainSectionInner">
            <!-- Initial Message for multiple sites -->
            <div class="welcome">
                <h1>Welcome</h1>
                <h2>You are currently managing the following site:</h2>
                <p class="siteName">Test Site</p>
                <p>You can change the site at the top of the screen.</p>
                <p>To continue, select one of the options on the left or view the documentation using the link at the top of the screen.</p>
            </div>

            <div class="welcome" style="display:none;">
                <h1>Welcome</h1>
                <p>Please select one of the options from the left to begin or view the documentation using the link at the top of the screen.</p>
            </div>
        </div>
    </div>
    <div class="rightOptions" style="display:none;">

    </div>
</asp:Content>

