<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" cellpadding="0" cellspacing="0" class="style1" width="100%">
        <tr>
            <td>
                Welcome&nbsp;&nbsp; :&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" ForeColor="#FF0066"></asp:Label>
            </td>
            <td >
                &nbsp;</td>
            <td >
                &nbsp;</td>
            <td width="350px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
            </td>
        </tr>
        </table>
</asp:Content>

