<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucSearchMini.ascx.cs" Inherits="ucSearchMini" %>

<div class="tg-widget tg-widgetsearch">
    <div class="tg-formtheme tg-formsearch">
        <div class="form-group">
            <asp:Panel DefaultButton="LinkButton_Search" runat="server">
                <asp:LinkButton runat="server"
                    ID="LinkButton_Search"
                    OnClick="LinkButton_Search_Click">
                <i class="icon-magnifier"></i>
                </asp:LinkButton>
                <input runat="server" id="input_Keyword" type="text" class="form-group" placeholder="Tìm kiếm...">
            </asp:Panel>
        </div>
    </div>
</div>

