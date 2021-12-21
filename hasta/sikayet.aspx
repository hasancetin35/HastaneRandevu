<%@ Page Title="sikayet" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="sikayet.aspx.cs" Inherits="sikayet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
            width: 129px;
        }
    .style3
    {
        width: 129px;
        height: 71px;
    }
    .style4
    {
        height: 71px;
    }
        .style5
        {
            width: 135px;
            height: 100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <table class="style1">
    <tr>
        <td class="style2">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Yönetim</asp:ListItem>
                <asp:ListItem>Doktor</asp:ListItem>
                <asp:ListItem>Temizlik</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="370px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Telefon Numaranız"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Gonder" Width="282px" 
                onclick="Button1_Click" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <img alt="" class="style5" src="../image/spam.jpg" /></td>
        <td class="style4">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
    </tr>
</table>
</asp:Content>


