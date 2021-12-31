using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;
public partial class ucFilter : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList_Option_SelectedIndexChanged(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"].ToInt();
        var mid = Request.QueryString["mid"].ToInt();
        DBEntities db = new DBEntities();
        var query = db.Products.Where(x => x.Status == true);

        //Lọc A-Z
        if (DropDownList_Option.SelectedItem.Value == "0")
        {
            query = query.OrderBy(x => x.Title);
        }
        else if (DropDownList_Option.SelectedItem.Value == "1")
        {
            query = query.OrderByDescending(x => x.Title);
        }
        else if (DropDownList_Option.SelectedItem.Value == "2")
        {
            query = query.OrderBy(x => x.Price);
        }
        else if (DropDownList_Option.SelectedItem.Value == "3")
        {
            query = query.OrderByDescending(x => x.Price);
        }
        else
        {
            return;
        }

        int pageSize = 10;
        int maxPage = 5;
        int page = Request.QueryString["page"].ToInt();
        if (page <= 0)
            page = 1;
        int totalItems = query.Count();
        string url = "~/Products.aspx?id={0}&mid={1}&page={2}".StringFormat(id, mid, "{0}");
        ucPagination.TotalItems = totalItems;
        ucPagination.CurrentPage = page;
        ucPagination.PageSize = pageSize;
        ucPagination.MaxPage = maxPage;
        ucPagination.URL = url;
        ucPagination.DataBind();
        Repeater_Main.DataSource = query.Pagging(page, pageSize).ToList();
        Repeater_Main.DataBind();
    }


    protected void DropDownList_Price_SelectedIndexChanged(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"].ToInt();
        var mid = Request.QueryString["mid"].ToInt();
        DBEntities db = new DBEntities();
        var query = db.Products.Where(x => x.Status == true);

        if (DropDownList_Price.SelectedItem.Value == "<4")
        {
            query = query.Where(x => x.Price < 4000000).OrderBy(x => x.Price);
        }
        else if (DropDownList_Price.SelectedItem.Value == "4-8")
        {
            query = query.Where(x => x.Price >= 4000000 && x.Price <= 8000000).OrderBy(x => x.Price);
        }
        else if (DropDownList_Price.SelectedItem.Value == "8-13")
        {
            query = query.Where(x => x.Price >= 8000000 && x.Price <= 13000000).OrderBy(x => x.Price);
        }
        else if (DropDownList_Price.SelectedItem.Value == "13-20")
        {
            query = query.Where(x => x.Price >= 13000000 && x.Price <= 20000000).OrderBy(x => x.Price);
        }
        else if (DropDownList_Price.SelectedItem.Value == "20-25")
        {
            query = query.Where(x => x.Price >= 20000000 && x.Price <= 25000000).OrderBy(x => x.Price);
        }
        else if (DropDownList_Price.SelectedItem.Value == "25>")
        {
            query = query.Where(x => x.Price > 25000000).OrderBy(x => x.Price).OrderBy(x => x.Price);
        }
        else
        {
            return;
        }
        int pageSize = 10;
        int maxPage = 5;
        int page = Request.QueryString["page"].ToInt();
        if (page <= 0)
            page = 1;
        int totalItems = query.Count();
        string url = "~/Products.aspx?id={0}&mid={1}&page={2}".StringFormat(id, mid, "{0}");
        ucPagination.TotalItems = totalItems;
        ucPagination.CurrentPage = page;
        ucPagination.PageSize = pageSize;
        ucPagination.MaxPage = maxPage;
        ucPagination.URL = url;
        ucPagination.DataBind();
        Repeater_Main.DataSource = query.Pagging(page, pageSize).ToList();
        Repeater_Main.DataBind();
    }


    protected void DropDownList_Category_SelectedIndexChanged(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"].ToInt();
        var mid = Request.QueryString["mid"].ToInt();
        DBEntities db = new DBEntities();
        var query = db.Products.Where(x => x.Status == true).Select(x => new
        {
            x.ProductID,
            x.Avatar,
            x.Title,
            x.Price,
            x.OldPrice,
            x.ProductCategory,
            x.ProductCategoryID
        });

        if (DropDownList_Category.SelectedItem.Value == "iphone")
        {
            query = query.Where(x => x.ProductCategoryID == 1).OrderBy(x => x.Title);
        }
        else if (DropDownList_Category.SelectedItem.Value == "samsung")
        {
            query = query.Where(x => x.ProductCategoryID == 2 || x.ProductCategoryID == 14).OrderBy(x => x.Title);
        }
        else if (DropDownList_Category.SelectedItem.Value == "oppo")
        {
            query = query.Where(x => x.ProductCategoryID == 3).OrderBy(x => x.Title);
        }
        else if (DropDownList_Category.SelectedItem.Value == "vivo")
        {
            query = query.Where(x => x.ProductCategoryID == 5).OrderBy(x => x.Title);
        }
        else if (DropDownList_Category.SelectedItem.Value == "xiaomi")
        {
            query = query.Where(x => x.ProductCategoryID == 4).OrderBy(x => x.Title);
        }
        else if (DropDownList_Category.SelectedItem.Value == "realme")
        {
            query = query.Where(x => x.ProductCategoryID == 6).OrderBy(x => x.Title);
        }
        else
        {
            return;
        }

        int pageSize = 10;
        int maxPage = 5;
        int page = Request.QueryString["page"].ToInt();
        if (page <= 0)
            page = 1;
        int totalItems = query.Count();
        string url = "~/Products.aspx?id={0}&mid={1}&page={2}".StringFormat(id, mid, "{0}");
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