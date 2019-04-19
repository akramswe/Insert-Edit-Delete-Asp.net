using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sectionAFall2018
{
    public partial class Course : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgrid();
        }

        public void loadgrid()
        {
            string query= @"SELECT TOP 1000 [Sl_No]
      ,[Course_Code]
      ,[Course_Name]
  FROM [Information].[dbo].[Course]";


            GridView1.DataSource = db.GetDatatable(query);
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Course]
                           ([Course_Code]
                           ,[Course_Name]
                           ,[Teacher_Initial])
                       VALUES
                           ('" + textcoursecode .Text+ "','" + txtcoursename.Text + "','" + txtteacherInitial.Text + "')";
            if(db.executequery(query) == 1)
            {
                Response.Write("<script>alert('Hello')</script>");
                loadgrid();
            }
        }
    }
}