<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm2.aspx.vb" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID_HD" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID_HD" HeaderText="ID_HD" ReadOnly="True" SortExpression="ID_HD" />
                <asp:BoundField DataField="NgayBan" HeaderText="NgayBan" SortExpression="NgayBan" />
                <asp:BoundField DataField="ID_KH" HeaderText="ID_KH" SortExpression="ID_KH" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:chieunvpd01464_asConnectionString2 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [ID_HD] = @ID_HD" InsertCommand="INSERT INTO [HoaDon] ([ID_HD], [NgayBan], [ID_KH]) VALUES (@ID_HD, @NgayBan, @ID_KH)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [NgayBan] = @NgayBan, [ID_KH] = @ID_KH WHERE [ID_HD] = @ID_HD">
            <DeleteParameters>
                <asp:Parameter Name="ID_HD" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ID_HD" Type="String" />
                <asp:Parameter DbType="Date" Name="NgayBan" />
                <asp:Parameter Name="ID_KH" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter DbType="Date" Name="NgayBan" />
                <asp:Parameter Name="ID_KH" Type="String" />
                <asp:Parameter Name="ID_HD" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
