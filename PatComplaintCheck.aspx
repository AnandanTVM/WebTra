<%@ Page Title="" Language="C#" MasterPageFile="~/Patients.master" AutoEventWireup="true" CodeFile="PatComplaintCheck.aspx.cs" Inherits="PatComplaintCheck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
           
        }
        .style2
        {
            color: #ffffff;
            height: 33px;
          font-weight: bold;
        width: 301px;
    }
        .style3
        {
        height: 27px;
        width: 301px;
    }
        .style4
        {
            height: 28px;
        }
        .style9
        {
            height: 33px;
        }
        .style10
    {
        height: 27px;
        width: 301px;
        color: #000000;
    }
    .style11
    {
        height: 27px;
        width: 301px;
        color: #3C97E8;
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
                Check Complaint Updates</td>
            <td class="style9" valign="middle" bgcolor="">
                </td>
            <td class="style9" bgcolor="">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Enter Your Complaint ID</td>
            <td class="style4" valign="middle">
                <asp:TextBox ID="un" runat="server" Height="30px" Width="225px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="un" ErrorMessage="complaint ID" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" valign="middle">
                <asp:Button ID="Button2" runat="server" Text="Check Updates" Width="145px" 
                    onclick="Button2_Click1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                ComplaintType</td>
            <td class="style4" valign="middle">
                <asp:Label ID="ct" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Date of Sending</td>
            <td class="style4" valign="middle">
                <asp:Label ID="ds" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style10" valign="middle">
                Complaint</td>
            <td class="style4" valign="middle">
                <asp:Label ID="co" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style11" valign="middle">
                Complaint Response</td>
            <td class="style4" valign="middle">
                <asp:Label ID="cr" runat="server" ForeColor="#3C97E8"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style11" valign="middle">
                &nbsp;</td>
            <td class="style4" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style11" valign="middle">
                &nbsp;</td>
            <td class="style4" valign="middle">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

