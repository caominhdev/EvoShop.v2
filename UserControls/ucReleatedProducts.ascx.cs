using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ucReleatedProducts : System.Web.UI.UserControl
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
        int id = Request.QueryString["id"].ToInt();
        DBEntities db = new DBEntities();
        var query = db.Products
            .Where(x => x.Status == true && x.ProductID != id)
            .OrderBy(x => Guid.NewGuid())
            .Select(x => new
            {
                x.ProductID,
                x.Title,
                x.Avatar,
                x.Price,
                x.OldPrice,
                x.ProductCategoryID
            }).AsQueryable();

        var checkItem = db.Products.FirstOrDefault(x => x.ProductID == id);
        if (checkItem != null)
        {
            int catID = checkItem.ProductCategoryID.Value;
            query = query.Where(x => x.ProductCategoryID == catID);
        }
        Repeater_Main.DataSource = query.Take(9).ToList();
        Repeater_Main.DataBind();
    }

    protected void LinkButton_Order_Click(object sender, EventArgs e)
    {
        Common.LinkButton_Order_Click(sender, e);
    }
}