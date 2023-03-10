<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="DoEmergencyAlertV2.aspx.cs" Inherits="DoEmergencyAlertV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            background-color: #69CB6A;
            color: #FFFFFF;
        font-weight: bold;
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
      .style5
      {
          text-align: left;
          width: 341px;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="nav-justified" frame="box">
        <tr>
            <td class="style1" colspan="2">
                View Emergency Alert Details from Nurse</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Sender Name (Nurse)</td>
            <td>
                <asp:Label ID="sn" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Patient Name</td>
            <td>
                <asp:Label ID="pn" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Doctor Name</td>
            <td>
                <asp:Label ID="dn" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Case Historoy</td>
            <td>
                <asp:Label ID="ch" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Description</td>
            <td>
                <asp:Label ID="de" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Remark</td>
            <td>
                <asp:Label ID="re" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Date</td>
            <td>
                <asp:Label ID="da" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Time</td>
            <td>
                <asp:Label ID="ti" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Emergency Treatment Info</td>
            <td>
                <asp:Label ID="etd" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

