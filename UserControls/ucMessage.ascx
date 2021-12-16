<%@ Control Language="C#" AutoEventWireup="true" Inherits="CodeUtility.MessageUtility" %>

<div runat="server" id="SuccessBox" style="margin-top:10px" class="alert alert-success alert-dismissible">
    <span type="button" class="close" data-dismiss="alert">&times;</span>
    <span runat="server" id="SuccessMessage" class="message">Thông báo</span>
</div>
<div runat="server" id="ErrorBox" style="margin-top:10px" class="alert alert-danger alert-dismissible">
    <span type="button" class="close" data-dismiss="alert">&times;</span>
    <span runat="server" id="ErrorMessage">Thông báo</span>
</div>
