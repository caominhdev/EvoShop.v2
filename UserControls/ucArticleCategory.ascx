<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucArticleCategory.ascx.cs" Inherits="ucArticleCategory" %>

<div class="tg-widget tg-catagories">
    <div class="tg-widgettitle">
        <h3>Loại tin tức</h3>
    </div>
    <div class="tg-widgetcontent">
        <ul>
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <li>
                        <a href='<%# "/NewsList.aspx?sid={0}&title={1}".StringFormat(Eval("ArticleCategoryID"), Eval("Title").ToUrlFormat()) %>'>
                            <span><%# Eval("Title") %></span>
                        </a>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</div>
