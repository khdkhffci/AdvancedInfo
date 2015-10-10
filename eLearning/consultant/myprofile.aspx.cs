using eLearn.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLearn.consultant
{
    public partial class myprofile : System.Web.UI.Page
    {
        eLearningEntities db = new eLearningEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!IsPostBack)
            //{
            loadData();
            txtPassword.Attributes["type"] = "password";
            txtConfirm.Attributes["type"] = "password";
            //}

        }

        protected void btnsave_Click(object sender, EventArgs e)
        {

            profile cc = db.profiles.Where(p => p.email == HttpContext.Current.User.Identity.Name).FirstOrDefault();
            cc.fullName = txtfullName.Text;
            cc.password = Helper.Encrypt(txtPassword.Text);
            cc.description = txtDescription.Text;
            cc.photo = getImage(faProfile, cc.photo);
            db.Entry(cc).State = EntityState.Modified;
            db.SaveChanges();
            Page.Response.Redirect("person");
            success.Visible = true;
        }

        private string getImage(FileUpload fa, string oldFile)
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


        public void loadData()
        {
            profile cc = db.profiles.Where(p => p.email == HttpContext.Current.User.Identity.Name).FirstOrDefault();
            EmptyTextBoxes();
            txtfullName.Text = cc.fullName;
            txtPassword.Text = Helper.Decrypt(cc.password);
            txtConfirm.Text = Helper.Decrypt(cc.password);
            Image1.ImageUrl = cc.photo;
            txtDescription.Text = cc.description;
        }

        private void EmptyTextBoxes()
        {
            txtfullName.Text = "";
            Image1.ImageUrl = "";
            txtPassword.Text = "";
            txtConfirm.Text = "";
            txtDescription.Text = "";
        }
    }
}