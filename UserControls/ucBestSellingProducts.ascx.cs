using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucBestSellingProducts : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            LoadData();
        }
    }

    public void LoadData()
    {
        DBEntities db = new DBEntities();
        var query = db.Products.Where(x => x.Status == true).OrderBy(x => Guid.NewGuid()).Select(x => new { x.ProductID, x.Title, x.Avatar, x.Price });
        Repeater_Main.DataSource = query.Take(10).ToList();   
        Repeater_Main.DataBind();
    }
}