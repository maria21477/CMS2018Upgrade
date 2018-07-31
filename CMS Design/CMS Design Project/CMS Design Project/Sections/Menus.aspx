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
    <div class="rightOptions">
        <div class="outer">
            <div class="tab" style="display:none;"><a href="javascript://">Information</a></div>
            <div class="info">
                <h3>Information</h3>
                <p>Lorem Ipsum...</p>
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
                <p>Link to page <a href="javascript://" class="button">Edit</a></p>
                <p>Link to section <a href="javascript://" class="button">Edit</a></p>
            </div>
        </div>
        
    </div>
    <div class="mainSection">
        <div class="panel">
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
        </div>
        <div id="divRetreatsMenu" class="panel" style="display: none;">
            <h2>Retreats Menu</h2>
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
        <div id="divClassesMenu" class="panel" style="display: none;">
            <h2>Classes Menu</h2>
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
        <div class="bottomOptions" style="display: none;">

        </div>
    </div>
    
</asp:Content>

