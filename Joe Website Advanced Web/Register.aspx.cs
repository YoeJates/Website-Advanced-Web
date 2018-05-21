using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace Joe_Website_Advanced_Web
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("db_1624528_webConnectionString");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var manager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = nameText.Text, Email = emailText.Text };
            IdentityResult result = manager.Create(user, passwordText.Text);
            if (result.Succeeded)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                validLabel.Text = "An error has occurred: " + result.Errors.FirstOrDefault();
            }
        }
    }
}