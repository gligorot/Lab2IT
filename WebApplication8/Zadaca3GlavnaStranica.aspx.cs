using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["korisnik"] == null)
            {
                lblKorisnik.Text = "nema logiran korisnik";
            }
            else
            {
                lblKorisnik.Text = (string)Session["korisnik"];
            }
        }
    }
}