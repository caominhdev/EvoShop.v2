using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class NewsDetail : System.Web.UI.Page
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
        int id = Request.QueryString["id"].ToInt();
        var item = db.Articles.Where(x => x.ArticleID == id).ToList(); //id 1 dòng
        Repeater_Main.DataSource = item;
        Repeater_Main.DataBind();
    }
}