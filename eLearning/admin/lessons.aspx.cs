using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.admin
{
    public partial class lessons : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string query = Request.QueryString["id"] as string;

                if (!string.IsNullOrEmpty(query))
                {
                    FillData();
                }
                else
                {
                    btnAdd.Visible = false;
                }

            }

           
            
        }

        private void FillData()
        {
            ViewState["section"] = Request.QueryString["id"];
            section c = db.sections.Find(Convert.ToInt32(ViewState["section"]));
            ViewState["course"] = c.course;
            catName.Text = c.title;
            gv.DataSource = c.lessons.ToList();
            gv.DataBind();
        }

        protected void gvCategories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv.PageIndex = e.NewPageIndex;
            FillData();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            lesson cc = new lesson();
            cc.title = txtTitle.Text;
            cc.brief = txtBrief.Text;
            cc.videoFile = getVideo(faProfile, "#");
            cc.description = txtDescription.Text;
            cc.section = Convert.ToInt32(ViewState["section"]);
            cc.course = Convert.ToInt32(ViewState["course"]);
            cc.creationDate = DateTime.Now;
            cc.lessonOrder = 1;
            db.lessons.Add(cc);
            db.SaveChanges();
            MultiView1.ActiveViewIndex = 0;
            FillData();
        }

        protected void btnEditsave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ViewState["id"]);
            lesson cc = db.lessons.Find(id);
            cc.title = txtTitle.Text;
            cc.brief = txtBrief.Text;
            cc.videoFile = getVideo(faProfile, cc.videoFile);
            cc.description = txtDescription.Text;
            db.Entry(cc).State = EntityState.Modified;
            db.SaveChanges();
            MultiView1.ActiveViewIndex = 0;
            FillData();

        }




        private string getVideo (FileUpload fa, string oldFile)
        {
            if (fa.HasFile)
            {
                string file = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Millisecond.ToString() + fa.FileName;
                //create the path to save the file to
                string fileName = Path.Combine(Server.MapPath("~/files/lessons"), file);
                //save the file to our local path
                fa.SaveAs(fileName);
                return "files/lessons/" + file;
            }
            else
            {
                return oldFile;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            btnEdit.Visible = false;
            btnAdd.Visible = true;
            videoLink.Visible = false;
            EmptyTextBoxes();
        }

        private void EmptyTextBoxes()
        {
            txtTitle.Text = "";
            txtBrief.Text = "";
            txtDescription.Text = "";
        }

        public void DeleteItem(int id)
        {
            lesson cc = db.lessons.Find(id);
            db.lessons.Remove(cc);
            db.SaveChanges();
        }

        public void loadData(int id)
        {
            lesson cc = db.lessons.Find(id);
            EmptyTextBoxes();
            txtTitle.Text = cc.title;
            txtBrief.Text = cc.brief;
            txtDescription.Text = cc.description;
            videoLink.HRef = cc.videoFile;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void EditItem(object sender, EventArgs e)
        {
            LinkButton lnkEdit = (LinkButton)sender;
            int id = Convert.ToInt32(lnkEdit.CommandArgument);
            ViewState["id"] = id;
            btnsave.Visible = false;
            videoLink.Visible = true;
            btnEdit.Visible = true;
            loadData(id);
        }

        protected void DeleteItem(object sender, EventArgs e)
        {
            LinkButton lnkRemove = (LinkButton)sender;
            int id = Convert.ToInt32(lnkRemove.CommandArgument);
            try
            {
                DeleteItem(id);
                FillData();
            }
            catch
            {
                error.Visible = true;
            }
        }

        protected void gvCategories_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gvCategories_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}