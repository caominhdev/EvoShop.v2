<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucNewRelease.ascx.cs" Inherits="ucNewRelease" %>

<section class="tg-sectionspace tg-haslayout">
    <div class="container">
        <div class="row">
            <div class="tg-newrelease">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div class="tg-sectionhead">
                        <h2><span>cập nhật 24h</span>Sản phẩm mới</h2>
                    </div>
                    <%--<div class="tg-description">
                        <p>
                            iPhone 12 ra mắt với vai trò mở ra một kỷ nguyên hoàn toàn mới. Tốc độ mạng 5G siêu tốc, bộ vi xử lý A14 Bionic nhanh nhất thế giới smartphone, màn hình OLED tràn cạnh tuyệt đẹp và camera siêu chụp đêm, tất cả đều có mặt trên iPhone 12.
                        </p>
                    </div>--%>
                    <div class="tg-btns">
                        <a class="tg-btn tg-active" href="Products.aspx">Xem tất cả</a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div class="row">
                        <div class="tg-newreleasebooks">
                            <asp:Repeater ID="Repeater_Main" runat="server">
                                <ItemTemplate>
                                    <div class="col-xs-4 col-sm-4 col-md-6 col-lg-4">
                                        <div class="tg-postbook">
                                            <figure class="tg-featureimg">
                                                <div class="tg-bookimg">
                                                    <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                                        <div class="tg-frontcover">
                                                            <img src='<%# Eval("Avatar") %>' />
                                                        </div>
                                                    </a>
                                                </div>
                                                <a class="tg-btnaddtowishlist" href="#">
                                                    <i class="icon-heart"></i>
                                                    <span>Thêm Yêu thích</span>
                                                </a>
                                            </figure>
                                            <div class="tg-postbookcontent">
                                                <ul class="tg-bookscategories">
                                                    <li><a href="javascript:void(0);">Trả góp 0%</a></li>
                                                </ul>
                                                <div class="tg-booktitle">
                                                    <h3><a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                                        <%# Eval("Title").Left(30, true, true) %>
                                                    </a></h3>
                                                </div>
                                                <span class="tg-bookwriter"><a href="productdetail.html">Online Giá Rẻ</a></span>
                                                <span class="tg-stars"><span></span></span>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
