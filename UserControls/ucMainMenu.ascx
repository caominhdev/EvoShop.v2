<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMainMenu.ascx.cs" Inherits="ucMainMenu" %>

<nav id="tg-nav" class="tg-nav">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tg-navigation"
            aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div id="tg-navigation" class="collapse navbar-collapse tg-navigation">
        <ul>
            <li class="menu-item-has-children menu-item-has-mega-menu">
                <a href="javascript:void(0);">DANH MỤC</a>
                <div class="mega-menu">
                    <ul class="tg-themetabnav" role="tablist">
                        <asp:Repeater ID="Repeater_Main" ClientIDMode="AutoID" runat="server">
                            <ItemTemplate>
                                <li role="presentation" class="active">
                                    <a  href="#phone" aria-controls="phone" role="tab" data-toggle="tab">
                                        <%# Eval("Title") %>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <div class="tab-content tg-themetabcontent">
                        <div role="tabpanel" class="tab-pane active" id="phone">
                            <ul>
                                <asp:Repeater ID="Repeater_Sub" runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="tg-linkstitle">
                                                <h2>
                                                    <a href='<%#"/Products.aspx?sid={0}&title={1}".StringFormat(Eval("ProductCategoryID"),Eval("Title").ToUrlFormat()) %>'>
                                                        <%# Eval("Title") %>
                                                    </a>
                                                </h2>
                                            </div>
                                            <ul>
                                                <asp:Repeater DataSource='<%# Eval("Product") %>'  runat="server">
                                                    <ItemTemplate>
                                                        <li>
                                                            <a href="Products.aspx">
                                                                <%# Eval("Title").Left(20,true, true) %>
                                                            </a>
                                                        </li>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </ul>
                                            <a class="tg-btnviewall" href="Products.aspx">Xem tất cả</a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
            <li class="menu-item-has-children current-menu-item">
                <a href="Default.aspx">Trang chủ</a>
            </li>
            <li class="menu-item-has-children">
                <a href="AboutUs.aspx">Giới thiệu</a>
                <%--<ul class="sub-menu">
                    <li><a href="authors.aspx">Authors</a></li>
                    <li><a href="authordetail.aspx">Author Detail</a></li>
                </ul>--%>
            </li>
            <li class="menu-item-has-children">
                <a href="Products.aspx">Sản phẩm</a>
                <ul class="sub-menu">

                    <asp:Repeater ID="Repeater_ProductCategory" runat="server">
                        <ItemTemplate>
                            <li>
                                <a href='<%# "/ProductType.aspx?sid={0}&title={1}".StringFormat(Eval("ProductMainCategoryID"), Eval("Title").ToUrlFormat()) %>'>
                                    <%# Eval("Title") %>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>

                </ul>
            </li>
            <li>
                <a href="ProductHot.aspx">Hot Deal</a>
            </li>
            <li class="menu-item-has-children">
                <a href="NewsList.aspx">Tin tức</a>
            </li>
            <li><a href="ContactUs.aspx">Liên hệ</a></li>
            <li class="menu-item-has-children">
                <a href="javascript:void(0);"><i class="icon-menu"></i></a>
                <ul class="sub-menu">
                    <li class="menu-item-has-children">
                        <a href="AboutUs.aspx">Products</a>
                        <ul class="sub-menu">
                            <li><a href="Products.aspx">Products</a></li>
                            <li><a href="ProductDetail.aspx">Product Detail</a></li>
                        </ul>
                    </li>
                    <li><a href="AboutUs.aspx">About Us</a></li>
                    <li><a href="404Error.aspx">404 Error</a></li>
                    <li><a href="#">Coming Soon</a></li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
