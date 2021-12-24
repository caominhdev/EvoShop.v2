<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProductDetail.aspx.cs" Inherits="ProductDetail" %>

<%@ Register Src="~/UserControls/ucLeftCategory.ascx" TagPrefix="uc1" TagName="ucLeftCategory" %>
<%@ Register Src="~/UserControls/ucLeftArticle.ascx" TagPrefix="uc1" TagName="ucLeftArticle" %>
<%@ Register Src="~/UserControls/ucSearchMini.ascx" TagPrefix="uc1" TagName="ucSearchMini" %>
<%@ Register Src="~/UserControls/ucBestSellingProducts.ascx" TagPrefix="uc1" TagName="ucBestSellingProducts" %>
<%@ Register Src="~/UserControls/ucReleatedProducts.ascx" TagPrefix="uc1" TagName="ucReleatedProducts" %>
<%@ Register Src="~/UserControls/ucComment.ascx" TagPrefix="uc1" TagName="ucComment" %>







<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-innerbannercontent">
                        <h1>Chi tiết sản phẩm</h1>
                        <ol class="tg-breadcrumb">
                            <li><a href="indexv2.html">Trang chủ</a></li>
                            <li><a href="products.html">Sản phẩm</a></li>
                            <li class="tg-active">Chi tiết sản phẩm</li>
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
                    <div id="tg-twocolumns" class="tg-twocolumns">
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-left">
                            <div id="tg-content" class="tg-content">
                                <asp:Repeater ID="Repeater_Main" runat="server">
                                    <ItemTemplate>
                                        <div class="tg-productdetail">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                                                    <div class="tg-postbook featureimg-content">
                                                        <figure class="tg-featureimg featureimg-img">
                                                            <img alt="image description" src="<%# Eval("Avatar") %>" />
                                                        </figure>
                                                        <div class="tg-postbookcontent">
                                                            <span class="tg-bookprice">
                                                                <ins><%# Eval("Price","{0:n0}₫") %></ins>
                                                                <del visible='<%# Eval("OldPrice").ToDouble() > 0 ? true : false %>'>
                                                                    <%# Eval("OldPrice","{0:n0}₫") %>
                                                                </del>
                                                            </span>
                                                            <ul class="tg-delevrystock">
                                                                <li><i class="icon-rocket"></i><span>Giao hàng miễn phí</span></li>
                                                                <li><i class="icon-checkmark-circle"></i><span>Bảo hành chính hãng 1 năm</span></li>
                                                                <li><i class="icon-redo"></i><span>Hư gì đổi nấy trong 2 tháng</span></li>
                                                                <li><i class="icon-store"></i><span>Trạng  thái: <em>Còn hàng</em></span></li>
                                                            </ul>
                                                            <asp:UpdatePanel runat="server">
                                                                <ContentTemplate>
                                                                    <div class="tg-quantityholder">

                                                                        <asp:LinkButton runat="server"
                                                                            ID="LinkButton_Minus"
                                                                            OnClick="LinkButton_Minus_Click"
                                                                            ClientIDMode="AutoID"
                                                                            class="minus">-</asp:LinkButton>
                                                                        <input runat="server" readonly id="input_Quantity" value="1" type="text" />
                                                                        <asp:LinkButton runat="server"
                                                                            ID="LinkButton_Plus"
                                                                            OnClick="LinkButton_Plus_Click"
                                                                            ClientIDMode="AutoID"
                                                                            class="plus">+</asp:LinkButton>
                                                                    </div>

                                                                    <asp:LinkButton runat="server"
                                                                        ID="LinkButton_Order"
                                                                        OnClick="LinkButton_Order_Click"
                                                                        ClientIDMode="AutoID"
                                                                        CommandArgument='<%# Eval("ProductID") %>'
                                                                        CommandName="1" class="tg-btn tg-active tg-btn-lg">
                                                                      Thêm vào giỏ hàng
                                                                    </asp:LinkButton>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>

                                                            <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                                                <span>Thêm vào yêu thích</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                                                    <div class="tg-productcontent">
                                                        <ul class="tg-bookscategories">
                                                            <li><a href="javascript:void(0);">Trả góp 0%</a></li>
                                                        </ul>
                                                        <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                                        <div class="tg-booktitle">
                                                            <h3 style="line-height: 35px;"><%# Eval("Title") %></h3>
                                                        </div>
                                                        <span class="tg-bookwriter"><a href="javascript:void(0);">Online Giá Rẻ</a></span>
                                                        <span class="tg-stars"><span></span></span>
                                                        <div class="tg-share">
                                                            <span>Share:</span>
                                                            <ul class="tg-socialicons">
                                                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                                <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                                <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                            </ul>
                                                        </div>
                                                        <!--<div class="tg-description">
                                                        <p>Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore etdoloreat magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laborisi nisi ut aliquip ex ea commodo consequat aute.</p>
                                                        <p>Arure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla aetur excepteur sint occaecat cupidatat non proident, sunt in culpa quistan officia serunt mollit anim id est laborum sed ut perspiciatis unde omnis iste natus... <a href="javascript:void(0);">More</a></p>
                                                    </div>-->
                                                        <div class="tg-sectionhead">
                                                            <h2>Chi tiết sản phẩm</h2>
                                                        </div>
                                                        <ul class="tg-productinfo">
                                                            <%# Eval("Specification") %>
                                                        </ul>
                                                        <div class="tg-alsoavailable">
                                                            <figure>
                                                                <img style="opacity: 0.4;" src="images/img-02.jpg" alt="image description">
                                                                <figcaption>
                                                                    <h3>Khuyến mãi:</h3>
                                                                    <ul style="color: #000;">
                                                                        <li><span>Tặng Phiếu mua hàng 100,000đ áp dụng mua thẻ cào, thẻ game</span></li>
                                                                        <li><span>Giảm thêm 5% khi mua cùng sản phẩm bất kỳ có giá cao hơn</span></li>
                                                                        <li><span>Giảm 50% giá mua gói bảo hiểm rơi vỡ 6 tháng</span></li>
                                                                    </ul>
                                                                </figcaption>
                                                            </figure>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tg-productdescription">
                                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                        <div class="tg-sectionhead">
                                                            <h2>Mô tả sản phẩm</h2>
                                                        </div>
                                                        <ul class="tg-themetabs" role="tablist">
                                                            <li role="presentation" class="active"><a href="#description" data-toggle="tab">Mô tả</a></li>
                                                        </ul>
                                                        <div class="tg-tab-content tab-content">
                                                            <div role="tabpanel" class="tg-tab-pane tab-pane active" id="description">
                                                                <div class="tg-description">
                                                                    <%# Eval("Content") %>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <%--<div class="tg-aboutauthor">
                                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                        <div class="tg-sectionhead">
                                                            <h2>About Author</h2>
                                                        </div>
                                                        <div class="tg-authorbox">
                                                            <%--<figure class="tg-authorimg">
                                                                <img src="images/author/imag-24.jpg" alt="image description">
                                                            </figure>
                                                            <div class="tg-authorinfo">
                                                                <div class="tg-authorhead">
                                                                    <div class="tg-leftarea">
                                                                        <div class="tg-authorname">
                                                                            <h2><%# Eval("CreateBy") %></h2>
                                                                            <span>Author Since: <%# Eval("CreateTime") %></span>
                                                                        </div>
                                                                    </div>
                                                                    <div class="tg-rightarea">
                                                                        <ul class="tg-socialicons">
                                                                            <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                                            <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                                            <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                                            <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                                            <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div class="tg-description">
                                                                    <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                                </div>
                                                                <a class="tg-btn tg-active" href="javascript:void(0);">View All Books</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>--%>
                                                <uc1:ucComment runat="server" ID="ucComment" />

                                                <uc1:ucReleatedProducts runat="server" ID="ucReleatedProducts" />
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-right">
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

