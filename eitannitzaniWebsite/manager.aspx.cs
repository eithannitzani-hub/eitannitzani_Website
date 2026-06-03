using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class manager : System.Web.UI.Page
{


    string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\eitannitzani_Website1\eitannitzaniWebsite\App_Data\MyHomeDB.mdf;Integrated Security=True";

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
        DataTable dt = new DataTable();

        using (SqlConnection con = new SqlConnection(connectionString))
        {
            using (SqlDataAdapter da = new SqlDataAdapter(sql, con))
            {
                da.Fill(dt);
            }
        }

        gvUsers.DataSource = dt;
        gvUsers.DataBind();
    }
}