using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RegisterEventMethod(object sender, EventArgs e)
        {
            RegisterUser();
        }
        private void RegisterUser()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebApplication1ConnectionString"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            queryStr = "INSERT INTO webapplication1.registered_user (firstName, lastName, email, username, password)" + "VALUES('" + firstNameTextBox.Text + "', '" + lastNameTextBox.Text + "', '" + emailTextBox.Text + "','" + usernameTextBox.Text + "','" + passwordTextBox.Text + "')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr,conn);
            cmd.ExecuteReader();
            conn.Close();
        }
    }
}