<%@ Page Title="Töötajad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Tabelmudel.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tootaja_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="tootaja_id" HeaderText="tootaja_id" ReadOnly="True" SortExpression="tootaja_id" />
                <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>" DeleteCommand="DELETE FROM [TootajaSet] WHERE [tootaja_id] = @tootaja_id" InsertCommand="INSERT INTO [TootajaSet] ([nimi]) VALUES (@nimi)" SelectCommand="SELECT [tootaja_id], [nimi] FROM [TootajaSet]" UpdateCommand="UPDATE [TootajaSet] SET [nimi] = @nimi WHERE [tootaja_id] = @tootaja_id">
                <DeleteParameters>
                    <asp:Parameter Name="tootaja_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                    <asp:Parameter Name="tootaja_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h2>
<h2 style="font-size: xx-large"><strong>Lisa töötaja</strong></h2>
<p style="font-size: xx-large">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="tootaja_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
        <EditRowStyle BackColor="#2461BF" />
        <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="tootaja_id" HeaderText="tootaja_id" InsertVisible="False" ReadOnly="True" SortExpression="tootaja_id" />
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
</p>
    </main>
</asp:Content>
