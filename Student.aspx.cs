using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sectionAFall2018
{
    public partial class Student : System.Web.UI.Page
    {
        DataOperation db = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgridst();
        }

        public void loadgridst()
        {
            //            string query = @"
            //SELECT TOP 1000 [Sl_No]
            //      ,[Student_ID]
            //      ,[Student_Name]
            //      ,[Mobile]
            //      ,[Course_Code]
            //  FROM [Information].[dbo].[Student]";

            string query = @"SELECT Student.Sl_No,Student.Student_ID,
           Student.Student_Name,Student.Mobile, Course.Course_Code,Course.Course_Name
        FROM [Information].[dbo].[Student] ,[Information].[dbo].[Course]
        WHERE  Student.Course_Code =Course.Course_Code";


            GridView1.DataSource = db.GetDatatable(query);
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Student]
           ([Student_ID]
           ,[Student_Name]
           ,[Mobile]
           ,[Course_Code])
     VALUES 
('" + textstudentid.Text + "','" + txtstudentname.Text + "','" + textmobile.Text + "', '" + textcoursecode.Text + "')";


            if (db.executequery(query) == 1)
            {
                loadgridst();
            }
        }

    }
}