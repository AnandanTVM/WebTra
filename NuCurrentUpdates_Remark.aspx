﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Nurse.master" AutoEventWireup="true" CodeFile="NuCurrentUpdates_Remark.aspx.cs" Inherits="NuCurrentUpdates_Remark" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style type="text/css">
        .style1
        {
           
        }
        .style2
        {
            color: #ffffff;
            height: 33px;
         width: 445px;
         font-weight: bold;
     }
        .style3
        {
         height: 27px;
         width: 445px;
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
         width: 445px;
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
                Update- Remark and Current Updates</td>
            <td class="style9" colspan="2" valign="middle" bgcolor="">
                </td>
            <td class="style9" bgcolor="">
                </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Patient ID</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:DropDownList ID="pid" runat="server" AutoPostBack="True"  
                    >
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Doctor ID</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:DropDownList ID="did" runat="server" AutoPostBack="True"  
                    >
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Current Updates</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="re" runat="server" Height="80px" Width="225px" TextMode="MultiLine" 
                    ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="re" ErrorMessage="updates" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                Remark</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:TextBox ID="rem" runat="server" Height="80px" Width="225px" TextMode="MultiLine" 
                    ></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="rem" ErrorMessage="remark" ForeColor="Red" 
                    SetFocusOnError="True">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" colspan="2" valign="middle">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style10">
                <asp:Button ID="Button1" runat="server" Text="Cancel" Width="95px" 
                    onclick="Button1_Click" />
            </td>
            <td class="style6">
                <asp:Button ID="Button2" runat="server" Text="Update" Width="206px" 
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
            <td class="style11" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

