<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="siparis.aspx.cs" Inherits="kutuphane_site.siparis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: x-large">
        Ödünç Kitap Sorgulama&nbsp;&nbsp;
    </p>
    <table style="width: 100%">
        <tr>
            <td>
                Sipariş Numarası : &nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Ara" 
                    Width="58px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="617px">
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
