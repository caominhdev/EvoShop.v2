<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucMainMenu.ascx.cs" Inherits="ucMainMenu" %>

<nav id="tg-nav" class="tg-nav">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#tg-navigation" aria-expanded="false">
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
                        <asp:Repeater ID="Repeater_Tabs" runat="server">
                            <ItemTemplate>
                                <li role="presentation" class="<%# Container.ItemIndex == 0 ? "active" : "" %>">
                                    <a href='#<%# Eval("Title").ToUrlFormat() %>' aria-controls="phone" role="tab" data-toggle="tab">
                                        <%# Eval("Title") %>
                                    </a>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <div class="tab-content tg-themetabcontent">
                        <asp:Repeater ID="Repeater_Contents" runat="server">
                            <ItemTemplate>
                                <div role="tabpanel" class="<%# Container.ItemIndex == 0 ? "tab-pane active": "tab-pane" %>" id='<%# Eval("Title", "#{0}").ToUrlFormat() %>'>
                                    <ul>
                                        <asp:Repeater ID="Repeater_Cat" DataSource='<%# Eval("CatList") %>' runat="server">
                                            <ItemTemplate>
                                                <li>
                                                    <div class="tg-linkstitle">
                                                        <h2>
                                                            <a href='<%# "/ProductType.aspx?sid={0}&title={1}".StringFormat(Eval("ProductCategoryID"), Eval("Title").ToUrlFormat()) %>'>
                                                                <%# Eval("Title") %>
                                                            </a>
                                                        </h2>
                                                    </div>
                                                    <ul>
                                                        <asp:Repeater ID="Repeater_Products" DataSource='<%# Eval("ProductList") %>' runat="server">
                                                            <ItemTemplate>
                                                                <li>
                                                                    <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                                                        <%# Eval("Title").MiddleTrim(30, true) %>
                                                                    </a>
                                                                </li>
                                                            </ItemTemplate>
                                                        </asp:Repeater>

                                                    </ul>
                                                    <a class="tg-btnviewall" href='<%# "/ProductType.aspx?sid={0}&title={1}".StringFormat(Eval("ProductCategoryID"), Eval("Title").ToUrlFormat()) %>'>
                                                        <%# Eval("Title", "Xem tất cả {0}") %>
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </li>
            <li class="menu-item-has-children current-menu-item">
                <a href="Default.aspx">Trang chủ</a>
            </li>
            <li class="menu-item-has-children">
                <a href="Aboutus.aspx">Giới thiệu</a>
            </li>
            <li class="menu-item-has-children">
                <a href="Products.aspx">Sản phẩm</a>
                <ul class="sub-menu">
                    <asp:Repeater ID="Repeater_Category" runat="server">
                        <ItemTemplate>
                            <li>
                                <a href='<%# "/ProductType.aspx?mid={0}&title={1}".StringFormat(Eval("ProductMainCategoryID"), Eval("Title").ToUrlFormat()) %>'>
                                    <%# Eval("Title") %>
                                </a>
                            </li>
                        </ItemTemplate>
                    </asp:Repeater>
                </ul>
            </li>
            <li><a href="productHot.aspx">Hot Deal</a></li>
            <li class="menu-item-has-children">
                <a href="NewsList.aspx">Tin tức</a>
            </li>
            <li><a href="ContactUs.aspx">Liên hệ</a></li>
        </ul>
    </div>
</nav>
