using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            ucMessage.HideAll();
        }
    }

    protected void Button_Register_Click(object sender, EventArgs e)
    {
        Client item = new Client();
        item.FullName = input_FullName.Value.Trim();
        item.Email = input_Email.Value.Trim();
        item.Password = input_Password.Value.Trim();
        item.Address = input_Address.Value.Trim();

        item.Status = true;
        item.CreateTime = DateTime.Now;
        item.ClientCategoryID = 1;

        if (item.FullName == string.Empty)
        {
            ucMessage.ShowError("Vui lòng nhập họ tên:");
            return;
        }
        if (item.Address == string.Empty)
        {
            ucMessage.ShowError("Vui lòng nhập địa chỉ:");
            return;
        }
        if (item.Email == string.Empty)
        {
            ucMessage.ShowError("Vui lòng nhập email:");
            return;
        }

        DBEntities db = new DBEntities();
        if (db.Clients.FirstOrDefault(x => x.Mobile == item.Mobile || x.Email == item.Email) != null)
        {
            ucMessage.ShowError("Email hoặc SĐT đã được sử dụng ở tài khoản khác. Mời đăng nhập");
            return;
        }

        db.Clients.Add(item);
        db.SaveChanges();
        ucMessage.ShowSuccess("Đã đăng ký tài khoản thành công. Mời bạn <a href='Login.aspx'><strong>đăng nhập</strong></a>");
        ClearForm();
    }
    private void ClearForm()
    {
        input_FullName.Value = string.Empty;
        input_Email.Value = string.Empty;
        input_Password.Value = string.Empty;
        input_Address.Value = string.Empty;
    }
}