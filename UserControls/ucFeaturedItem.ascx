<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucFeaturedItem.ascx.cs" Inherits="ucFeaturedItem" %>

<section class="tg-bglight tg-haslayout">
    <div class="container">
        <div class="row">
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <div class="tg-featureditm">
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
                            <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                <img src="<%# Eval("Avatar") %>">
                            </a>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                            <div class="tg-featureditmcontent">
                                <div class="tg-themetagbox"><span class="tg-themetag">Nổi bật</span></div>
                                <div class="tg-booktitle">
                                    <h3><a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                        <%# Eval("Title").Left(30, true, true) %>
                                    </a></h3>
                                </div>
                                <span class="tg-bookwriter"><a href="productdetail.html">Online Giá Rẻ</a></span>
                                <span class="tg-stars"><span></span></span>
                                <div class="tg-priceandbtn">
                                    <span class="tg-bookprice">
                                        <ins><%# Eval("Price","{0:n0}₫") %></ins>
                                    </span>
                                    <asp:UpdatePanel runat="server">
                                        <ContentTemplate>
                                            <asp:LinkButton runat="server"
                                                ID="LinkButton_Order"
                                                OnClick="LinkButton_Order_Click"
                                                ClientIDMode="AutoID"
                                                CommandArgument='<%# Eval("ProductID") %>'
                                                CommandName="1" class="tg-btn tg-btnstyletwo tg-active">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Thêm giỏ hàng</em>
                                            </asp:LinkButton>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>
