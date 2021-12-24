<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsDetail.aspx.cs" Inherits="NewsDetail" %>

<%@ Register Src="~/UserControls/ucSearchMini.ascx" TagPrefix="uc1" TagName="ucSearchMini" %>
<%@ Register Src="~/UserControls/ucLeftCategory.ascx" TagPrefix="uc1" TagName="ucLeftCategory" %>
<%@ Register Src="~/UserControls/ucLeftArticle.ascx" TagPrefix="uc1" TagName="ucLeftArticle" %>
<%@ Register Src="~/UserControls/ucBestSellingProducts.ascx" TagPrefix="uc1" TagName="ucBestSellingProducts" %>
<%@ Register Src="~/UserControls/BottomArticle.ascx" TagPrefix="uc1" TagName="BottomArticle" %>






<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="tg-innerbanner tg-haslayout tg-parallax tg-bginnerbanner" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-07.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-innerbannercontent">
                        <h1>Chi tiết tin tức</h1>
                        <ol class="tg-breadcrumb">
                            <li><a href="Default.aspx">Trang chủ</a></li>
                            <li><a href="Newslist.aspx">Tin tức</a></li>
                            <li class="tg-active">Chi tiết tin tức</li>
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
                        <!--<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <figure class="tg-newsdetailimg newsdetailimg-image">
                                    <img class="newsdetailimg-image-img" src="images/banner/banner_5.jpg" alt="image description"/>
                                    <figcaption class="tg-author">
                                        <img src="images/author/imag-26.jpg" alt="image description">
                                        <div class="tg-authorinfo">
                                            <span class="tg-bookwriter">By: <a href="javascript:void(0);">Angela Gunning</a></span>
                                            <ul class="tg-postmetadata">
                                                <li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i>21,415 Comments</i></a></li>
                                                <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i>24,565 Views</i></a></li>
                                            </ul>
                                        </div>
                                    </figcaption>
                                </figure>
                            </div>-->
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-9 pull-left">
                            <div id="tg-content" class="tg-content">
                                <asp:Repeater ID="Repeater_Main" runat="server">
                                    <ItemTemplate>
                                        <div class="tg-newsdetail">
                                            <ul class="tg-bookscategories">
                                                <li><a href="javascript:void(0);"><%# Eval("CreateTime","{0:dd/MM/yyyy}") %></a></li>
                                            </ul>
                                            <div class="tg-themetagbox"><span class="tg-themetag">TIN HOT</span></div>
                                            <div class="tg-posttitle">
                                                <h3 style="text-transform: uppercase; line-height: 35px;">
                                                    <a href="javascript:void(0);">
                                                        <%# Eval("Title") %>
                                                    </a>
                                                </h3>
                                            </div>
                                            <div class="tg-description">
                                                <%# Eval("Content") %>
                                            </div>
                                            <div class="tg-tagsshare">
                                                <div class="tg-tags">
                                                    <span>Tags:</span>
                                                    <div class="tg-tagholder">
                                                        <a class="tg-tag" href="Newslist.aspx">Khuyến mãi</a>
                                                        <a class="tg-tag" href="Newslist.aspx;">Đánh giá</a>
                                                        <a class="tg-tag" href="Newslist.aspx">Mẹo hay</a>
                                                        <a class="tg-tag" href="Newslist.aspx">Sự kiện</a>
                                                    </div>
                                                </div>
                                                <div class="tg-socialshare">
                                                    <span>Share:</span>
                                                    <ul class="tg-socialicons">
                                                        <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                                        <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                        <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                        <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                                        <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                                                        <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                                        <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="tg-authorbox">
                                                <%--<figure class="tg-authorimg">
                                                <img src='<%# Eval("Avatar") %>' alt="image description">
                                            </figure>--%>
                                                <div class="tg-authorinfo">
                                                    <div class="tg-authorhead">
                                                        <div class="tg-leftarea">
                                                            <div class="tg-authorname">
                                                                <span>Người đăng:</span>
                                                                <h2 style="line-height: 20px;"><%# Eval("CreateBy") %></h2>
                                                                <span><%# Eval("CreateTime","{0:dd/MM/yyyy}") %></span>
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
                                                    <%-- <div class="tg-description">
                                                    <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                </div>
                                                <a class="tg-btn tg-active" href="javascript:void(0);">View All Books</a>--%>
                                                </div>
                                            </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                                <uc1:BottomArticle runat="server" ID="BottomArticle" />

                                <!--<div class="tg-commentsarea">
                                            <div class="tg-sectionhead">
                                                <h2>03 Comments</h2>
                                            </div>
                                            <ul id="tg-comments" class="tg-comments">
                                                <li>
                                                    <div class="tg-authorbox">
                                                        <figure class="tg-authorimg">
                                                            <img src="images/author/imag-24.jpg" alt="image description">
                                                        </figure>
                                                        <div class="tg-authorinfo">
                                                            <div class="tg-authorhead">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-authorname">
                                                                        <h2>Kathrine Culbertson</h2>
                                                                        <span>Author Since: June 27, 2017</span>
                                                                    </div>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <a class="tg-btnreply" href="javascript:void(0);">Reply<i class="fa fa-mail-reply"></i></a>
                                                                </div>
                                                            </div>
                                                            <div class="tg-description">
                                                                <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                            </div>
                                                        </div>
                                                        <div class="tg-bottomarrow"></div>
                                                    </div>
                                                    <ul class="tg-childcomment">
                                                        <li>
                                                            <div class="tg-authorbox">
                                                                <figure class="tg-authorimg">
                                                                    <img src="images/author/imag-24.jpg" alt="image description">
                                                                </figure>
                                                                <div class="tg-authorinfo">
                                                                    <div class="tg-authorhead">
                                                                        <div class="tg-leftarea">
                                                                            <div class="tg-authorname">
                                                                                <h2>Kathrine Culbertson</h2>
                                                                                <span>Author Since: June 27, 2017</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="tg-rightarea">
                                                                            <a class="tg-btnreply" href="javascript:void(0);">Reply<i class="fa fa-mail-reply"></i></a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="tg-description">
                                                                        <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                                    </div>
                                                                </div>
                                                                <div class="tg-bottomarrow"></div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <div class="tg-authorbox">
                                                        <figure class="tg-authorimg">
                                                            <img src="images/author/imag-24.jpg" alt="image description">
                                                        </figure>
                                                        <div class="tg-authorinfo">
                                                            <div class="tg-authorhead">
                                                                <div class="tg-leftarea">
                                                                    <div class="tg-authorname">
                                                                        <h2>Kathrine Culbertson</h2>
                                                                        <span>Author Since: June 27, 2017</span>
                                                                    </div>
                                                                </div>
                                                                <div class="tg-rightarea">
                                                                    <a class="tg-btnreply" href="javascript:void(0);">Reply<i class="fa fa-mail-reply"></i></a>
                                                                </div>
                                                            </div>
                                                            <div class="tg-description">
                                                                <p>Laborum sed ut perspiciatis unde omnis iste natus sit voluptatem accusantium doloremque laudantium totam rem aperiam eaque ipsa quae ab illo inventore veritatis etation.</p>
                                                            </div>
                                                        </div>
                                                        <div class="tg-bottomarrow"></div>
                                                    </div>
                                                </li>
                                                <li class="tg-loadmore"><a class="tg-btn tg-active" href="javascript:void(0);">View All</a></li>
                                            </ul>
                                        </div>
                                        <div class="tg-leaveyourcomment">
                                            <div class="tg-sectionhead">
                                                <h2>Leave Your Comment</h2>
                                            </div>
                                            <form class="tg-formtheme tg-formleavecomment">
                                                <fieldset>
                                                    <div class="form-group">
                                                        <input type="text" name="full name" class="form-control" placeholder="First Name*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" name="last name" class="form-control" placeholder="Last Name*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="email" name="email address" class="form-control" placeholder="Email*">
                                                    </div>
                                                    <div class="form-group">
                                                        <input type="text" name="subject" class="form-control" placeholder="Subject (optional)">
                                                    </div>
                                                    <div class="form-group">
                                                        <textarea placeholder="Comment"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <a class="tg-btn tg-active" href="javascript:void(0);">Submit</a>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>-->
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-right">
                        <aside id="tg-sidebar" class="tg-sidebar">
                            <uc1:ucSearchMini runat="server" ID="ucSearchMini" />
                            <uc1:ucLeftCategory runat="server" ID="ucLeftCategory" />
                            <uc1:ucLeftArticle runat="server" ID="ucLeftArticle" />
                            <uc1:ucBestSellingProducts runat="server" ID="ucBestSellingProducts" />
                            <!--<div class="tg-widget tg-widgetinstagram">
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
                                    </div>-->

                        </aside>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

