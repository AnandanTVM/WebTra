<%@ Page Title="" Language="C#" MasterPageFile="~/Nurse.master" AutoEventWireup="true" CodeFile="NuCommR1.aspx.cs" Inherits="NuCommR1" %>

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
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="sendername" HeaderText="Type of User" />
                        <asp:HyperLinkField DataNavigateUrlFields="cid" 
                            DataNavigateUrlFormatString="NuCommR2.aspx?{0}" DataTextField="cid" 
                            HeaderText="Communication ID" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

