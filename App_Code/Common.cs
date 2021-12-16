using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CodeUtility;
/// <summary>
/// Summary description for Common
/// </summary>
public class Common
{
    public static int GetSaleOff(object oldprice, object price)
    {
        double oldPriceValue = oldprice.ToDouble();
        double priceValue = price.ToDouble();
        if (oldPriceValue <= 0)
        {
            return 0;
        }
        double saleOff = 100 - (priceValue * 100) / oldPriceValue;
        return saleOff.RoundToInt();
    }
    public static void LinkButton_Order_Click(object sender, EventArgs e)
    {
        LinkButton LinkButton_Order = sender as LinkButton;
        int ID = LinkButton_Order.CommandArgument.ToInt();
        int quantity = LinkButton_Order.CommandName.ToInt();

        CartItem item = SessionUtility.MyCart
                                      .CartItems
                                      .FirstOrDefault(x => x.ProductID == ID);

        if (item == null)
        {
            DBEntities db = new DBEntities();
            var productItem = db.Products.FirstOrDefault(x => x.ProductID == ID);
            if (productItem == null)
            {
                SessionUtility.MyCart.CartItems.Remove(item);
                return;
            }

            item = new CartItem();
            item.ProductID = ID;
            item.Title = productItem.Title;
            item.Avatar = productItem.Avatar;
            item.Price = productItem.Price.Value;
            item.OldPrice = productItem.OldPrice.Value;
            item.Quantity = quantity;

            SessionUtility.MyCart.CartItems.Add(item);
        }
        else
        {
            item.Quantity += quantity;
        }
        //Thông báo
        ScriptManager.RegisterStartupScript(LinkButton_Order, typeof(Page), Guid.NewGuid().ToString(), "Toast();", true);
    }
}