using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ProductDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
        }

    }
    public void LoadData()
    {
        int ID = Request.QueryString["id"].ToInt();
        if (ID <= 0)
        {
            Response.Redirect("/");
        }
        DBEntities db = new DBEntities();
        var query = db.Products.Where(x => x.Status == true && x.ProductID == ID)
            .OrderByDescending(x => x.CreateTime)
            .Select(x => new
            {
                x.ProductID,
                x.Avatar,
                x.Title,
                x.OldPrice,
                x.Price,
                x.ImageList,
                x.Content,
                x.Description,
                x.Specification,
                x.CreateBy,
                x.CreateTime
            });
        Repeater_Main.DataSource = query.Take(1).ToList();
        Repeater_Main.DataBind();
    }

    protected void LinkButton_Order_Click(object sender, EventArgs e)
    {
        Common.LinkButton_Order_Click(sender, e);
    }

    protected void LinkButton_Minus_Click(object sender, EventArgs e)
    {
        var value = input_Quantity.Value.ToInt();
        if (value > 1)
        {
            value--;
            input_Quantity.Value = value.ToString();
            LinkButton_Order.CommandName = value.ToString();
        }
    }

    protected void LinkButton_Plus_Click(object sender, EventArgs e)
    {
        var value = input_Quantity.Value.ToInt();
        if (value < 99)
        {
            value++;
            input_Quantity.Value = value.ToString();
            LinkButton_Order.CommandName = value.ToString();
        }
    }
}