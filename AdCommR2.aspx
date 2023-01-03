<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdCommR2.aspx.cs" Inherits="AdCommR2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
           
        }
        .style9
        {
            height: 33px;
        }
        .style10
     {
         height: 33px;
         font-weight: bold;
     }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table align="center" cellpadding="0" class="style1" 
        style="vertical-align: middle" frame="box" width=100% >
        <tr bgcolor="#69cb6a">
            <td class="style10" bgcolor="" colspan="2">
                Collect Messages</td>
            <td class="style9" valign="middle" bgcolor="">
                </td>
            <td class="style9" bgcolor="">
                </td>
        </tr>

        
         <tr>
        <td class="style3">
            Sender Type</td>
        <td>
            <asp:Label ID="st" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Sender Name</td>
        <td>
            <asp:Label ID="sn" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Subject</td>
        <td>
            <asp:Label ID="s" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Message</td>
        <td>
            <asp:Label ID="msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Date of Sending</td>
        <td>
            <asp:Label ID="sdate" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            Reply</td>
        <td>
            <asp:Label ID="reply" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="Button1" runat="server" Text="Accept" onclick="Button1_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Label7" runat="server" Text="Response" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Visible="False" Height="134px" 
                Width="196px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Button ID="Button2" runat="server" Text="Update Response" 
                Visible="False" onclick="Button2_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

