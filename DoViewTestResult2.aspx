<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="DoViewTestResult2.aspx.cs" Inherits="DoViewTestResult2" %>

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
                <strong>Test Result</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Date of Cheching</td>
            <td>
                <asp:Label ID="da" runat="server"></asp:Label>
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
                Result</td>
            <td>
                <asp:Label ID="re" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Remark</td>
            <td>
                <asp:Label ID="rem" runat="server"></asp:Label>
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

