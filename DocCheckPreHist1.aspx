<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="DocCheckPreHist1.aspx.cs" Inherits="DocCheckPreHist1" %>

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
                Check Previous History of Patients</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="tile" HeaderText="Title" />
                        
                        <asp:HyperLinkField DataNavigateUrlFields="pid" 
                            DataNavigateUrlFormatString="DocCheckPreHist2.aspx?{0}" DataTextField="pid" 
                            HeaderText="History ID" />
                        
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

