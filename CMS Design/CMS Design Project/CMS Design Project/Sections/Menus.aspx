<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SiteMaster.master" AutoEventWireup="true" CodeFile="Menus.aspx.cs" Inherits="Sections_Navigation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    <div class="rightOptions" style="display:none;">
        <!-- Add -->
        <h3>New Main Menu Item</h3>
        <div class="formContainer">
            <label for="txtItemName">Name</label><br />
            <input id="txtItemName" type="text" />

            <p class="inputLabel">Status</p>
            <input type="radio" name="rdoStatus" value="1" />
            <label class="radioLabel">Active</label>
            
            <input type="radio" name="rdoStatus" value="0" />
            <label class="radioLabel">Inactive</label>
            
            <div class="buttonContainer">
                <a href="javascript://" class="button">Save</a>
                <a href="javascript://" class="button">Cancel</a>
            </div>
        </div>
    </div>
    <div class="mainSection">
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
        <div class="bottomOptions">

        </div>
    </div>
    
</asp:Content>

