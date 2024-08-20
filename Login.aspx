<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="job_portal.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
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
           <h3 class="h3">STUDENT LOGIN</h3>
        <table class="tab1">
            <tr><td>Username:</td>
                <td><asp:TextBox ID="TextBox1" class="tb" runat="server"></asp:TextBox></td>
            </tr>
             <tr><td>Password:</td>
                <td><asp:TextBox ID="TextBox2" class="tb" runat="server"></asp:TextBox></td>
            </tr>
        </table>
        <asp:Button ID="Button1" class="tb" runat="server" Text="Login" OnClick="Button1_Click" />
        <asp:Label ID="Label1" class="tb" runat="server" Text=""></asp:Label>
    </center>

</asp:Content>
