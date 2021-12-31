<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="404Error.aspx.cs" Inherits="_404Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>404</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="tg-sectionspace tg-haslayout">
        <div class="container">
            <div class="row">
                <div class="tg-404error">
                    <div class="col-xs-12 col-sm-12 col-md-8 col-md-push-2 col-lg-6 col-lg-push-3">
                        <div class="tg-404errorcontent">
                            <h2>Oops! Could Not Find It</h2>
                            <span>404</span>
                        </div>
                        <div class="tg-formtheme tg-formsearch">
                            <fieldset>
                                <input type="text" name="search" class="typeahead form-control" placeholder="Search Here">
                                <button type="submit"><i class="icon-magnifier"></i></button>
                            </fieldset>
                            <div class="tg-gobackhome">
                                <span>Or Goto</span>
                                <a href="javascript:void(0);">Homepage</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="Server">
</asp:Content>

