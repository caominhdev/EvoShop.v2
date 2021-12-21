using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;

/// <summary>
/// Summary description for Search
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
[System.Web.Script.Services.ScriptService]

public class Search : System.Web.Services.WebService
{
    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static List<Product> GetListProduct(string keyword)
    {
        List<Product> item = new List<Product>();
        DBEntities db = new DBEntities();
        item = db.Products.Where(x => x.Title.StartsWith(keyword)).OrderBy(x => x.Title).ToList();
        return item;
    }

}
