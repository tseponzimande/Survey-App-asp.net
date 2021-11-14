<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurveyResult.aspx.cs" Inherits="SurveyWebsite.UserSurveys.SurveyResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" style="font-weight: 700; font-size: x-large; color: #999966; text-decoration: underline" Text="Survey Results"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblerr" runat="server" style="font-weight: 700; font-size: large" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px; height: 27px;">
                <asp:Label ID="Label2" runat="server" style="font-weight: bold; font-size: large" Text="Total Number Of Surveys"></asp:Label>
            </td>
            <td style="height: 27px; color: #000000">
                <asp:Label ID="lblsur" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label3" runat="server" style="font-weight: bold; font-size: large" Text="Average Age"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblage" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label4" runat="server" style="font-weight: bold; font-size: large" Text="Oldest person who participated in Survey"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblOld" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label5" runat="server" style="font-weight: bold; font-size: large" Text="Youngest person who participated in Survey"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblyoung" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label7" runat="server" style="font-weight: bold; font-size: large" Text="Percentage of people who like Pizza"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblpizz" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label8" runat="server" style="font-weight: bold; font-size: large" Text="Percentage of people who like Pasta"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblpasta" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label9" runat="server" style="font-weight: bold; font-size: large" Text="Percentage of people who like Pap and Wors"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblpap" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label10" runat="server" style="font-weight: bold; font-size: large" Text="People who like to eat out"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbleatout" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label11" runat="server" style="font-weight: bold; font-size: large" Text="People who like to watch movies"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblmovies" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label12" runat="server" style="font-weight: bold; font-size: large" Text="Peoplewho like to watch TV"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbltv" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Label ID="Label13" runat="server" style="font-weight: bold; font-size: large" Text="People who like to listen to radio"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblradio" runat="server" Text="Label" Visible="False" style="font-weight: bold; font-size: large; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 406px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 406px">
                <asp:Button ID="Button1" runat="server" style="border-radius:5px"  Height="45px" Text="Ok" Width="150px" OnClick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 406px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
