using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.consultant
{
    public partial class mycourses : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = db.profiles.Where(p => p.email == HttpContext.Current.User.Identity.Name).FirstOrDefault().id;
            List<usercours> ucs = db.usercourses.Where(p => p.userId == id).ToList();
            List<cours> cs = new List<cours>();
            foreach (var item in ucs)
	        {
		          cours c = db.courses.Find(item.courseId); 
                  cs.Add(c);
	        }
            lv.DataSource = cs.ToList();
            
        }

        protected void lv_SelectedIndexChanged(object sender, EventArgs e)
        {
                //        DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
                //        29
                //        fillGrid();
                //        lv.DataBind();
        }


        public string GetAllLessons(string course)
        {
            int all = GetCourseLessons(Convert.ToInt32(course)).Count;
            int completed = 0;
            int user = Helper.GetCurrentUserID();
           

            foreach (var ul in GetUserLessons(user))
            {
                if (ul.lesson.section1.cours.id == Convert.ToInt32(course))
                {
                    completed += 1;
                }
            }
          

            return "Lessons " +  completed.ToString() + " of " +  all.ToString();
        }


        public List<lesson> GetCourseLessons(int course)
        {
            cours my = db.courses.Find(course);
            List<section> listsections = my.sections.ToList();
            List<lesson> listlessons = new List<lesson>();
            foreach (section section in listsections)
            {
                foreach (lesson lesson in section.lessons)
                {
                    listlessons.Add(lesson);
                }
            }

            return listlessons;
           
        }


        public List<userlesson> GetUserLessons(int userid)
        {
            return db.userlessons.Where(p => p.userId == userid).ToList();
        
        }


        public string CreateProgress(string course)
        {
            double all = GetCourseLessons(Convert.ToInt32(course)).Count;
            double complete = 0;
            int user = Helper.GetCurrentUserID();


            foreach (var ul in GetUserLessons(user))
            {
                if (ul.lesson.section1.cours.id == Convert.ToInt32(course))
                {
                    complete += 1;
                }
            }

            if (complete == 0)
            {
              return  string.Format("<div class=\"progress-bar progress-bar-grey-600\" role=\"progressbar\" aria-valuenow=\"{0}\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:{1}%\">", 0, 0);
            }
            else
            {
                double result = (complete / all) * 100;
                return string.Format("<div class=\"progress-bar progress-bar-grey-600\" role=\"progressbar\" aria-valuenow=\"{0}\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width:{1}%\">", result, result);
            }
            
        }

        protected void lv_PreRender(object sender, EventArgs e)
        {
              

            //DataPager1.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);
            lv.DataBind();
	  
        }

        protected void lv_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
               lv.DataBind();
        }
    }
}