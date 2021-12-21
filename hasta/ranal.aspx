<%@ Page Title="Randevu Al" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="ranal.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 916px;
        height: 133px;
    }
    .style4
    {
        height: 21px;
        width: 192px;
    }
        .style13
    {
        width: 323px;
    }
    .style15
    {
        width: 192px;
    }
    .style17
    {
        width: 192px;
        height: 26px;
    }
    .style19
    {
        width: 192px;
        height: 34px;
    }
        .style23
        {
            width: 202px;
        }
        .style24
        {
            height: 21px;
            width: 202px;
        }
        .style25
        {
            width: 202px;
            height: 26px;
        }
        .style26
        {
            width: 202px;
            height: 34px;
        }
        .style27
        {
        width: 314px;
    }
        .style28
        {
            height: 21px;
            width: 314px;
        }
        .style29
        {
            height: 26px;
            width: 314px;
        }
        .style30
        {
            height: 34px;
            width: 314px;
            color: #0066FF;
        }
    .style31
    {
        width: 227px;
        height: 304px;
        float: right;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Bilgileri giriniz</h2>
<table class="style1">
    <tr>
        <td class="style15">
            AD</td>
        <td class="style23">
            <asp:TextBox ID="TextBox1" runat="server" Width="172px"></asp:TextBox>
        </td>
        <td class="style27">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="Bos bırakmayınız" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="style13" rowspan="7">
            <img alt="" class="style31" src="../image/randevu_al.jpg" /></td>
    </tr>
    <tr>
        <td class="style4">
            SOYAD</td>
        <td class="style24">
            <asp:TextBox ID="TextBox2" runat="server" Width="171px"></asp:TextBox>
        </td>
        <td class="style28">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Bos bırakmayınız"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style17">
            TC Kimlik No:</td>
        <td class="style25">
            <asp:TextBox ID="TextBox3" runat="server" Width="171px" MaxLength="11"></asp:TextBox>
        </td>
        <td class="style29">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="Bos bırakmayınız"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Telefon:</td>
        <td class="style23">
            <asp:TextBox ID="TextBox4" runat="server" Width="171px"></asp:TextBox>
        </td>
        <td class="style27">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Bos bırakmayınız"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style19">
            Bölüm</td>
        <td class="style26">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Dahiliye</asp:ListItem>
                <asp:ListItem>Kalp</asp:ListItem>
                <asp:ListItem>KBB</asp:ListItem>
                <asp:ListItem>Cildiye</asp:ListItem>
                <asp:ListItem>Diğer</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style30">
            Hangi bölümde muayne olacaksanız seçiniz...</td>
    </tr>
    <tr>
        <td class="style15">
            Hastalığınız Açıklama</td>
        <td class="style23">
            <asp:TextBox ID="TextBox5" runat="server" Height="79px" Width="196px"></asp:TextBox>
        </td>
        <td class="style27">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Bos bırakmayınız"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style15">
            &nbsp;</td>
        <td class="style23">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
        <td class="style27">
            <asp:Button ID="Button1" runat="server" Text="Button" Width="182px" 
                onclick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>
