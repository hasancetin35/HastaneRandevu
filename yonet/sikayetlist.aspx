<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sikayetlist.aspx.cs" Inherits="sikayetlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="sıra" DataSourceID="sikayetlistele" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="sıra" HeaderText="sıra" InsertVisible="False" 
                ReadOnly="True" SortExpression="sıra" />
            <asp:BoundField DataField="bolum" HeaderText="bolum" SortExpression="bolum" />
            <asp:BoundField DataField="sikayet" HeaderText="sikayet" 
                SortExpression="sikayet" />
            <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
            <asp:BoundField DataField="tarih" HeaderText="tarih" SortExpression="tarih" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:AccessDataSource ID="sikayetlistele" runat="server" 
        ConflictDetection="CompareAllValues" DataFile="~/App_Data/veri.mdb" 
        DeleteCommand="DELETE FROM [sikayet] WHERE [sıra] = ? AND (([bolum] = ?) OR ([bolum] IS NULL AND ? IS NULL)) AND (([sikayet] = ?) OR ([sikayet] IS NULL AND ? IS NULL)) AND (([tel] = ?) OR ([tel] IS NULL AND ? IS NULL))" 
        InsertCommand="INSERT INTO [sikayet] ([sıra], [bolum], [sikayet], [tel]) VALUES (?, ?, ?, ?)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [sikayet]" 
        UpdateCommand="UPDATE [sikayet] SET [bolum] = ?, [sikayet] = ?, [tel] = ? WHERE [sıra] = ? AND (([bolum] = ?) OR ([bolum] IS NULL AND ? IS NULL)) AND (([sikayet] = ?) OR ([sikayet] IS NULL AND ? IS NULL)) AND (([tel] = ?) OR ([tel] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_sıra" Type="Int32" />
            <asp:Parameter Name="original_bolum" Type="String" />
            <asp:Parameter Name="original_bolum" Type="String" />
            <asp:Parameter Name="original_sikayet" Type="String" />
            <asp:Parameter Name="original_sikayet" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sıra" Type="Int32" />
            <asp:Parameter Name="bolum" Type="String" />
            <asp:Parameter Name="sikayet" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="bolum" Type="String" />
            <asp:Parameter Name="sikayet" Type="String" />
            <asp:Parameter Name="tel" Type="String" />
            <asp:Parameter Name="original_sıra" Type="Int32" />
            <asp:Parameter Name="original_bolum" Type="String" />
            <asp:Parameter Name="original_bolum" Type="String" />
            <asp:Parameter Name="original_sikayet" Type="String" />
            <asp:Parameter Name="original_sikayet" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
            <asp:Parameter Name="original_tel" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>

