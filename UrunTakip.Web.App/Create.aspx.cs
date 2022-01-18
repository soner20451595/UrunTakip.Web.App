using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakip.Web.App.Models;

namespace UrunTakip.Web.App
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            Urunler urun = new Urunler();
            urun.Ad = txtUrunAdi.Text;
            urun.Aciklama = txtAciklama.Text;
            urun.Stok = Convert.ToInt32(txtStok.Text);
            urun.EklemeTarihi = DateTime.Now;

            UrunTakipDbEntities context = new UrunTakipDbEntities();
            context.Urunler.Add(urun);
            context.SaveChanges();

            Response.Redirect("/Default.aspx");
        }
    }
}