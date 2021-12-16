using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucSearchBox : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void LinkButton_Search_Click(object sender, EventArgs e)
    {
        string keyword = input_Keyword.Value;
        if (keyword.Contains("%20"))
        {
            keyword.Replace("%20", " ");
        }
        string url = "/ProductSearch.aspx?title=" + keyword + "";
        //if (keyword = '%20')
        //{
        //    url = "/" ;
        //}
        if (keyword == string.Empty)
        {
            url = "/";
        }
        Response.Redirect(url);
    }
}