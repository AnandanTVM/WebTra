<%@ Page Title="" Language="C#" MasterPageFile="~/Patients.master" AutoEventWireup="true" CodeFile="PatVewSuggestions1.aspx.cs" Inherits="PatVewSuggestions1" %>

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
                Check Suggestions from Doctor</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="sugfor" HeaderText="Date" />
                        
                        <asp:HyperLinkField DataNavigateUrlFields="sid" 
                            DataNavigateUrlFormatString="PatVewSuggestions2.aspx?{0}" DataTextField="sid" 
                            HeaderText="Suggestion ID" />
                        
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

