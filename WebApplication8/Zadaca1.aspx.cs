using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication8
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillDropDowns();
                fillElse();
            }
        }

        private void fillDropDowns()
        {
            //Meseci
            List<string> months = new List<string>() { "January", "Feburary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };

            ddlMesec.DataSource = months;
            ddlMesec.DataBind();

            //Denovi
            for (int i = 1; i <= 31; i++)
            {
                ddlDen.Items.Add(i.ToString());
            }

            //Godini
            int godina = DateTime.Today.Year;
            for (int i = 0; i < 5; i++, godina++)
            {
                ddlGodina.Items.Add(godina.ToString());
            }

            //Chasovi
            for (int i = 0; i < 24; i++)
            {
                String chas = i.ToString().PadLeft(2, '0');
                ddlVreme.Items.Add(chas.ToString()+":00");
            }
        }

        private void fillElse()
        {
            //Zona
            rblZona.Items.Add("Pushachi");
            rblZona.Items.Add("Nepushachi");

            //Klasa
            rblKlasa.Items.Add("Ekonomska");
            rblKlasa.Items.Add("Biznis");

            //Posluga
            chbPosluga.Items.Add("Pijalok");
            chbPosluga.Items.Add("Kafe");
            chbPosluga.Items.Add("Obrok");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            lblSredstvo.Text = lstPrevoz.SelectedItem.Text;
            lblOdDo.Text = ddlOd.SelectedValue + "-" + ddlDo.SelectedValue;
            lblVremeInfo.Text = ddlDen.SelectedValue + "." + ddlMesec.SelectedValue + "." + ddlGodina.SelectedValue;
            lblVremeInfo.Text += " vo " + ddlVreme.SelectedValue + " chasot.";
            lblZona.Text = rblZona.SelectedValue;
            lblKlasa.Text = rblKlasa.SelectedValue;
            lblPosluga.Text = "";
            foreach(ListItem item in chbPosluga.Items)
            {
                if (item.Selected) lblPosluga.Text += item.Value + " ";
            }

            imgSlika.ImageUrl = lstPrevoz.SelectedValue;
        }


    }
}