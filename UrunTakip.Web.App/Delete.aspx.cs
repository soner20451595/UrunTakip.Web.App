using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakip.Web.App.Models;

namespace UrunTakip.Web.App
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var idString = Request.QueryString["id"];
            if (!String.IsNullOrEmpty(idString))
            {
                UrunTakipDbEntities context = new UrunTakipDbEntities();
                var urun = context.Urunler.Find(int.Parse(idString));

                txtUrunAdi.Text = urun.Ad;
                txtAciklama.Text = urun.Aciklama;
                txtStok.Text = urun.Stok.ToString();
            }
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
             var idString = Request.QueryString["id"];
            if (!String.IsNullOrEmpty(idString))
            {
                UrunTakipDbEntities context = new UrunTakipDbEntities();
                var urun = context.Urunler.Find(int.Parse(idString));
                context.Urunler.Remove(urun);
                context.SaveChanges();
            }

            Response.Redirect("/Default.aspx");
        }
    }
}