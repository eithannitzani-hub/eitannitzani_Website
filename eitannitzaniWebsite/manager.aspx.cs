using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ShowUsers();
        }
    }

    private void ShowUsers()
    {
        string sql = "SELECT * FROM tUsers";

        DataTable dt = Helper.ExecuteDataTable("Database.mdf", sql);

        gvUsers.DataSource = dt;
        gvUsers.DataBind();
    }
}