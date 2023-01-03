<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="HoReg.aspx.cs" Inherits="HoReg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
           
        }
        .style2
        {
            color: #ffffff;
            height: 33px;
        }
        .style3
        {
            height: 27px;
        }
        .style4
        {
            height: 28px;
        }
        .style5
        {
            height: 29px;
        }
        .style6
        {
            height: 30px;
        }
        .style9
        {
            height: 33px;
        }
        .style10
        {
            height: 27px;
            text-align: right;
        }
        .style11
        {
            height: 27px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table align="center" cellpadding="0" class="style1" 
        style="vertical-align: middle" frame="box" width=100% >
        <tr bgcolor="#69cb6a">
            <td class="style9" bgcolor="">
                </td>
            <td class="style2" valign="middle" bgcolor="">
                <strong>Register Here</strong></td>
            <td class="style9" colspan="2" valign="middle" bgcolor="">
                </td>
            <td class="style9" bgcolor="">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                User Type</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    >
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Doctor</asp:ListItem>
                    <asp:ListItem>Nurse</asp:ListItem>
                    <asp:ListItem>Parent</asp:ListItem>
                    <asp:ListItem>Patient</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Enter Name</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="225px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Name Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Enter Password</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="225px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="password" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Contact Info</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="TextBox4" runat="server" Height="92px" Width="225px" TextMode="MultiLine" 
                   ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Contact Info" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Phone</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="225px" 
                    ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Phone Number" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Invalid type" ForeColor="#990000" 
                    Operator="DataTypeCheck" Type="Double">*</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Mail ID</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="225px" 
                    ></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Invalid Mail ID" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Mail id Required" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                <asp:Label ID="Label1" runat="server" Text="Enter Department" Visible="False"></asp:Label>
            </td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="225px" 
                    Visible="False"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfdep" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter Department" ForeColor="Red" 
                    SetFocusOnError="True" Visible="False">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                <asp:Label ID="Label2" runat="server" Text="Designation" Visible="False"></asp:Label>
            </td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="225px" Visible="False" 
                    ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfdesi" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Enter Designation" ForeColor="Red" 
                    SetFocusOnError="True" Visible="False">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" Text="Cancel" Width="95px" />
            </td>
            <td class="style6">
                <asp:Button ID="Button2" runat="server" Text="Register" Width="88px" 
                    onclick="Button2_Click1" />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style11" colspan="2">
                <asp:Label ID="Label3" runat="server" ForeColor="#0066FF"></asp:Label>
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style4" colspan="2" rowspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    HeaderText="correct these" ShowMessageBox="True" />
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>


</asp:Content>

