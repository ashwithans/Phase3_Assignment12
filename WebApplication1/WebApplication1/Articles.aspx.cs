using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Articles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Call the method to retrieve articles and bind them to a control
                BindArticles();
            }
        }
        private void BindArticles()
        {
            string connectionString = "server=LAPTOP-HURDBM1G;database=ContentDB;trusted_connection=true;"; // Replace with your connection string

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("SELECT Title, Content, PublishDate FROM Articles", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();

                try
                {
                    connection.Open();
                    adapter.Fill(dataTable);

                    rptArticles.DataSource = dataTable;
                    rptArticles.DataBind();
                }
                catch (Exception ex)
                {
                    // Handle exceptions
                }
            }
        }
    }
}
    