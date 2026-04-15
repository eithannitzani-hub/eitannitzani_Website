using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) //שלח
        {
            string email = Request.Form["email"];  //מתוך הטופס name
            string password = Request.Form["password"];

            // התחברות מנהל
            if (email == "EitanMenahel@gmail.com" && password == "menahel1234")
            {
                Response.Redirect("manager.aspx");
            }
            else
            {
                // בדיקת משתמש רגיל
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE Email = '" + email + "' " +
                    "AND Password = '" + password + "'";

                bool userExists = MyAdoHelper.IsExist(sql);

                if (!userExists)
                {
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    // משתמש רשום
                    Response.Redirect("homepage.aspx");
                }
            }
        }
    }
}
