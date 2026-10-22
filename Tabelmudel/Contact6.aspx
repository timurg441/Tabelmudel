<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact6.aspx.cs" Inherits="Tabelmudel.Contact4" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Varuosad</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="varuosa_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="varuosa_id" HeaderText="varuosa_id" InsertVisible="False" ReadOnly="True" SortExpression="varuosa_id" />
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                    <asp:BoundField DataField="tootja" HeaderText="tootja" SortExpression="tootja" />
                    <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                    <asp:BoundField DataField="laoseis" HeaderText="laoseis" SortExpression="laoseis" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>" DeleteCommand="DELETE FROM [VaruosaSet] WHERE [varuosa_id] = @varuosa_id" InsertCommand="INSERT INTO [VaruosaSet] ([nimetus], [tootja], [hind], [laoseis]) VALUES (@nimetus, @tootja, @hind, @laoseis)" SelectCommand="SELECT * FROM [VaruosaSet]" UpdateCommand="UPDATE [VaruosaSet] SET [nimetus] = @nimetus, [tootja] = @tootja, [hind] = @hind, [laoseis] = @laoseis WHERE [varuosa_id] = @varuosa_id">
                <DeleteParameters>
                    <asp:Parameter Name="varuosa_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="tootja" Type="String" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                    <asp:Parameter Name="laoseis" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nimetus" Type="String" />
                    <asp:Parameter Name="tootja" Type="String" />
                    <asp:Parameter Name="hind" Type="Decimal" />
                    <asp:Parameter Name="laoseis" Type="Int32" />
                    <asp:Parameter Name="varuosa_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <h3>Lisa varuosa</h3>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="varuosa_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="varuosa_id" HeaderText="varuosa_id" InsertVisible="False" ReadOnly="True" SortExpression="varuosa_id" />
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                    <asp:BoundField DataField="tootja" HeaderText="tootja" SortExpression="tootja" />
                    <asp:BoundField DataField="hind" HeaderText="hind" SortExpression="hind" />
                    <asp:BoundField DataField="laoseis" HeaderText="laoseis" SortExpression="laoseis" />
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