<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchstu.aspx.cs" Inherits="job_portal.searchstu" %>
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
        <h3 class="h3">SEARCH JOBS</h3>
        <table class="tab1">
             <tr>
                <td>
                    Category :
                </td>
                <td>
            <asp:DropDownList ID="DropDownList1" class="tb" AppendDataBoundItems="true" runat="server" Width="176px">
                <asp:ListItem Text="---Select Text---" Value="0" />
                <asp:ListItem Text="IT"  />
                <asp:ListItem>development</asp:ListItem>
                    <asp:ListItem>Engineer</asp:ListItem>
                <asp:ListItem>Architect</asp:ListItem>
                 <asp:ListItem>Finance</asp:ListItem>
                 <asp:ListItem>Media & entertinement</asp:ListItem>
                 <asp:ListItem>telecommunication</asp:ListItem>
                 <asp:ListItem>consulting</asp:ListItem>
                 <asp:ListItem>Business Process Outsourcing</asp:ListItem>
                 <asp:ListItem>Health & phrama</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
            <tr>
                <td>
                    Qualification :
                </td>
                <td>
               <asp:DropDownList ID="DropDownList2" class="tb" AppendDataBoundItems="true" runat="server">
                <asp:ListItem Text="---Select Text---" Value="0" />
                   <asp:ListItem Text="BSC" />
                   <asp:ListItem>bsc(it)</asp:ListItem>
                <asp:ListItem>BCA</asp:ListItem>
                <asp:ListItem>B tech</asp:ListItem>
                <asp:ListItem>bsc(cs)</asp:ListItem>
            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Skill :
                </td>
                <td>
               <asp:DropDownList ID="DropDownList3" class="tb" AppendDataBoundItems="true" runat="server">
                <asp:ListItem Text="---Select Text---" Value="0" />
                   <asp:ListItem Text="Test" />
                   <asp:ListItem>java</asp:ListItem>
                  <asp:ListItem>.net</asp:ListItem>
                   <asp:ListItem>C & c++</asp:ListItem>
                 <asp:ListItem>photoshop</asp:ListItem>
                 <asp:ListItem>multimedia</asp:ListItem>
                 <asp:ListItem>Node js</asp:ListItem>
                 <asp:ListItem>c#</asp:ListItem>
                 <asp:ListItem>angular</asp:ListItem>
                 <asp:ListItem>python</asp:ListItem>
            </asp:DropDownList>
                </td>
            </tr>
        </table><br />
      <asp:Button ID="Button1" class="tb" runat="server" Text="Search" Height="26px" Width="149px" OnClick="Button1_Click" />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
         <br />
        <br />
        <br />


        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
            <Columns>
                <asp:BoundField DataField="Companyname" HeaderText="Companyname" />
                <asp:BoundField DataField="Jobcategory" HeaderText="Jobcategory" />
                <asp:BoundField DataField="Requiredskill" HeaderText="Requiredskill" />
                <asp:BoundField DataField="Role" HeaderText="Role" />
                <asp:BoundField DataField="Min_Qualification" HeaderText="Min_Qualification" />
                <asp:BoundField DataField="Extra_skill" HeaderText="Extra_skill" />
                <asp:BoundField DataField="Max_age" HeaderText="Max_age" />
                <asp:BoundField DataField="Expectedsalary" HeaderText="Expectedsalary" />
                <asp:BoundField DataField="Joblocation" HeaderText="Joblocation" />
                <asp:BoundField DataField="Working_hour" HeaderText="Working_hour" />
                <asp:BoundField DataField="Jobdescription" HeaderText="Jobdescription" />
               <asp:HyperLinkField HeaderText="Apply Job" DataNavigateUrlFields="Companyname,Jobcategory,Requiredskill" DataNavigateUrlFormatString="Applyjob.aspx?Companyname={0}&Jobcategory={1}&Requiredskill={2}" Text="To Apply" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        
    </center>
</asp:Content>
