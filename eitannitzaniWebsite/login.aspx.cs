using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string st = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        Page_Load(sender, e, Session);
    }

    protected void Page_Load(object sender, EventArgs e, System.Web.SessionState.HttpSessionState session)
    {
        if (Page.IsPostBack) //שלח
        {
            string email = Request.Form["email"];  //מתוך הטופס name
            string password = Request.Form["password"];

            // התחברות מנהל
            if (email == "EitanMenahel@gmail.com" && password == "menahel1234")
            {
                session["nihol"] = "ok";
                const string V = "EitanMenahel";
                Session["name"] = V;

                Response.Redirect("manager.aspx");
            }
            else
            {
                // בדיקת משתמש רגיל
                string sql =
                    "SELECT * FROM tUsers " +
                    "WHERE Email = '" + email + "' " +
                    "AND Password = '" + password + "'";

                DataTable dt  = MyAdoHelper.ExecuteDataTable(sql);

                if (dt.Rows.Count == 0)
                {
                    st = "אימייל או סיסמה שגויים";
                }
                else
                {
                    // משתמש רשום
                    Session["user"] = "ok";
                    Session["name"] = dt.Rows[0]["fullname"];
                    Response.Redirect("homepage.aspx");
                }
            }
        }
    }
}
