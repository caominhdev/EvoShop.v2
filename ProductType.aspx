<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="ProductType.aspx.cs" Inherits="ProductType" %>

<%@ Register Src="~/UserControls/ucLeftCategory.ascx" TagPrefix="uc1" TagName="ucLeftCategory" %>
<%@ Register Src="~/UserControls/ucLeftArticle.ascx" TagPrefix="uc1" TagName="ucLeftArticle" %>
<%@ Register Src="~/UserControls/ucSearchMini.ascx" TagPrefix="uc1" TagName="ucSearchMini" %>
<%@ Register Src="~/UserControls/ucBestSellingProducts.ascx" TagPrefix="uc1" TagName="ucBestSellingProducts" %>
<%@ Register Src="~/UserControls/ucPagination.ascx" TagPrefix="uc1" TagName="ucPagination" %>







<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Loại Sản Phẩm</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100"
        data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-innerbannercontent">
                        <asp:Repeater ID="Repeater_Title" runat="server">
                            <ItemTemplate>
                                <h1><%# Eval("Title") %></h1>

                            </ItemTemplate>
                        </asp:Repeater>
                        <ol class="tg-breadcrumb">
                            <li><a href="Default.aspx">Trang chủ</a></li>
                            <li class="tg-active">Loại Sản Phẩm</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <main id="tg-main" class="tg-main tg-haslayout">
        <!--************************************
                    News Grid Start
            *************************************-->
        <div class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <asp:UpdatePanel runat="server">
                        <ContentTemplate>
                            <div id="tg-twocolumns" class="tg-twocolumns">
                                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                                    <div id="tg-content" class="tg-content">
                                        <div class="tg-products">
                                            <div class="tg-sectionhead">
                                                <h2>
                                                    <span>Loại sản phẩm</span>
                                                    <asp:Repeater ID="Repeater_TitleMain" runat="server">
                                                        <ItemTemplate>
                                                            <strong><%# Eval("Title") %></strong>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </h2>
                                            </div>
                                            <div class="tg-productgrid">
                                                <div class="tg-refinesearch">
                                                    <span>Bộ lọc</span>
                                                    <div class="tg-formtheme tg-formsortshoitems">
                                                        <fieldset>
                                                            <div class="form-group">
                                                                <label>Xếp theo:</label>
                                                                <span class="tg-select">
                                                                    <asp:DropDownList runat="server"
                                                                        ID="DropDownList_Option"
                                                                        OnSelectedIndexChanged="DropDownList_Option_SelectedIndexChanged"
                                                                        AutoPostBack="true">
                                                                        <asp:ListItem Value="0">Tên A-Z</asp:ListItem>
                                                                        <asp:ListItem Value="1">Tên Z-A</asp:ListItem>
                                                                        <asp:ListItem Value="2">Giá thấp đến cao</asp:ListItem>
                                                                        <asp:ListItem Value="3">Giá cao đến thấp</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>Giá:</label>
                                                                <span class="tg-select">
                                                                    <asp:DropDownList runat="server"
                                                                        ID="DropDownList_Price"
                                                                        OnSelectedIndexChanged="DropDownList_Price_SelectedIndexChanged"
                                                                        AutoPostBack="true">
                                                                        <asp:ListItem Value="<4">Dưới 4 triệu</asp:ListItem>
                                                                        <asp:ListItem Value="4-8">Từ 4 - 8 triệu</asp:ListItem>
                                                                        <asp:ListItem Value="8-13">Từ 8 - 13 triệu</asp:ListItem>
                                                                        <asp:ListItem Value="13-20">Từ 13 - 20 triệu</asp:ListItem>
                                                                        <asp:ListItem Value="20-25">Từ 20 - 25 triệu</asp:ListItem>
                                                                        <asp:ListItem Value="25>">Trên 25 triệu</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </span>
                                                            </div>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                                <asp:Repeater ID="Repeater_Main" runat="server">
                                                    <ItemTemplate>
                                                        <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                                            <div class="tg-postbook">
                                                                <figure class="tg-featureimg">
                                                                    <div class="tg-bookimg">
                                                                        <div class="tg-frontcover">
                                                                            <img src='<%# Eval("Avatar") %>' />
                                                                        </div>
                                                                    </div>
                                                                    <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                        <i class="icon-heart"></i>
                                                                        <span>Thêm yêu thích</span>
                                                                    </a>
                                                                </figure>
                                                                <div class="tg-postbookcontent">
                                                                    <ul class="tg-bookscategories">
                                                                        <li><a href="javascript:void(0);">Trả góp 0%</a></li>
                                                                    </ul>
                                                                    <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                                    <div class="tg-booktitle">
                                                                        <h3><a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'><%# Eval("Title") %></a></h3>
                                                                    </div>
                                                                    <span class="tg-bookwriter"><a href="javascript:void(0);">Online giá rẻ</a></span>
                                                                    <span class="tg-stars"><span></span></span>
                                                                    <span class="tg-bookprice">
                                                                        <ins><%# Eval("Price","{0:n0}₫") %></ins>
                                                                        <del visible='<%# Eval("OldPrice").ToDouble() > 0 ? true : false %>'>
                                                                            <%# Eval("OldPrice","{0:n0}₫") %>
                                                                        </del>
                                                                    </span>
                                                                    <asp:UpdatePanel runat="server">
                                                                        <ContentTemplate>
                                                                            <asp:LinkButton runat="server"
                                                                                ID="LinkButton_Order"
                                                                                OnClick="LinkButton_Order_Click"
                                                                                ClientIDMode="AutoID"
                                                                                CommandArgument='<%# Eval("ProductID") %>'
                                                                                CommandName="1" class="tg-btn tg-btnstyletwo">
                                                                        <i class="fa fa-shopping-basket"></i>
                                                                        <em>Thêm giỏ hàng</em>
                                                                            </asp:LinkButton>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                            <div class="pagination-footer">
                                                <uc1:ucPagination runat="server" ID="ucPagination" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-left">
                                    <aside id="tg-sidebar" class="tg-sidebar">
                                        <uc1:ucSearchMini runat="server" ID="ucSearchMini" />
                                        <uc1:ucLeftCategory runat="server" ID="ucLeftCategory" />
                                        <uc1:ucLeftArticle runat="server" ID="ucLeftArticle" />
                                        <uc1:ucBestSellingProducts runat="server" ID="ucBestSellingProducts" />
                                        <div class="tg-widget tg-widgetinstagram">
                                            <div class="tg-widgettitle">
                                                <h3>Instagram</h3>
                                            </div>
                                            <div class="tg-widgetcontent">
                                                <ul>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-01.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-02.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-03.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-04.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-05.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-06.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-07.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-08.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                    <li>
                                                        <figure>
                                                            <img src="images/instagram/img-09.jpg" alt="image description">
                                                            <figcaption><a href="javascript:void(0);"><i class="icon-heart"></i><em>50,134</em></a></figcaption>
                                                        </figure>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </aside>
                                </div>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <!--************************************
                    News Grid End
            *************************************-->
    </main>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

