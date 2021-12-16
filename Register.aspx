<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<%@ Register Src="~/UserControls/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>





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
                                <div class="tab">
                                    <a href="Login.aspx" class="login">Đăng nhập</a>
                                    <a href="#" class="regis" style="border-bottom: #77b748 solid 2px;">Đăng ký</a>
                                </div>
                                <div class="account-form">
                                    <asp:UpdatePanel runat="server">
                                        <ContentTemplate>
                                            <asp:Panel DefaultButton="Button_Register" runat="server">
                                                <div class="tittle">
                                                    <h2 style="text-align: center;">Chào mừng bạn đến với Evo Mobile!</h2>
                                                    <p>Bắt đầu kết nối với hàng triệu chuyên gia và khách hàng.</p>
                                                </div>
                                                <label style="font-weight: 600;" for="input_FullName">Họ Tên</label>
                                                <input autocomplete="off" runat="server" id="input_FullName" type="text" placeholder="Nhập họ tên">
                                                <label style="font-weight: 600;" for="input_Address">Địa chỉ</label>
                                                <input autocomplete="off" type="text" runat="server" id="input_Address" placeholder="Nhập địa chỉ">
                                                <label style="font-weight: 600;" for="input_Email">Số điện thoại/Email</label>
                                                <input style="text-transform: lowercase" autocomplete="off" runat="server" id="input_Email" type="text" placeholder="Nhập số điện thoại/email">
                                                <label style="font-weight: 600;" for="input_Password">Mật khẩu</label>
                                                <input autocomplete="off" runat="server" id="input_Password" type="password" placeholder="Nhập mật khẩu">
                                                <p>
                                                    <uc1:ucMessage runat="server" ID="ucMessage" />
                                                </p>
                                                <asp:Button runat="server"
                                                    ID="Button_Register"
                                                    OnClick="Button_Register_Click"
                                                    Text="Đăng ký"
                                                    class="btn btn-style btn-primary button-margintop" />
                                            </asp:Panel>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
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

