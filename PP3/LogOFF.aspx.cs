﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PP3
{
    public partial class LogOFF : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["funcao"] = "";
            Response.Redirect("index.aspx");
        }
    }
}