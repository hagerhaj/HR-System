using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Promotions
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);
        SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CmdSave_Click(object sender, EventArgs e)
        {

           
            SqlCommand com = new SqlCommand("HolidayPlanInsert",Conn);
            com.Parameters.Add("@EmpNo", SqlDbType.Int).Value = TxtEmpNo.Text;
            com.Parameters.Add("@HolidayStartDate", SqlDbType.Date).Value = TxtStartDate.Text;
            
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your data is saved";
            Conn.Close();

        }

        protected void CmdUpdate_Click(object sender, EventArgs e)
        {
            
            SqlCommand com = new SqlCommand("HolidayPlanUpdate",Conn);
            com.Parameters.Add("@EmpNo", SqlDbType.Int).Value = TxtEmpNo.Text;
            com.Parameters.Add("@HolidayStartDate", SqlDbType.Date).Value = TxtStartDate.Text;

            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your data is Updated";
            Conn.Close();
        }

        protected void CmdDelete_Click(object sender, EventArgs e)
        {
            
            SqlCommand com = new SqlCommand("HolidayPlanDelete",Conn);
            com.Parameters.Add("@EmpNo", SqlDbType.Int).Value = TxtEmpNo.Text;
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your data is Delete";
            Conn.Close();
        }

              protected void CmdSearch_Click1(object sender, EventArgs e)
        {
            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("select*from HolidayPlane where EmpNo='" + TxtEmpNo.Text + "'", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    this.TxtEmpNo.Text = dr["EmpNo"].ToString();
                    this.TxtStartDate.Text = dr["HolidayStartDate"].ToString();
                }
                Conn.Close();
                Label1.Visible = true;
                Label1.Text = "Complete view Search One Record";

            }

        }

              protected void Button1_Click(object sender, EventArgs e)
              {
                  TxtEmpNo.Text = "";
                  TxtStartDate.Text = "";
                  Label1.Text = "";
              }
    }
}
