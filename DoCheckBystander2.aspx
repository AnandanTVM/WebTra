﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor.master" AutoEventWireup="true" CodeFile="DoCheckBystander2.aspx.cs" Inherits="DoCheckBystander2" %>

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
                <strong>Check Standby Doctor Info</strong></td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Date of Sheduling</td>
            <td>
                <asp:Label ID="ds" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Area of Work</td>
            <td>
                <asp:Label ID="aw" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Shedule (Bystander) To</td>
            <td>
                <asp:Label ID="st" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Current Doctor</td>
            <td>
                <asp:Label ID="cd" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Message</td>
            <td>
                <asp:Label ID="me" runat="server"></asp:Label>
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

