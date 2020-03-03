using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace WebApplication1
{
    public partial class registerArtist : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                int year = DateTime.Now.Year;
                for (int i = year - 200; i <= year + 0; i++)
                {
                    ListItem li = new ListItem(i.ToString());
                    artistAge.Items.Add(li);
                }
                artistAge.Items.FindByText(year.ToString()).Selected = true;
            }

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = "you selected year<br />";
            Label1.Text += artistAge.SelectedItem.Text;
        }
        protected void RegisterEventMethod(object sender, EventArgs e)
        {
            RegisterUser();
        }
        private void RegisterUser()
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["WebApplication1ConnectionString"].ConnectionString;
                    using (MySqlConnection con = new MySqlConnection(constr))
                    {
                        string query = "INSERT INTO webapplication1.artist (name, country, age, bio, careerStart, careerEnd, FileName, ContentType, Content)" + "VALUES(@artistName, @artistCountry, @age, @bio, @careerStart, @end, @FileName, @ContentType, @Content)";

                        using (MySqlCommand cmd = new MySqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@artistName", artistName.Text);
                            cmd.Parameters.AddWithValue("@artistCountry", artistCountry.Text);
                            cmd.Parameters.AddWithValue("@age", artistAge.Text);
                            cmd.Parameters.AddWithValue("@bio", bio.Text);
                            cmd.Parameters.AddWithValue("@careerStart", careerStart.Text);
                            cmd.Parameters.AddWithValue("@end", end.Text);
                            cmd.Parameters.AddWithValue("@FileName", filename);
                            cmd.Parameters.AddWithValue("@ContentType", contentType);
                            cmd.Parameters.AddWithValue("@Content", bytes);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
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