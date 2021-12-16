using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ucHeader : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["MyClient"] != null)
            {
                b_name.InnerHtml = SessionUtility.MyClient.FullName.ToString();
                span_Info.Visible = true;
            }
            else
            {
                span_Info.Visible = false;
            }
        }

    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        LoadData();
    }


    protected void LinkButton_Logout_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Response.Redirect("/");
    }

    public void LoadData()
    {
        span_Count.InnerHtml = SessionUtility.MyCart.Count.ToString("n0");
        span_Amount.InnerHtml = SessionUtility.MyCart.Amount.ToString("n0");
        Repeater_CartItem.DataSource = SessionUtility.MyCart.CartItems;
        Repeater_CartItem.DataBind();
    }


    protected void LinkButton_Remove_Click(object sender, EventArgs e)
    {
        LinkButton LinkButton_Remove = sender as LinkButton;
        int ID = LinkButton_Remove.CommandArgument.ToInt();
        SessionUtility.MyCart.CartItems.RemoveAll(x => x.ProductID == ID);
        LoadData();
    }

    protected void LinkButton_RemoveAll_Click(object sender, EventArgs e)
    {
        SessionUtility.MyCart.CartItems.Clear();
        LoadData();
    }
}