<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact3.aspx.cs" Inherits="Tabelmudel.Contact3" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Lisa ametitöötaja veebivorm</h2>
        <p>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Tootaja_tootaja_id,Ametikoht_ametikoht_id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
                <EditRowStyle BackColor="#2461BF" />
                <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
                <Fields>
                    <asp:TemplateField HeaderText="Töötaja">
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlTootaja" runat="server"
                                DataSourceID="SqlDataSourceTootaja"
                                DataTextField="nimi" DataValueField="tootaja_id"
                                SelectedValue='<%# Bind("Tootaja_tootaja_id") %>' />
                        </InsertItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Ametikoht">
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlAmetikoht" runat="server"
                                DataSourceID="SqlDataSourceAmetikoht"
                                DataTextField="nimetus" DataValueField="ametikoht_id"
                                SelectedValue='<%# Bind("Ametikoht_ametikoht_id") %>' />
                        </InsertItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="alguskuupaev" HeaderText="Algus (pp.kk.aaaa)" SortExpression="alguskuupaev" />
                    <asp:BoundField DataField="loppkuupaev" HeaderText="Lõpp (pp.kk.aaaa)" SortExpression="loppkuupaev" />
                    <asp:CommandField ShowInsertButton="True" InsertText="Lisa" CancelText="Tühista" />
                </Fields>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:DetailsView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>" DeleteCommand="DELETE FROM [Tootaja_AmetikohtSet] WHERE [Tootaja_tootaja_id] = @Tootaja_tootaja_id AND [Ametikoht_ametikoht_id] = @Ametikoht_ametikoht_id" InsertCommand="INSERT INTO [Tootaja_AmetikohtSet] ([alguskuupaev], [loppkuupaev], [Tootaja_tootaja_id], [Ametikoht_ametikoht_id]) VALUES (@alguskuupaev, @loppkuupaev, @Tootaja_tootaja_id, @Ametikoht_ametikoht_id)" SelectCommand="SELECT * FROM [Tootaja_AmetikohtSet]" UpdateCommand="UPDATE [Tootaja_AmetikohtSet] SET [alguskuupaev] = @alguskuupaev, [loppkuupaev] = @loppkuupaev WHERE [Tootaja_tootaja_id] = @Tootaja_tootaja_id AND [Ametikoht_ametikoht_id] = @Ametikoht_ametikoht_id">
                <DeleteParameters>
                    <asp:Parameter Name="Tootaja_tootaja_id" Type="Int32" />
                    <asp:Parameter Name="Ametikoht_ametikoht_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="alguskuupaev" Type="DateTime" />
                    <asp:Parameter Name="loppkuupaev" Type="DateTime" />
                    <asp:Parameter Name="Tootaja_tootaja_id" Type="Int32" />
                    <asp:Parameter Name="Ametikoht_ametikoht_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="alguskuupaev" Type="DateTime" />
                    <asp:Parameter Name="loppkuupaev" Type="DateTime" />
                    <asp:Parameter Name="Tootaja_tootaja_id" Type="Int32" />
                    <asp:Parameter Name="Ametikoht_ametikoht_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

            <asp:SqlDataSource ID="SqlDataSourceTootaja" runat="server"
                ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>"
                SelectCommand="SELECT tootaja_id, nimi FROM TootajaSet" />
            <asp:SqlDataSource ID="SqlDataSourceAmetikoht" runat="server"
                ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>"
                SelectCommand="SELECT ametikoht_id, nimetus FROM AmetikohtSet" />
        </p>
    </main>
</asp:Content>