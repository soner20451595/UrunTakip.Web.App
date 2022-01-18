<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Create.aspx.cs" Inherits="UrunTakip.Web.App.Create" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="form-group" style="margin-top: 20px">
            <div class="row col-sm-12" style="margin-top: 20px">
                <div class="col-sm-2">
                    <asp:Label ID="Label1" runat="server" Text="Ürün Adı : "></asp:Label>
                </div>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtUrunAdi" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

        </div>
        <div class="form-group">
            <div class="row col-sm-12" style="margin-top: 20px">
                <div class="col-sm-2">
                    <asp:Label ID="Label4" runat="server" Text="Ürün Açıklaması : "></asp:Label>
                </div>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtAciklama" runat="server" CssClass="form-control mt-1" Height="106px" Rows="5"></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="form-group" style="margin-top: 20px">
            <div class="row col-sm-12" style="margin-top: 20px">
                <div class="col-sm-2">
                    <asp:Label ID="Label3" runat="server" Text="Stok Miktarı : "></asp:Label>
                </div>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtStok" TextMode="Number" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row ">
            <div class="col-sm-3"></div>
            <div class="col-sm-8">
                <asp:Button ID="submitButton" runat="server" Text="KAYDET" OnClick="submitButton_Click" class="form-control btn btn-block btn-success" style="margin-top:20px;"  />
            </div>
        </div>
    </div>
</asp:Content>
