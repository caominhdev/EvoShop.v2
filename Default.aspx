<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/UserControls/ucBestSelling.ascx" TagPrefix="uc1" TagName="ucBestSelling" %>
<%@ Register Src="~/UserControls/ucFeaturedItem.ascx" TagPrefix="uc1" TagName="ucFeaturedItem" %>
<%@ Register Src="~/UserControls/ucNewRelease.ascx" TagPrefix="uc1" TagName="ucNewRelease" %>
<%@ Register Src="~/UserControls/ucCollectionCount.ascx" TagPrefix="uc1" TagName="ucCollectionCount" %>
<%@ Register Src="~/UserControls/ucPickedByAuthor.ascx" TagPrefix="uc1" TagName="ucPickedByAuthor" %>
<%@ Register Src="~/UserControls/ucTestimonials.ascx" TagPrefix="uc1" TagName="ucTestimonials" %>
<%@ Register Src="~/UserControls/ucBrands.ascx" TagPrefix="uc1" TagName="ucBrands" %>
<%@ Register Src="~/UserControls/ucLatestNews.ascx" TagPrefix="uc1" TagName="ucLatestNews" %>









<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <main id="tg-main" class="tg-main tg-haslayout">
        <!--************************************
                    Best Selling Start
            *************************************-->
        <uc1:ucBestSelling runat="server" ID="ucBestSelling" />
        <!--************************************
                    Best Selling End
            *************************************-->
        <!--************************************
                    Featured Item Start
            *************************************-->
        <uc1:ucFeaturedItem runat="server" ID="ucFeaturedItem" />
        <!--************************************
                    Featured Item End
            *************************************-->
        <!--************************************
                    New Release Start
            *************************************-->
        <uc1:ucNewRelease runat="server" ID="ucNewRelease" />
        <!--************************************
                    New Release End
            *************************************-->
        <!--************************************
                    Collection Count Start
            *************************************-->
        <uc1:ucCollectionCount runat="server" ID="ucCollectionCount" />
        <!--************************************
                    Collection Count End
            *************************************-->
        <!--************************************
                    Picked By Author Start
            *************************************-->
        <uc1:ucPickedByAuthor runat="server" ID="ucPickedByAuthor" />
        <!--************************************
                    Picked By Author End
            *************************************-->
        <!--************************************
                    Testimonials Start
            *************************************-->
        <uc1:ucTestimonials runat="server" ID="ucTestimonials" />
        <!--************************************
                    Testimonials End
            *************************************-->
        <!--************************************
                    Call to Action Start
            *************************************-->
        <!--************************************
                    Call to Action End
            *************************************-->
        <uc1:ucBrands runat="server" ID="ucBrands" />
        <!--************************************
                    Latest News Start
            *************************************-->
        <uc1:ucLatestNews runat="server" ID="ucLatestNews" />
        <!--************************************
                    Latest News End
            *************************************-->
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

