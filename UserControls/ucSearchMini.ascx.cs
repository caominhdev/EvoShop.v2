using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucSearchMini : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LinkButton_Search_Click(object sender, EventArgs e)
    {
        string keyword = input_Keyword.Value.Trim();
        string SearchURL = "Products.aspx?title=" + keyword + "";
        Response.Redirect(SearchURL);
    }
}