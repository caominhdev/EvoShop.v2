<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucReleatedProducts.ascx.cs" Inherits="ucReleatedProducts" %>

<div class="tg-relatedproducts">
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="tg-sectionhead">
            <h2><span>Sản phẩm tương tự</span>Có thể bạn sẽ thích</h2>
            <%--<a class="tg-btn" href="javascript:void(0);">Xem tất cả</a>--%>
        </div>
    </div>
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div id="tg-relatedproductslider" class="tg-relatedproductslider tg-relatedbooks owl-carousel">
            <asp:Repeater ID="Repeater_Main" runat="server">
                <ItemTemplate>
                    <div class="item">
                        <div class="tg-postbook">
                            <figure class="tg-featureimg">
                                <div class="tg-bookimg">
                                    <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>' class="tg-frontcover">
                                        <img src="<%# Eval("Avatar") %>" />
                                    </a>
                                </div>
                                <%-- <a class="tg-btnaddtowishlist" href="javascript:void(0);">
                                    <i class="icon-heart"></i>
                                    <span>Thêm Yêu thích</span>
                                </a>--%>
                            </figure>
                            <div class="tg-postbookcontent">
                                <ul class="tg-bookscategories">
                                    <li><a href="javascript:void(0);">Trả góp 0%</a></li>
                                </ul>
                                <div class="tg-themetagbox"><span class="tg-themetag">sale</span></div>
                                <div class="tg-booktitle">
                                    <h3>
                                        <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                            <%# Eval("Title").Left(30, true, true) %>
                                        </a>
                                    </h3>
                                </div>
                                <span class="tg-bookwriter"><a href="javascript:void(0);">Online Giá Rẻ</a></span>
                                <span class="tg-stars"><span></span></span>
                                <span class="tg-bookprice">
                                    <ins><%# Eval("Price","{0:n0}₫") %></ins>
                                    <del visible='<%# Eval("OldPrice").ToDouble() > 0 ? true : false %>'>
                                        <%# Eval("OldPrice","{0:n0}₫") %>
                                    </del>
                                </span>
                                <asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                        <asp:LinkButton runat="server"
                                            ID="LinkButton_Order"
                                            OnClick="LinkButton_Order_Click"
                                            ClientIDMode="AutoID"
                                            CommandArgument='<%# Eval("ProductID") %>'
                                            CommandName="1" class="tg-btn tg-btnstyletwo">
                                            <i class="fa fa-shopping-basket"></i>
                                            <em>Thêm giỏ hàng</em>
                                        </asp:LinkButton>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</div>
