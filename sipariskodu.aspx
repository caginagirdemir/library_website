<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sipariskodu.aspx.cs" Inherits="kutuphane_site.sipariskodu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: x-large">
    Sipraiş Kodu Öğrenme</p>
    <p>
        * &quot;aTarih&quot; Sütunu kitabın ödünç alış tarihini gösterir.</p>
<p>
        * &quot;vTarih&quot; Sütunu kitabın iade tarihini gösterir.</p>
<table style="width: 100%">
    <tr>
        <td style="width: 102px">
            Üye Numarası :
        </td>
        <td style="width: 448px">
            <asp:TextBox ID="TextBox1" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Ara" 
                Width="59px" />
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Width="595px">
                <RowStyle BackColor="#EFF3FB" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
