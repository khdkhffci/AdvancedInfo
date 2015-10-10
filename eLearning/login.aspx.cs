using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn
{
    public partial class login : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {


            if ( ValidateUser(username.Value, password.Value))
            {
                FormsAuthentication.RedirectFromLoginPage(username.Value, cbxremember.Checked);
                if (username.Value == "admin")
                    Response.Redirect("~/admin");
                else
                    Response.Redirect("~/consultant");
            }
            else
            {
                error.Visible = true;
            }
        }


        public bool ValidateUser(string user, string pass)
        {
            var query = from p in db.profiles where p.email == user select p;
            profile pr =  db.profiles.FirstOrDefault(q => q.email == user);

           if (pr != null && Helper.Decrypt(pr.password) == pass)
               return true;
           else
               return false;
          
        }
    }
}