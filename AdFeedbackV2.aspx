<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdFeedbackV2.aspx.cs" Inherits="AdFeedbackV2" %>

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
          font-weight: bold;
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
                <strong>Check F</strong><span class="style4">eedback from Public</span></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                Place</td>
            <td>
                <asp:Label ID="pl" runat="server"></asp:Label>
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
            <td class="style5">
                Email</td>
            <td>
                <asp:Label ID="em" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Feedback</td>
            <td>
                <asp:Label ID="fb" runat="server"></asp:Label>
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

