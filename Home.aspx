<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="SurveyWebsite.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="tshepo">
    <table class="nav-justified">
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 412px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" style="text-align: center;font-family:Georgia; color:white;font-weight: 700; font-style: BOLD;font-size: large;" Text="WELCOME TO SURVEY SYSTEM " ></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 412px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 412px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="40px" style="border-radius:28px;width:140px" Text="Fill Out Survey"  OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Height="40px" Text="View Survey Results" style="border-radius: 28px; Width:140px" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 412px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
           
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
</asp:Content>
