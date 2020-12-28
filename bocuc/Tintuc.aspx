<%@ Page Title="" Language="C#" MasterPageFile="~/lienkettrang/lienket.Master" AutoEventWireup="true" CodeBehind="Tintuc.aspx.cs" Inherits="baithi.bocuc.Tintuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 0px;
        }
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TGIAID" DataValueField="TGIAID">
    <asp:ListItem>Nội Dung</asp:ListItem>
    <asp:ListItem>Tác Gỉa</asp:ListItem>
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:desktop-8ps0uch\sqlexpress.Webtintuc.dbo %>" SelectCommand="SELECT [NOIDUNG], [TGIAID], [TINID] FROM [TINTUC]"></asp:SqlDataSource>
   
    <center> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TINID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" CssClass="auto-style1" Height="202px" Width="718px">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="TINID" HeaderText="TINID" ReadOnly="True" SortExpression="TINID" />
        <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
        <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
        <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" SortExpression="TGIAID" />
    </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
</asp:GridView>
        </center>
    <center class="auto-style2">
        <br />
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="3" DataKeyNames="TINID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="99px" Width="377px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="auto-style3" OnPageIndexChanging="DetailsView1_PageIndexChanging">
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <Fields>
        <asp:BoundField DataField="TINID" HeaderText="TINID" ReadOnly="True" SortExpression="TINID" />
        <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
        <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
        <asp:BoundField DataField="TGIAID" HeaderText="TGIAID" SortExpression="TGIAID" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
</asp:DetailsView>
    </center>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:desktop-8ps0uch\sqlexpress.Webtintuc.dbo %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [TINID] = @TINID" InsertCommand="INSERT INTO [TINTUC] ([TINID], [NOIDUNG], [NGAYGUI], [TGIAID]) VALUES (@TINID, @NOIDUNG, @NGAYGUI, @TGIAID)" ProviderName="<%$ ConnectionStrings:desktop-8ps0uch\sqlexpress.Webtintuc.dbo.ProviderName %>" SelectCommand="SELECT [TINID], [NOIDUNG], [NGAYGUI], [TGIAID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NOIDUNG] = @NOIDUNG, [NGAYGUI] = @NGAYGUI, [TGIAID] = @TGIAID WHERE [TINID] = @TINID">
    <DeleteParameters>
        <asp:Parameter Name="TINID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TINID" Type="String" />
        <asp:Parameter Name="NOIDUNG" Type="String" />
        <asp:Parameter DbType="Date" Name="NGAYGUI" />
        <asp:Parameter Name="TGIAID" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="NOIDUNG" Type="String" />
        <asp:Parameter DbType="Date" Name="NGAYGUI" />
        <asp:Parameter Name="TGIAID" Type="String" />
        <asp:Parameter Name="TINID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
