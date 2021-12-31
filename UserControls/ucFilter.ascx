<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucFilter.ascx.cs" Inherits="ucFilter" %>

<div class="tg-refinesearch">
    <span>Bộ lọc</span>
    <div class="tg-formtheme tg-formsortshoitems">
        <fieldset>
            <div class="form-group">
                <label>Xếp theo:</label>
                <span class="tg-select">
                    <asp:DropDownList runat="server"
                        ID="DropDownList_Option"
                        OnSelectedIndexChanged="DropDownList_Option_SelectedIndexChanged"
                        AutoPostBack="true">
                        <asp:ListItem Value="0">Tên A-Z</asp:ListItem>
                        <asp:ListItem Value="1">Tên Z-A</asp:ListItem>
                        <asp:ListItem Value="2">Giá thấp đến cao</asp:ListItem>
                        <asp:ListItem Value="3">Giá cao đến thấp</asp:ListItem>
                    </asp:DropDownList>
                </span>
            </div>
            <!--<div class="form-group">
                                                            <label>Loại điện thoại:</label>
                                                            <span class="tg-select">
                                                                <select>
                                                                    <option>Android</option>
                                                                    <option>iPhone (iOS)</option>
                                                                    <option>Điện thoại phổ thông</option>
                                                                </select>
                                                            </span>
                                                        </div>-->
            <div class="form-group">
                <label>Giá:</label>
                <span class="tg-select">
                    <asp:DropDownList runat="server"
                        ID="DropDownList_Price"
                        OnSelectedIndexChanged="DropDownList_Price_SelectedIndexChanged"
                        AutoPostBack="true">
                        <asp:ListItem Value="<4">Dưới 4 triệu</asp:ListItem>
                        <asp:ListItem Value="4-8">Từ 4 - 8 triệu</asp:ListItem>
                        <asp:ListItem Value="8-13">Từ 8 - 13 triệu</asp:ListItem>
                        <asp:ListItem Value="13-20">Từ 13 - 20 triệu</asp:ListItem>
                        <asp:ListItem Value="20-25">Từ 20 - 25 triệu</asp:ListItem>
                        <asp:ListItem Value="25>">Trên 25 triệu</asp:ListItem>
                    </asp:DropDownList>
                </span>
            </div>
            <%--<div class="form-group">
                                                                <label>Bộ nhớ trong:</label>
                                                                <span class="tg-select">
                                                                    <select>
                                                                        <option>8GB</option>
                                                                        <option>16GB</option>
                                                                        <option>32GB</option>
                                                                        <option>64GB</option>
                                                                        <option>128GB</option>
                                                                        <option>256GB</option>
                                                                        <option>512GB</option>
                                                                    </select>
                                                                </span>
                                                            </div>
                                                            <div class="form-group">
                                                                <label>RAM:</label>
                                                                <span class="tg-select">
                                                                    <select>
                                                                        <option>1GB</option>
                                                                        <option>2GB</option>
                                                                        <option>3GB</option>
                                                                        <option>4GB</option>
                                                                        <option>6GB</option>
                                                                        <option>8GB</option>
                                                                        <option>12GB</option>
                                                                    </select>
                                                                </span>
                                                            </div>--%>
            <div class="form-group">
                <label>Hãng điện thoại:</label>
                <span class="tg-select">
                    <asp:DropDownList runat="server"
                        ID="DropDownList_Category"
                        OnSelectedIndexChanged="DropDownList_Category_SelectedIndexChanged"
                        AutoPostBack="true">
                        <asp:ListItem Value="iphone">iPhone</asp:ListItem>
                        <asp:ListItem Value="samsung">Samsung</asp:ListItem>
                        <asp:ListItem Value="oppo">Oppo</asp:ListItem>
                        <asp:ListItem Value="vivo">Vivo</asp:ListItem>
                        <asp:ListItem Value="xiaomi">Xiaomi</asp:ListItem>
                        <asp:ListItem Value="realme">Realme</asp:ListItem>
                    </asp:DropDownList>
                </span>
            </div>
            <%--<div class="form-group">
                                                                <label>Hãng laptop:</label>
                                                                <span class="tg-select">
                                                                    <select>
                                                                        <option>Gaming</option>
                                                                        <option>Macbook</option>
                                                                        <option>Học tập, văn phòng</option>
                                                                        <option>Đồ họa, kỹ thuật</option>
                                                                    </select>
                                                                </span>
                                                            </div>--%>
        </fieldset>
    </div>
</div>
