﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace QuanLyKTXSinhVien.Feature
{
    public partial class KetQuaPhongTrong : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnThemSinhVien_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemSinhVien.aspx");
        }

       
        
    }
}