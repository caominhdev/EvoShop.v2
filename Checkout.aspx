<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main id="tg-main" class="tg-main tg-haslayout">
        <div class="tg-sectionspace tg-haslayout">
            <div class="wrapper-login">
                <div class="clear" style="clear: both;"></div>
                <div class="main-account-login">
                    <div class="container-login">
                        <div class="account-content-login">
                            <div class="login-item-login">
                                <div class="account-form">
                                    <div action="">
                                        <div class="tittle">
                                            <h2 style="text-align: center;">Thanh toán</h2>
                                            <p>Nhập thông tin giao hàng hoặc <span><a href="login.html" class="account-form-login">Đăng nhập</a></span> để lấy thông tin từ tài khoản.</p>
                                        </div>
                                        <label style="font-weight: 600;" for="name">Họ Tên</label>
                                        <input autocomplete="off" type="text" name="name" id="name" placeholder="Nhập họ tên">

                                        <label style="font-weight: 600;" for="id">Số điện thoại</label>
                                        <input autocomplete="off" type="text" name="id" id="id" placeholder="Nhập số điện thoại">

                                        <label style="font-weight: 600;" for="address">Địa chỉ</label>
                                        <input autocomplete="off" type="text" name="address" id="address" placeholder="Nhập địa chỉ">

                                        <label style="font-weight: 600;" for="email">Email</label>
                                        <input autocomplete="off" type="text" name="email" id="email" placeholder="Nhập Email">

                                        <label style="font-weight: 600;" for="ghichu">Ghi chú</label>
                                        <textarea placeholder="Nhập Ghi chú"></textarea>

                                        <div class="check-format">
                                            <label style="font-weight: 600;" for="address">Hình thức thanh toán</label>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optradio" checked>Thanh toán tại nhà (Ship COD)</label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input type="radio" name="optradio">Thanh toán trực tuyến (Qua Ngân Hàng)</label>
                                            </div>
                                            <div class="radio disabled">
                                                <label>
                                                    <input type="radio" name="optradio" disabled>Không trả</label>
                                            </div>
                                        </div>
                                        <button class="button-margintop" type="submit">THANH TOÁN NGAY</button>
                                        <div class="back-index">
                                            <a href="indexv2.html">Quay lại trang chủ</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

