<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stulogin.aspx.cs" Inherits="job_portal.stulogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
    <center>
        <table>
            <tr><td>Username:</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
             <tr><td>Password:</td>
                <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Login" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </center>
</asp:Content>
