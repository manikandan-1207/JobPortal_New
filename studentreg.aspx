<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentreg.aspx.cs" Inherits="job_portal.studentreg" %>
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

    <h3 class="h3">STUDENT REGISTRATION PAGE</h3>
       



       <table class="tab1">
            <tr>
                <td> Name    :</td>
            <td><asp:TextBox ID="TxtName" class="tb" runat="server" Width="254px"></asp:TextBox>



           </td>



           </tr>
            <tr>
                <td> Sur Name    :</td>
            <td><asp:TextBox ID="TxtSurName" class="tb" runat="server" Width="248px"></asp:TextBox>



           </td>



           </tr>
             <tr>
                <td> Address    :</td>
            <td><asp:TextBox ID="Txtaddress" class="tb" TextMode="MultiLine" runat="server"></asp:TextBox></td>
             </tr>    
                       
            <tr>                
            <td> City    :</td>
            <td><asp:TextBox ID="TxtCity"  class="tb" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> State   :</td>
            <td><asp:TextBox ID="TxtState" class="tb" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Pincode  :</td>
            <td><asp:TextBox ID="TxtPincode" class="tb"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
          <td> <label for="birthday">Birthday:</label></td>
            <td>  <asp:TextBox type="date" class="tb" id="birthday" runat="server" name="birthday"></asp:TextBox></td>



            
            </tr>
            <tr>                
            <td> Gender    :</td>
               <td> <asp:DropDownList ID="DropDownList1" class="tb" runat="server">
                 <asp:ListItem Value="">--Select From--</asp:ListItem>  
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
            
            </tr>
            <tr>                
            <td> Mobile No    :</td>
            <td><asp:TextBox ID="TxtMobNo" class="tb"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Email Id   :</td>
            <td><asp:TextBox ID="Txtemail" class="tb"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Enroll no  :</td>
            <td><asp:TextBox ID="Txtenrollno" class="tb"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> UserName :</td>
            <td><asp:TextBox ID="Txtusername"  class="tb" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Password  :</td>
            <td><asp:TextBox ID="TxtPassword"   class="tb" runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Confirm Password  :</td>
            <td><asp:TextBox ID="Txtconfirmpassword"  class="tb"   runat="server"></asp:TextBox>
            </td>
            </tr>         

        </table>

   <br/>
       
        <asp:Button ID="btncontinue" class="btn" runat="server" Text="Continue" onclick="btncontinue_Click" Width="121px"/> &nbsp&nbsp&nbsp&nbsp
        <asp:Button ID="btnreset"  class="btn" runat="server" Text="Reset" OnClick="btnreset_Click" Width="107px" />
          </center>


</asp:Content>
