<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdComplV2.aspx.cs" Inherits="AdComplV2" %>

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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="nav-justified" frame="box">
        <tr>
            <td class="style1" colspan="2">
                <strong>Check Complaint</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Complaint Type</td>
            <td>
                <asp:Label ID="ct" runat="server"></asp:Label>
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
                Date of Sending</td>
            <td>
                <asp:Label ID="ds" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Complaint</td>
            <td>
                <asp:Label ID="co" runat="server"></asp:Label>
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
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
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
                <asp:Label ID="Label1" runat="server" ForeColor="#3C97E8" Text="Update Remark" 
                    Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False" Height="76px" 
                    TextMode="MultiLine" Width="187px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" Enabled="False" ErrorMessage="Pls Enter remark" 
                    ForeColor="#CC3300" Visible="False">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" ForeColor="#CC3300"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Update" 
                    Visible="False" />
            </td>
        </tr>
    </table>
</asp:Content>

