<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucPickedByAuthor.ascx.cs" Inherits="ucPickedByAuthor" %>

<section class="tg-sectionspace tg-haslayout">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="tg-sectionhead">
                    <h2><span>Khuyến mãi cực hot</span>Có thể bạn sẽ thích</h2>
                    <a class="tg-btn" href="Products.aspx">Xem tất cả</a>
                </div>
            </div>
            <div id="tg-pickedbyauthorslider" class="tg-pickedbyauthor tg-pickedbyauthorslider owl-carousel">
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <div class="item">
                            <div class="tg-postbook">
                                <figure class="tg-featureimg">
                                    <div class="tg-bookimg">
                                        <div class="tg-frontcover">
                                             <img src="<%# Eval("Avatar") %>" />
                                        </div>
                                    </div>
                                    <div class="tg-hovercontent">
                                        <div class="tg-description">
                                        </div>
                                        <strong class="tg-bookpage">Bộ nhớ: 256GB</strong>
                                        <strong class="tg-bookcategory">Chip: Apple A14 Bionic
                                        </strong>
                                        <strong class="tg-bookprice">Giá: <%# Eval("Price","{0:n0}₫") %></strong>
                                        <div class="tg-ratingbox"><span class="tg-stars"><span></span></span></div>
                                    </div>
                                </figure>
                                <div class="tg-postbookcontent">
                                    <div class="tg-booktitle">
                                        <h3><a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                            <%# Eval("Title").Left(30, true, true) %>
                                        </a></h3>
                                    </div>
                                    <span class="tg-bookwriter"><a href="ProductDetail.aspx">Online Giá Rẻ</a></span>
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
</section>
