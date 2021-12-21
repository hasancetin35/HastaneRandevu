<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="yonet.aspx.cs" Inherits="yonet_yonet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 196px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style2">
                YÖNETİM PANELİ</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Şikayetler gitmek için;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Şikayet listesini al." Width="196px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Listesi alınacak bölümünü seçiniz.</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Dahiliye</asp:ListItem>
                <asp:ListItem>Kalp</asp:ListItem>
                <asp:ListItem>KBB</asp:ListItem>
                <asp:ListItem>Cildiye</asp:ListItem>
                <asp:ListItem>Diğer</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Listeyi Getir" Width="124px" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

