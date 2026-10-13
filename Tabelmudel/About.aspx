<%@ Page Title="Töötajad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Tabelmudel.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Remont_remont_id,Tootaja_tootaja_id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Remont_remont_id" HeaderText="Remont_remont_id" ReadOnly="True" SortExpression="Remont_remont_id" />
                <asp:BoundField DataField="Tootaja_tootaja_id" HeaderText="Tootaja_tootaja_id" ReadOnly="True" SortExpression="Tootaja_tootaja_id" />
            </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>" DeleteCommand="DELETE FROM [Remont_TootajaSet] WHERE [Remont_remont_id] = @Remont_remont_id AND [Tootaja_tootaja_id] = @Tootaja_tootaja_id" InsertCommand="INSERT INTO [Remont_TootajaSet] ([Remont_remont_id], [Tootaja_tootaja_id]) VALUES (@Remont_remont_id, @Tootaja_tootaja_id)" ProviderName="<%$ ConnectionStrings:KellaseppConnectionString1.ProviderName %>" SelectCommand="SELECT [Remont_remont_id], [Tootaja_tootaja_id] FROM [Remont_TootajaSet]">
                <DeleteParameters>
                    <asp:Parameter Name="Remont_remont_id" Type="Int32" />
                    <asp:Parameter Name="Tootaja_tootaja_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Remont_remont_id" Type="Int32" />
                    <asp:Parameter Name="Tootaja_tootaja_id" Type="Int32" />
                </InsertParameters>
            </asp:SqlDataSource>
</h2>
    </main>
</asp:Content>
