<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca1.aspx.cs" Inherits="WebApplication8._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table class="nav-justified">
        <tr>
            <td style="height: 20px">Ime</td>
            <td style="height: 20px">
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </td>
            <td style="height: 20px">Почитуван патнику</td>
        </tr>
        <tr>
            <td>Prezime</td>
            <td>
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblPatnik" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">Od</td>
            <td style="height: 20px">
                <asp:DropDownList ID="ddlOd" runat="server">
                    <asp:ListItem>Skopje</asp:ListItem>
                    <asp:ListItem>Bitola</asp:ListItem>
                    <asp:ListItem>Ohrid</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 20px">Издадена ви е карта за</td>
        </tr>
        <tr>
            <td>Do</td>
            <td>
                <asp:DropDownList ID="ddlDo" runat="server">
                    <asp:ListItem>Madrid</asp:ListItem>
                    <asp:ListItem>Pariz</asp:ListItem>
                    <asp:ListItem>Malta</asp:ListItem>
                    <asp:ListItem>London</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblSredstvo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Data Trgnuvanje</td>
            <td>
                <asp:DropDownList ID="ddlDen" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlMesec" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="ddlGodina" runat="server">
                </asp:DropDownList>
            </td>
            <td>Старт - Крај</td>
        </tr>
        <tr>
            <td>Vreme Trgnuvanje</td>
            <td>
                <asp:DropDownList ID="ddlVreme" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblOdDo" runat="server"></asp:Label>
                <br />
                <asp:Label ID="lblVremeInfo" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Prevozno Sredstvo</td>
            <td>
                <asp:ListBox ID="lstPrevoz" runat="server">
                    <asp:ListItem Value="https://image.shutterstock.com/image-vector/air-plane-cartoon-vector-illustration-260nw-205852666.jpg">Avion</asp:ListItem>
                    <asp:ListItem Value="https://image.shutterstock.com/image-vector/cartoon-train-isolated-on-white-260nw-102778574.jpg">Voz</asp:ListItem>
                </asp:ListBox>
            </td>
            <td>Вашето место на седење ќе&nbsp; биде во зоната<br />
                <asp:Label ID="lblZona" runat="server"></asp:Label>
&nbsp;во
                <asp:Label ID="lblKlasa" runat="server"></asp:Label>
&nbsp;класа<br />
                и во текот на патувањето ќе бидете послужени со<br />
                <asp:Label ID="lblPosluga" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 20px">Zona</td>
            <td style="height: 20px">
                <asp:RadioButtonList ID="rblZona" runat="server">
                </asp:RadioButtonList>
            </td>
            <td rowspan="3">
                <asp:Image ID="imgSlika" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 20px">Klasa</td>
            <td style="height: 20px">
                <asp:RadioButtonList ID="rblKlasa" runat="server">
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>Posluga</td>
            <td>
                <asp:CheckBoxList ID="chbPosluga" runat="server">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Podnesi" />
            </td>
            <td>Фала на довербата и среќен пат!</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>


</asp:Content>
