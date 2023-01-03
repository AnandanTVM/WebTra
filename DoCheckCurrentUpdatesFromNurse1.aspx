<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="DoCheckCurrentUpdatesFromNurse1.aspx.cs" Inherits="DoCheckCurrentUpdatesFromNurse1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
        .style1
        {
            background-color: #69CB6A;
        }
        .style2
        {
            color: #FFFFFF;
         font-weight: bold;
     }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="nav-justified" frame="box">
        <tr class="style1">
            <td class="style2">
                Check Current Patients Update from Nurse</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="did" runat="server" Visible="False">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="senderid" HeaderText="Sender" />
                        
                        <asp:HyperLinkField DataNavigateUrlFields="uid" 
                            DataNavigateUrlFormatString="DoCheckCurrentUpdatesFromNurse2.aspx?{0}" DataTextField="uid" 
                            HeaderText="Update ID" />
                        
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

