using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakip.Web.App.Models;

namespace UrunTakip.Web.App
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var idString = Request.QueryString["id"];
                if (!String.IsNullOrEmpty(idString))
                {
                    UrunTakipDbEntities context = new UrunTakipDbEntities();
                    var urun = context.Urunler.Find(int.Parse(idString));

                    fieldId.Value = idString;
                    fieldEklemeTarihi.Value = urun.EklemeTarihi.ToString();
                    txtAciklama.Text = urun.Aciklama;
                    txtUrunAdi.Text = urun.Ad;
                    txtStok.Text = urun.Stok.ToString();
                }
            }
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            if (fieldId.Value!=null)
            {
                UrunTakipDbEntities context = new UrunTakipDbEntities();
                var urun = context.Urunler.Find(int.Parse(fieldId.Value));

                urun.Ad = txtUrunAdi.Text;
                urun.Aciklama = txtAciklama.Text;
                urun.EklemeTarihi = Convert.ToDateTime(fieldEklemeTarihi.Value);
                urun.Stok = int.Parse(txtStok.Text);
                context.SaveChanges();
               
            }
            Response.Redirect("/Default.aspx");
        }
    }
}