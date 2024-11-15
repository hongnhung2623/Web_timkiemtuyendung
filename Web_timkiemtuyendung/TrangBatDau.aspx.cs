using System;

namespace Web_timkiemtuyendung
{
    public partial class TrangBatDau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Adding required attribute via code-behind
            txtUsername.Attributes.Add("required", "required");
            txtPassword.Attributes.Add("required", "required");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            if (username == "admin" && password == "123")
            {
                // Redirect to the TrangChu.aspx page
                Response.Redirect("TrangChu.aspx");
            }
            else
            {
                // Display error message
                lblError.Text = "Sai tên đăng nhập hoặc mật khẩu!";
            }
        }
    }
}
