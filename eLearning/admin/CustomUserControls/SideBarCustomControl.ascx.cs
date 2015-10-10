using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace eLearn.admin.CustomUserControls
{
    public partial class SideBarCustomControl : System.Web.UI.UserControl
    {
        public string active { get; set;}
        eLearningEntities db = new eLearningEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
                HtmlGenericControl current = (HtmlGenericControl)menuItems.FindControl(active);
                current.Attributes.Add("class", "active");

                string username = HttpContext.Current.User.Identity.Name;
                profile pr = db.profiles.Where( p => p.email == username).FirstOrDefault();
                imguser.ImageUrl = pr.photo;
                imguser.AlternateText = pr.fullName;
                lbluser.Text = pr.fullName;
            //}
            //catch { }
          
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("~/login.aspx", true);
        }
    }
}