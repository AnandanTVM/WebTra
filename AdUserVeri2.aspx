<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdUserVeri2.aspx.cs" Inherits="AdUserVeri2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            background-color: #69CB6A;
            color: #FFFFFF;
        }
        .style2
        {
            width: 341px;
        }
        .style3
        {
            text-align: right;
            width: 341px;
        }
        .style4
        {
            width: 341px;
            height: 27px;
        }
        .style5
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified" frame="box">
        <tr>
            <td class="style1" colspan="2">
                <strong>User Verification</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                User Type</td>
            <td class="style5">
                <asp:Label ID="ut" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                User Name</td>
            <td>
                <asp:Label ID="un" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td>
                <asp:Label ID="ps" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Contact INfo</td>
            <td>
                <asp:Label ID="ci" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Phone</td>
            <td>
                <asp:Label ID="ph" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Mail ID</td>
            <td>
                <asp:Label ID="mid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Reject" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Accept" />
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
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Enabled="False" ErrorMessage="Pls Enter Password" 
                    ForeColor="#CC3300" Visible="False">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Accept" 
                    Visible="False" />
            </td>
        </tr>
    </table>
</asp:Content>

