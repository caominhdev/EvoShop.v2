<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucHeader.ascx.cs" Inherits="ucHeader" %>
<%@ Register Src="~/UserControls/ucSearchBox.ascx" TagPrefix="uc1" TagName="ucSearchBox" %>
<%@ Register Src="~/UserControls/ucMainMenu.ascx" TagPrefix="uc1" TagName="ucMainMenu" %>



<header id="tg-header" class="tg-header tg-headervtwo tg-haslayout">
    <div class="tg-topbar">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <ul class="tg-addnav">
                        <li>
                            <a href="ContactUs.aspx">
                                <i class="icon-envelope"></i>
                                <em>Liên hệ</em>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <i class="icon-question-circle"></i>
                                <em>Giúp đỡ</em>
                            </a>
                        </li>
                    </ul>
                    <div class="tg-userlogin" runat="server" id="span_Info">
                        <%-- <figure>
                            <a href="javascript:void(0);">
                                <img runat="server" id="img_avatar" src="images/author/images-4.jpg" alt="image description" />
                            </a>
                        </figure>--%>
                        <span>Chào, <b runat="server" id="b_name"></b></span>
                        <div class="tg-use-login-logout">
                            <asp:LinkButton runat="server" ID="LinkButton_Logout" OnClick="LinkButton_Logout_Click"
                                class="tg-use-login-logout-btn">Đăng xuất</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tg-middlecontainer">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <strong class="tg-logo">
                        <a href="/Default.aspx">
                            <img src="images/logo_mobile/logo1.png" />
                        </a>
                    </strong>
                    <%-- ucSearchBox --%>
                    <uc1:ucSearchBox runat="server" ID="ucSearchBox" />
                </div>
            </div>
        </div>
    </div>
    <div class="tg-navigationarea">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-navigationholder">
                        <uc1:ucMainMenu runat="server" ID="ucMainMenu" />

                        <div class="tg-wishlistandcart">
                            <%--<div class="dropdown tg-themedropdown tg-wishlistdropdown">
                                <a href="javascript:void(0);" id="tg-wishlisst" class="tg-btnthemedropdown" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <span class="tg-themebadge">3</span>
                                    <i class="icon-heart"></i>
                                </a>
                                <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-wishlisst">
                                    <div class="tg-description">
                                        <p>Không có sản phẩm nào được thêm vào danh sách yêu thích!</p>
                                    </div>
                                </div>
                            </div>--%>
                            <div class="dropdown tg-themedropdown tg-minicartdropdown">
                                <a href="javascript:void(0);" id="tg-minicart" class="tg-btnthemedropdown" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <asp:UpdatePanel runat="server">
                                        <ContentTemplate><span runat="server" id="span_Count" class="tg-themebadge"></span></ContentTemplate>
                                    </asp:UpdatePanel>
                                    <i class="icon-cart"></i>
                                </a>
                                <asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                        <div class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-minicart">
                                            <div class="tg-minicartbody">
                                                <asp:Repeater ID="Repeater_CartItem" runat="server">
                                                    <ItemTemplate>
                                                        <div class="tg-minicarproduct">
                                                            <figure>
                                                                <img class="tg-minicarproduct-image-product" src="<%# Eval("Avatar") %>" />
                                                            </figure>
                                                            <div class="tg-minicarproductdata">
                                                                <h5>
                                                                    <a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                                                        <%# Eval("Title").Left(20, true, true) %>
                                                                    </a>
                                                                </h5>
                                                                <div class="minicarproductdata-number">
                                                                    <a style="margin-right: 10px; color: #484848" href="#">Số lượng:</a>
                                                                    <div class="quantity-select qty_drop_cart">
                                                                        <asp:LinkButton runat="server"
                                                                            ID="LinkButton_Minus"
                                                                            OnClick="LinkButton_Minus_Click"
                                                                            CommandArgument='<%# Eval("ProductID") %>'
                                                                            class="btn_reduced reduced items-count btn-minus">
                                                                            -
                                                                        </asp:LinkButton>
                                                                        <input
                                                                            type="text"
                                                                            maxlength="3"
                                                                            readonly
                                                                            class="input-text number-sidebar"
                                                                            value='<%# Eval("Quantity") %>' />
                                                                        <asp:LinkButton runat="server"
                                                                            ID="LinkButton_Plus"
                                                                            OnClick="LinkButton_Plus_Click"
                                                                            CommandArgument='<%# Eval("ProductID") %>'
                                                                            class="btn_increase increase items-count btn-plus">
                                                                            +
                                                                        </asp:LinkButton>
                                                                    </div>
                                                                    <asp:LinkButton runat="server"
                                                                        ID="LinkButton_Remove"
                                                                        CommandArgument='<%# Eval("ProductID") %>'
                                                                        ClientIDMode="AutoID"
                                                                        CommandName="1" OnClick="LinkButton_Remove_Click" class="tg-btnemptycart">
                                                                        <span>Xóa</span>
                                                                    </asp:LinkButton>
                                                                </div>
                                                                <h6 style="margin-top: 10px;">
                                                                    <span>Giá: <%# (Eval("Quantity").ToInt() * Eval("Price").ToDouble()).ToString("n0") %>đ </span>
                                                                </h6>
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                            </div>
                                            <div class="tg-minicartfoot">
                                                <asp:LinkButton
                                                    runat="server"
                                                    ID="LinkButton_RemoveAll"
                                                    CommandArgument='<%# Eval("ProductID") %>'
                                                    ClientIDMode="AutoID"
                                                    CommandName="1" OnClick="LinkButton_RemoveAll_Click"
                                                    class="tg-btnemptycart">
                                                    <i class="fa fa-trash-o"></i>
                                                    <span>Xóa</span>
                                                </asp:LinkButton>
                                                <span class="tg-subtotal">Tổng cộng: <strong runat="server" id="span_Amount"></strong>đ</span>
                                                <div class="tg-btns">
                                                    <a class="tg-btn tg-active" href="ShoppingCart.aspx">Xem giỏ hàng</a>
                                                    <a class="tg-btn" href="Checkout.aspx">Thanh toán</a>
                                                </div>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                            <div class="dropdown tg-themedropdown tg-currencydropdown">
                                <a href="javascript:void(0);" id="tg-currenty" class="tg-btnthemedropdown" data-toggle="dropdown"
                                    aria-haspopup="true" aria-expanded="false">
                                    <span>Tài khoản</span>
                                </a>
                                <ul class="dropdown-menu tg-themedropdownmenu" aria-labelledby="tg-currenty">
                                    <li>
                                        <a href="Login.aspx">
                                            <span>Đăng nhập</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Register.aspx">
                                            <span>Đăng kí</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
