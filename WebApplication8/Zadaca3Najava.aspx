<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca3Najava.aspx.cs" Inherits="WebApplication8.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <table class="nav-justified">
        <tr>
            <td>Valjda fali tekst od zadachava u pdf-ot...</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Korisnik</td>
            <td>
                <asp:TextBox ID="txtKorisnik" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px">Lozinka</td>
            <td style="height: 20px">
                <asp:TextBox ID="txtLozinka" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 26px">
            </td>
            <td style="height: 26px">
                <asp:Button ID="btnPodnesi" runat="server" Text="Log in" OnClick="btnPodnesi_Click" />
            </td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td>Greshni obidi (do 3 posle krc) ====&gt;</td>
            <td>
                <asp:Label ID="lblObidi" runat="server" Text="0"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
