<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="DoAppointmentChecking2.aspx.cs" Inherits="DoAppointmentChecking2" %>

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
                <strong>Appointment Fixing</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Sender Type</td>
            <td>
                <asp:Label ID="st" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Sender Name</td>
            <td>
                <asp:Label ID="sn" runat="server"></asp:Label>
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
            <td class="style5">
                Doctor Name</td>
            <td>
                <asp:Label ID="dn" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Department</td>
            <td>
                <asp:Label ID="de" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Needed Date of Appointment</td>
            <td>
                <asp:Label ID="doa" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Needed Time&nbsp; of Appointment</td>
            <td>
                <asp:Label ID="toa" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Remark</td>
            <td>
                <asp:Label ID="re" runat="server"></asp:Label>
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
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Allote Date" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Allotted Date" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Date of appointment" ForeColor="Red" 
                    Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Allotted Time" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Time of appointment" ForeColor="Red" 
                    Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" Text="Remark updates" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="69px" TextMode="MultiLine" 
                    Visible="False" Width="195px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Remark" ForeColor="Red" 
                    Visible="False"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Back" 
                    Visible="False" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Allote" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

