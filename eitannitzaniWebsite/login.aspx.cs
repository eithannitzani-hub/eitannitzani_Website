using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) //שלח
        {
            string email = Request.Form["email"];  //מתוך הטופס name
            string password = Request.Form["password"];

            //שאילתת הכנסה
            string sqlInsert = "select";

        }
    }
}