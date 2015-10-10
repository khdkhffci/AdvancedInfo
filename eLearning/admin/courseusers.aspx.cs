using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace eLearn.admin
{
    public partial class courseusers : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

            Panel1.Controls.Add(new LiteralControl("<iframe width='100%' height='600' frameborder='0' scrolling='no' marginheight='0' marginwidth='0' src='selectusers?courseid=" + Request.QueryString["courseid"] + "'></iframe>"));
        }
   }
}