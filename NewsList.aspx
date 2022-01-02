<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="NewsList.aspx.cs" Inherits="NewsList" %>

<%@ Register Src="~/UserControls/ucSearchMini.ascx" TagPrefix="uc1" TagName="ucSearchMini" %>
<%@ Register Src="~/UserControls/ucLeftArticle.ascx" TagPrefix="uc1" TagName="ucLeftArticle" %>
<%@ Register Src="~/UserControls/ucLeftCategory.ascx" TagPrefix="uc1" TagName="ucLeftCategory" %>
<%@ Register Src="~/UserControls/ucBestSellingProducts.ascx" TagPrefix="uc1" TagName="ucBestSellingProducts" %>
<%@ Register Src="~/UserControls/ucPagination.ascx" TagPrefix="uc1" TagName="ucPagination" %>






<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Danh Sách Tin Tức</title>
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
                                        <asp:Repeater ID="Repeater_Main" runat="server">
                                            <ItemTemplate>
                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                    <article class="tg-post">
                                                        <figure>
                                                            <a class="newslist-article-img" href='<%# "/NewsDetail.aspx?id={0}&title={1}".StringFormat(Eval("ArticleID"), Eval("Title").ToUrlFormat()) %>'>
                                                                <img src=' <%# Eval("Avatar") %>' />
                                                            </a>
                                                        </figure>
                                                        <div class="tg-postcontent">
                                                            <ul class="tg-bookscategories">
                                                                <li><a href="javascript:void(0);"><%# Eval("CreateTime") %></a></li>
                                                            </ul>
                                                            <div class="tg-themetagbox"><span class="tg-themetag">Tin hot</span></div>
                                                            <div class="tg-posttitle">
                                                                <h3><a href='<%# "/NewsDetail.aspx?id={0}&title={1}".StringFormat(Eval("ArticleID"), Eval("Title").ToUrlFormat()) %>'>
                                                                    <%# Eval("Title") %>
                                                                </a></h3>
                                                            </div>
                                                            <div class="tg-description">
                                                                <p class="newslist-article-content"><%# Eval("Content").Left(100,true,true) %><a href="javascript:(0);">More</a></p>
                                                            </div>
                                                            <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);"><%# Eval("CreateBy") %></a></span>
                                                            <ul class="tg-postmetadata">
                                                                <%--<li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i><%# Eval("Views") %>Bình luận</i></a></li>--%>
                                                                <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i><%# Eval("Views") %> Lượt xem</i></a></li>
                                                            </ul>
                                                        </div>
                                                    </article>
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
                        <div class="col-xs-12 col-sm-4 col-md-4 col-lg-3 pull-right">
                            <aside id="tg-sidebar" class="tg-sidebar">
                                <uc1:ucSearchMini runat="server" ID="ucSearchMini" />
                                <uc1:ucLeftCategory runat="server" ID="ucLeftCategory" />
                                <uc1:ucLeftArticle runat="server" ID="ucLeftArticle" />
                                <uc1:ucBestSellingProducts runat="server" ID="ucBestSellingProducts" />
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

