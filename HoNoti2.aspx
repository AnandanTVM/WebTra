<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="HoNoti2.aspx.cs" Inherits="HoNoti2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table cellpadding="0" cellspacing="0" width=100%>
        <tr>
            <td bgcolor="#69cb6a">
                NOTIFICATION</td>
        </tr>
        <tr>
            <td>
                <table cellpadding="5" cellspacing="5" width=100%>
                   
                    <tr>
                        <td class="style1">
                             &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                    </tr>
                   
                    <tr>
                        <td class="style1">
                             Type of Notification</td>
                        <td class="style4">
                            <asp:Label ID="tn" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Date</td>
                        <td class="style4">
                            <asp:Label ID="da" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            Notification</td>
                        <td class="style4">
                            <asp:Label ID="no" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                Text="Back" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>

