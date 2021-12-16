using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;
public partial class ucComment : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadData();
                div_Comment.Visible = false;
            if (Session["MyClient"] == null)
            {
                div_Comment.Visible = true;
            }
        }
    }

    public void LoadData()
    {
        var id = Request.QueryString["id"].ToInt();
        DBEntities db = new DBEntities();
        //var data = from a in db.ProductComments       
        //                join k in db.Clients   
        //                on a.ProductCommentID equals k.ClientID
        //                select new { a.Content, k.FullName};
        var data = db.ProductComments
            .Where(x => x.Status == true)
            .OrderBy(x => x.CreateTime)
            .Select(x => new
            {
                x.ProductCommentID,
                x.Product,
                x.Content,

            }).AsEnumerable();

        if (id > 0)
        {
            data = data.Where(x => x.Product.ProductID == id);
        }

        Repeater_Main.DataSource = data.Take(3).ToList();
        Repeater_Main.DataBind();
    }

    protected void LinkButton_Comment_Click(object sender, EventArgs e)
    {
        var id = Request.QueryString["id"].ToInt();
        var clientID = SessionUtility.MyClient.ClientID;
        if (Session["MyClient"] != null)
        {
            ProductComment item = new ProductComment();
            item.Content = textarea_Content.Value;
            item.ProductID = id;
            item.ClientID = clientID;

            item.Status = false;
            item.CreateTime = DateTime.Now;
            DBEntities db = new DBEntities();
            db.ProductComments.Add(item);
            db.SaveChanges();
            ClearForm();
        }
    }
    public void ClearForm()
    {
        textarea_Content.Value = string.Empty;
    }
}