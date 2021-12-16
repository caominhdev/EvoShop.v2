using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ProductSearch : System.Web.UI.Page
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
        var mid = Request.QueryString["mid"].ToInt();
        string keyword = Request.QueryString["title"].ToSafetyString();
        DBEntities db = new DBEntities();
        var query = db.Products
            .Where(x => x.Status == true && x.Title.Contains(keyword))
            .OrderBy(x => Guid.NewGuid())
            .Select(x => new
            {
                x.ProductID,
                x.Avatar,
                x.Title,
                x.Price,
                x.OldPrice,
                x.ProductCategory,
                x.ProductCategoryID
            });

        if (id > 0)
        {
            query = query.Where(x => x.ProductID == id);
        }

        if (mid > 0)
        {
            query = query.Where(x => x.ProductCategory.ProductMainCategoryID == mid);
        }
        int pageSize = 12;
        int maxPage = 5;
        int page = Request.QueryString["page"].ToInt();
        if (page <= 0)
            page = 1;
        int totalItems = query.Count();
        string url = "~/ProductSearch.aspx?id={0}&mid={1}&page={2}".StringFormat(id, mid, "{0}");
        ucPagination.TotalItems = totalItems;
        ucPagination.CurrentPage = page;
        ucPagination.PageSize = pageSize;
        ucPagination.MaxPage = maxPage;
        ucPagination.URL = url;
        ucPagination.DataBind();
        Repeater_Main.DataSource = query.Pagging(page, pageSize).ToList();
        Repeater_Main.DataBind();
    }

    protected void LinkButton_Order_Click(object sender, EventArgs e)
    {

        Common.LinkButton_Order_Click(sender, e);
    }
}