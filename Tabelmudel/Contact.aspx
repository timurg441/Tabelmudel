<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Tabelmudel.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Kliendid<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="klient_id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="klient_id" HeaderText="klient_id" ReadOnly="True" SortExpression="klient_id" InsertVisible="False" />
                <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>" DeleteCommand="DELETE FROM [KlientSet] WHERE [klient_id] = @klient_id" InsertCommand="INSERT INTO [KlientSet] ([nimi], [telefon]) VALUES (@nimi, @telefon)" SelectCommand="SELECT * FROM [KlientSet]" UpdateCommand="UPDATE [KlientSet] SET [nimi] = @nimi, [telefon] = @telefon WHERE [klient_id] = @klient_id">
                <DeleteParameters>
                    <asp:Parameter Name="klient_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                    <asp:Parameter Name="telefon" Type="String" />
                    <asp:Parameter Name="klient_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</h2>
<h2 style="font-size: xx-large"><strong>Lisa klient<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="klient_id" DataSourceID="SqlDataSource2" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
    <EditRowStyle BackColor="#2461BF" />
    <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="klient_id" HeaderText="klient_id" InsertVisible="False" ReadOnly="True" SortExpression="klient_id" />
        <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
        <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    </asp:DetailsView>
    </strong></h2>
<p style="font-size: xx-large">
    Your contact page.</p>
        <address>
            One Microsoft Way<br />
            Redmond, WA 98052-6399<br />
            <abbr title="Phone">P:</abbr>
            425.555.0100
        </address>

        <address>
            <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
            <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
        </address>
    </main>
</asp:Content>
