using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace HrSrc
{
    public partial class PromotionsForm1 : System.Web.UI.Page
    {
        // SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);

        SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           
            ////Txtno.Text = "";
            ////TxtDateProm.Text="";
            //TxtScale.Text = "";
            //TxtOccupation.Text = "";
            //TxtMujzia.Text = "";
            //TxtTypeProm.Items.Clear();
            //TxtDepartment.Items.Clear(); 

        }

        protected void CmdSave_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("PromotionsInsert", Conn);
            cmd.Parameters.Add("@EmpNo", SqlDbType.Int).Value = Txtno.Text;
            cmd.Parameters.Add("@PromDate", SqlDbType.Date).Value = TxtDateProm.Text;
            cmd.Parameters.Add("@EmpScale", SqlDbType.VarChar).Value = TxtScale.Text;
            cmd.Parameters.Add("@Occupation", SqlDbType.NVarChar).Value = TxtOccupation.Text;
            cmd.Parameters.Add("@Mujz", SqlDbType.NVarChar).Value = TxtMujzia.Text;
            cmd.Parameters.Add("@PromType", SqlDbType.NVarChar).Value = TxtTypeProm.Text;
            cmd.Parameters.Add("@Department", SqlDbType.NVarChar).Value = TxtDepartment.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            cmd.ExecuteNonQuery();
            Conn.Close();
            
            Txtno.Text = "";
            TxtDateProm.Text="";
            TxtScale.Text = "";
            TxtOccupation.Text = "";
            TxtMujzia.Text = "";
            TxtTypeProm.Items.Clear();
            TxtDepartment.Items.Clear();
            Label1.Visible = true;
            
            Label1.Text = "تمت عملية الحفظ البيانات بنجاح";


        }

        protected void CmdUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("PromotionUpdate", Conn);
            cmd.Parameters.Add("@EmpNo", SqlDbType.Int).Value = Txtno.Text;
            cmd.Parameters.Add("@PromDate", SqlDbType.Date).Value = TxtDateProm.Text;
            cmd.Parameters.Add("@EmpScale", SqlDbType.VarChar).Value = TxtScale.Text;
            cmd.Parameters.Add("@Occupation", SqlDbType.NVarChar).Value = TxtOccupation.Text;
            cmd.Parameters.Add("@Mujz", SqlDbType.NVarChar).Value = TxtMujzia.Text;
            cmd.Parameters.Add("@PromType", SqlDbType.NVarChar).Value = TxtTypeProm.Text;
            cmd.Parameters.Add("@Department", SqlDbType.NVarChar).Value = TxtDepartment.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            cmd.ExecuteNonQuery();
            Conn.Close();
            Label1.Visible = true;
            Label1.Text = "تمت عملية تعديل البيانات بنجاح";


        }

        protected void CmdDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("PromotionDelete", Conn);
            cmd.Parameters.Add("@EmpNo", SqlDbType.Int).Value = Txtno.Text;
            
            cmd.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            cmd.ExecuteNonQuery();
            Conn.Close();
            Label1.Visible = true;
            Label1.Text = "تمت عملية حذف البيانات بنجاح";

        }

        protected void CmdSearch_Click(object sender, EventArgs e)
        {
            SqlDataReader dr =null;
            SqlCommand cmd = new SqlCommand("select * from Promotions where EmpNo = '" + Txtno.Text + "' ", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while(dr.Read())
                {
                    this.Txtno.Text = dr["EmpNo"].ToString();
                    this.TxtDateProm.Text = dr["PromDate"].ToString();
                    this.TxtScale.Text = dr["EmpScale"].ToString();
                    this.TxtOccupation.Text = dr["Occupation"].ToString();
                    this.TxtMujzia.Text = dr["Mujz"].ToString();
                    this.TxtTypeProm.Text = dr["PromType"].ToString();
                    this.TxtDepartment.Text = dr["Department"].ToString();
                }
                Conn.Close();
                Label1.Text = "One Record View on Search";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
                    Txtno.Text ="";
                    TxtDateProm.Text =""; 
                    TxtScale.Text = "";
                    TxtOccupation.Text =""; 
                    TxtMujzia.Text = "";
                    TxtTypeProm.Text = "";
                    TxtDepartment.Text = "";
        }

       }
}
