<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<%@ Register Src="~/UserControls/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Thanh Toán</title>
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
                                        <input runat="server" id="input_FullName" autocomplete="off" type="text" name="name" placeholder="Nhập họ tên">

                                        <label style="font-weight: 600;" for="id">Số điện thoại</label>
                                        <input runat="server" id="input_Mobile" autocomplete="off" type="text" name="id" placeholder="Nhập số điện thoại">

                                        <label style="font-weight: 600;" for="address">Địa chỉ</label>
                                        <input runat="server" id="input_Address" autocomplete="off" type="text" name="address" placeholder="Nhập địa chỉ">

                                        <label style="font-weight: 600;" for="email">Email</label>
                                        <input runat="server" id="input_Email" autocomplete="off" type="text" name="email" placeholder="Nhập Email">

                                        <label style="font-weight: 600;" for="ghichu">Ghi chú</label>
                                        <textarea runat="server" id="textarea_Note" placeholder="Nhập Ghi chú"></textarea>
                                        <div style="display:inline-block">
                                            <uc1:ucMessage runat="server" ID="ucMessage" />
                                        </div>

                                        <div class="check-format">
                                            <label style="font-weight: 600;" for="address">Hình thức thanh toán</label>
                                            <div class="radio">
                                                <label>
                                                    <input runat="server" checked name="payment" id="radio_PaymentAtHome" type="radio" />Thanh toán tại nhà (Ship COD)
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label>
                                                    <input runat="server" name="payment" id="radio_PaymentOnline" type="radio" />Thanh toán trực tuyến (Qua Ngân Hàng)</label>
                                            </div>
                                            <div class="radio disabled">
                                                <label>
                                                    <input type="radio" name="optradio" disabled>Không trả</label>
                                            </div>
                                        </div>
                                        <asp:LinkButton runat="server"
                                            ID="LinkButton_Checkout"
                                            OnClick="LinkButton_Checkout_Click"
                                            class="btn btn-primary button-margintop">Thanh toán ngay
                                        </asp:LinkButton>

                                        <div class="back-index">
                                            <a href="Default.aspx">Quay lại trang chủ</a>
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

