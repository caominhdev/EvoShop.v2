using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;

public partial class Checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ucMessage.HideAll();
            LoadClientInfo();
        }
    }

    protected void LinkButton_Checkout_Click(object sender, EventArgs e)
    {
        if (SessionUtility.MyCart.Count == 0)
        {
            ucMessage.ShowError("Vui lòng chọn thêm sản phẩm !");
            return;
        }
        Order item = new Order();
        item.FullName = input_FullName.Value.Trim();
        item.Mobile = input_Mobile.Value.Trim();
        //item.Email = input_Email.Value.Trim();
        item.Address = input_Address.Value.Trim();
        //item.Content = textarea_Note.Value.Trim();
        item.CreateTime = DateTime.Now;

        item.OrderStatus = true;
        item.ConfirmStatus = false;
        item.ChargeStatus = false;
        item.DeliveStatus = false;

        if (SessionUtility.MyClient != null) // lưu lại ID tích điểm
            item.ClientID = SessionUtility.MyClient.ClientID;

        item.Total = SessionUtility.MyCart.Total;
        item.Bonus = SessionUtility.MyCart.Bonus;
        item.Amount = SessionUtility.MyCart.Amount;

        //bắt lỗi nhập
        if (item.FullName == string.Empty)
        {
            ucMessage.ShowError("Vui lòng nhập tên khách hàng !");
            return;
        }
        if (item.Mobile == string.Empty)
        {
            ucMessage.ShowError("Vui lòng nhập số điện thoại khách hàng !");
            return;
        }
        //if (item.Email == string.Empty)
        //{
        //    ucMessage.ShowError("Vui lòng nhập email khách hàng !");
        //    return;
        //}
        if (item.Address == string.Empty)
        {
            ucMessage.ShowError("Vui lòng nhập địa chỉ khách hàng !");
            return;
        }
        foreach (var cartItem in SessionUtility.MyCart.CartItems)
        {
            OrderDetail orderDetailItem = new OrderDetail();
            orderDetailItem.ProductID = cartItem.ProductID;
            orderDetailItem.Price = cartItem.Price;
            orderDetailItem.Quantity = cartItem.Quantity;

            item.OrderDetails.Add(orderDetailItem);
        }

        DBEntities db = new DBEntities();
        db.Orders.Add(item);
        db.SaveChanges();
        //Thanh toán trực tuyến or tại nhà:
        //Chuyển đến trang thanh toán
        //Lấy url của website
        string baseUrl = Request.Url.GetLeftPart(UriPartial.Authority);
        //Kiểm tra phương thức thanh toán
        if (radio_PaymentAtHome.Checked)
        {
            //Thanh toán tại nhà
            string returnUrl = "{0}/CheckoutComplete.aspx?payment_type={1}&order_code={2}".StringFormat(baseUrl, 0, item.OrderID);
            Response.Redirect(returnUrl);
            return;
        }
        else
        {
            //Thanh toán tại nganluong
            string returnUrl = "{0}/CheckoutComplete.aspx".StringFormat(baseUrl);
            string transaction_info = "Quốc Minh thanh toán đơn hàng có mã số {0}".StringFormat(item.OrderID);
            string order_code = item.OrderID.ToString();

            string receiver = "";

            string price = "2000"; //Giá demo tối thiểu 2000  // item.Amount.ToString();
            NL_Checkout nl = new NL_Checkout();
            string url = nl.buildCheckoutUrl(returnUrl, receiver, transaction_info, order_code, price);
            Response.Redirect(url);
        }
    }

    public void LoadClientInfo()
    {
        if (SessionUtility.MyClient == null)
            return;

        //span_MessLogin.Visible = false;
        input_FullName.Value = SessionUtility.MyClient.FullName;
        input_Email.Value = SessionUtility.MyClient.Email;
        input_Mobile.Value = SessionUtility.MyClient.Mobile;
        input_Address.Value = SessionUtility.MyClient.Address;
    }
}