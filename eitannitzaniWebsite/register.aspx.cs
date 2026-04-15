using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    public string st = "";
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

            string sqlCheck =
            "SELECT * FROM tUsers WHERE Email = N'" + email + "'";

            bool exists = MyAdoHelper.IsExist(sqlCheck);

            if (exists)
            {
                st = "מייל שהוכנס קיים במערכת, הכנס אימייל חדש";
            }
            else
            {

                //שאילתת הכנסה
                string sqlInsert = "INSERT INTO tUsers " +
                "VALUES (N'" + fullname +
                "', N'" + email +
                "', N'" + password +
                "', " + age +
                ", N'" + userClass +
                "', N'" + gender + "')";

                //הרצת השאילתא על DB
                MyAdoHelper.DoQuery("MyDB.mdf", sqlInsert);

                //עבור דף
                Response.Redirect("homepage.aspx");



            }

        }
    }


}