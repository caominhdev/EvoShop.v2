<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<%@ Register Src="~/UserControls/ucBestSellingProducts.ascx" TagPrefix="uc1" TagName="ucBestSellingProducts" %>
<%@ Register Src="~/UserControls/ucLeftCategory.ascx" TagPrefix="uc1" TagName="ucLeftCategory" %>
<%@ Register Src="~/UserControls/ucLeftArticle.ascx" TagPrefix="uc1" TagName="ucLeftArticle" %>
<%@ Register Src="~/UserControls/ucPagination.ascx" TagPrefix="uc1" TagName="ucPagination" %>







<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-innerbannercontent">
                        <h1>Tất cả sản phẩm</h1>
                        <ol class="tg-breadcrumb">
                            <li><a href="javascript:void(0);">Trang chủ</a></li>
                            <li class="tg-active">Tất cả sản phẩm</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <main id="tg-main" class="tg-main tg-haslayout">
        <div class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <div id="tg-twocolumns" class="tg-twocolumns">
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-right">
                            <div id="tg-content" class="tg-content">
                                <div class="tg-products">
                                    <div class="tg-sectionhead">
                                        <h2><span>People’s Choice</span>Tất cả sản phẩm</h2>
                                    </div>
                                    <%--<div class="tg-featurebook alert featurebook-container" role="alert">
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <div class="tg-featureditm">
                                            <div class="row">
                                                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
                                                    <figure>
                                                        <img alt="image description" src="images/products/iphone-12-pro-max-xanh-duong-new-600x600-600x600-d0fd627a-ffa5-4297-9db4-e09f4cd78f6c.jpg" />
                                                    </figure>
                                                </div>
                                                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 right-content-featureditm">
                                                    <div class="tg-featureditmcontent">
                                                        <div class="tg-themetagbox"><span class="tg-themetag">Nổi bật</span></div>
                                                        <div class="tg-booktitle">
                                                            <h3><a href="javascript:void(0);">iPhone 12 Pro Max Chính Hãng (VN/A)</a></h3>
                                                        </div>
                                                        <span class="tg-bookwriter"><a href="javascript:void(0);">Online Giá Rẻ</a></span>
                                                        <span class="tg-stars"><span></span></span>
                                                        <div class="tg-priceandbtn">
                                                            <span class="tg-bookprice">
                                                                <ins>33.590.000đ</ins>
                                                                <del>34.590.000đ</del>
                                                            </span>
                                                            <a class="tg-btn tg-btnstyletwo tg-active" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Thêm vào giỏ hàng</em>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="tg-productgrid">
                                        <div class="tg-refinesearch">
                                            <span>Bộ lọc</span>
                                            <div class="tg-formtheme tg-formsortshoitems">
                                                <fieldset>
                                                    <div class="form-group">
                                                        <label>Xếp theo:</label>
                                                        <span class="tg-select">
                                                            <select>
                                                                <option>Tên A-Z</option>
                                                                <option>Tên Z-A</option>
                                                                <option>Giá thấp đến cao</option>
                                                                <option>Giá cao đến thấp</option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                    <!--<div class="form-group">
                                                            <label>Loại điện thoại:</label>
                                                            <span class="tg-select">
                                                                <select>
                                                                    <option>Android</option>
                                                                    <option>iPhone (iOS)</option>
                                                                    <option>Điện thoại phổ thông</option>
                                                                </select>
                                                            </span>
                                                        </div>-->
                                                    <div class="form-group">
                                                        <label>Giá:</label>
                                                        <span class="tg-select">
                                                            <select>
                                                                <option>Dưới 4 triệu</option>
                                                                <option>Từ 4 - 8 triệu</option>
                                                                <option>Từ 8 - 13 triệu</option>
                                                                <option>Từ 13 - 20 triệu</option>
                                                                <option>Từ 20 - 25 triệu</option>
                                                                <option>Trên 25 triệu</option>
                                                            </select>
                                                        </span>
                                                    </div>

                                                    <div class="form-group">
                                                        <label>Bộ nhớ trong:</label>
                                                        <span class="tg-select">
                                                            <select>
                                                                <option>8GB</option>
                                                                <option>16GB</option>
                                                                <option>32GB</option>
                                                                <option>64GB</option>
                                                                <option>128GB</option>
                                                                <option>256GB</option>
                                                                <option>512GB</option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>RAM:</label>
                                                        <span class="tg-select">
                                                            <select>
                                                                <option>1GB</option>
                                                                <option>2GB</option>
                                                                <option>3GB</option>
                                                                <option>4GB</option>
                                                                <option>6GB</option>
                                                                <option>8GB</option>
                                                                <option>12GB</option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Hãng điện thoại:</label>
                                                        <span class="tg-select">
                                                            <select>
                                                                <option>iPhone</option>
                                                                <option>Samsung</option>
                                                                <option>Oppo</option>
                                                                <option>Vivo</option>
                                                                <option>Xiaomi</option>
                                                                <option>Realme</option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Hãng laptop:</label>
                                                        <span class="tg-select">
                                                            <select>
                                                                <option>Gaming</option>
                                                                <option>Macbook</option>
                                                                <option>Học tập, văn phòng</option>
                                                                <option>Đồ họa, kỹ thuật</option>
                                                            </select>
                                                        </span>
                                                    </div>
                                                </fieldset>
                                            </div>
                                        </div>
                                        <%-- Product --%>
                                        <asp:Repeater ID="Repeater_Main" runat="server">
                                            <ItemTemplate>
                                                <div class="col-xs-6 col-sm-6 col-md-4 col-lg-3">
                                                    <div class="tg-postbook">
                                                        <figure class="tg-featureimg">
                                                            <div class="tg-bookimg">
                                                                <div class="tg-frontcover">
                                                                    <img alt="image description" src='<%# Eval("Avatar") %>' />
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
                                                                <h3>
                                                                    <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                                                        <%# Eval("Title") %>
                                                                    </a>
                                                                </h3>
                                                            </div>
                                                            <span class="tg-bookwriter"><a href="javascript:void(0);">Online giá rẻ</a></span>
                                                            <span class="tg-stars"><span></span></span>
                                                            <span class="tg-bookprice">
                                                                <ins>
                                                                    <%# Eval("Price","{0:n0}₫") %>

                                                                </ins>
                                                                <del visible='<%# Eval("OldPrice").ToDouble() > 0 ? true : false %>'>
                                                                    <%# Eval("OldPrice","{0:n0}₫") %>
                                                                </del>
                                                            </span>
                                                            <a class="tg-btn tg-btnstyletwo" href="javascript:void(0);">
                                                                <i class="fa fa-shopping-basket"></i>
                                                                <em>Thêm giỏ hàng</em>
                                                            </a>
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
                                <div class="tg-widget tg-widgetsearch">
                                    <div class="tg-formtheme tg-formsearch">
                                        <div class="form-group">
                                            <button type="submit"><i class="icon-magnifier"></i></button>
                                            <input autocomplete="off" type="search" name="search" class="form-group" placeholder="Tìm kiếm...">
                                        </div>
                                    </div>
                                </div>
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
                                <!--<div class="tg-widget tg-widgetblogers">
                                        <div class="tg-widgettitle">
                                            <h3>Top Bloogers</h3>
                                        </div>
                                        <div class="tg-widgetcontent">
                                            <ul>
                                                <li>
                                                    <div class="tg-author">
                                                        <figure><a href="javascript:void(0);"><img src="images/author/imag-03.jpg" alt="image description"></a></figure>
                                                        <div class="tg-authorcontent">
                                                            <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                            <span>21,658 Published Books</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="tg-author">
                                                        <figure><a href="javascript:void(0);"><img src="images/author/imag-04.jpg" alt="image description"></a></figure>
                                                        <div class="tg-authorcontent">
                                                            <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                            <span>21,658 Published Books</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="tg-author">
                                                        <figure><a href="javascript:void(0);"><img src="images/author/imag-05.jpg" alt="image description"></a></figure>
                                                        <div class="tg-authorcontent">
                                                            <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                            <span>21,658 Published Books</span>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="tg-author">
                                                        <figure><a href="javascript:void(0);"><img src="images/author/imag-06.jpg" alt="image description"></a></figure>
                                                        <div class="tg-authorcontent">
                                                            <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                            <span>21,658 Published Books</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>-->
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

