<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Addjob.aspx.cs" Inherits="job_portal.Addjob" %>
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
        padding-right:20px;
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



       .h3 {
            text-align: center;
            background-color: gainsboro;
            border-radius: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }






</style>   
             <h3 class="h3">ADD JOB PAGE</h3>



  
    <center>
<table class="tab1">

    <tr>
         <td><b />Company Name </td>
         <td>
             <asp:Label ID="lblcmpnyname" runat="server" Text=""></asp:Label></td>
     </tr>
    
     <tr>
         <td><b />   Job Category</td>
         <td><asp:TextBox ID="TxtJobCtgry" runat="server" Width="232px" CssClass="tb"></asp:TextBox></td>
     </tr>
   
     <tr>
         <td><b />Reqired Skill</td>
         <td><asp:TextBox ID="TxtRequiredskill" runat="server" Width="232px" CssClass="tb"></asp:TextBox></td>
     </tr>
     <tr>
         <td> <b />Job Role </td>
         <td><asp:DropDownList ID="dropjobrole" runat="server" CssClass="tb">
               <asp:ListItem Value="">--select one--</asp:ListItem>
             <asp:ListItem>Developers/Programmers</asp:ListItem>
             <asp:ListItem>Web developers</asp:ListItem>
             <asp:ListItem>System Analysts</asp:ListItem>
             <asp:ListItem>Software testing & quality assurance</asp:ListItem>
             <asp:ListItem>Database analysts</asp:ListItem>
             <asp:ListItem>architects</asp:ListItem>
             <asp:ListItem>administrators</asp:ListItem>
             <asp:ListItem>SQL</asp:ListItem>
             <asp:ListItem>Ms Office</asp:ListItem>



            </asp:DropDownList>



        </td>
     </tr>
      <tr>
         <td><b />Qualification </td>
         <td><asp:TextBox ID="TxtQualification" runat="server" Width="232px" CssClass="tb"></asp:TextBox></td>
     </tr>
     <tr>
         <td><b />Extra SKill </td>
         <td><asp:TextBox ID="TxtExtraSkill" TextMode="MultiLine" runat="server" Width="232px" CssClass="tb"></asp:TextBox></td>
     </tr>
          <tr>
         <td><b />Maximum  Age </td>
         <td><asp:TextBox ID="TxtMaxAge" runat="server" Width="232px" CssClass="tb" ></asp:TextBox></td>
     </tr>



     <tr>
         <td><b />Expected Salary </td>
         <td><asp:DropDownList ID="DropExpectedSalary" runat="server" Width="238px" CssClass="tb" >
             <asp:ListItem Value="">--select one--</asp:ListItem>
             <asp:ListItem>20,000</asp:ListItem>
             <asp:ListItem>20,000 - 40,000</asp:ListItem>
             <asp:ListItem> 40,000 - 60,000</asp:ListItem>
             <asp:ListItem>60,000 - 80,000</asp:ListItem>
             <asp:ListItem>80,000 - 1,00,000</asp:ListItem>
             <asp:ListItem> More Than 1,00,000 </asp:ListItem>
             </asp:DropDownList></td>
     </tr>
     <tr>
         <td><b />Job Location</td>
       <td>  <asp:DropDownList ID="dropJobLocation" runat="server" Width="238px" CssClass="tb" >
             <asp:ListItem Value="">--select One--</asp:ListItem>
             <asp:ListItem>AndraPradesh</asp:ListItem>
              <asp:ListItem>ArunachalaePradesh</asp:ListItem>
              <asp:ListItem>Assam</asp:ListItem>
              <asp:ListItem>Bhiar</asp:ListItem>
              <asp:ListItem>Chatishgar</asp:ListItem>
              <asp:ListItem>Goa</asp:ListItem>
              <asp:ListItem>Gujarat</asp:ListItem>
              <asp:ListItem>Hariyana</asp:ListItem>
              <asp:ListItem>HimachalPradesh</asp:ListItem>
              <asp:ListItem>Jamma & kashmir</asp:ListItem>
         </asp:DropDownList>
           </td>
     </tr>
     <tr>
         <td><b />Working Hours</td>
         <td>
             <asp:DropDownList ID="DropWorkinghours" runat="server" Width="238px" CssClass="tb">
               <asp:ListItem Value="">--select One--</asp:ListItem>
                 <asp:ListItem>9:00AM-5:00PM</asp:ListItem>
                 <asp:ListItem>10:00PM-6:00AM</asp:ListItem>
                 <asp:ListItem>12:00AM-8:00PM</asp:ListItem>
                 <asp:ListItem>8:00PM-12:00PM</asp:ListItem>                 
             </asp:DropDownList>
         </td>
     </tr>
     <tr>
         <td><b />Job Description</td>
        <td><asp:TextBox ID="Txtjobdescription" TextMode="MultiLine"  runat="server" Width="232px" CssClass="tb"></asp:TextBox></td>
     </tr>
     </table>
       
              </center>
  
   
    
       
              
    <br />
    <center><table>
        <tr>
            <td><asp:Button ID="btnsubmit" runat="server" CssClass="btn" Text="Submit" Width="173px" OnClick="btnsubmit_Click" /></td>
            <td><asp:Button ID="btnreset" runat="server" CssClass="btn" Text="Back" Width="172px" OnClick="btnreset_Click"/></td>
        </tr>
    </table></center>
            
          


</asp:Content>
