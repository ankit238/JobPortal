<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_JobProfileSkills.aspx.cs" Inherits="websiteproject11.Admin.Manage_JobProfileSkills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <table>

       <tr>
           <td>JobProfile::</td>
           <td><asp:DropDownList ID="ddljobprofile" runat="server" ></asp:DropDownList></td>
       </tr>

       <tr>
           <td>Skills:</td>
           <td><asp:TextBox ID="txtskills" runat="server"></asp:TextBox></td>
       </tr>

       <tr>
           <td></td>
           <td><asp:Button ID="txtbutton" runat="server" Text="save" OnClick="txtbutton_Click"></asp:Button></td>
       </tr>
         
       <tr>
           <td></td>
           <td><asp:GridView ID="gvjobprofileskills" runat="server" AutoGenerateColumns="false">
               <Columns>
                   <asp:TemplateField HeaderText="Skills_id">
                       <ItemTemplate>
                           <%#Eval("sk_id") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobProfile_Name">
                       <ItemTemplate>
                           <%#Eval("jpr_name") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Skills_name">
                       <ItemTemplate>
                           <%#Eval("sk_name") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                  
               </Columns>
               </asp:GridView></td>
       </tr>
       
   </table>

</asp:Content>
