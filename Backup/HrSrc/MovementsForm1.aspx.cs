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
    public partial class MovementsForm1 : System.Web.UI.Page
    {
      //  SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);

        SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void CmdSave_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("MovementsInsert", Conn);
            cmd.Parameters.Add("@EmpNo", SqlDbType.Int).Value = Txtno.Text;
            cmd.Parameters.Add("Department", SqlDbType.NVarChar).Value = TxtDepartment.Text;
            cmd.Parameters.Add("ToDepartment", SqlDbType.NVarChar).Value = TxtToDepartment.Text;
            cmd.Parameters.Add("Region", SqlDbType.NVarChar).Value = TxtRegion.Text;
            cmd.Parameters.Add("ToRegion", SqlDbType.NVarChar).Value = TxtToRegion.Text;
            cmd.Parameters.Add("Section", SqlDbType.NVarChar).Value = TxtSection.Text;
            cmd.Parameters.Add("ToSection", SqlDbType.NVarChar).Value = TxtToSection.Text;
            cmd.Parameters.Add("Reasons", SqlDbType.NVarChar).Value = TxtCauseTrans.Text;
            cmd.Parameters.Add("Occupation", SqlDbType.NVarChar).Value = TxtOccupation.Text;
            cmd.Parameters.Add("TransDate", SqlDbType.Date).Value = txttrandate.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            cmd.ExecuteNonQuery();
            Conn.Close();
            Label1.Visible = true;
            Label1.Text = "تم حفظ البيانات بنجاح";
            
            
        }

        protected void CmdUpdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("MovementsUpdate", Conn);
            cmd.Parameters.Add("@EmpNo", SqlDbType.Int).Value = Txtno.Text;
            cmd.Parameters.Add("Department", SqlDbType.NVarChar).Value = TxtDepartment.Text;
            cmd.Parameters.Add("ToDepartment", SqlDbType.NVarChar).Value = TxtToDepartment.Text;
            cmd.Parameters.Add("Region", SqlDbType.NVarChar).Value = TxtRegion.Text;
            cmd.Parameters.Add("ToRegion", SqlDbType.NVarChar).Value = TxtToRegion.Text;
            cmd.Parameters.Add("Section", SqlDbType.NVarChar).Value = TxtSection.Text;
            cmd.Parameters.Add("ToSection", SqlDbType.NVarChar).Value = TxtToSection.Text;
            cmd.Parameters.Add("Reasons", SqlDbType.NVarChar).Value = TxtCauseTrans.Text;
            cmd.Parameters.Add("Occupation", SqlDbType.NVarChar).Value = TxtOccupation.Text;
            cmd.Parameters.Add("TransDate", SqlDbType.Date).Value = TransDate.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            cmd.ExecuteNonQuery();
            Conn.Close();
            Label1.Visible = true;
            Label1.Text = "تم تعديل البيانات بنجاح";
            

        }

        protected void CmdDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("MovementsDelete", Conn);
            cmd.Parameters.Add("@EmpNo", SqlDbType.Int).Value = Txtno.Text;
            cmd.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            cmd.ExecuteNonQuery();
            Conn.Close();
            Label1.Visible = true;
            Label1.Text = "تم حذف البيانات بنجاح";
            

            
        }

        protected void CmdSearch_Click(object sender, EventArgs e)
        {
            SqlDataReader dr = null;
            SqlCommand cmd = new SqlCommand("select*from Movements where EmpNo = '" + Txtno.Text + "' ", Conn);
            Conn.Open();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    
                    this.Txtno.Text=dr["EmpNo"].ToString();
                    this.TxtDepartment.Text=dr["Department"].ToString();
                    this.TxtRegion.Text=dr["Region"].ToString();
                    this.TxtSection.Text=dr["Section"].ToString();
                    this.TxtCauseTrans.Text=dr["Reasons"].ToString();
                    this.TxtOccupation.Text = dr["Occupation"].ToString();
                    this.txttrandate.Text = dr["TransDate"].ToString();
                    this.TxtToDepartment.Text = dr["ToDepartment"].ToString();
                    this.TxtToRegion.Text = dr["ToRegion"].ToString();
                    this.TxtToSection.Text = dr["ToSection"].ToString();
                }
                Conn.Close();
                Label1.Visible = true;
                Label1.Text = "Show One Record";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Txtno.Text = "";
            TxtDepartment.Text = "";
            TxtRegion.Text = "";
            TxtSection.Text = "";
            TxtOccupation.Text = "";
            TxtCauseTrans.Text = "";
            txttrandate.Text = "";
            TxtToDepartment.Text = "";
            TxtToRegion.Text = "";
            TxtToSection.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}

