<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companyreg.aspx.cs" Inherits="job_portal.companyreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style runat="server">
    .tab1 {
        border:none;
        background-color:greenyellow;
        padding-top:20px;
        padding-bottom:20px;
        padding-left:20px;
        border-radius:20px;
       
      
    }
    .tb{
        border:none;
        border-radius:5px;



   }
    .btn {
        
    background-color:#0a0a23;
    color: #fff;
    border:none;
    border-radius:10px;
    padding:10px;
    
    }
    .h1 {



    
        background-color:lightgrey;
         border-radius:20px;
         padding:20px;
 }
    .h3{
            text-align: center;
            background-color: gainsboro;
            border-radius: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

</style> 
    <center>
        <h3 class="h3">COMPANY REGISTRATION PAGE</h3>
   
        <table class="tab1">
            <tr>
                <td>Company Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
              <tr>
                <td>Address:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>City:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>State:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>PinCode:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Contact_Person:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>MobileNo:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Contact_No:</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>EmailId:</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
            </tr>
             <tr>
                <td>Website:</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>UName:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="Button1" class="btn" runat="server" Text="Register" OnClick="Button1_Click" /> &nbsp &nbsp
        <asp:Button ID="Button2" class="btn" runat="server" Text="Reset" OnClick="Button2_Click" />
    </center>

</asp:Content>
