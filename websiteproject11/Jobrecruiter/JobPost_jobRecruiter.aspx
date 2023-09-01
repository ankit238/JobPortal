<%@ Page Title="" Language="C#" MasterPageFile="~/Jobrecruiter/Jobrecruiter.Master" AutoEventWireup="true" CodeBehind="JobPost_jobRecruiter.aspx.cs" Inherits="websiteproject11.Jobrecruiter.JobPost_jobRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table>
        <tr>
            <td>Job Profile :</td>
           <td> 
               <asp:DropDownList ID="ddljobprofile" runat="server"></asp:DropDownList>
           </td>
        </tr>

            <tr>
            <td>Job Location :</td>
           <td> 
               <asp:DropDownList ID="ddljoblocation" runat="server"></asp:DropDownList>
           </td>
        </tr>


                <tr>
            <td>Minimum Exp :</td>
          
         <td> 
             <asp:TextBox ID="txtminexp" runat="server"></asp:TextBox>
         </td>
        </tr>


           <tr>
            <td>Maximum Exp :</td>
            <td><asp:TextBox ID="txtmaxexp" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td>Minimum Salary :</td>
          
         <td> 
             <asp:TextBox ID="txtminsalary" runat="server"></asp:TextBox>
         </td>
        </tr>


           <tr>
            <td>Maximum Salary :</td>
            <td><asp:TextBox ID="txtmaxsalary" runat="server"></asp:TextBox></td>
        </tr>

           <tr>
            <td>Number of vacancy :</td>
            <td><asp:TextBox ID="txtnoofvacancy" runat="server"></asp:TextBox></td>
        </tr>


                <tr>
            <td>Comments :</td>
            <td><asp:TextBox ID="txtcomments" runat="server" Width="200px" Height="100px"></asp:TextBox></td>
        </tr>


        <tr>
           <td>

           </td>
            <td><asp:Button ID="btnjobpost" runat="server" Text="Create Job" OnClick="btnjobpost_Click" /></td>
        </tr>

    </table>
</asp:Content>
