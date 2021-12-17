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
            if (Session["MyClient"] != null)

            {
                ucMessage.HideAll();
                div_CommentForm.Visible = true;
            }
            else
            {
                div_CommentForm.Visible = false;
            }
        }
    }

    protected void Page_PreRender(object sender, EventArgs e)
    {
        LoadData();
    }
    public void LoadData()
    {
        var id = Request.QueryString["id"].ToInt();
        DBEntities db = new DBEntities();
        var data = from a in db.ProductComments
                   join k in db.Clients
                   on a.ClientID equals k.ClientID
                   orderby a.CreateTime descending
                   select new
                   {
                       a.ProductID,
                       a.Content,
                       k.FullName,
                   };

        Repeater_Main.DataSource = data.Take(5).ToList();
        Repeater_Main.DataBind();
    }

    protected void LinkButton_Comment_Click(object sender, EventArgs e)
    {
        if (Session["MyClient"] != null)
        {
            var id = Request.QueryString["id"].ToInt(); 
            var clientID = SessionUtility.MyClient.ClientID;
            ProductComment item = new ProductComment();
            item.Content = textarea_Content.Value;
            item.ProductID = id;
            item.ClientID = clientID;

            item.Status = false;
            item.CreateTime = DateTime.Now;
            DBEntities db = new DBEntities();
            db.ProductComments.Add(item);
            db.SaveChanges();

            ucMessage.ShowSuccess("Thành công");
            ClearForm();
            LoadData();
        }
    }
    public void ClearForm()
    {
        textarea_Content.Value = string.Empty;
    }
}