<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucLeftCategory.ascx.cs"
    Inherits="ucLeftCategory" %>

<div class="tg-widget tg-catagories">
    <div class="tg-widgettitle">
        <h3>Phân loại</h3>
    </div>
    <div class="tg-widgetcontent">
        <ul>
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <li><a href='<%# "/ProductType.aspx?sid={0}&title={1}".StringFormat(Eval("ProductMainCategoryID"), Eval("Title").ToUrlFormat()) %>'>
                        <span><%# Eval("Title") %></span>
                        <em>
                            <%--<%# Eval("") %>--%>
                        </em>
                    </a>

                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</div>
