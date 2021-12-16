﻿<%@ Control Language="C#" AutoEventWireup="true" Inherits="CodeUtility.PaggingUtility" %>
<nav>
    <ul class="pagination">
        <li class="">
            <a runat="server" id="PageBack" aria-label="Previous">
                <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <asp:Repeater ID="PageRepeater" runat="server">
            <ItemTemplate>
                <li>
                    <a runat="server" id="PageNumber" data-active="pagination__link active">1</a>
                </li>
            </ItemTemplate>
        </asp:Repeater>
        <li>
            <a runat="server" id="PageNext" aria-label="Next">
                <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
    </ul>
</nav>
