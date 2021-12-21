<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style4
    {
        width: 154px;
    }
    .style5
    {
        height: 73px;
        width: 154px;
    }
    .style6
    {
        height: 73px;
    }
        .style7
        {
            height: 84px;
            width: 154px;
        }
        .style8
        {
            height: 84px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table class="style1">
    <tr>
        <td class="style7">
        Hakkında<asp:ScriptManagerProxy 
                ID="ScriptManagerProxy1" runat="server">
            </asp:ScriptManagerProxy>
        </td>
        <td class="style8">
            <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick">
            </asp:Timer>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </ContentTemplate>


                <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Timer1" />

                   </Triggers>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td class="style4">
            <asp:Image ID="Image1" runat="server" Height="114px" 
                ImageUrl="~/image/hasan.jpg" Width="136px" />
        </td>
        <td>
        Hasan ÇETİN - 07040285 -&nbsp; http://hasanc.org</td>
    </tr>
    <tr>
        <td class="style4">
            Proje Amacı;</td>
        <td>
        Bu proje online kayıt sistemi olarak küçük&nbsp; çaplı polikliniklerde 
        kullanılmak için tasarlanmıştır.</td>
    </tr>
    <tr>
        <td class="style4">
            Kullaılan Özellikler;</td>
        <td>
            ASP.net 4.0 /Ajax, masterpage,sitemap,login control,css,veritabanı(access 6 
            tablo),diğer araçlar...</td>
    </tr>
    <tr>
        <td class="style5">
            Proje hakkında</td>
        <td align="left" class="style6">
            Kullanıcılar ( Hasta) sadece randevu alma ve şikayet verme hakkına sahip iken. 
            yönetim doktorlar gündelik olarak<br />
            veritabanından bölümüne göre hasta listelerini almaktadırlar. Girlen veriler 
            doğrultusunda hastalara mail ve sms atma kısmı yapım aşamsındadır. Proje 
            gelişime açık olup bir çok özellik eklenebilir.</td>
    </tr>
</table>
</asp:Content>
