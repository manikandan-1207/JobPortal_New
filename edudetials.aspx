<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="edudetials.aspx.cs" Inherits="job_portal.edudetials" %>
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
            <h3 class="h3">EDUCATION DETIALS</h3>
   <table class="tab1">
        <tr>
            <td><strong>Roll no</strong></td>
            <td>
                <asp:TextBox ID="Txtrollno"  class="tb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtrollno" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>
             </td>
            
        </tr>
        <tr>
            <td><strong>College Name</strong></td>
            <td>
                <asp:TextBox ID="Txtclgname"  class="tb" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" style="color:orangered" ControlToValidate="Txtclgname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
                 
        </tr>
         
         <tr>
            <td><strong>Semster </strong></td>
            <td>
                
                <asp:DropDownList ID="Txtsemester"  class="tb" runat="server" Height="27px" Width="165px">



                   <asp:ListItem Value="">select</asp:ListItem>
                    <asp:ListItem>First Semester</asp:ListItem>
                    <asp:ListItem>Second Semester</asp:ListItem>
                    <asp:ListItem>Third Semester</asp:ListItem>
                    <asp:ListItem>Fourth Semester</asp:ListItem>
                    <asp:ListItem>Fifth Semester</asp:ListItem>
                    <asp:ListItem>Sixth Semester</asp:ListItem>
                    <asp:ListItem>Seventh Semester</asp:ListItem>
                       <asp:ListItem>Eighth Semester</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtsemester" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



           </td>


       
             
             </tr>

        <tr>
            <td><strong>Education</strong></td>
            <td>
                
                <asp:DropDownList ID="Txteducation" class="tb" runat="server" Height="24px" Width="162px">
                     <asp:ListItem Value=""> select </asp:ListItem>
                    <asp:ListItem> BE/BTech </asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>MTech </asp:ListItem>
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>BSc</asp:ListItem>
                    <asp:ListItem>MSc</asp:ListItem>
                    <asp:ListItem>ME</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txteducation" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



           </td>
        </tr>
        <tr>
            <td><strong>Brach</strong> </td>
            <td>
                <asp:TextBox ID="Txtbranch"  class="tb" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txtbranch" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



           </td>
        </tr>
        <tr>
            <td><strong>Passing year </strong></td>
            <td>
                <asp:TextBox ID="Txtpassingyear"  class="tb" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtpassingyear" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



           </td>
        </tr>
        <tr>
            <td><strong>CPI </strong></td>
            <td>
                <asp:TextBox ID="Txtcpi"  class="tb" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Txtcpi" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



           </td>
        </tr>
         <tr>
            <td><strong>CGPA </strong></td>
            <td>
                <asp:TextBox ID="Txtcgpa"  class="tb" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txtcgpa" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



           </td>
        </tr>
        <tr>
            <td><strong>Skill</strong></td>
            <td>
                <asp:TextBox ID="Txtskill"  class="tb" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Txtskill" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



           </td>
        </tr>
        <tr>
            <td><strong>Extra Skill</strong></td>
            <td>
                <asp:TextBox ID="Txtextraskill"  class="tb" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td><strong>Resume </strong></td>
            
               <td> <asp:TextBox ID="Txtresume" runat="server"  class="tb" type="file"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Txtresume" ErrorMessage="*" ForeColor="orangered"></asp:RequiredFieldValidator>



              </td>
        </tr>
  
    </table ><br />
        <asp:Button ID="btnsubmit" class="btn" runat="server" text="Submit" OnClick="btnsubmit_Click" Width="121px"/> &nbsp&nbsp&nbsp
        <asp:Button ID="btnreset" class="btn" runat="server" text="reset" OnClick="btnsubmit_Click" Width="87px"/>
                <asp:Label ID="Label1"  runat="server" Text=""></asp:Label>
         </center>
        </div>
        
    </form>
</body>

        
     
</asp:Content>
