using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for SessionUtility
/// </summary>
public class SessionUtility
{
    private static Cart _MyCart;
    public static Cart MyCart
    {
        get
        {
            //Lazy Load
            if (_MyCart == null)
            {
                HttpContext.Current.Session["MyCart"] = new Cart();
                _MyCart = HttpContext.Current.Session["MyCart"] as Cart;
            }
            return _MyCart;
        }
    }
    public static Client MyClient
    {
        get
        {
            return HttpContext.Current.Session["MyClient"] as Client;
        }
        set
        {
            HttpContext.Current.Session["MyClient"] = value;
        }
    }
}