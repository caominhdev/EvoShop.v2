using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ucMainMenu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadMainCategory();
            LoadCategory();
        }
    }
    public void LoadMainCategory()
    {
        DBEntities db = new DBEntities();
        var query = db.ProductMainCategories
            .Where(x => x.Status == true)
            .OrderBy(x => x.Position)
            .Select(x => new
            {
                x.ProductMainCategoryID,
                x.Title
            });
        Repeater_ProductMainCategory.DataSource = query.ToList();
        Repeater_ProductMainCategory.DataBind();
    }
    public void LoadCategory()
    {
        var mid = Request.QueryString["mid"].ToInt();
        DBEntities db = new DBEntities();
        var query = db.ProductCategories
            .Where(x => x.Status == true)
            .OrderBy(x => x.Position)
            .Select(x => new
            {
                x.ProductCategoryID,
                x.Title,
                Product = x.Products.Select(y => new { y.ProductID, y.Title }).Take(5)
            });
        Repeater_Sub.DataSource = query.Take(1).ToList();
        Repeater_Sub.DataBind();
    }
}