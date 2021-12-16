using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucLeftCategory : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCategory();
        }
    }
    public void LoadCategory()
    {
        DBEntities db = new DBEntities();
        var query = db.ProductMainCategories
                      .OrderBy(x => x.Position)
                      .Select(x => new { 
                      x.ProductMainCategoryID,
                      x.Title

                      });
        Repeater_Main.DataSource = query.ToList();
        Repeater_Main.DataBind();

    }
}