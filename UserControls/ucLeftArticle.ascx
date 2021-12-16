<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLeftArticle.ascx.cs"
    Inherits="ucLeftArticle" %>

<div class="tg-widget tg-widgettrending">
    <div class="tg-widgettitle">
        <h3>Tin tức</h3>
    </div>
    <div class="tg-widgetcontent">
        <ul>
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <li>
                        <article class="tg-post">
                            <figure>
                                <a class="left-article-img" href='<%# "NewsDetail.aspx?id={0}&title={1}"
                                        .StringFormat(Eval("ArticleID"), Eval("Title")
                                        .ToUrlFormat()) %>'>
                                    <img src="<%# Eval("Avatar") %>"/>
                                </a>
                            </figure>
                            <div class="tg-postcontent">
                                <div class="tg-posttitle">
                                    <h3><a href='<%# "NewsDetail.aspx?id={0}&title={1}"
                                        .StringFormat(Eval("ArticleID"), Eval("Title")
                                        .ToUrlFormat()) %>'><%# Eval("Title").Left(50, true, true) %></a></h3>
                                </div>
                                <span class="tg-bookwriter">Đăng bởi: <a href="javascript:void(0);"><%# Eval("CreateBy") %></a></span>
                            </div>
                        </article>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</div>
