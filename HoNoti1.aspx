<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="HoNoti1.aspx.cs" Inherits="HoNoti1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <table align="center" class="style1">
        <tr>
            <td bgcolor="#69cb6a">
                NOTIFICATION</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  >
                    <Columns>
                        <asp:BoundField DataField="date" HeaderText="Date" />
                        <asp:HyperLinkField DataNavigateUrlFields="nid" 
                            DataNavigateUrlFormatString="HoNoti2.aspx?{0}" DataTextField="nid" 
                            HeaderText="Notification Id" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

