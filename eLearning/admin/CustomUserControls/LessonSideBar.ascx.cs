using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.admin.CustomUserControls
{
    public partial class LessonSideBar : System.Web.UI.UserControl
    {
        eLearningEntities db = new eLearningEntities();
        
        public int Course;
        public int plesson;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
                StringBuilder sb = new StringBuilder();
                cours c = db.courses.Find(Course);
                List<section> ss = db.sections.Where(p => p.course == c.id).ToList();
                
                foreach (var section in ss)
                { 
                    var ll = db.lessons.Where(l => l.section == section.id).ToList();

                     if( ll .Count != 0 )
                     {
                        sb.Append("<div class='panel panel-default' data-toggle='panel-collapse' data-open='true'>");
                        // Append Section Title 
                        sb.Append(string.Format("<div class='panel-heading panel-collapse-trigger'><h3 class='panel-title'><strong>{0}</strong></h3></div>", section.title));
                        // Append List UL 
                        sb.Append("<div class='panel-body list-group'><ul class='list-group list-group-menu'>");
                   
                        foreach (var lesson in ll)
                        {
                            if(lesson.id == plesson)
                                sb.Append(string.Format("<li class='list-group-item active'><a class='link-text-color ' href='mylesson.aspx?id={0}'>{1}</a></li>", lesson.id, lesson.title));
                            else
                                sb.Append(string.Format("<li class='list-group-item'><a class='link-text-color' href='mylesson.aspx?id={0}'>{1}</a></li>", lesson.id, lesson.title));

                        }

                        sb.Append(" </ul></div></div>");
                     }
                  
                }
               

                myside.InnerHtml = sb.ToString();
                //Response.Write(sb);
            //}
            //catch { }
               
        }
    }
}