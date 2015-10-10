using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.admin
{
    public partial class subcategories : System.Web.UI.Page
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
            ViewState["cat"] = Convert.ToInt32(Request.QueryString["id"]);
            category c = db.categories.Find(Convert.ToInt32(ViewState["cat"]));
            catName.Text = c.title;
            gv.DataSource = c.subCategories.ToList();
            gv.DataBind();
        }

        protected void gvCategories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv.PageIndex = e.NewPageIndex;
            FillData();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            subCategory cc = new subCategory();
            cc.title = txtTitle.Text;
            cc.classIcon = txtIcon.Text;
            cc.description = txtDescription.Text;
            cc.parent = Convert.ToInt32(ViewState["cat"]); 
            db.subCategories.Add(cc);
            db.SaveChanges();
            MultiView1.ActiveViewIndex = 0;
            FillData();
        }

        protected void btnEditsave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ViewState["id"]);
            subCategory cc = db.subCategories.Find(id);
            cc.title = txtTitle.Text;
            cc.classIcon = txtIcon.Text;
            cc.description = txtDescription.Text;
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
            txtIcon.Text = "";
            txtDescription.Text = "";
        }

        public void DeleteItem(int id)
        {
            subCategory cc = db.subCategories.Find(id);
            db.subCategories.Remove(cc);
            db.SaveChanges();
        }

        public void loadData(int id)
        {
            subCategory cc = db.subCategories.Find(id);
            EmptyTextBoxes();
            txtTitle.Text = cc.title;
            txtIcon.Text = cc.classIcon;
            txtDescription.Text = cc.description;
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