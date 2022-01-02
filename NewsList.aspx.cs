using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class NewsList : System.Web.UI.Page
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
        var query = db.Articles.Where(x => x.Status == true)
                               .OrderByDescending(x => x.CreateTime)
                               .Select(x => new
                               {
                                   x.ArticleID,
                                   x.Avatar,
                                   x.Title,
                                   x.Content,
                                   x.Description,
                                   x.CreateTime,
                                   x.CreateBy,
                                   x.Views
                               });
        int pageSize = 12;
        int maxPage = 5;
        int page = Request.QueryString["page"].ToInt();
        if (page <= 0)
            page = 1;
        int totalItems = query.Count();
        string url = "~/NewsList.aspx?page={0}".StringFormat("{0}");
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