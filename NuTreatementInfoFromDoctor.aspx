﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Nurse.master" AutoEventWireup="true" CodeFile="NuTreatementInfoFromDoctor.aspx.cs" Inherits="NuTreatementInfoFromDoctor" %>

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
     .style12
     {
         height: 27px;
     }
     .style13
     {
         height: 28px;
         width: 445px;
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
                View Treatment Info</td>
            <td class="style9" colspan="2" valign="middle" bgcolor="">
                </td>
            <td class="style9" bgcolor="">
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
            <td class="style4">
                </td>
            <td class="style13" valign="middle">
                Doctor ID</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:DropDownList ID="did" runat="server" AutoPostBack="True" 
                    >
                </asp:DropDownList>
            </td>
            <td class="style4">
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
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:Button ID="Button2" runat="server" Text="Check" Width="88px" 
                    onclick="Button2_Click1" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Button" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style12" valign="middle" colspan="3">
                <asp:GridView ID="GridView1" runat="server" Visible="False">
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style3" valign="middle">
                &nbsp;</td>
            <td class="style4" colspan="2" valign="middle">
                <asp:Label ID="Label3" runat="server" ForeColor="#0066FF" Visible="False"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;</td>
            <td class="style11" colspan="2">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

