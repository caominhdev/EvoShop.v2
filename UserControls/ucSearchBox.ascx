<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSearchBox.ascx.cs" Inherits="ucSearchBox" %>

<div class="tg-searchbox">
    <div class="tg-formtheme tg-formsearch">
        <fieldset>
            <asp:Panel DefaultButton="LinkButton_Search" runat="server">
                <input runat="server" id="input_Keyword" autocomplete="off" type="text" class="typeahead form-control"
                    placeholder="Tìm kiếm Điện thoại, Laptop, Tablet,...">
                <asp:LinkButton runat="server"
                    ID="LinkButton_Search"
                    OnClick="LinkButton_Search_Click"
                    class="tg-btn" Text="Tìm kiếm" />
            </asp:Panel>
            <div class="header__search-history">
                <ul class="header__search-history-list">
                    <li class="header__search-history-item">
                        <img class="header__search-history-item-img" src="images/products/iphone-12-pro-max-xanh-duong-new-600x600-600x600-d0fd627a-ffa5-4297-9db4-e09f4cd78f6c.jpg" />
                        <div class="header__search-history-item-content">
                            <a class="header__search-history-item-title" href="#">iPhone 12 Pro Max Chính Hãng (VN/A)
                            </a>
                            <span class="header__search-history-item-price">33.590.000₫</span>
                        </div>
                    </li>
                </ul>
            </div>
        </fieldset>
    </div>
</div>
