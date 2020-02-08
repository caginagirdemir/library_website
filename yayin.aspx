<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="yayin.aspx.cs" Inherits="kutuphane_site.yayin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-size: x-large">
        Yayın Evleri</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None" Width="619px">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:BoundField DataField="yEv" HeaderText="yEv" SortExpression="yEv" />
                <asp:BoundField DataField="yTel" HeaderText="yTel" SortExpression="yTel" />
                <asp:BoundField DataField="yAdres" HeaderText="yAdres" 
                    SortExpression="yAdres" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:libraryConnectionString %>" 
            SelectCommand="SELECT [yEv], [yTel], [yAdres] FROM [yayin]">
        </asp:SqlDataSource>
</p>
</asp:Content>
