<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <section>
        <div class="container container-shopping-cart">
            <h1 class="h1-title">Giỏ hàng của bạn</h1>
            <div class="shopping-cart">
                <div class="column-labels">
                    <div class="row">
                        <div class="col-lg-12">
                            <label class="product-image product-images">Hình ảnh</label>
                            <label class="product-details">Tên sản phẩm</label>
                            <label class="product-giaban">Giá bán</label>
                            <label class="product-quantity">Số lượng</label>
                            <label class="product-removal">Xóa</label>
                            <label class="product-line-pricese">Tổng cộng</label>
                        </div>
                    </div>
                </div>
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <div class="product product-flex">
                            <div class="product-image">
                                <img src="<%# Eval("Avatar") %>" />
                            </div>
                            <div class="product-details">
                                <div class="product-ten">
                                    <%# Eval("Title") %>
                                </div>
                            </div>
                            <div class="product-pricese"><%# Eval("Price","{0:n0}₫") %></div>
                            <div class="product-quantity">
                                <input type="number" value='<%# Eval("Quantity") %>' min="1">
                            </div>
                            <div class="product-removal">
                                <asp:LinkButton runat="server"
                                    ID="LinkButton_Remove"
                                    CommandArgument='<%# Eval("ProductID") %>'
                                    ClientIDMode="AutoID"
                                    OnClick="LinkButton_Remove_Click" class="remove-product">
                               Xóa
                                </asp:LinkButton>
                            </div>
                            <div class="product-line-price"><%# Eval("OldPrice","{0:n0}₫") %></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="totals">
                    <div class="totals-item">
                        <label>Tổng</label>
                        <div runat="server" id="div_Total" class="totals-value"></div>
                    </div>
                    <div class="totals-item">
                        <label>Mã giảm giá (20%)</label>
                        <div runat="server" id="div_SaleOff" class="totals-value"></div>
                    </div>
                    <div class="totals-item">
                        <label>Phí vận chuyển</label>
                        <div runat="server" class="totals-value">0đ</div>
                    </div>
                    <div class="totals-item totals-item-total">
                        <label>Tổng cộng</label>
                        <div runat="server" id="div_Amount" class="totals-value"></div>
                    </div>
                </div>
                <button class="checkout">THANH TOÁN</button>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

