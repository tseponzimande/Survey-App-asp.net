<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fillSurveys.aspx.cs" Inherits="SurveyWebsite.UserSurveys.fillSurveys" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 259px; height: 27px;"></td>
            <td style="height: 27px; width: 447px;">
                <asp:Label ID="Label1" runat="server" Text="Take Our Survey" style="font-weight: bold; text-decoration: underline; font-style: italic; color: #666633; font-size: large"></asp:Label>
            </td>
            <td style="height: 27px"></td>
        </tr>
        <tr>
            <td style="width: 259px">&nbsp;</td>
            <td style="width: 447px">
                <asp:Label ID="lbl1" runat="server" Text="Label" ForeColor="#009933" Visible="False"></asp:Label>
                <br />
                <asp:Label ID="lblerr" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">&nbsp;</td>
            <td style="width: 447px">
                    <asp:Label ID="Label8" runat="server" Text="*" ForeColor="Red"></asp:Label>
&nbsp;
&nbsp;Represents Required Fields</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">
                <asp:Label ID="Label2" runat="server" Text="Personal Details:" style="font-weight: bold; text-decoration: underline; font-style: italic; color: #666633; font-size: large"></asp:Label>
            </td>
            <td style="width: 447px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px" class="text-center">
                <asp:Label ID="Label3" runat="server" Text="Surname" style="font-weight: bold; font-size: large"></asp:Label>
            </td>
            <td style="width: 447px">
                    <asp:TextBox ID="TextBox1" runat="server" style="border-radius:5px" Height="30px" Width="250px"></asp:TextBox>
                    <span style="color: #FF0000">*</span></td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Surname Is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px" class="text-center">
                <asp:Label ID="Label4" runat="server" Text="First Name" style="font-weight: bold; font-size: large"></asp:Label>
            </td>
            <td style="width: 447px">
                    <asp:TextBox ID="TextBox2" runat="server" style="border-radius:5px" Height="30px" Width="250px"></asp:TextBox>
                    <span style="color: #FF0000">*</span></td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name id required" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px" class="text-center">
                <asp:Label ID="Label5" runat="server" Text="Contact Number" style="font-weight: bold; font-size: large"></asp:Label>
            </td>
            <td style="width: 447px">
                    <asp:TextBox ID="TextBox3" runat="server" style="border-radius:5px" Height="30px" Width="250px" MaxLength="10"></asp:TextBox>
                    <span style="color: #FF0000">*</span></td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Number is Required" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px" class="text-center">
                <asp:Label ID="Label6" runat="server" Text="Date" style="font-weight: bold; font-size: large"></asp:Label>
            </td>
            <td style="width: 447px">
                    <asp:TextBox ID="TextBox4" runat="server" style="border-radius:5px" Height="30px" TextMode="Date" Width="250px" ></asp:TextBox>
                    <span style="color: #FF0000">*</span></td>
            <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Date is required" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px" class="text-center">
                <asp:Label ID="Label7" runat="server" Text="Age" style="font-weight: bold; font-size: large"></asp:Label>
            </td>
            <td style="width: 447px">
                    <asp:TextBox ID="TextBox5" runat="server" style="border-radius:5px" Height="30px" Width="45px" TextMode="Number" ></asp:TextBox>
                    <span style="color: #FF0000">*</span></td>
            <td>
                    <span class="auto-style6">
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" Type ="Integer" MinimumValue="5" MaximumValue="120" CssClass="input-error" Display="Dynamic" ErrorMessage ="Enter Age above 5 Years and below 120 Years" ForeColor="Red"></asp:RangeValidator>
                    </span>
                </td>
        </tr>
        
        <tr>
            <td style="width: 259px">&nbsp;</td>
            <td style="width: 447px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
                <td class="auto-style26" colspan="3" style="font-size: large"><strong><em>What is your Favourite food? (You can Choose more than 1)</em></strong></td>
                <td class="auto-style26"></td>
            </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="200px" style="margin-right: 0px" Width="245px">
                        <asp:ListItem> Pizza</asp:ListItem>
                        <asp:ListItem> Pasta</asp:ListItem>
                        <asp:ListItem> Pap and wors</asp:ListItem>
                        <asp:ListItem> Chicken and stir fry</asp:ListItem>
                        <asp:ListItem> Beef stir fry</asp:ListItem>
                        <asp:ListItem> Other</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            <td style="width: 447px">&nbsp;&nbsp; <span style="color: #FF0000">*</span></td>
            <td>&nbsp;</td>
        </tr>
        
        <tr>
            <td colspan="2" style="font-size: large"><strong><em>On a scale of 1 to 5 indicate whether you strongly agree to strongly disagree</em></strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">&nbsp;</td>
            <td style="width: 447px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px; font-size: large;"><strong>I like to eat out <span style="color: #FF0000">*</span></strong></td>
            <td style="width: 447px">
                    
                    <asp:RadioButtonList ID="RadioButtonEatOut" runat="server" RepeatDirection="Horizontal" style="margin-right: 0px" Width="580px">
                        <asp:ListItem> Strongly Agree</asp:ListItem>
                        <asp:ListItem> Agree</asp:ListItem>
                        <asp:ListItem> Neutral</asp:ListItem>
                        <asp:ListItem> Disagree</asp:ListItem>
                        <asp:ListItem> Strongly Disagree</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoreato" runat="server" ControlToValidate="RadioButtonEatOut" ErrorMessage="Tick One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px; font-size: large;"><b>I like to watch movies&nbsp; <span style="color: #FF0000">*</span></b></td>
            <td style="width: 447px">
                    
                    <asp:RadioButtonList ID="RadioButtonMovies" runat="server" RepeatDirection="Horizontal" style="margin-right: 0px" Width="580px">
                        <asp:ListItem> Strongly Agree</asp:ListItem>
                        <asp:ListItem> Agree</asp:ListItem>
                        <asp:ListItem> Neutral</asp:ListItem>
                        <asp:ListItem> Disagree</asp:ListItem>
                        <asp:ListItem> Strongly Disagree</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatormovie" runat="server" ControlToValidate="RadioButtonMovies" ErrorMessage="Tick One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px; font-size: large;"><b>I like to watch tv <span style="color: #FF0000">*</span></b></td>
            <td style="width: 447px">
                    
                    <asp:RadioButtonList ID="RadioButtonTv" runat="server" RepeatDirection="Horizontal" style="margin-right: 0px" Width="580px">
                        <asp:ListItem> Strongly Agree</asp:ListItem>
                        <asp:ListItem> Agree</asp:ListItem>
                        <asp:ListItem> Neutral</asp:ListItem>
                        <asp:ListItem> Disagree</asp:ListItem>
                        <asp:ListItem> Strongly Disagree</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatortv" runat="server" ControlToValidate="RadioButtonTv" ErrorMessage="Tick One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px; font-size: large;"><strong>I like to listen to radio <span style="color: #FF0000">*</span></strong></td>
            <td style="width: 447px">
                    
                    <asp:RadioButtonList ID="RadioButtonFM" runat="server" RepeatDirection="Horizontal" style="margin-right: 0px" Width="580px">
                        <asp:ListItem> Strongly Agree</asp:ListItem>
                        <asp:ListItem> Agree</asp:ListItem>
                        <asp:ListItem> Neutral</asp:ListItem>
                        <asp:ListItem> Disagree</asp:ListItem>
                        <asp:ListItem> Strongly Disagree</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            <td>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorfm" runat="server" ControlToValidate="RadioButtonFM" ErrorMessage="Tick One" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td style="width: 259px">&nbsp;</td>
            <td style="width: 447px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">
                    <asp:Button ID="Btnsubmit" runat="server" style="border-radius: 5px" Text="Submit" Height="45px" Width="150px" OnClick="Btnsubmit_Click" />
                </td>
            <td style="width: 447px">
                    &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 259px">&nbsp;</td>
            <td style="width: 447px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
