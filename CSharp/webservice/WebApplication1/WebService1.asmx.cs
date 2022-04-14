using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using Newtonsoft.Json;

namespace WebApplication1
{
    /// <summary>
    /// Summary description for WebService1
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebService1 : System.Web.Services.WebService
    {
        DataTable dtCountries = new DataTable();

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }

        [WebMethod]
        public int Sum(int a, int b)
        {
            return a+b;
        }

        [WebMethod]
        public String Countries()
        {
            dtCountries.Columns.Add ("CountryName");
            dtCountries.Columns.Add("Conrinwnr");

            dtCountries.Rows.Add("Pakistan", "asia");
            dtCountries.Rows.Add("India", "asia");
            dtCountries.Rows.Add("Germany", "Europe");
            dtCountries.Rows.Add("SriLanka", "asia");
            dtCountries.Rows.Add("Australia", "Australia");
            dtCountries.Rows.Add("New Zealand", "Australia");

            return JsonConvert.SerializeObject(dtCountries);
        }
    }
}
