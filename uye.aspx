<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="uye.aspx.cs" Inherits="kutuphane_site.uye" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: x-large">
        Üye Bilgileri</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 128px">
                Üye Numaranız :
            </td>
            <td style="width: 458px">
                <asp:TextBox ID="TextBox1" runat="server" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="margin-left: 0px" Text="Ara" Width="56px" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" style="margin-right: 0px" AutoGenerateColumns="False" 
                    DataKeyNames="uId">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="uId" HeaderText="uId" InsertVisible="False" 
                            ReadOnly="True" SortExpression="uId" />
                        <asp:BoundField DataField="uAd" HeaderText="uAd" SortExpression="uAd" />
                        <asp:BoundField DataField="uDog" HeaderText="uDog" SortExpression="uDog" />
                        <asp:BoundField DataField="uTel1" HeaderText="uTel1" SortExpression="uTel1" />
                        <asp:BoundField DataField="uTel2" HeaderText="uTel2" SortExpression="uTel2" />
                        <asp:BoundField DataField="uMail" HeaderText="uMail" SortExpression="uMail" />
                        <asp:BoundField DataField="uMeslek" HeaderText="uMeslek" 
                            SortExpression="uMeslek" />
                        <asp:BoundField DataField="uAdres" HeaderText="uAdres" 
                            SortExpression="uAdres" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" SelectCommand="SELECT [uId], [uAd], [uDog], [uTel1], [uTel2], [uMail], [uMeslek], [uAdres] FROM [uye] WHERE ([uId] = @uId)"
                     UpdateCommand="update [uye] set uAd=@uAd,uDog=@uDog,uTel1=@uTel1,uTel2=@uTel2,uMail=@uMail,uMeslek=@uMeslek,uAdres=@uAdres where uId=uId"
                >
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="" Name="uId" QueryStringField="id" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
