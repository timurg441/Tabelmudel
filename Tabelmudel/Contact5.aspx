<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact5.aspx.cs" Inherits="Tabelmudel.Contact4" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tarnijad</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="tarnija_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="tarnija_id" HeaderText="tarnija_id" InsertVisible="False" ReadOnly="True" SortExpression="tarnija_id" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>" DeleteCommand="DELETE FROM [TarnijaSet] WHERE [tarnija_id] = @tarnija_id" InsertCommand="INSERT INTO [TarnijaSet] ([nimi]) VALUES (@nimi)" SelectCommand="SELECT * FROM [TarnijaSet]" UpdateCommand="UPDATE [TarnijaSet] SET [nimi] = @nimi WHERE [tarnija_id] = @tarnija_id">
                <DeleteParameters>
                    <asp:Parameter Name="tarnija_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimi" Type="String" />
                    <asp:Parameter Name="tarnija_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <h3>Lisa tarnija</h3>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="tarnija_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="tarnija_id" HeaderText="tarnija_id" InsertVisible="False" ReadOnly="True" SortExpression="tarnija_id" />
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