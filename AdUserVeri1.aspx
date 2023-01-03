<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdUserVeri1.aspx.cs" Inherits="AdUserVeri1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            background-color: #69CB6A;
        }
        .style2
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="nav-justified" frame="box">
        <tr class="style1">
            <td class="style2">
                <strong>User Verification</strong></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="uid" HeaderText="User Type" />
                        
                        <asp:HyperLinkField DataNavigateUrlFields="uid" 
                            DataNavigateUrlFormatString="AdUserVeri2.aspx?{0}" DataTextField="uid" 
                            HeaderText="User ID" />
                        
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <strong></strong>
            </td>
        </tr>
    </table>
</asp:Content>

