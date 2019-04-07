<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zadaca2.aspx.cs" Inherits="WebApplication8.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <hr />
    <hr />

    <table class="nav-justified">
        <tr>
            <td>Ime</td>
            <td>
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIme" Display="None" ErrorMessage="Poleto Ime ne smee da e prazno"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">Prezime</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrezime" Display="None" ErrorMessage="Poleto Prezime ne smee da e prazno"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 22px">FINKI ID</td>
            <td style="height: 22px">
                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                <p>Може да ги содржи знаците a-z, 0-9, '_' и максимум една '.'(точка)</p>
            </td>
            <td style="height: 22px">@finki.ukim.mk<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtId" Display="None" ErrorMessage="Greshka vo poleto FINKI ID" ValidationExpression="\w+\.*\w+"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtId" Display="None" ErrorMessage="fali ID"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td>Lozinka</td>
            <td>
                <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="greshka vo formatot na lozinkata" ControlToValidate="txtPass" Display="None" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPass" Display="None" ErrorMessage="fali lozinche"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Potvrda</td>
            <td>
                <asp:TextBox ID="txtPotvrda" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Potvrdata ne e ista so Lozinkata" ControlToCompare="txtPass" ControlToValidate="txtPotvrda" Display="None"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtPotvrda" Display="None" ErrorMessage="fali potvrdche"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Adresa/Telefon</td>
            <td>
                <asp:TextBox ID="txtAdresa" runat="server"></asp:TextBox>
                /
                <asp:TextBox ID="txtTelefon" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAdresa" Display="None" ErrorMessage="Adresata ne smee da e prazna"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtTelefon" Display="None" ErrorMessage="Greshen format, Пример: +389 2 3112 232; +389 75 344 354." ValidationExpression="\+389\s{1}\d{1,2}\s{1}\d{3,4}\s{1}\d{3}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="fali telefon" ControlToValidate="txtTelefon" Display="None"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Pol</td>
            <td>
                <asp:RadioButtonList ID="rblPol" runat="server" Height="16px" Width="55px">
                    <asp:ListItem>M</asp:ListItem>
                    <asp:ListItem>Z</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rblPol" Display="None" ErrorMessage="Izberi pol!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Datum na ragjanje</td>
            <td>
                <asp:Calendar ID="calCalendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Zanimanje</td>
            <td>
                <asp:DropDownList ID="ddlZanimanje" runat="server">
                    <asp:ListItem>-zanimanje-</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Chevlar</asp:ListItem>
                    <asp:ListItem>Pimp</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlZanimanje" Display="None" ErrorMessage="Izberi zanimanje" InitialValue="-zanimanje-"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Godini na vrshenje na zanimanjevo</td>
            <td>
                <asp:TextBox ID="txtGodini" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtGodini" Display="None" ErrorMessage="falat godini na zanimanje"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Podnesi baranje" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary2" runat="server" />
            </td>
            <td></td>
        </tr>

    </table>
    

</asp:Content>

