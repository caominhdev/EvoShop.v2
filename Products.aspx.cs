using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Products : System.Web.UI.Page
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
        DBEntities db = new DBEntities();
        var data = db.Products
            .Where(x => x.Status == true)
            .OrderBy(x => Guid.NewGuid())
            .Select(x => new
            {
                x.ProductID,
                x.Avatar,
                x.Title,
                x.Price,
                x.OldPrice
            });
        Repeater_Main.DataSource = data.Take(20).ToList();
        Repeater_Main.DataBind();
    }
}