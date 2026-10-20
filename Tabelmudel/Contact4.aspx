<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact4.aspx.cs" Inherits="Tabelmudel.Contact4" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">Tarnija varuosad</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
            DataKeyNames="Tarnija_tarnija_id,Varuosa_varuosa_id" DataSourceID="SqlDataSource1"
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" DeleteText="Kustuta" />
                <asp:BoundField DataField="nimi" HeaderText="Tarnija" />
                <asp:BoundField DataField="nimetus" HeaderText="Varuosa" />
                <asp:BoundField DataField="pakutav_hind" HeaderText="Pakutav hind" DataFormatString="{0:0.00} €" HtmlEncode="False" />
            </Columns>
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>"
            SelectCommand="SELECT TarnijaSet.nimi, VaruosaSet.nimetus, Tarnija_VaruosaSet.pakutav_hind, Tarnija_VaruosaSet.Tarnija_tarnija_id, Tarnija_VaruosaSet.Varuosa_varuosa_id FROM TarnijaSet INNER JOIN Tarnija_VaruosaSet ON TarnijaSet.tarnija_id = Tarnija_VaruosaSet.Tarnija_tarnija_id INNER JOIN VaruosaSet ON Tarnija_VaruosaSet.Varuosa_varuosa_id = VaruosaSet.varuosa_id"
            DeleteCommand="DELETE FROM Tarnija_VaruosaSet WHERE Tarnija_tarnija_id = @Tarnija_tarnija_id AND Varuosa_varuosa_id = @Varuosa_varuosa_id">
            <DeleteParameters>
                <asp:Parameter Name="Tarnija_tarnija_id" Type="Int32" />
                <asp:Parameter Name="Varuosa_varuosa_id" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>

        <br />
        <h2>Lisa tarnija varuosa</h2>
        <asp:DetailsView ID="DetailsView1" runat="server" OnItemInserted="DetailsView1_ItemInserted" AutoGenerateRows="False" CellPadding="4"
            DataKeyNames="Tarnija_tarnija_id,Varuosa_varuosa_id" DataSourceID="SqlDataSource2"
            DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:TemplateField HeaderText="Tarnija">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlTarnija" runat="server"
                            DataSourceID="SqlDataSourceTarnija" DataTextField="nimi" DataValueField="tarnija_id"
                            SelectedValue='<%# Bind("Tarnija_tarnija_id") %>' />
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Varuosa">
                    <InsertItemTemplate>
                        <asp:DropDownList ID="ddlVaruosa" runat="server"
                            DataSourceID="SqlDataSourceVaruosa" DataTextField="nimetus" DataValueField="varuosa_id"
                            SelectedValue='<%# Bind("Varuosa_varuosa_id") %>' />
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="pakutav_hind" HeaderText="Pakutav hind" SortExpression="pakutav_hind" />
                <asp:CommandField ShowInsertButton="True" InsertText="Lisa" CancelText="Tühista" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>"
            DeleteCommand="DELETE FROM [Tarnija_VaruosaSet] WHERE [Tarnija_tarnija_id] = @Tarnija_tarnija_id AND [Varuosa_varuosa_id] = @Varuosa_varuosa_id"
            InsertCommand="INSERT INTO [Tarnija_VaruosaSet] ([pakutav_hind], [Tarnija_tarnija_id], [Varuosa_varuosa_id]) VALUES (@pakutav_hind, @Tarnija_tarnija_id, @Varuosa_varuosa_id)"
            SelectCommand="SELECT * FROM [Tarnija_VaruosaSet]"
            UpdateCommand="UPDATE [Tarnija_VaruosaSet] SET [pakutav_hind] = @pakutav_hind WHERE [Tarnija_tarnija_id] = @Tarnija_tarnija_id AND [Varuosa_varuosa_id] = @Varuosa_varuosa_id">
            <DeleteParameters>
                <asp:Parameter Name="Tarnija_tarnija_id" Type="Int32" />
                <asp:Parameter Name="Varuosa_varuosa_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pakutav_hind" Type="Decimal" />
                <asp:Parameter Name="Tarnija_tarnija_id" Type="Int32" />
                <asp:Parameter Name="Varuosa_varuosa_id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pakutav_hind" Type="Decimal" />
                <asp:Parameter Name="Tarnija_tarnija_id" Type="Int32" />
                <asp:Parameter Name="Varuosa_varuosa_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSourceTarnija" runat="server"
            ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>"
            SelectCommand="SELECT tarnija_id, nimi FROM TarnijaSet" />
        <asp:SqlDataSource ID="SqlDataSourceVaruosa" runat="server"
            ConnectionString="<%$ ConnectionStrings:KellaseppConnectionString1 %>"
            SelectCommand="SELECT varuosa_id, nimetus FROM VaruosaSet" />
    </main>
</asp:Content>