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
            <div class="inner">
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
        </div>
    </div>
    <div class="mainSection scrollbar-inner">
        <div class="page">
            <div class="row top">
                <div class="columns twelve"></div>
            </div>
            <div class="row middle">
                <div class="columns two"></div>
                <div class="columns eight"></div>
                <div class="columns two"></div>
            </div>
            <div class="row bottom">
                <div class="columns twelve"></div>
            </div>
        </div>
        <div class="bottomOptions" style="display: none;">
            <ul>
                <li><a href="Edit.aspx">Edit</a></li>
                <li><a href="javascript://">Delete</a></li>
            </ul>
        </div>
    </div>
</asp:Content>

