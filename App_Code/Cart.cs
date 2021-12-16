using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using CodeUtility;
/// <summary>
/// Summary description for Cart
/// </summary>
public class Cart
{
    public double Total //tổng tiền
    {
        get
        {
            return CartItems.Sum(x => x.Quantity * x.OldPrice);
        }
    }

    public double Bonus //số tiền được giảm
    {
        get
        {
            return (Total - Amount);
        }
    }

    public double SaleOff //số tiền được giảm
    {
        get
        {
            return Total * 0.2;
        }
    }
    public double Amount //giá thực
    {
        get
        {
            return CartItems.Sum(x => x.Quantity * x.Price);
        }
    }
    public int Count { get { return CartItems.Sum(x => x.Quantity); } }
    public string FullName { get; set; }
    public string Mobile { get; set; }
    public string Address { get; set; }
    public string Email { get; set; }
    public string Description { get; set; }

    private List<CartItem> _CartItems;
    public List<CartItem> CartItems
    //Lazy Load List CartItem, để luôn sẵn sàng cho việc thêm món mới vào
    {
        get
        {
            if (_CartItems == null)
            {
                _CartItems = new List<CartItem>();
            }
            return _CartItems;
        }

    }
}
public class CartItem
{
    public int ProductID { get; set; } // lấy id sp trong database
    public string Avatar { get; set; }
    public string Title { get; set; }
    public double Price { get; set; }
    public double OldPrice { get; set; }
    public int Quantity { get; set; }
}