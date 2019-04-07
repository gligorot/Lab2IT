using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            if(txtLozinka.Text == "mp")
            {
                ViewState["korisnik"] = txtKorisnik.Text;
                Session["korisnik"] = txtKorisnik.Text;
                Response.Redirect("Zadaca3GlavnaStranica.aspx");
            } else
            {
                if(ViewState["obidi"] == null)
                {
                    ViewState["obidi"] = 0;
                }
                ViewState["obidi"] = (int) ViewState["obidi"] + 1;
                lblObidi.Text = ((int)ViewState["obidi"]).ToString();
                if((int)ViewState["obidi"] == 3)
                {
                    btnPodnesi.Enabled = false;
                    lblObidi.Text = "epa krc";
                }
            }
        }
    }
}