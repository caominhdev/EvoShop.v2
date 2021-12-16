using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ProductType : System.Web.UI.Page
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
        var id = Request.QueryString["id"].ToInt();
        var sid = Request.QueryString["sid"].ToInt();
        DBEntities db = new DBEntities();
        var query = db.Products
                      .OrderBy(x => x.Position)
                      .Select(x => new
                      {
                          x.ProductID,
                          x.Title,
                          x.Avatar,
                          x.Price,
                          x.OldPrice,
                          x.ProductCategory,
                        Cate = x.ProductCategory.Title,
                          x.ProductCategoryID
                      }).AsQueryable();
        if(id > 0)
        {
            query = query.Where(x => x.ProductID == id);
        }

        if (sid > 0)
        {
            query = query.Where(x => x.ProductCategory.ProductMainCategoryID == sid);
        }
        int pageSize = 12;
        int maxPage = 5;
        int page = Request.QueryString["page"].ToInt();
        if (page <= 0)
            page = 1;
        int totalItems = query.Count();
        string url = "~/ProductType.aspx?id={0}&sid={1}&page={2}".StringFormat(id, sid, "{0}");
        ucPagination.TotalItems = totalItems;
        ucPagination.CurrentPage = page;
        ucPagination.PageSize = pageSize;
        ucPagination.MaxPage = maxPage;
        ucPagination.URL = url;
        ucPagination.DataBind();
        Repeater_Main.DataSource = query.Pagging(page, pageSize).ToList();
        Repeater_Main.DataBind();
    }
}