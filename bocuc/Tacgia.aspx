<%@ Page Title="" Language="C#" MasterPageFile="~/lienkettrang/lienket.Master" AutoEventWireup="true" CodeBehind="Tacgia.aspx.cs" Inherits="baithi.bocuc.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 6px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <br />
    <br />
<center>

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TGIAID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="3" GridLines="Horizontal" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CssClass="auto-style1" Height="300px" Width="575px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" ReadOnly="True" SortExpression="TGIAID" />
        <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
    </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
    </center>
    <center>
        <br />
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="2" DataKeyNames="TGIAID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="Black" GridLines="None" Height="90px" Width="335px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <Fields>
            <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" ReadOnly="True" SortExpression="TGIAID" />
            <asp:BoundField DataField="TENTG" HeaderText="TENTG" SortExpression="TENTG" />
            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
    </asp:DetailsView>
        </center>
    <br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:desktop-8ps0uch\sqlexpress.Webtintuc.dbo %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGIAID] = @TGIAID" InsertCommand="INSERT INTO [TACGIA] ([TGIAID], [TENTG], [EMAIL]) VALUES (@TGIAID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:desktop-8ps0uch\sqlexpress.Webtintuc.dbo.ProviderName %>" SelectCommand="SELECT [TGIAID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TGIAID] = @TGIAID">
    <DeleteParameters>
        <asp:Parameter Name="TGIAID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TGIAID" Type="String" />
        <asp:Parameter Name="TENTG" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TENTG" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="TGIAID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>

</asp:Content>
