<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="job_portal.WebForm1" %>
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

    <h3 class="h3">Student profile</h3>
        <br />



       <table class="tab1">
           <tr><td>Enrollno:</td>
               <td><asp:Label ID="Lblrollno" runat="server" Text="Label"></asp:Label>
               </td></tr>
            <tr>
                <td> Name    :</td>
            <td><asp:TextBox ID="TxtName" runat="server" Width="254px"></asp:TextBox>



           </td>



           </tr>
            <tr>
                <td> Sur Name    :</td>
            <td><asp:TextBox ID="TxtSurName" runat="server" Width="248px" CssClass="auto-style1"></asp:TextBox>



           </td>



           </tr>
             <tr>
                <td> Address    :</td>
            <td><asp:TextBox ID="Txtaddress" TextMode="MultiLine" runat="server"></asp:TextBox></td>
             </tr>    
                       
            <tr>                
            <td> City    :</td>
            <td><asp:TextBox ID="TxtCity"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> State   :</td>
            <td><asp:TextBox ID="TxtState"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Pincode  :</td>
            <td><asp:TextBox ID="TxtPincode"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
          <td> <label for="birthday">Birthday:</label></td>
            <td>  <asp:TextBox type="date" id="birthday" runat="server" name="birthday"></asp:TextBox></td>



            
            </tr>
            <tr>                
            <td> Gender    :</td>
               <td> <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem Value="">--Select From--</asp:ListItem>  
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList></td>
            
            </tr>
            <tr>                
            <td> Mobile No    :</td>
            <td><asp:TextBox ID="TxtMobNo"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Email Id   :</td>
            <td><asp:TextBox ID="Txtemail"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Enroll no  :</td>
            <td><asp:TextBox ID="Txtenrollno"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> UserName :</td>
            <td><asp:TextBox ID="Txtusername"  runat="server"></asp:TextBox>
            </td>
            </tr>
            <tr>                
            <td> Password  :</td>
            <td><asp:TextBox ID="Txtpassword"  runat="server"></asp:TextBox>
            </td>
            </tr>

                  
  </table>
          

             <%--/////////////////////////////////////--%>


          <%-- <----  <td class="auto-style5">
                  <center>
                      <h5>Education Detials</h5>
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
    
                <asp:Label ID="Label1"  runat="server" Text=""></asp:Label>
         --%>
            
                <asp:Button ID="Button1"  class="btn"  runat="server" Text="Update" OnClick="Button1_Click" /> &nbsp 
                <asp:Button ID="Button2" class="btn"  runat="server" Text="Cancel" />
          <asp:Label ID="Lblsuccess" runat="server" Text=""></asp:Label>
            

         
    </center>
</asp:Content>
