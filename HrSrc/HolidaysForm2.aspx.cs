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
    public partial class HolidaysForm2 : System.Web.UI.Page
    {
       // SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);

        SqlConnection Conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnDB"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            TxtHtype.Text="";
           
        }

        
        protected void CmdSave_Click1(object sender, EventArgs e)
        {

            
            SqlCommand com = new SqlCommand("HolidayInsert",Conn);
            com.Parameters.Add("@EmpNo", SqlDbType.Int).Value = TxtNo.Text;
            com.Parameters.Add("@HolydayDate", SqlDbType.Date).Value = TxtholiDate.Text;
            com.Parameters.Add("@HolidayType", SqlDbType.NVarChar).Value = TxtHtype.Text;
            com.Parameters.Add("@HolidayYear", SqlDbType.Int).Value = TxtYear.Text;
            com.Parameters.Add("@DateEndholiday", SqlDbType.Date).Value = TxtEndDate.Text;
            com.Parameters.Add("@HolydayReal", SqlDbType.Int).Value = TxtReal.Text;
            com.Parameters.Add("@RequiredDays", SqlDbType.Int).Value = TxtRequired.Text;
            com.Parameters.Add("@Moddays", SqlDbType.Int).Value = TxtMod.Text;
            com.Parameters.Add("@AlterPerson", SqlDbType.NVarChar).Value = TxtPerson.Text;
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
            Conn.Close();
            TxtNo.Text = "";
            TxtholiDate.Text = "";
            TxtHtype.Text = "";
            TxtYear.Text = "";
            TxtEndDate.Text = "";
            TxtReal.Text = "";
            TxtRequired.Text = "";
            TxtMod.Text = "";
            TxtPerson.Text = "";
            Label1.Text = "";
            Label1.Visible = true;
            Label1.Text = "تم حفظ واحد سجل بنجاح";


        }

        protected void CmdUpdate_Click(object sender, EventArgs e)
        {
           
            SqlCommand com = new SqlCommand("HolidayUpdate", Conn);
            com.Parameters.Add("@EmpNo", SqlDbType.Int).Value = TxtNo.Text;
            com.Parameters.Add("@HolydayDate", SqlDbType.Date).Value = TxtholiDate.Text;
            com.Parameters.Add("@HolidayType", SqlDbType.NVarChar).Value = TxtHtype.Text;
            com.Parameters.Add("@HolidayYear", SqlDbType.Int).Value = TxtYear.Text;
            com.Parameters.Add("@DateEndholiday", SqlDbType.Date).Value = TxtEndDate.Text;
            com.Parameters.Add("@HolydayReal", SqlDbType.Int).Value = TxtReal.Text;
            com.Parameters.Add("@RequiredDays", SqlDbType.Int).Value = TxtRequired.Text;
            com.Parameters.Add("@Moddays", SqlDbType.Int).Value = TxtMod.Text;
            com.Parameters.Add("@AlterPerson", SqlDbType.NVarChar).Value = TxtPerson.Text;
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
           
            Conn.Close();
            TxtNo.Text = "";
            TxtholiDate.Text = "";
            TxtHtype.Text = "";
            TxtYear.Text = "";
            TxtEndDate.Text = "";
            TxtReal.Text = "";
            TxtRequired.Text = "";
            TxtMod.Text = "";
            TxtPerson.Text = "";
            Label1.Text = "";
            Label1.Visible = true;
            Label1.Text = "تم تعديل واحد سجل بنجاح";

        }

        protected void CmdDelete_Click(object sender, EventArgs e)
        {
            
            SqlCommand com = new SqlCommand("HolidayDelete2",Conn);
            com.Parameters.Add("@EmpNo", SqlDbType.Int).Value = TxtNo.Text;
            com.Parameters.Add("@HolydayDate", SqlDbType.Date).Value = TxtholiDate.Text;
            com.Parameters.Add("@HolidayType", SqlDbType.NVarChar).Value = TxtHtype.Text;
            com.Parameters.Add("@HolidayYear", SqlDbType.Int).Value = TxtYear.Text;
            com.Parameters.Add("@DateEndholiday", SqlDbType.Date).Value = TxtEndDate.Text;
            com.Parameters.Add("@HolydayReal", SqlDbType.Int).Value = TxtReal.Text;
            com.Parameters.Add("@RequiredDays", SqlDbType.Int).Value = TxtRequired.Text;
            com.Parameters.Add("@Moddays", SqlDbType.Int).Value = TxtMod.Text;
            com.Parameters.Add("@AlterPerson", SqlDbType.NVarChar).Value = TxtPerson.Text;
            com.CommandType = CommandType.StoredProcedure;
            Conn.Open();
            com.ExecuteNonQuery();
          
            Conn.Close();
            TxtNo.Text = "";
            TxtholiDate.Text = "";
            TxtHtype.Text = "";
            TxtYear.Text = "";
            TxtEndDate.Text = "";
            TxtReal.Text = "";
            TxtRequired.Text = "";
            TxtMod.Text = "";
            TxtPerson.Text = "";
            Label1.Text = "";
            Label1.Visible = true;
            Label1.Text = "تم تعديل واحد سجل بنجاح";
        }

        protected void CmdSearch_Click(object sender, EventArgs e)
        {
           
            SqlDataReader dr =null;
            SqlCommand cmd =new SqlCommand("select*from Holiday where EmpNo = '"+TxtNo.Text+"'",Conn);
            Conn.Open();
            
            dr=cmd.ExecuteReader();
            if(dr.HasRows)
            {
                while (dr.Read())
                {
                    this.TxtNo.Text=dr["EmpNo"].ToString();
                    this.TxtholiDate.Text=dr["HolydayDate"].ToString();
                    this.TxtHtype.Text = dr["HolidayType"].ToString();
                    this.TxtYear.Text=dr["HolidayYear"].ToString();
                    this.TxtEndDate.Text=dr["DateEndholiday"].ToString();
                    this.TxtReal.Text=dr["HolydayReal"].ToString();
                    this.TxtRequired.Text=dr["RequiredDays"].ToString();
                    this.TxtMod.Text=dr["Moddays"].ToString();
                    this.TxtPerson.Text=dr["AlterPerson"].ToString();
                    
                }
                Conn.Close();
                Label1.Text = "تم عرض واحد سجل بنجاح";

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TxtNo.Text = "";
            TxtholiDate.Text = "";
            TxtHtype.Text = "";
            TxtYear.Text = "";
            TxtEndDate.Text = "";
            TxtReal.Text = "";
            TxtRequired.Text = "";
            TxtMod.Text = "";
            TxtPerson.Text = "";
            Label1.Text = "";

        }

    }
}
     