<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Applyjob.aspx.cs" Inherits="job_portal.Applyjob" %>
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
            <h3>APPLY FOR JOB</h3>
            <table class="tab1">
             <tr>
                <td>
                    Category:
                </td>
                <td>
                    <asp:Label ID="Label1"  class="tb" runat="server" Text="Label"></asp:Label></td>
                 </tr>
                  <tr>
                <td>
                    Qualification:
                </td>
                <td>
                    <asp:Label ID="Label2"  class="tb" runat="server" Text="Label"></asp:Label></td>
                      </tr>
                       <tr>
                <td>
                     Skill:
                </td>
                <td>
                    <asp:Label ID="Label3"  class="tb" runat="server" Text="Label"></asp:Label></td>
                           </tr>
                    </table>
        </center><br />

         <center>
             <table class="tab1">
           <tr>
            
            <td class="auto-style15">First Name</td>
            <td class="auto-style16"><asp:TextBox ID="TextBox1" class="tb" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style15">Last Name</td>
            <td class="auto-style16"><asp:TextBox ID="TextBox2" class="tb" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style15">Dob</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox3" type="date" class="tb" runat="server" Width="163px"></asp:TextBox></td>
        </tr>
            <tr>
            <td class="auto-style15">Contact Number</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox4" class="tb" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td class="auto-style15">Email Id</td>
            <td class="auto-style16"> <asp:TextBox ID="txtemailid" class="tb" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td class="auto-style9">Resume</td>
            <td ><asp:TextBox ID="TextBox5" class="tb" type="file" runat="server"></asp:TextBox></td>
        </tr>
            
        </table>




        <div>
            <asp:Button ID="Button2" runat="server" CssClass="btn" Text="submit" OnClick="Button2_Click" />
            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>



       </div>

         </center>
</asp:Content>
