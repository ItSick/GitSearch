﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class app_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var myList = Session["bookmarkList"];
        Page.ClientScript.RegisterStartupScript(this.GetType(), "updateBookmarks", "updateBookmarks(" + myList + ");", true);
    }
}