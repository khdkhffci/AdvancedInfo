using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace eLearn.admin
{
    public partial class courses : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillData();            }
            }

        private void FillData()
        {
            try
            {
                string query = Request.QueryString["id"] as string;
                if (!string.IsNullOrEmpty(query))
                {
                        ViewState["cat"] = Convert.ToInt32(Request.QueryString["id"]);
                        subCategory cc = db.subCategories.Find(Convert.ToInt32(ViewState["cat"]));
                        category c = db.categories.Find(cc.parent);

                        headTitle.Text = c.title +  " / "   + cc.title;
                        gv.DataSource = cc.courses.ToList();
                        gv.DataBind();
                }
                else
                {
                    headTitle.Text = "All Courses";
                    btnAdd.Visible = false;
                    gv.DataSource = db.courses.ToList();
                    gv.DataBind();
                }
            }

            catch { btnAdd.Visible = false ; error.Visible = true; error.InnerText = "Sorry , Some Thing  Wrong "; }
            
        }


        protected void gvCategories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv.PageIndex = e.NewPageIndex;
            FillData();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            cours cc = new cours();
            cc.title = txtTitle.Text;
            cc.brief = txtBrief.Text;
            cc.skillLevel = txtSkillLevel.Text;
            cc.language = txtLanguage.Text;
            cc.lectures = Convert.ToInt32(txtLectures.Text);
            cc.instructor = txtInstructor.Text;
            cc.hours = Convert.ToInt32(txtHours.Text);
            cc.description = CKEditor.Text;
            cc.creationDate = DateTime.Now;
            cc.imageFile = txtIcon.Text;
            cc.subCategory = Convert.ToInt32(ViewState["cat"]);
            db.courses.Add(cc);
            db.SaveChanges();
            MultiView1.ActiveViewIndex = 0;
            FillData();
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        protected void btnEditsave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ViewState["id"]);
            cours cc = db.courses.Find(id);
            cc.title = txtTitle.Text;
            cc.brief = txtBrief.Text;
            cc.skillLevel = txtSkillLevel.Text;
            cc.instructor = txtInstructor.Text;
            cc.language = txtLanguage.Text;
            cc.lectures = Convert.ToInt32(txtLectures.Text);
            cc.hours = Convert.ToInt32(txtHours.Text);
            cc.description = CKEditor.Text;
            cc.imageFile = txtIcon.Text;
            db.Entry(cc).State = EntityState.Modified;
            db.SaveChanges();
            MultiView1.ActiveViewIndex = 0;
            FillData();

        }




        protected void btnAdd_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            btnEdit.Visible = false;
            btnAdd.Visible = true;
            EmptyTextBoxes();
        }

        private void EmptyTextBoxes()
        {
            txtTitle.Text = "";
            CKEditor.Text = "";
            txtIcon.Text = "";
            txtBrief.Text = "";
            txtHours.Text = "";
            txtInstructor.Text = "";
            txtSkillLevel.Text = "";
            txtLanguage.Text = "";
            txtLectures.Text = "";

        }

        public void DeleteItem(int id)
        {
            cours cc = db.courses.Find(id);
            db.courses.Remove(cc);
            db.SaveChanges();
        }

        public void loadData(int id)
        {
            cours cc = db.courses.Find(id);
            EmptyTextBoxes();
            txtTitle.Text = cc.title;
            txtBrief.Text = cc.brief;
            txtLanguage.Text = cc.language;
            CKEditor.Text = cc.description;
            txtHours.Text = cc.hours.ToString();
            txtLectures.Text = cc.lectures.ToString();
            txtSkillLevel.Text = cc.skillLevel;
            txtIcon.Text = cc.imageFile;
            txtInstructor.Text = cc.instructor;
            CKEditor.Text = cc.description;
            MultiView1.ActiveViewIndex = 1;
        }

        protected void EditItem(object sender, EventArgs e)
        {
            LinkButton lnkEdit = (LinkButton)sender;
            int id = Convert.ToInt32(lnkEdit.CommandArgument);
            ViewState["id"] = id;
            btnsave.Visible = false;
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