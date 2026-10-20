<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact2.aspx.cs" Inherits="Tabelmudel.Contact2" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Ametitöötaja tabel</h2>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Tootaja_tootaja_id,Ametikoht_ametikoht_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="nimi" HeaderText="Töötaja" SortExpression="nimi" />
                    <asp:BoundField DataField="nimetus" HeaderText="Ametikoht" SortExpression="nimetus" />
                    <asp:BoundField DataField="alguskuupaev" HeaderText="Algus" SortExpression="alguskuupaev" DataFormatString="{0:dd.MM.yyyy}" HtmlEncode="False" />
                    <asp:BoundField DataField="loppkuupaev" HeaderText="Lõpp" SortExpression="loppkuupaev" DataFormatString="{0:dd.MM.yyyy}" HtmlEncode="False" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>"
                SelectCommand="SELECT TootajaSet.nimi, AmetikohtSet.nimetus, Tootaja_AmetikohtSet.alguskuupaev, Tootaja_AmetikohtSet.loppkuupaev, Tootaja_AmetikohtSet.Tootaja_tootaja_id, Tootaja_AmetikohtSet.Ametikoht_ametikoht_id FROM TootajaSet INNER JOIN Tootaja_AmetikohtSet ON TootajaSet.tootaja_id = Tootaja_AmetikohtSet.Tootaja_tootaja_id INNER JOIN AmetikohtSet ON Tootaja_AmetikohtSet.Ametikoht_ametikoht_id = AmetikohtSet.ametikoht_id"
                DeleteCommand="DELETE FROM Tootaja_AmetikohtSet WHERE Tootaja_tootaja_id = @Tootaja_tootaja_id AND Ametikoht_ametikoht_id = @Ametikoht_ametikoht_id">
                <DeleteParameters>
                    <asp:Parameter Name="Tootaja_tootaja_id" Type="Int32" />
                    <asp:Parameter Name="Ametikoht_ametikoht_id" Type="Int32" />
                </DeleteParameters>
            </asp:SqlDataSource>
        </p>
    </main>
</asp:Content>