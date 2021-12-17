<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucComment.ascx.cs" Inherits="ucComment" %>
<%@ Register Src="~/UserControls/ucMessage.ascx" TagPrefix="uc1" TagName="ucMessage" %>



<asp:UpdatePanel runat="server">
    <ContentTemplate>
        <div class="tg-commentsarea">
            <div class="tg-sectionhead">
                <h2>Đánh giá sản phẩm</h2>
            </div>
            <ul runat="server" id="div_Comments" class="tg-comments">
                <asp:Repeater ID="Repeater_Main" runat="server">
                    <ItemTemplate>
                        <li>
                            <div class="tg-authorbox">
                                <%--<figure class="tg-authorimg authorimg-img">
                            <img src="images/coder/images-4.jpg" alt="image description" />
                        </figure>--%>
                                <div class="tg-authorinfo">
                                    <div class="tg-authorhead">
                                        <div class="tg-leftarea">
                                            <div class="tg-authorname">
                                                <%-- name  --%>
                                                <h2 style="line-height: 20px;">
                                                     <%# Eval("FullName") %>

                                                </h2>
                                                <%--<span class="tg-stars"><span></span></span>--%>
                                            </div>
                                        </div>
                                        <div class="tg-rightarea">
                                            <a class="tg-btnreply" href="#comment">Thảo luận<i class="fa fa-mail-reply"></i></a>
                                        </div>
                                    </div>
                                    <div class="tg-description">
                                        <p>
                                            <%# Eval("Content") %>
                                        </p>
                                    </div>
                                </div>
                                <div class="tg-bottomarrow"></div>
                            </div>
                            <%--  --%>
                           <%-- <ul class="tg-childcomment">
                                <asp:Repeater DataSource='<%# Eval("Client") %>' runat="server">
                                    <ItemTemplate>
                                        <li>
                                            <div class="tg-authorbox">
                                                <figure class="tg-authorimg authorimg-img">
                                                    <img src="images/coder/images-2.jpg" alt="image description" />
                                                </figure>
                                                <div class="tg-authorinfo">
                                                    <div class="tg-authorhead">
                                                        <div class="tg-leftarea">
                                                            <div class="tg-authorname">
                                                                <h2 style="line-height: 20px;"><%# Eval("FullName") %></h2>
                                                                <span class="tg-stars"><span></span></span>
                                                            </div>
                                                        </div>
                                                        <div class="tg-rightarea">
                                                            <a class="tg-btnreply" href="javascript:void(0);">Thảo luận<i class="fa fa-mail-reply"></i></a>
                                                        </div>
                                                    </div>
                                                    <div class="tg-description">
                                                        <p>
                                                            <%# Eval("Content") %>
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="tg-bottomarrow"></div>
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </ul>--%>
                            <%--  --%>
                        </li>
                    </ItemTemplate>
                </asp:Repeater>
                <li class="tg-loadmore"><a class="tg-btn tg-active" href="javascript:void(0);">Xem tất cả</a></li>
            </ul>
        </div>
        <div class="tg-leaveyourcomment" runat="server" id="div_CommentForm">
            <div id="comment" class="tg-sectionhead">
                <h2>Viết đánh giá</h2>
            </div>
            <div class="tg-formtheme tg-formleavecomment">
                <fieldset>

                    <asp:Panel DefaultButton="LinkButton_Comment" runat="server">
                        <div class="form-group">
                            <textarea runat="server" id="textarea_Content" placeholder="Mời bạn chia sẻ một số cảm nhận ..."></textarea>
                        </div>
                        <div class="form-group">
                            <uc1:ucMessage runat="server" ID="ucMessage" />
                        </div>
                        <div class="form-group">
                            <asp:LinkButton runat="server" ID="LinkButton_Comment" OnClick="LinkButton_Comment_Click" class="tg-btn tg-active">Gửi đánh giá ngay</asp:LinkButton>
                        </div>
                    </asp:Panel>
                </fieldset>
            </div>
        </div>
    </ContentTemplate>
</asp:UpdatePanel>
