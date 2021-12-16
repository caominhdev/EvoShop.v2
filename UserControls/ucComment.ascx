﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ucComment.ascx.cs" Inherits="ucComment" %>

<div class="tg-commentsarea">
    <div class="tg-sectionhead">
        <h2>Đánh giá sản phẩm</h2>
    </div>
    <ul id="tg-comments" class="tg-comments">
        <asp:Repeater ID="Repeater_Main" runat="server">
            <ItemTemplate>
                <li>
                    <div class="tg-authorbox">
                        <figure class="tg-authorimg authorimg-img">
                            <img src="images/coder/images-4.jpg" alt="image description" />
                        </figure>
                        <div class="tg-authorinfo">
                            <div class="tg-authorhead">
                                <div class="tg-leftarea">
                                    <div class="tg-authorname">
                                        <h2 style="line-height: 20px;"> <%# Eval("FullName") %></h2>
                                        <span class="tg-stars"><span></span></span>
                                    </div>
                                </div>
                                <div class="tg-rightarea">
                                    <a class="tg-btnreply" href="javascript:void(0);">Thảo luận<i class="fa fa-mail-reply"></i></a>
                                </div>
                            </div>
                            <div class="tg-description">
                               <%# Eval("Content") %>
                            </div>
                        </div>
                        <div class="tg-bottomarrow"></div>
                    </div>
                    <ul class="tg-childcomment">
                        <li>
                            <div class="tg-authorbox">
                                <figure class="tg-authorimg authorimg-img">
                                    <img src="images/coder/images-2.jpg" alt="image description" />
                                </figure>
                                <div class="tg-authorinfo">
                                    <div class="tg-authorhead">
                                        <div class="tg-leftarea">
                                            <div class="tg-authorname">
                                                <h2 style="line-height: 20px;">Hoài Lê</h2>
                                                <span class="tg-stars"><span></span></span>
                                            </div>
                                        </div>
                                        <div class="tg-rightarea">
                                            <a class="tg-btnreply" href="javascript:void(0);">Thảo luận<i class="fa fa-mail-reply"></i></a>
                                        </div>
                                    </div>
                                    <div class="tg-description">
                                        <p>
                                            Sản phẩm chất lượng từng chi tiết. cầm xài chắc đã, cảm giác bấm mướt rược, nhìn cực kì sang ngắm hoài không chán, thỉnh thoảng xem mơ màng, bộ nhớ nhiều chiêm bao, lưu trữ tràn đầy mộng mơ (hóng) ^^! Sản phẩm chất lượng từng chi tiết.
                                        </p>
                                    </div>
                                </div>
                                <div class="tg-bottomarrow"></div>
                            </div>
                        </li>
                    </ul>
                </li>
            </ItemTemplate>
        </asp:Repeater>
        <li class="tg-loadmore"><a class="tg-btn tg-active" href="javascript:void(0);">Xem tất cả</a></li>
    </ul>
</div>
<div class="tg-leaveyourcomment">
    <div class="tg-sectionhead">
        <h2>Viết đánh giá</h2>
    </div>
    <div class="tg-formtheme tg-formleavecomment">
        <fieldset>
            <div class="form-group">
                <input type="text" name="full name" class="form-control" placeholder="Họ và tên (bắt buộc)">
            </div>
            <div class="form-group">
                <input type="text" name="last name" class="form-control" placeholder="Số điện thoại (bắt buộc)">
            </div>
            <div class="form-group">
                <input type="email" name="email address" class="form-control" placeholder="Email (Không bắt buộc)">
            </div>
            <div class="form-group">
                <input type="text" name="subject" class="form-control" placeholder="Địa chỉ">
            </div>
            <div class="form-group">
                <textarea placeholder="Mời bạn chia sẻ một số cảm nhận ..."></textarea>
            </div>
            <div class="form-group">
                <a class="tg-btn tg-active" href="javascript:void(0);">Gửi đánh giá ngay</a>
            </div>
        </fieldset>
    </div>
</div>