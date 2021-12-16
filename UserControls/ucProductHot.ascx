<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucProductHot.ascx.cs" Inherits="ucProductHot" %>

<div class="tg-featurebook alert featurebook-container" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
    <asp:Repeater ID="Repeater_Main" runat="server">
        <ItemTemplate>
            <div class="tg-featureditm">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 hidden-sm hidden-xs">
                        <figure>
                             <img alt="image description" src='<%# Eval("Avatar") %>' />
                        </figure>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8 right-content-featureditm">
                        <div class="tg-featureditmcontent">
                            <div class="tg-themetagbox"><span class="tg-themetag">Nổi bật</span></div>
                            <div class="tg-booktitle">
                                <h3><a href='<%# "/ProductDetail.aspx?id={0}&title={1}".StringFormat(Eval("ProductID"), Eval("Title").ToUrlFormat()) %>'>
                                    <%# Eval("Title") %>
                                </a></h3>
                            </div>
                            <span class="tg-bookwriter"><a href="javascript:void(0);">Online Giá Rẻ</a></span>
                            <span class="tg-stars"><span></span></span>
                            <div class="tg-priceandbtn">
                                <span class="tg-bookprice">
                                    <ins>
                                        <%# Eval("Price","{0:n0}₫") %>

                                    </ins>
                                    <del visible='<%# Eval("OldPrice").ToDouble() > 0 ? true : false %>'>
                                        <%# Eval("OldPrice","{0:n0}₫") %>
                                    </del>
                                </span>
                                <asp:UpdatePanel runat="server">
                                    <ContentTemplate>
                                        <asp:LinkButton runat="server"
                                            ID="LinkButton_Order"
                                            OnClick="LinkButton_Order_Click"
                                            ClientIDMode="AutoID"
                                            CommandArgument='<%# Eval("ProductID") %>'
                                            CommandName="1" class="tg-btn tg-btnstyletwo tg-active">
                                                                        <i class="fa fa-shopping-basket"></i>
                                                                        <em>Thêm giỏ hàng</em>
                                        </asp:LinkButton>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>
