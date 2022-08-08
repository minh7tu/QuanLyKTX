using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;



namespace QuanLyKTXSinhVien.Feature
{
    public partial class ThemDayNha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void Reset()
        {
            txtMaDN.Text = "";
            txtTenDN.Text = "";
            txtDiaChi.Text = "";
        }

        protected void btnHoanTac_Click(object sender, EventArgs e)
        {
            lblthongbao.Visible = false;
            lblthongbao1.Visible = false;
            lblthongbao2.Visible = false;
            Reset();
        }

        public static bool CheckKey(string sql)
        {
            //string connstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QuanLyKTXSinhVien.mdf;Integrated Security=True";
            string connstring = WebConfigurationManager.ConnectionStrings["QlKTXSinhVien"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connstring);
            myconn.Open();

            SqlDataAdapter dap = new SqlDataAdapter(sql, myconn);
            DataTable table = new DataTable();
            dap.Fill(table);
            if (table.Rows.Count > 0)
                return true;
            else return false;
            //myconn.Close();
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string sql;
            if (txtMaDN.Text.Trim().Length == 0)
            {
                lblthongbao1.Visible = true;
                lblthongbao.Visible = false;
                lblthongbao2.Visible = false;
                txtMaDN.Focus();
                return;
            }

            if (txtTenDN.Text.Trim().Length == 0)
            {
                lblthongbao2.Visible = true;
                lblthongbao.Visible = false;
                lblthongbao1.Visible = false;
                txtTenDN.Focus();
                return;
            }

            sql = "SELECT MaDN FROM DAYNHA WHERE MaDN=N'" + txtMaDN.Text.Trim() + "'";
            if (CheckKey(sql))
            {
                lblthongbao.Visible = true;
                lblthongbao1.Visible = false;
                lblthongbao2.Visible = false;
                txtMaDN.Focus();
                txtMaDN.Text = "";
                return;
            }

            //string connstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\QuanLyKTXSinhVien.mdf;Integrated Security=True";
            string connstring = WebConfigurationManager.ConnectionStrings["QlKTXSinhVien"].ConnectionString;
            SqlConnection myconn = new SqlConnection(connstring);
            myconn.Open();

            SqlCommand cmd = new SqlCommand("insertDayNha", myconn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@MaDN", txtMaDN.Text));
            cmd.Parameters.Add(new SqlParameter("@TenDN", txtTenDN.Text));
            cmd.Parameters.Add(new SqlParameter("@DiaChi", txtDiaChi.Text));
            cmd.ExecuteNonQuery();
            lblthongbao.Visible =lblthongbao1.Visible=lblthongbao2.Visible= false;
            Reset();
            Response.Redirect("HienThiDN.aspx");
            myconn.Close();
        }
    }
}