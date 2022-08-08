using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLyKTXSinhVien.Feature
{
    public partial class TimKiemDayNha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnTimKiem_Click(object sender, EventArgs e)
        {
            string sql;
            if (txtTimKiem.Text.Trim().Length == 0)
            {
                lblthongbao.Visible = true;
                lblthongbao1.Visible = false;

                txtTimKiem.Focus();
                return;
            }

            sql = "SELECT MaDN FROM DAYNHA WHERE MaDN=N'" + txtTimKiem.Text.Trim() + "'";
            if (ThemDayNha.CheckKey(sql))
            {
                lblthongbao1.Visible = false;
            }
            else
            {
                lblthongbao.Visible = false;
                lblthongbao1.Visible = true;
                txtTimKiem.Focus();
                txtTimKiem.Text = "";
                return;
            }

            lblthongbao.Visible = false;
            lblthongbao.Visible = false;
            GridView1.Visible = true;

        }
    }
}