using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ucComment : System.Web.UI.UserControl
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
        var data = from a in db.ProductComments       //Bảng thứ 1
                        join k in db.Clients            //Bảng thứ 2
                        on a.ProductCommentID equals k.ClientID  //Đây là điều kiện kết 2 bảng

                        //Danh sách cột cần lấy

                        select new { a.Content, k.FullName};

        Repeater_Main.DataSource = data.Take(3).ToList();
        Repeater_Main.DataBind();
    }
}