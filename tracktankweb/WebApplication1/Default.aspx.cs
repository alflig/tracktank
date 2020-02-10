using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String queryStr;
        String name;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitEventMethod(object sender, EventArgs e)
        {
            if(SecurityCheck(usernameTextBox.Text) == true && SecurityCheck(passwordTextBox.Text) == true)
            {
                DoSqlQuery();
            }
            else
            {
                passwordTextBox.Text = "The selected password does not pass the security check";
            }
        }

        private bool SecurityCheck(String userInput)
        {
            var regExpression = new System.Text.RegularExpressions.Regex(@"^[a-zA-Z0-9]*$");
            if(regExpression.IsMatch(userInput))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private void DoSqlQuery()
        {
            try 
            {
                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebApplication1ConnectionString"].ToString();
                conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                conn.Open();
                queryStr = "";
                queryStr = "SELECT * FROM webapplication1.registered_user WHERE username='" + usernameTextBox.Text + "' AND password='" + passwordTextBox.Text + "'";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

                reader = cmd.ExecuteReader();
                name = "";
                while (reader.HasRows && reader.Read())
                {
                    name = reader.GetString(reader.GetOrdinal("username"));
                }

                if (reader.HasRows)
                {
                    Session["uname"] = name;
                    Response.BufferOutput = true;
                    Response.Redirect("LoggedIn.aspx", false);
                }
                else
                {
                    passwordTextBox.Text = "Invalid user";
                }
                reader.Close();
                conn.Close();
            }
            catch(Exception e)
            {
                passwordTextBox.Text = e.ToString();
            }
        }
    }
}