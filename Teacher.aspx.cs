using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace sectionAFall2018
{
    public partial class Teacher : System.Web.UI.Page
    {

        DataOperation db = new DataOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            loadgridts();
        }

        public void loadgridts()
        {
            //          string query = @"SELECT Teacher.Sl_No
            //    ,Teacher.Teacher_ID
            //    ,Teacher.Teacher_Name
            //    ,Teacher.Teacher_Initial
            //    ,Teacher.Mobile
            //    ,Teacher.Course_Code
            //    ,Curse.Course_Name
            //FROM [Information].[dbo].[Teacher], [Information].[dbo].[Course]
            //WHERE Teacher.Course_Code = Course.Corse_Code";

            string query = @"SELECT Teacher.Sl_No,Teacher.Teacher_ID,
           Teacher.Teacher_Name,Teacher.Teacher_Initial,Teacher.Mobile, Course.Course_Code,Course.Course_Name
        FROM [Information].[dbo].[Teacher] ,[Information].[dbo].[Course]
        WHERE  Teacher.Course_Code =Course.Course_Code";


            GridView1.DataSource = db.GetDatatable(query);
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Teacher]
           ([Teacher_ID]
           ,[Teacher_Name]
           ,[Teacher_Initial]
           ,[Mobile]
           ,[Course_Code])
     VALUES 
('" + textteacherid.Text + "','" + txtteachername.Text + "','" + txtteacherInitial.Text + "','" + textmobile.Text + "', '"+ textcoursecode .Text+ "')";


            if (db.executequery(query) == 1)
            {
                loadgridts();
            }
        }
    }
}