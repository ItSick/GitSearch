using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.Script.Serialization;

/// <summary>
/// GET OR SET SESSION
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]

public class WebService : System.Web.Services.WebService
{
    
    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod(EnableSession = true)]
    public bool setSession(string str)
    {
        bool x = false;
        try
        {
            List<string> myList;

            if (Session["BookmarkList"] == null)
            {
                myList = new List<string>();
            }
            else
            {
                myList = (List<string>)Session["BookmarkList"];
            }

            myList.Add(str);
            Session["BookmarkList"] = myList;
            x = true;
        }
        catch (Exception)
        {
            throw;
        }
        return x;
    }
    [WebMethod (EnableSession = true)]
    public string getSession()
    {

        if (Session["BookmarkList"] == null)
        {
            List<string> myList = new List<string>();
            myList.Add("You have no Bookmarks");
            return new JavaScriptSerializer().Serialize(myList);
        }
        else
        {
            return new JavaScriptSerializer().Serialize(Session["BookmarkList"]);
        }
    }

}
