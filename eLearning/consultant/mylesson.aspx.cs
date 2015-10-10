using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.consultant
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
                    Page.Title = ll.section1.title + " / " + ll.title;
                    int id = db.profiles.Where(p => p.email == HttpContext.Current.User.Identity.Name).FirstOrDefault().id;
                    userlesson ul = new userlesson() { lessonId = Convert.ToInt32(query) , userId = id, completed = 1 };
                    db.userlessons.Add(ul);
                    try {db.SaveChanges(); }
                    catch { }
                    
                }
            }
        }
    }
}