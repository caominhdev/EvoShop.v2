using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ucLeftArticle : System.Web.UI.UserControl
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
        var query = db.Articles
                      .Where(x => x.Status == true)
                      .OrderBy(x => Guid.NewGuid())
                      .Select(x => new { x.ArticleID, x.Title ,x.Avatar, x.CreateBy});
        Repeater_Main.DataSource = query.Take(10).ToList();
        Repeater_Main.DataBind();   
    }           
}