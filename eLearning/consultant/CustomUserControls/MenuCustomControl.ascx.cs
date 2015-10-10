using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.consultant.CustomUserControls
{
    public partial class MenuCustomControl : System.Web.UI.UserControl
    {
        eLearningEntities db = new eLearningEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string username = HttpContext.Current.User.Identity.Name;
                profile pr = db.profiles.Where(p => p.email == username).FirstOrDefault();
                imguser.ImageUrl = pr.photo;
                imguser.AlternateText = pr.fullName;
                lblusername.Text = pr.fullName;
            }
            catch { }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            FormsAuthentication.SignOut();
            Response.Redirect("~/login.aspx", true);
        }
    }
}