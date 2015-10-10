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
    public partial class profiles : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    loadData(Convert.ToInt32(Request.QueryString["id"]));
                    btnsave.Visible = false;
                }
                    
                else

                    FillData();
            }


            txtPassword.Attributes["type"] = "password";
            txtConfirm.Attributes["type"] = "password";
        }

        private void FillData()
        {
            gv.DataSource = db.profiles.Where(t => t.email != "admin").ToList();
            gv.DataBind();
        }

        protected void gvCategories_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gv.PageIndex = e.NewPageIndex;
            FillData();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        {
            profile cc = new profile();
            cc.fullName = txtfullName.Text;
            cc.email = txtEmail.Text;
            cc.password = Helper.Encrypt(txtPassword.Text);
            cc.active = cbxactive.Checked;
            cc.admin = cbxadmin.Checked;
            cc.photo = getImage( faProfile, "~/images/nophoto.jpg");
            cc.description = txtDescription.Text;
            db.profiles.Add(cc);
            db.SaveChanges();
            MultiView1.ActiveViewIndex = 0;
            FillData();            
        }

        protected void btnEditsave_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(ViewState["id"]);
            profile cc = db.profiles.Find(id);
            cc.fullName = txtfullName.Text;
            cc.email = txtEmail.Text;
            cc.active = cbxactive.Checked;
            cc.admin = cbxadmin.Checked;
            cc.password = Helper.Encrypt(txtPassword.Text);
            cc.description = txtDescription.Text;
            cc.photo = getImage(faProfile,cc.photo);
            db.Entry(cc).State = EntityState.Modified;
            db.SaveChanges();
            MultiView1.ActiveViewIndex = 0;
            FillData();

        }

        private string getImage(FileUpload fa , string oldFile)
        {
            if (fa.HasFile)
            {
                string file = DateTime.Now.Year + DateTime.Now.Month + DateTime.Now.Second + DateTime.Now.Millisecond + fa.FileName;
                //create the path to save the file to
                string fileName = Path.Combine(Server.MapPath("~/images/profiles"), file);
                //save the file to our local path
                fa.SaveAs(fileName);
                return "~/images/profiles/" + file; 
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
            EmptyTextBoxes();
        }

        private void EmptyTextBoxes()
        {
            txtfullName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirm.Text = "";
            txtDescription.Text = "";
        }

        public void DeleteItem(int id)
        {
            profile cc = db.profiles.Find(id);
            db.profiles.Remove(cc);
            db.SaveChanges();
        }



        public void loadData(int id)
        {
            profile cc = db.profiles.Find(id);
            EmptyTextBoxes();
            txtfullName.Text = cc.fullName;
            txtEmail.Text = cc.email;
            txtPassword.Text = Helper.Decrypt(cc.password);
            txtConfirm.Text = cc.password;
            Image1.ImageUrl = cc.photo;
            txtDescription.Text = cc.description;
            cbxactive.Checked = (bool) cc.active;
            cbxadmin.Checked = (bool) cc.admin;
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