<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ticket.aspx.cs" Inherits="kutuphane_site.ticket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p style="font-size: x-large">
        Ticket</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 86px">
                Ad Soyad :
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 86px">
                Mail :
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 86px" valign=top>
                Önerileriniz :
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="155px" TextMode="MultiLine" 
                    Width="322px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 86px" valign=top>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Gönder" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td valign=top colspan="2">
                <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
