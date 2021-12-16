<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsList.aspx.cs" Inherits="NewsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-innerbannercontent">
                        <h1>Tin tức &amp; Bài báo</h1>
                        <ol class="tg-breadcrumb">
                            <li><a href="Default.aspx">Trang chủ</a></li>
                            <li class="tg-active">Tin tức</li>
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
                                <div class="tg-newslist">
                                    <div class="tg-sectionhead">
                                        <h2><span>24h Công Nghệ</span>Tin tức trong ngày nổi bật</h2>
                                    </div>
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <article class="tg-post">
                                                <figure>
                                                    <a class="newslist-article-img" href="newsdetail.html">
                                                        <img src="images/article/images-1.jpg" alt="image description" />
                                                    </a>
                                                </figure>
                                                <div class="tg-postcontent">
                                                    <ul class="tg-bookscategories">
                                                        <li><a href="javascript:void(0);">24/11/2021</a></li>
                                                    </ul>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">Tin hot</span></div>
                                                    <div class="tg-posttitle">
                                                        <h3><a class="newslist-article-title" href="newsdetail.html">Cách cập nhật iOS 15.1.1 trên iPhone, giúp bạn giải quyết tình trạng gián đoạn cuộc gọi trong một nốt nhạc</a></h3>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p class="newslist-article-content">Bạn đang tò mò về giá Samsung Galaxy Note 20 hiện tại bao nhiêu? Có được khuyến mãi gì không? Tiết lộ với bạn ngay là máy đang được giảm sốc đến 8 triệu đồng trong tháng 11, đặc biệt khi mua còn được tặng voucher lên đời trị giá đến 6 triệu đồng. Ưu đãi ngon thế này đừng bỏ lỡ bạn nhé!... <a href="javascript:(0);">More</a></p>
                                                    </div>
                                                    <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);">Thái Hảo</a></span>
                                                    <ul class="tg-postmetadata">
                                                        <li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i>415 Bình luận</i></a></li>
                                                        <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i>1565 Lượt xem</i></a></li>
                                                    </ul>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <article class="tg-post">
                                                <figure>
                                                    <a class="newslist-article-img" href="newsdetail.html">
                                                        <img src="images/article/images-1.jpg" alt="image description" />
                                                    </a>
                                                </figure>
                                                <div class="tg-postcontent">
                                                    <ul class="tg-bookscategories">
                                                        <li><a href="javascript:void(0);">24/11/2021</a></li>
                                                    </ul>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">Tin hot</span></div>
                                                    <div class="tg-posttitle">
                                                        <h3><a class="newslist-article-title" href="newsdetail.html">Cách cập nhật iOS 15.1.1 trên iPhone, giúp bạn giải quyết tình trạng gián đoạn cuộc gọi trong một nốt nhạc</a></h3>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p class="newslist-article-content">Bạn đang tò mò về giá Samsung Galaxy Note 20 hiện tại bao nhiêu? Có được khuyến mãi gì không? Tiết lộ với bạn ngay là máy đang được giảm sốc đến 8 triệu đồng trong tháng 11, đặc biệt khi mua còn được tặng voucher lên đời trị giá đến 6 triệu đồng. Ưu đãi ngon thế này đừng bỏ lỡ bạn nhé!... <a href="javascript:(0);">More</a></p>
                                                    </div>
                                                    <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);">Thái Hảo</a></span>
                                                    <ul class="tg-postmetadata">
                                                        <li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i>415 Bình luận</i></a></li>
                                                        <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i>1565 Lượt xem</i></a></li>
                                                    </ul>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <article class="tg-post">
                                                <figure>
                                                    <a class="newslist-article-img" href="newsdetail.html">
                                                        <img src="images/article/images-1.jpg" alt="image description" />
                                                    </a>
                                                </figure>
                                                <div class="tg-postcontent">
                                                    <ul class="tg-bookscategories">
                                                        <li><a href="javascript:void(0);">24/11/2021</a></li>
                                                    </ul>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">Tin hot</span></div>
                                                    <div class="tg-posttitle">
                                                        <h3><a class="newslist-article-title" href="newsdetail.html">Cách cập nhật iOS 15.1.1 trên iPhone, giúp bạn giải quyết tình trạng gián đoạn cuộc gọi trong một nốt nhạc</a></h3>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p class="newslist-article-content">Bạn đang tò mò về giá Samsung Galaxy Note 20 hiện tại bao nhiêu? Có được khuyến mãi gì không? Tiết lộ với bạn ngay là máy đang được giảm sốc đến 8 triệu đồng trong tháng 11, đặc biệt khi mua còn được tặng voucher lên đời trị giá đến 6 triệu đồng. Ưu đãi ngon thế này đừng bỏ lỡ bạn nhé!... <a href="javascript:(0);">More</a></p>
                                                    </div>
                                                    <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);">Thái Hảo</a></span>
                                                    <ul class="tg-postmetadata">
                                                        <li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i>415 Bình luận</i></a></li>
                                                        <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i>1565 Lượt xem</i></a></li>
                                                    </ul>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <article class="tg-post">
                                                <figure>
                                                    <a class="newslist-article-img" href="newsdetail.html">
                                                        <img src="images/article/images-1.jpg" alt="image description" />
                                                    </a>
                                                </figure>
                                                <div class="tg-postcontent">
                                                    <ul class="tg-bookscategories">
                                                        <li><a href="javascript:void(0);">24/11/2021</a></li>
                                                    </ul>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">Tin hot</span></div>
                                                    <div class="tg-posttitle">
                                                        <h3><a class="newslist-article-title" href="newsdetail.html">Cách cập nhật iOS 15.1.1 trên iPhone, giúp bạn giải quyết tình trạng gián đoạn cuộc gọi trong một nốt nhạc</a></h3>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p class="newslist-article-content">Bạn đang tò mò về giá Samsung Galaxy Note 20 hiện tại bao nhiêu? Có được khuyến mãi gì không? Tiết lộ với bạn ngay là máy đang được giảm sốc đến 8 triệu đồng trong tháng 11, đặc biệt khi mua còn được tặng voucher lên đời trị giá đến 6 triệu đồng. Ưu đãi ngon thế này đừng bỏ lỡ bạn nhé!... <a href="javascript:(0);">More</a></p>
                                                    </div>
                                                    <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);">Thái Hảo</a></span>
                                                    <ul class="tg-postmetadata">
                                                        <li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i>415 Bình luận</i></a></li>
                                                        <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i>1565 Lượt xem</i></a></li>
                                                    </ul>
                                                </div>
                                            </article>
                                        </div>
                                        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <article class="tg-post">
                                                <figure>
                                                    <a class="newslist-article-img" href="newsdetail.html">
                                                        <img src="images/article/images-1.jpg" alt="image description" />
                                                    </a>
                                                </figure>
                                                <div class="tg-postcontent">
                                                    <ul class="tg-bookscategories">
                                                        <li><a href="javascript:void(0);">24/11/2021</a></li>
                                                    </ul>
                                                    <div class="tg-themetagbox"><span class="tg-themetag">Tin hot</span></div>
                                                    <div class="tg-posttitle">
                                                        <h3><a class="newslist-article-title" href="newsdetail.html">Cách cập nhật iOS 15.1.1 trên iPhone, giúp bạn giải quyết tình trạng gián đoạn cuộc gọi trong một nốt nhạc</a></h3>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p class="newslist-article-content">Bạn đang tò mò về giá Samsung Galaxy Note 20 hiện tại bao nhiêu? Có được khuyến mãi gì không? Tiết lộ với bạn ngay là máy đang được giảm sốc đến 8 triệu đồng trong tháng 11, đặc biệt khi mua còn được tặng voucher lên đời trị giá đến 6 triệu đồng. Ưu đãi ngon thế này đừng bỏ lỡ bạn nhé!... <a href="javascript:(0);">More</a></p>
                                                    </div>
                                                    <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);">Thái Hảo</a></span>
                                                    <ul class="tg-postmetadata">
                                                        <li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i>415 Bình luận</i></a></li>
                                                        <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i>1565 Lượt xem</i></a></li>
                                                    </ul>
                                                </div>
                                            </article>
                                        </div>
                                    </div>
                                    <div class="pagination-footer">
                                        <nav aria-label="...">
                                            <ul class="pagination">
                                                <li class="page-item">
                                                    <a class="page-link" href="#"><< </a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">1</a>
                                                </li>
                                                <li class="page-item" aria-current="page">
                                                    <a class="page-link" href="#">2</a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">3</a>
                                                </li>
                                                <li class="page-item">
                                                    <a class="page-link" href="#">>> </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-right">
                            <aside id="tg-sidebar" class="tg-sidebar">
                                <div class="tg-widget tg-widgetsearch">
                                    <form class="tg-formtheme tg-formsearch">
                                        <div class="form-group">
                                            <button type="submit"><i class="icon-magnifier"></i></button>
                                            <input autocomplete="off" type="search" name="search" class="form-group" placeholder="Tìm kiếm tin tức...">
                                        </div>
                                    </form>
                                </div>
                                <div class="tg-widget tg-catagories">
                                    <div class="tg-widgettitle">
                                        <h3>Loại tin tức</h3>
                                    </div>
                                    <div class="tg-widgetcontent">
                                        <ul>
                                            <li><a href="javascript:void(0);"><span>Mới nhất</span><em>25</em></a></li>
                                            <li><a href="javascript:void(0);"><span>Sản phẩm mới</span><em>56</em></a></li>
                                            <li><a href="javascript:void(0);"><span>Đánh giá</span><em>54</em></a></li>
                                            <li><a href="javascript:void(0);"><span>Mẹo hay</span><em>47</em></a></li>
                                            <li><a href="javascript:void(0);"><span>Tư vấn</span><em>54</em></a></li>
                                            <li><a href="javascript:void(0);"><span>Sự kiện</span><em>44</em></a></li>
                                            <li><a href="javascript:void(0);"><span>Khuyến mãi</span><em>65</em></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="tg-widget tg-widgettrending">
                                    <div class="tg-widgettitle">
                                        <h3>Thảo luận nhiều</h3>
                                    </div>
                                    <div class="tg-widgetcontent">
                                        <ul>
                                            <li>
                                                <article class="tg-post">
                                                    <figure>
                                                        <a class="left-article-img" href="newsdetail.html">
                                                            <img src="images/article/images-1.jpg" alt="image description" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-postcontent">
                                                        <div class="tg-posttitle">
                                                            <h3><a class="tilte-left-widgetcontent" href="newsdetail.html">Chỉ có tại Evo Mobile: Mách bạn cách mua bàn phím Huawei Matepad 11 trị giá 2.48 triệu đồng với giá chỉ 10.000 đồng</a></h3>
                                                        </div>
                                                        <span class="tg-bookwriter">Đăng bởi: <a href="newsdetail.html">Thái Hảo</a></span>
                                                    </div>
                                                </article>
                                            </li>
                                            <li>
                                                <article class="tg-post">
                                                    <figure>
                                                        <a class="left-article-img" href="newsdetail.html">
                                                            <img src="images/article/images-2.jpg" alt="image description" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-postcontent">
                                                        <div class="tg-posttitle">
                                                            <h3><a class="tilte-left-widgetcontent" href="newsdetail.html">Chỉ có tại Evo Mobile: Mách bạn cách mua bàn phím Huawei Matepad 11 trị giá 2.48 triệu đồng với giá chỉ 10.000 đồng</a></h3>
                                                        </div>
                                                        <span class="tg-bookwriter">Đăng bởi: <a href="newsdetail.html">Thái Hảo</a></span>
                                                    </div>
                                                </article>
                                            </li>
                                            <li>
                                                <article class="tg-post">
                                                    <figure>
                                                        <a class="left-article-img" href="newsdetail.html">
                                                            <img src="images/article/images-3.jpg" alt="image description" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-postcontent">
                                                        <div class="tg-posttitle">
                                                            <h3><a class="tilte-left-widgetcontent" href="newsdetail.html">Chỉ có tại Evo Mobile: Mách bạn cách mua bàn phím Huawei Matepad 11 trị giá 2.48 triệu đồng với giá chỉ 10.000 đồng</a></h3>
                                                        </div>
                                                        <span class="tg-bookwriter">Đăng bởi: <a href="newsdetail.html">Thái Hảo</a></span>
                                                    </div>
                                                </article>
                                            </li>
                                            <li>
                                                <article class="tg-post">
                                                    <figure>
                                                        <a class="left-article-img" href="newsdetail.html">
                                                            <img src="images/article/images-4.jpg" alt="image description" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-postcontent">
                                                        <div class="tg-posttitle">
                                                            <h3><a class="tilte-left-widgetcontent" href="newsdetail.html">Chỉ có tại Evo Mobile: Mách bạn cách mua bàn phím Huawei Matepad 11 trị giá 2.48 triệu đồng với giá chỉ 10.000 đồng</a></h3>
                                                        </div>
                                                        <span class="tg-bookwriter">Đăng bởi: <a href="newsdetail.html">Thái Hảo</a></span>
                                                    </div>
                                                </article>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
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
                                            <h3>Top </h3>
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
                                                        <figure><a href="javascript:void(0);"><img src="images/author/imag-03.jpg" alt="image description"></a></figure>
                                                        <div class="tg-authorcontent">
                                                            <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                            <span>21,658 Published Books</span>
                                                        </div>
                                                    </div>
                                                </li>
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
                                                        <figure><a href="javascript:void(0);"><img src="images/author/imag-03.jpg" alt="image description"></a></figure>
                                                        <div class="tg-authorcontent">
                                                            <h2><a href="javascript:void(0);">Jude Morphew</a></h2>
                                                            <span>21,658 Published Books</span>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>-->
                                <div class="tg-widget tg-widgetblogers">
                                    <div class="tg-widgettitle">
                                        <h3>Sản phẩm bán chạy</h3>
                                    </div>
                                    <div class="tg-widgetcontent">
                                        <ul>
                                            <li>
                                                <div class="tg-author">
                                                    <figure>
                                                        <a href="productdetail.html" class="img-left-widgetcontent">
                                                            <img alt="image description" src="images/products/iphone-12-pro-max-xanh-duong-new-600x600-600x600-d0fd627a-ffa5-4297-9db4-e09f4cd78f6c.jpg" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-authorcontent">
                                                        <h2 class="tilte-left-widgetcontent"><a href="productdetail.html">iPhone 12 Pro Max Xanh Dương New</a></h2>
                                                        <span>33.490.000đ</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tg-author">
                                                    <figure>
                                                        <a href="productdetail.html" class="img-left-widgetcontent">
                                                            <img alt="image description" src="images/products/iphone-12-pro-max-xanh-duong-new-600x600-600x600-d0fd627a-ffa5-4297-9db4-e09f4cd78f6c.jpg" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-authorcontent">
                                                        <h2 class="tilte-left-widgetcontent"><a href="productdetail.html">iPhone 12 Pro Max Xanh Dương New</a></h2>
                                                        <span>33.490.000đ</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tg-author">
                                                    <figure>
                                                        <a href="productdetail.html" class="img-left-widgetcontent">
                                                            <img alt="image description" src="images/products/iphone-12-pro-max-xanh-duong-new-600x600-600x600-d0fd627a-ffa5-4297-9db4-e09f4cd78f6c.jpg" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-authorcontent">
                                                        <h2 class="tilte-left-widgetcontent"><a href="productdetail.html">iPhone 12 Pro Max Xanh Dương New</a></h2>
                                                        <span>33.490.000đ</span>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="tg-author">
                                                    <figure>
                                                        <a href="productdetail.html" class="img-left-widgetcontent">
                                                            <img alt="image description" src="images/products/iphone-12-pro-max-xanh-duong-new-600x600-600x600-d0fd627a-ffa5-4297-9db4-e09f4cd78f6c.jpg" />
                                                        </a>
                                                    </figure>
                                                    <div class="tg-authorcontent">
                                                        <h2 class="tilte-left-widgetcontent"><a href="productdetail.html">iPhone 12 Pro Max Xanh Dương New</a></h2>
                                                        <span>33.490.000đ</span>
                                                    </div>
                                                </div>
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

