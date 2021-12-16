<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckoutComplete.aspx.cs" Inherits="CheckoutComplete" %>

<%@ Register Src="~/UserControls/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main id="tg-main" class="tg-main tg-haslayout">
        <div class="tg-sectionspace tg-haslayout">
            <div class="wrapper-login">
                <div class="clear" style="clear: both;"></div>
                <div class="main-account-login main-account-login-height">
                    <div class="container-login">
                        <div class="account-content-login">
                            <div class="login-item-login">
                                <div class="account-form">
                                    <div>
                                        <div class="tittle" style="text-align: center;">
                                            <h2>HOÀN TẤT THANH TOÁN</h2>
                                            <div style="display: inline-block">
                                                <uc1:ucMessage runat="server" ID="ucMessage" />
                                            </div>
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

