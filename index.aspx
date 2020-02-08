<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="kutuphane_site.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-size: x-large">Kitap Sorgulama</span><br />
    </p>
    <table style="width: 100%">
        <tr>
            <td>
                Kitap Adına Göre :</td>
            <td style="width: 402px">
                <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
                    Width="298px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Ara" Width="48px" 
                    onclick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>
                IBSN numarasına Göre : </td>
            <td style="width: 402px">
                <asp:TextBox ID="TextBox2" runat="server"
                    Width="298px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Ara" Width="48px" 
                    onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>
                Yazara Göre : </td>
            <td style="width: 402px">
                <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" 
                    Width="298px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Ara" Width="48px" 
                    onclick="Button3_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" Width="621px">
            <RowStyle BackColor="#EFF3FB" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" Enabled="False" EnableTheming="True" 
            ForeColor="#CC0000"></asp:Label>
    </p>
</asp:Content>
