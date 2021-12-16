using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class Login : System.Web.UI.Page
{
    public string BackUrl
    {
        get
        {
            return ViewState["BackUrl"].ToSafetyString();
        }
        set
        {
            ViewState["BackUrl"] = value;
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            BackUrl = Request.UrlReferrer.ToSafetyString();
            ucMessage.HideAll();
        }
    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
        DBEntities db = new DBEntities();
        string emailMobile = input_MobileEmail.Value.Trim();
        string password = input_Password.Value.Trim();

        Client item = db.Clients.FirstOrDefault(x => (x.Email == emailMobile || x.Mobile == emailMobile) && x.Password == password);
        if (item == null)
        {
            ucMessage.ShowError("Tài khoản không hợp lệ mời đăng nhập lại! ");
            return;
        }

        SessionUtility.MyClient = item;
        //ucMessage.ShowSuccess("Đăng nhập thành công. Về trang chủ");
        GoBack();
    }
    public void GoBack()
    {
        //url của trang trước
        string url = BackUrl;

        if (url == string.Empty)
        {
            url = "/";
        }
        //về trang trước
        Response.Redirect(url);
    }
}