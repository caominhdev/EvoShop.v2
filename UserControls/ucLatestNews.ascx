<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLatestNews.ascx.cs" Inherits="ucLatestNews" %>

<section class="tg-sectionspace tg-haslayout article">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="tg-sectionhead">
                    <h2><span>Bài báo mới nhất</span>Tin tức nổi bật</h2>
                    <a class="tg-btn" href="/NewsList.aspx">Xem tất cả</a>
                </div>
            </div>
            <div id="tg-postslider" class="tg-postslider tg-blogpost owl-carousel">
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <article class="item tg-post">
                            <figure class="article-image-content">
                                <a href='<%# "/NewsDetail.aspx?id={0}&title={1}".StringFormat(Eval("ArticleID"), Eval("Title").ToUrlFormat()) %>'>
                                    <img src=' <%# Eval("Avatar") %>' />
                                </a>
                            </figure>
                            <div class="tg-postcontent">
                                <ul class="tg-bookscategories">
                                    <li class="article-update"><a href="javascript:void(0);"><%# Eval("CreateTime") %></a></li>
                                </ul>
                                <div class="tg-themetagbox"><span class="tg-themetag">Tin hot</span></div>
                                <div class="tg-posttitle">
                                    <h3 class="article-title">
                                        <a href='<%# "/NewsDetail.aspx?id={0}&title={1}".StringFormat(Eval("ArticleID"), Eval("Title").ToUrlFormat()) %>'>
                                            <%# Eval("Title") %>
                                        </a>
                                    </h3>
                                </div>
                                <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);"><%# Eval("CreateBy") %></a></span>
                                <ul class="tg-postmetadata">
                                    <%--<li><a href="javascript:void(0);"><i class="fa fa-comment-o"></i><i>415 Bình Luận</i></a></li>--%>
                                    <li><a href="javascript:void(0);"><i class="fa fa-eye"></i><i><%# Eval("Views") %> Lượt xem</i></a></li>
                                </ul>
                            </div>
                        </article>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
    </div>
</section>
