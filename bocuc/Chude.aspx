<%@ Page Title="" Language="C#" MasterPageFile="~/lienkettrang/lienket.Master" AutoEventWireup="true" CodeBehind="Chude.aspx.cs" Inherits="baithi.bocuc.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<br />
    &nbsp;&nbsp;
     <center>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="CHUDEID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="CHUDEID" HeaderText="CHUDEID" ReadOnly="True" SortExpression="CHUDEID" />
        <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
    </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
     </center>
    <center>
        <br />
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="2" DataKeyNames="CHUDEID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="Black" GridLines="None" Height="75px" Width="329px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="CHUDEID" HeaderText="CHUDEID" ReadOnly="True" SortExpression="CHUDEID" />
            <asp:BoundField DataField="TENCD" HeaderText="TENCD" SortExpression="TENCD" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
    </center>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:desktop-8ps0uch\sqlexpress.Webtintuc.dbo %>" DeleteCommand="DELETE FROM [CHUDE] WHERE [CHUDEID] = @CHUDEID" InsertCommand="INSERT INTO [CHUDE] ([CHUDEID], [TENCD]) VALUES (@CHUDEID, @TENCD)" ProviderName="<%$ ConnectionStrings:desktop-8ps0uch\sqlexpress.Webtintuc.dbo.ProviderName %>" SelectCommand="SELECT [CHUDEID], [TENCD] FROM [CHUDE]" UpdateCommand="UPDATE [CHUDE] SET [TENCD] = @TENCD WHERE [CHUDEID] = @CHUDEID">
    <DeleteParameters>
        <asp:Parameter Name="CHUDEID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CHUDEID" Type="String" />
        <asp:Parameter Name="TENCD" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TENCD" Type="String" />
        <asp:Parameter Name="CHUDEID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
