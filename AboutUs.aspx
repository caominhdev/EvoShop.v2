<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <!--************************************
                    About Us Start
            *************************************-->
    <section class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div class="tg-aboutus">
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <div class="tg-aboutusshortcode">
                            <div class="tg-sectionhead">
                                <h2><span>Welcome to</span>Evo Mobile</h2>
                            </div>
                            <div class="tg-description">

                                <p style="text-align: justify;">
                                    Đến với Evo Mobile, quý khách hàng có thể dễ dàng lựa chọn những sản phẩm công nghệ HÀI LÒNG về chất lượng, ƯNG Ý về hình thức, THỎA MÃN về giá cả. Đặc biệt chế độ bảo hành và hậu mãi cực kỳ chu đáo của chúng tôi sẽ khiến những khách hàng khó tính nhất cũng phải bất ngờ.
                                </p>
                            </div>
                            <div class="tg-btns">
                                <a class="tg-btn" href="Contactus.aspx">Liên lạc với chúng tôi</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                        <figure>
                            <img src="images/placeholder.jpg" alt="image description">
                            <iframe width="1264" height="480" src="https://www.youtube.com/embed/6p3U-uWUNps" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </figure>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--************************************
                    About Us End
            *************************************-->
    <!--************************************
                    Call to Action Start
            *************************************-->
    <%--<section class="tg-parallax tg-bgcalltoaction tg-haslayout" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-06.jpg">
        <div class="tg-sectionspace tg-haslayout">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-calltoaction">
                            <h2>Xem sản phẩm</h2>
                            <h3>Lựa chọn một sản phẩm ưng ý nhất</h3>
                            <a class="tg-btn tg-active" href="Products.aspx">Mua ngay</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!--************************************
                    Call to Action End
            *************************************-->
    <!--************************************
                    Success Start
            *************************************-->
    <section class="tg-sectionspace tg-haslayout our-pride-moments">
        <div class="container">
            <div class="row">
                <div class="tg-successstory">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="tg-sectionhead">
                            <h2><span>Khoảnh khắc tự hào của chúng tôi</span>Hành trình thành công</h2>
                        </div>
                        <div id="tg-successslider" class="tg-successslider tg-success owl-carousel">
                            <div class="item">
                                <figure>
                                    <img class="store-img" src="images/aboutus/cua-hang-dien-thoai.jpg" alt="image description" />
                                </figure>
                                <div class="tg-successcontent">
                                    <div class="tg-sectionhead">
                                        <h2>Evo Mobile</h2>
                                    </div>
                                    <div class="tg-description">
                                        <p style="text-align: justify;">
                                            Được hình thành dựa trên nhiều năm kinh nghiệm trong lĩnh vực kinh doanh dịch vụ chăm sóc người dùng di động. Thấu hiểu những băn khoăn, trăn trở của quý khách hàng trong việc lựa chọn chiếc điện thoại cầm tay mà ngày nay hầu như không một ai mà không sử dụng.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <!--<div class="item">
                                        <figure>
                                            <img src="images/img-01.jpg" alt="image description">
                                        </figure>
                                        <div class="tg-successcontent">
                                            <div class="tg-sectionhead">
                                                <h2><span>June 27, 2017</span>First Step Toward Success</h2>
                                            </div>
                                            <div class="tg-description">
                                                <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore toloregna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcoiars nisiuip commodo consequat aute irure dolor in aprehenderit aveli esseati cillum dolor fugiat nulla pariatur cepteur sint occaecat cupidatat.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <figure>
                                            <img src="images/img-01.jpg" alt="image description">
                                        </figure>
                                        <div class="tg-successcontent">
                                            <div class="tg-sectionhead">
                                                <h2><span>June 27, 2017</span>First Step Toward Success</h2>
                                            </div>
                                            <div class="tg-description">
                                                <p>Consectetur adipisicing elit sed do eiusmod tempor incididunt labore toloregna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamcoiars nisiuip commodo consequat aute irure dolor in aprehenderit aveli esseati cillum dolor fugiat nulla pariatur cepteur sint occaecat cupidatat.</p>
                                            </div>
                                        </div>
                                    </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--************************************
                    Success End
            *************************************-->
    <!--************************************
                    Testimonials Start
            *************************************-->
    <!--<section class="tg-parallax tg-bgtestimonials tg-haslayout" data-z-index="-100" data-appear-top-offset="600" data-parallax="scroll" data-image-src="images/parallax/bgparallax-05.jpg">
                <div class="tg-sectionspace tg-haslayout">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-lg-push-2">
                                <div id="tg-testimonialsslider" class="tg-testimonialsslider tg-testimonials owl-carousel">
                                    <div class="item tg-testimonial">
                                        <figure><img src="images/author/imag-02.jpg" alt="image description"></figure>
                                        <blockquote><q>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore tolore magna aliqua enim ad minim veniam, quis nostrud exercitation ullamcoiars nisi ut aliquip commodo.</q></blockquote>
                                        <div class="tg-testimonialauthor">
                                            <h3>Holli Fenstermacher</h3>
                                            <span>Manager @ CIFP</span>
                                        </div>
                                    </div>
                                    <div class="item tg-testimonial">
                                        <figure><img src="images/author/imag-02.jpg" alt="image description"></figure>
                                        <blockquote><q>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore tolore magna aliqua enim ad minim veniam, quis nostrud exercitation ullamcoiars nisi ut aliquip commodo.</q></blockquote>
                                        <div class="tg-testimonialauthor">
                                            <h3>Holli Fenstermacher</h3>
                                            <span>Manager @ CIFP</span>
                                        </div>
                                    </div>
                                    <div class="item tg-testimonial">
                                        <figure><img src="images/author/imag-02.jpg" alt="image description"></figure>
                                        <blockquote><q>Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore tolore magna aliqua enim ad minim veniam, quis nostrud exercitation ullamcoiars nisi ut aliquip commodo.</q></blockquote>
                                        <div class="tg-testimonialauthor">
                                            <h3>Holli Fenstermacher</h3>
                                            <span>Manager @ CIFP</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>-->
    <!--************************************
                    Testimonials End
            *************************************-->
    <!--************************************
                    Authors Start
            *************************************-->
    <section class="tg-sectionspace tg-haslayout meet-our-professionals">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                    <div class="tg-sectionhead">
                        <h2><span>Nhóm của chúng tôi</span>Evo Mobile</h2>
                    </div>
                </div>
                <div id="tg-teamsslider" class="tg-authors tg-authorsslider tg-teamsmember owl-carousel">
                    <div class="item tg-author tg-member">
                        <figure>
                            <a class="aboutus-coder-img" href="javascript:void(0);">
                                <img src="images/coder/hao.jpg" alt="image description" />
                            </a>
                        </figure>
                        <div class="tg-authorcontent">
                            <h2><a href="javascript:void(0);">Trần Thái Hảo</a></h2>
                            <span>D18C02A1004</span>
                            <ul class="tg-socialicons">
                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="item tg-author tg-member">
                        <figure>
                            <a class="aboutus-coder-img" href="javascript:void(0);">
                                <img src="images/coder/images-2.jpg" alt="image description" />
                            </a>
                        </figure>
                        <div class="tg-authorcontent">
                            <h2><a href="javascript:void(0);">Lê Văn Hoài</a></h2>
                            <span>D18C02A1905</span>
                            <ul class="tg-socialicons">
                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="item tg-author tg-member">
                        <figure>
                            <a class="aboutus-coder-img" href="javascript:void(0);">
                                <img src="images/coder/an.jpg" alt="image description" />
                            </a>
                        </figure>
                        <div class="tg-authorcontent">
                            <h2><a href="javascript:void(0);">Nguyễn Đỗ Dy An</a></h2>
                            <span>D18C02A1505
                            </span>
                            <ul class="tg-socialicons">
                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="item tg-author tg-member">
                        <figure>
                            <a class="aboutus-coder-img" href="javascript:void(0);">
                                <img src="images/coder/manh.jpg" alt="image description" />
                            </a>
                        </figure>
                        <div class="tg-authorcontent">
                            <h2><a href="javascript:void(0);">Mai Đăng Mạnh</a></h2>
                            <span>D18C02A1012
                            </span>
                            <ul class="tg-socialicons">
                                <li class="tg-facebook"><a href="javascript:void(0);"><i class="fa fa-facebook"></i></a></li>
                                <li class="tg-twitter"><a href="javascript:void(0);"><i class="fa fa-twitter"></i></a></li>
                                <li class="tg-linkedin"><a href="javascript:void(0);"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--************************************
                    Authors End
            *************************************-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

