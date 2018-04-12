using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class app_Default2 :  System.Web.UI.Page
{
    List<string> myList = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string item = hidDivId.Value;
        myList.Add(item);
        Session["BookmarkList"] = myList;
        Response.Cookies.Add(new HttpCookie("term" ,srcBtn.Value));
       
    }
}