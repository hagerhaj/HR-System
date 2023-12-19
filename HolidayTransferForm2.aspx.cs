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
    public partial class HolidayTransferForm2 : System.Web.UI.Page
    {
        //SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);
        SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand com = new SqlCommand("HolidayTransferInsert", Conn);
            com.Parameters.Add("@empno", SqlDbType.Int).Value = txtno.Text;
            com.Parameters.Add("@TransDate", SqlDbType.Date).Value = txtdatetrans.Text;
            com.Parameters.Add("@TransDaysNo", SqlDbType.Int).Value = txtdaysnotrans.Text;
            com.Parameters.Add("@HolidayYear", SqlDbType.Int).Value = txtyear.Text;
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your data is saved";
            txtno.Text = "";
            txtdatetrans.Text = "";
            txtdaysnotrans.Text = "";
            txtyear.Text = "";
            Conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            SqlCommand com = new SqlCommand("HolidayTransferUpdate",Conn);
            com.Parameters.Add("@empno", SqlDbType.Int).Value = txtno.Text;
            com.Parameters.Add("@TransDate", SqlDbType.Date).Value = txtdatetrans.Text;
            com.Parameters.Add("@TransDaysNo", SqlDbType.Int).Value = txtdaysnotrans.Text;
            com.Parameters.Add("@HolidayYear", SqlDbType.Int).Value = txtyear.Text;
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your data is Updated";
            txtno.Text = "";
            txtdatetrans.Text = "";
            txtdaysnotrans.Text = "";
            txtyear.Text = "";
            Conn.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
           
            SqlCommand com = new SqlCommand("HolidayTransferDelete",Conn);
            com.Parameters.Add("@EmpNo", SqlDbType.Int).Value = txtno.Text;
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "your data is Delete";
            Conn.Close();
            txtno.Text = "";
            txtdatetrans.Text = "";
            txtdaysnotrans.Text = "";
            txtyear.Text = "";

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            
            SqlDataReader dr =null;
            SqlCommand cmd = new SqlCommand("select*from HolidayTransfer where EmpNo='" + txtno.Text + "'",Conn);
            Conn.Open();
            dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while (dr.Read())
                {
                    this.txtno.Text = dr["EmpNo"].ToString();
                    this.txtdatetrans.Text = dr["TransDate"].ToString();
                    this.txtdaysnotrans.Text = dr["TransDaysNo"].ToString();
                    this.txtyear.Text = dr["HolidayYear"].ToString();
                    
                }
                Conn.Close();
                Label1.Visible = true;
                Label1.Text = "Complete view Search One Record";

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            txtno.Text = "";
            txtdatetrans.Text = "";
            txtdaysnotrans.Text = "";
            txtyear.Text = "";
            Label1.Text = "";
        }
    }
}
      