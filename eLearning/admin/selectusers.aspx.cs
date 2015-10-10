using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.admin
{
    public partial class selectusers : System.Web.UI.Page
    {
        
        eLearningEntities db = new eLearningEntities();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                

                duallistbox.Items.Clear();

                int course = Convert.ToInt32(Request.QueryString["courseid"]);

                cours c = db.courses.Find(course);
                courseTitle.Text = c.title;



                List<int> reg = getRegUsers(course);
                List<int> all = getAllUsers();


                foreach (int item in all)
                {
                    profile p = db.profiles.Find(item);
                    if (reg.Contains(item))
                    {
                        ListItem i = new ListItem();
                        i.Value = p.id.ToString();
                        i.Text = p.fullName;
                        i.Selected = true;
                        duallistbox.Items.Add(i);
                    }
                    else
                    {
                        ListItem i = new ListItem();
                        i.Value = p.id.ToString();
                        i.Text = p.fullName;
                        i.Selected = false;
                        duallistbox.Items.Add(i);
                    }
                }           
            }
          
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int course = Convert.ToInt32(Request.QueryString["courseid"]);

            foreach (ListItem item in duallistbox.Items)
            {
                int user  = Convert.ToInt32(item.Value);

                if (item.Selected)
                {
                    bool chx = CheckIfExists(course,user);
                    if(!chx)
                    {
                        db.usercourses.Add(new usercours { courseId=course,userId=user});
                        db.SaveChanges();
                    }
                }
                else
                {
                    bool chx = CheckIfExists(Convert.ToInt32(Request.QueryString["courseid"]), Convert.ToInt32(item.Value));
                    if (chx)
                    {
                        usercours uc = db.usercourses.Find(course,user);
                        if (uc != null)
                        {
                             db.usercourses.Remove(uc);
                             db.SaveChanges();
                        }
                           
                    }
                }

            }
            cours c = db.courses.Find(course);
            Redirect(Convert.ToInt32(c.subCategory));
        }

        public void Redirect(int subcat)
        {
            this.Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "myUniqueKey",
                    "self.parent.location='courses?id=" + subcat + "';", true);
        }

       public List<int> getAllUsers()
       {
            List<int> allusers = new List<int>();
            foreach (var item in db.profiles.ToList())
            {
                allusers.Add(item.id);
            }
            return allusers;
       }

       public List<int> getRegUsers( int course)
       {
           List<int> regusers = new List<int>();
           foreach (var item in db.usercourses.Where( p => p.courseId == course))
           {
               regusers.Add(item.userId);
           }
           return regusers;
       }

        public bool CheckIfExists(int course , int user)
        {
            usercours uc = db.usercourses.Find(course, user);
            if (uc != null)
                return true;
            else
                return false;
        }


        
    }
}