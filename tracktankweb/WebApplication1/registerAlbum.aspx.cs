using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class registerAlbum : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["WebApplication1ConnectionString"].ConnectionString;
                using (MySqlConnection con = new MySqlConnection(constr))
                {
                    using (MySqlCommand cmd = new MySqlCommand("SELECT artistID, Name FROM artist"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        artists.DataSource = cmd.ExecuteReader();
                        artists.DataTextField = "name";
                        artists.DataValueField = "artistID";
                        artists.DataBind();
                        con.Close();
                    }
                }
                artists.Items.Insert(0, new ListItem("--Select Customer--", "0"));
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            releaseYear.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
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
            queryStr = "INSERT INTO webapplication1.album (artistID, albumLabel, numberOfTracks, releaseYear)" + "VALUES('" + artists.Text + "', '" + albumName.Text + "', '" + numberOfTracks.Text + "','" + releaseYear.Text + "')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();
        }



    }
}