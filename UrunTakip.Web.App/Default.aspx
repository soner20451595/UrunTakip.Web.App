<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UrunTakip.Web.App._Default" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <a href="/Create.aspx" class="btn btn-success" style="margin-bottom:20px;">Yeni ürün ekle</a>
    <div class="row">
        <table class="table">
            <thead>
                <tr>
                    <th>Ürün Adı</th>
                    <th>Açıklama</th>
                    <th>Stok</th>
                    <th>Ekleme Tarihi</th>
                    <th>Güncelle</th>
                    <th>Sil</th>
                </tr>
            </thead>
            <tbody runat="server" id="table">
            </tbody>
        </table>
    </div>
</asp:Content>
