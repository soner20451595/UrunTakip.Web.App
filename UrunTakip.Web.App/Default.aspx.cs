using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using UrunTakip.Web.App.Models;

namespace UrunTakip.Web.App
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var context = new UrunTakipDbEntities();
                var books = context.Urunler.ToList();

                var html = "";
                foreach (var item in books)
                {
                    html = html + "<tr>" +
                                  "<td>" + item.Ad + "</td>" +
                                  "<td>" + item.Aciklama + " </td>" +
                                  "<td>" + item.Stok + "</td>" +
                                  "<td>" + item.EklemeTarihi + "</td>" +
                                  "<td>" +
                                        "<a href='/Update.aspx?id=" + item.Id + "'>Düzenle</a>" +
                                     "</td>" +
                                     "<td>" +
                                            "<a style='color:red;' href='/Delete.aspx?id=" + item.Id + "'>Sil</a>" +
                                      "</td>" +
                               "</tr>";
                }
                table.InnerHtml = html;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }
    }
}