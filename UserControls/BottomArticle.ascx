<%@ Control Language="C#" AutoEventWireup="true" CodeFile="BottomArticle.ascx.cs" Inherits="BottomArticle" %>

<div class="tg-nextprevpost">
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="tg-prevpost tg-prevpost--bottom">
                <a href='<%# "/NewsDetail.aspx?id={0}&title={1}".StringFormat(Eval("ArticleID"), Eval("Title").ToUrlFormat()) %>'>
                    <figure class="nextprevpost-img">
                        <img src=" <%# Eval("Avatar") %> " />
                    </figure>
                    <div class="tg-posttitle">
                        <h3 class="tg-prevpost-title"><%# Eval("Title") %></h3>
                        <span>Đăng bởi: <%# Eval("CreateBy") %></span>
                    </div>
                </a>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</div>
