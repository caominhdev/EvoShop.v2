<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucBestSellingProducts.ascx.cs" Inherits="ucBestSellingProducts" %>

<div class="tg-widget tg-widgetblogers">
    <div class="tg-widgettitle">
        <h3>Sản phẩm bán chạy</h3>
    </div>
    <div class="tg-widgetcontent">
        <ul>
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <li>
                        <div class="tg-author">
                            <figure>
                                <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>' class="img-left-widgetcontent">
                                    <img src='<%# Eval("Avatar") %>' />
                                </a>
                            </figure>
                            <div class="tg-authorcontent">
                                <h2 class="tilte-left-widgetcontent"><a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'><%# Eval("Title") %></a></h2>
                                <span><%# Eval("Price", "{0:n0}đ") %></span>
                            </div>
                        </div>
                    </li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
    </div>
</div>
