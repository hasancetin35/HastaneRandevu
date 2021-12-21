<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="listele1.aspx.cs" Inherits="listele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 184px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    KALP BÖLÜMÜ<br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                    CellPadding="3" CellSpacing="1" DataKeyNames="Kimlik" 
                    DataSourceID="AccessDataSource1" GridLines="None" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Width="912px" 
                    AllowPaging="True" AllowSorting="True">
                    <Columns>
                        <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Kimlik" />
                        <asp:BoundField DataField="TC" HeaderText="TC" SortExpression="TC" />
                        <asp:BoundField DataField="Ad" HeaderText="Ad" SortExpression="Ad" />
                        <asp:BoundField DataField="Soyad" HeaderText="Soyad" SortExpression="Soyad" />
                        <asp:BoundField DataField="Telefon" HeaderText="Telefon" 
                            SortExpression="Telefon" />
                        <asp:BoundField DataField="Hastalik" HeaderText="Hastalik" 
                            SortExpression="Hastalik" />
                        <asp:BoundField DataField="Tanim" HeaderText="Tanim" 
                            SortExpression="Tanim" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                    DataFile="~/App_Data/veri.mdb" SelectCommand="SELECT * FROM [tablo1]">
                </asp:AccessDataSource>
            </td>
        </tr>
    </table>
</asp:Content>


