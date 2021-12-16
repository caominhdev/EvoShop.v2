using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ucMessage.HideAll();
        }
    }

    protected void LinkButton_Send_Click(object sender, EventArgs e)
    {
        Contact item = new Contact();

        item.FullName = input_FullName.Value.Trim();
        item.Email = input_Email.Value.Trim();
        item.Mobile = input_Mobile.Value.Trim();
        item.Address = input_Address.Value.Trim();
        item.Content = textarea_Desc.Value.Trim();

        item.Status = false;
        item.CreateTime = DateTime.Now;
        if (item.FullName == string.Empty)
        {
            ucMessage.ShowError("Bạn chưa nhập tên !");
            return;
        }
        if (item.Email == string.Empty)
        {
            ucMessage.ShowError("Bạn chưa nhập Email !");
            return;
        }
        if (item.Mobile == string.Empty)
        {
            ucMessage.ShowError("Bạn chưa nhập số điện thoại !");
            return;
        }
        if (item.Address == string.Empty)
        {
            ucMessage.ShowError("Bạn chưa nhập địa chỉ!");
            return;
        }

        DBEntities db = new DBEntities();
        db.Contacts.Add(item);
        db.SaveChanges();
        ucMessage.ShowSuccess("Gửi thành công, cám ơn quý khách đã phản hồi");

        MailUtility mail = new MailUtility();

        mail.From = "abc@gmail.com";
        mail.Password = "mk";

        mail.Subject = "Thư liên hệ từ website vào lúc : " + DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
        mail.To = "caoquocminhktktbd@gmail.com";
        mail.Body = "Khách hàng : {0} từ địa chỉ email {1} đã gửi cho Admin nội dung sau: {2}";
        mail.Body = mail.Body.StringFormat(item.FullName, item.Email, item.Content);
        mail.IsBodyHtml = true;
        mail.EnableSSL = true;
        mail.Port = 587;
        mail.Host = "smtp.gmail.com";
        mail.SendMail();
        ClearForm();

    }
    public void ClearForm()
    {
        input_Email.Value = string.Empty;
        input_Mobile.Value = string.Empty;
        input_FullName.Value = string.Empty;
        input_Address.Value = string.Empty;
        textarea_Desc.Value = string.Empty;
    }
}