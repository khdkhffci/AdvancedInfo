using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.consultant
{
    public partial class mycourse : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            fillData(Convert.ToInt32(Request.QueryString["id"]));
        }

       public void fillData(int course)
       {
           List<cours> lc = db.courses.Where(p => p.id == course).ToList();
           gv.DataSource = lc;
           gv.DataBind();
           gvsections.DataSource = lc.FirstOrDefault().sections;
           gvsections.DataBind();
       }



        public string GetSectionLessons(string sec)
        {
            StringBuilder sb = new StringBuilder();

            section sc = db.sections.Find(Convert.ToInt32(sec));
            int order = 1;
           
                foreach (lesson ls in sc.lessons)
                {
                    string complete = "text-grey-200";
                    int id = db.profiles.Where(p => p.email == HttpContext.Current.User.Identity.Name).FirstOrDefault().id;
                    
                    userlesson ul = db.userlessons.FirstOrDefault(c => c.lessonId == ls.id && c.userId == id);
                    if(ul != null)
                    {
                        complete = "text-green-200";
                    }
                    var videoduration = new NReco.VideoInfo.FFProbe().GetMediaInfo(Server.MapPath("../" + ls.videoFile)).Duration;
                    string du = videoduration.Hours + ":" + videoduration.Minutes + ":" + videoduration.Seconds + " ";
                    // param 0 = status     &&    param 1 = order     &&    param 2 = title      &&    param 3 = duration 
                    sb.Append(string.Format("<div class=\"list-group-item media {0}\" data-target=\"mylesson?id={5}\"><div class=\"media-left\"><div class=\"text-crt\">{1}</div></div><div class=\"media-body\"><i class=\"fa fa-fw fa-circle {4}\"></i>{2}</div><div class=\"media-right\"><div class=\"width-100 text-right text-caption\">{3}  min</div></div></div>", " ", order, ls.title, du,complete,ls.id ));
                    order ++;
                }

            return sb.ToString();
        }
       
    }
}