<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div class="tg-contactus">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead">
                            <h2><span>Xin chào!</span>Liên hệ với chúng tôi</h2>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="tg-locationmap tg-map">
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3917.0887277013408!2d106.70943081376986!3d10.956670108839328!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3174d751e024b99d%3A0x20b3f9b4c8fdc732!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBLaW5oIHThur8gLSBL4bu5IHRodeG6rXQgQsOsbmggRMawxqFuZyAoQ8ahIHPhu58gMik!5e0!3m2!1svi!2s!4v1637919963830!5m2!1svi!2s" width="600" height="767" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="tg-formtheme tg-formcontactus">
                            <fieldset>
                                <div class="form-group">
                                    <input autocomplete="off" type="text" name="name" class="form-control" placeholder="Họ và Tên">
                                </div>
                                <div class="form-group">
                                    <input autocomplete="off" type="text" name="phone" class="form-control" placeholder="Số Điện Thoại">
                                </div>
                                <div class="form-group">
                                    <input autocomplete="off" type="email" name="email" class="form-control" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <input autocomplete="off" type="text" name="address" class="form-control" placeholder="Địa chỉ">
                                </div>
                                <div class="form-group tg-hastextarea">
                                    <textarea placeholder="Nội dung"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="tg-btn tg-active">Gửi</button>
                                </div>
                            </fieldset>
                        </div>
                        <div class="tg-contactdetail">
                            <div class="tg-sectionhead">
                                <h2>Chúng tôi luôn sẵn sàng phục vụ quý khách</h2>
                            </div>
                            <ul class="tg-contactinfo">
                                <li>
                                    <i class="icon-apartment"></i>
                                    <address>333 Đường Thuận Giao 16, P.Thuận Giao, TP.Thuận An, T.Bình Dương</address>
                                </li>
                                <li>
                                    <i class="icon-phone-handset"></i>
                                    <span>
                                        <em>0379.970.582
                                        </em>
                                        <em>0349.788.951</em>
                                    </span>
                                </li>
                                <li>
                                    <i class="icon-clock"></i>
                                    <span>Mở cửa 7 ngày trong tuần từ 9am - 5pm</span>
                                </li>
                                <li>
                                    <i class="icon-envelope"></i>
                                    <span>
                                        <em><a href="mailto:hao18c02a1004@gmail.com">hao18c02a1004@gmail.com</a></em>
                                        <em><a href="mailto:tranthaihao199x@gmail.com">tranthaihao199x@gmail.com</a></em>
                                    </span>
                                </li>
                            </ul>
                            <ul class="tg-socialicons">
                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                                <li class="tg-googleplus"><a href="javascript:void(0);"><i class="fa fa-google-plus"></i></a></li>
                                <li class="tg-rss"><a href="javascript:void(0);"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

