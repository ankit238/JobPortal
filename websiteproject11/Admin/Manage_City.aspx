<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_City.aspx.cs" Inherits="websiteproject11.Admin.Manage_City" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table>

       <tr>
           <td>Country Name:</td>
           <td><asp:DropDownList ID="ddlcountry" runat="server" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
       </tr>

       <tr>
           <td>State Name:</td>
           <td><asp:DropDownList ID="ddlstate" runat="server"></asp:DropDownList></td>
       </tr>

         <tr>
             <td>City Name:</td>
             <td><asp:TextBox ID="txtcity" runat="server"></asp:TextBox></td>
         </tr>
       <tr>
           <td></td>
           <td><asp:Button ID="btncity" runat="server" Text="save" OnClick="btncity_Click"></asp:Button></td>
       </tr>

       <tr>
           <td></td>
           <td><asp:GridView ID="gvcity" runat="server" AutoGenerateColumns="false">
               <Columns>
                   <asp:TemplateField HeaderText="City_id">
                       <ItemTemplate>
                           <%#Eval("cityid") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Country_Name">
                       <ItemTemplate>
                           <%#Eval("cname") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="State_Name">
                       <ItemTemplate>
                           <%#Eval("statename") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="City_Name">
                       <ItemTemplate>
                           <%#Eval("ciname") %>
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               </asp:GridView></td>
       </tr>
       
   </table>

</asp:Content>
