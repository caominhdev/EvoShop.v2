using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BottomArticle : System.Web.UI.UserControl
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
                                   x.CreateBy
                               });

        Repeater_Main.DataSource = query.Take(4).ToList();
        Repeater_Main.DataBind();
    }
}