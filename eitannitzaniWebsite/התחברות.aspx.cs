using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class התחברות : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) //שלח
        {
            string fullname = Request.Form["fullname"];  //מתוך הטופס name
            string email = Request.Form["email"];
            string password = Request.Form["password"];
            string age = Request.Form["age"];
            string userClass = Request.Form["class"];
            string gender = Request.Form["gender"];

            //שאילתת הכנסה
            string sqlInsert = "INSERT INTO tUsers " +
                "VALUES (N'" + fullname +
                "', N'" + email +
                "', N'" + password +
                "', " + age +
                ", N'" + userClass +
                "', N'" + gender + "')";

            //הרצת השאילתא על DB
            MyAdoHelper.DoQuery("MyDB.mdf",sqlInsert);

            //עבור דף
            Response.Redirect("homepage.aspx");

        }

    }
}