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
    public static object GetListProduct(string keyword)
    {
        DBEntities db = new DBEntities();
        var item = db.Products.Where(x => x.Title.Contains(keyword)).OrderBy(x => x.Title).Select(x => new
        {
            x.Title,
            x.Price,
            x.Avatar
        });
        return item.ToList();
    }

}
