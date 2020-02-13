using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class registerArtist : System.Web.UI.Page
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
            queryStr = "INSERT INTO webapplication1.artist (name, country, age, bio, careerStart, careerEnd)" + "VALUES('" + artistName.Text + "', '" + artistCountry.Text + "', '" + age.Text + "','" + bio.Text + "','"  + careerStart.Text + "','" + end.Text + "')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            calendar1.Attributes.Add("style", "position:absolute");
        }

        protected void calendar1_SelectionChanged(object sender, EventArgs e)
        {
            careerStart.Text = calendar1.SelectedDate.ToString("dd/MM/yyyy");
            
        }

        protected void calendar2_SelectionChanged(object sender, EventArgs e)
        {
            end.Text = calendar2.SelectedDate.ToString("dd/MM/yyyy");
        }
    }
}