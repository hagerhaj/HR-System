using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace OverTimes
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                  
            string str = "Data Source=HIMIS;Initial Catalog=newpaysrc;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand com = new SqlCommand("OvertimesInsert", con);
            com.Parameters.Add("@OvertimeNo", SqlDbType.VarChar).Value = TextBox1.Text;
            com.Parameters.Add("@OvertimeDesc", SqlDbType.NVarChar).Value = TextBox2.Text;
            com.Parameters.Add("@NormalRate", SqlDbType.Int).Value = TextBox3.Text;
            com.Parameters.Add("@LeavesRate", SqlDbType.Int).Value = TextBox4.Text;
            com.Parameters.Add("@MaxHours", SqlDbType.Int).Value = TextBox5.Text;
            
            com.CommandType = CommandType.StoredProcedure;
            com.ExecuteNonQuery();
            
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Label1.Text = "";
            Label1.Visible = true;
            Label1.Text = "تم حفظ واحد سجل بنجاح";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string str = "Data Source=HIMIS;Initial Catalog=newpaysrc;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand com = new SqlCommand("OvertimesUpdate", con);
            com.Parameters.Add("@OvertimeNo", SqlDbType.VarChar).Value = TextBox1.Text;
            com.Parameters.Add("@OvertimeDesc", SqlDbType.NVarChar).Value = TextBox2.Text;
            com.Parameters.Add("@NormalRate", SqlDbType.Int).Value = TextBox3.Text;
            com.Parameters.Add("@LeavesRate", SqlDbType.Int).Value = TextBox4.Text;
            com.Parameters.Add("@MaxHours", SqlDbType.Int).Value = TextBox5.Text;
            

            com.CommandType = CommandType.StoredProcedure;
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "تم تعديل واحد سجل بنجاح";
            con.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            string str = "Data Source=HIMIS;Initial Catalog=newpaysrc;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlCommand com = new SqlCommand("OvertimesDelete", con);
            com.Parameters.Add("@OvertimeNo", SqlDbType.VarChar).Value = TextBox1.Text;
            com.Parameters.Add("@OvertimeDesc", SqlDbType.NVarChar).Value = TextBox2.Text;
            com.Parameters.Add("@NormalRate", SqlDbType.Int).Value = TextBox3.Text;
            com.Parameters.Add("@LeavesRate", SqlDbType.Int).Value = TextBox4.Text;
            com.Parameters.Add("@MaxHours", SqlDbType.Int).Value = TextBox5.Text;
            
            com.CommandType = CommandType.StoredProcedure;
            com.ExecuteNonQuery();
            Label1.Visible = true;
            Label1.Text = "تم حذف واحد سجل بنجاح";
            con.Close();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
             string str = "Data Source=HIMIS;Initial Catalog=newpaysrc;Integrated Security=True";
            SqlConnection con = new SqlConnection(str);
            con.Open();
            SqlDataReader dr =null;
            SqlCommand cmd =new SqlCommand("select * from Overtimes where OvertimeNo = '"+TextBox1.Text+"'",con);
            
            dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while (dr.Read())
                {
                    this. TextBox1.Text = dr["OvertimeNo"].ToString();
                    this.TextBox2.Text = dr["OvertimeDesc"].ToString();
                    this.TextBox3.Text = dr["NormalRate"].ToString();
                    this.TextBox4.Text = dr["LeavesRate"].ToString();
                        this.TextBox5.Text = dr["MaxHours"].ToString();
                }
               con.Close();
                Label1.Text = "تمت عملية البحث للسجل واحد";

            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Label1.Text = "";
        }
    }
}
        
    
