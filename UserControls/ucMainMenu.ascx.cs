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
            LoadData();
            LoadCategory();
        }
    }
    public void LoadData()
    {
        DBEntities db = new DBEntities();
        var data = db.ProductMainCategories
                     .Where(m => m.Status == true)
                     .OrderBy(m => m.Position)
                     .Select(m => new
                     {
                         m.ProductMainCategoryID,
                         m.Title,
                         CatList = m.ProductCategories.Where(c => c.Status == true)
                                                      .OrderBy(c => c.Position)
                                                      .Select(c => new
                                                      {
                                                          c.ProductCategoryID,
                                                          c.Title,
                                                          ProductList = c.Products.Where(p => p.Status == true)
                                                                                  .OrderBy(p => p.Position)
                                                                                  .Select(p => new
                                                                                  {
                                                                                      p.ProductID,
                                                                                      p.Title,
                                                                                  }).Take(2)
                                                      })
                     }).ToList();

        Repeater_Tabs.DataSource = data;
        Repeater_Contents.DataSource = data;

        Repeater_Tabs.DataBind();
        Repeater_Contents.DataBind();
    }

    public void LoadCategory()
    {

        DBEntities db = new DBEntities();
        var data = db.ProductMainCategories
                     .Where(m => m.Status == true)
                     .OrderBy(m => m.Position)
                     .Select(m => new
                     {
                         m.ProductMainCategoryID,
                         m.Title,
                     }).ToList();
        Repeater_Category.DataSource = data;
        Repeater_Category.DataBind();
    }

}