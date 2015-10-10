using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.admin
{
    public partial class mylesson : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string query = Request.QueryString["id"] as string;

                if (!string.IsNullOrEmpty(query))
                {
                    lesson ll = db.lessons.Find(Convert.ToInt32(query));
                    LessonSideBar1.Course = Convert.ToInt32(ll.section1.course);
                    LessonSideBar1.plesson = ll.id;
                    myvideo.HRef = "../" + ll.videoFile;
                    headTitle.Text = "<i class='fa fa-home'></i> <strong> " + ll.section1.title + "</strong> <i class='fa fa-angle-double-right'></i> <span>  " + ll.title + "</span>";
                    Page.Title =  ll.section1.title + " / " + ll.title ;
                }
            }
        }
    }
}