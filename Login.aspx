<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="~/UserControls/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main id="tg-main" class="tg-main tg-haslayout">
        <div class="tg-sectionspace tg-haslayout">
            <div class="wrapper-login">
                <div class="main-account-login">
                    <div class="container-login">
                        <div class="account-content-login">
                            <asp:UpdatePanel runat="server">
                                <ContentTemplate>
                                    <div class="login-item-login">
                                        <div class="tab">
                                            <a href="#" class="login" style="border-bottom: #77b748 solid 2px;">Đăng nhập</a>
                                            <a href="Register.aspx" class="regis">Đăng ký</a>
                                        </div>
                                        <div class="account-form">
                                            <asp:Panel DefaultButton="Button_Login" runat="server">
                                                <div class="tittle">
                                                    <h2 style="text-align: center;">Chào mừng bạn trở lại Evo Mobile!</h2>
                                                    <p style="float: left; width: 100%; margin: 3px 0;">
                                                        Bắt đầu kết nối với hàng triệu chuyên
                                                        gia và khách hàng.
                                                    </p>
                                                </div>
                                                <label for="input_MobileEmail" style="font-weight: 600;">Số điện thoại/Email</label>
                                                <input class="" style="text-transform: lowercase" autocomplete="off" type="text"
                                                    runat="server" id="input_MobileEmail" placeholder="Nhập số điện thoại/email">
                                                <label for="input_Password" style="font-weight: 600;">Mật khẩu</label>
                                                <input autocomplete="off" type="password" runat="server" id="input_Password" placeholder="Nhập mật khẩu">
                                                <%--<div class="remember">
                                                    <div class="remember-left">
                                                        <input type="checkbox" name="remember">
                                                        <label for="remember">Ghi nhớ</label>
                                                    </div>
                                                    <a href="#">Quên mật khẩu?</a>
                                                </div>--%>
                                                <p>
                                                    <uc1:ucMessage runat="server" ID="ucMessage" />
                                                </p>
                                                <asp:Button runat="server"
                                                    ID="Button_Login"
                                                    OnClick="Button_Login_Click"
                                                    class="btn btn-style btn-primary"
                                                    Text="Đăng nhập" />
                                                <div class="regis-now">
                                                    <span>Bạn chưa có tài khoản? </span>
                                                    <a href="Register.aspx">Đăng ký ngay</a>
                                                </div>
                                            </asp:Panel>
                                        </div>
                                    </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

