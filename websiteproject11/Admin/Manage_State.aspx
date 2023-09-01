<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_State.aspx.cs" Inherits="websiteproject11.Admin.Manage_State" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <table>

       <tr>
           <td>Country Name:</td>
           <td><asp:DropDownList ID="ddlcountry" runat="server" ></asp:DropDownList></td>
       </tr>

       <tr>
           <td>State:</td>
           <td><asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
       </tr>

       <tr>
           <td></td>
           <td><asp:Button ID="txtbutton" runat="server" Text="save" OnClick="txtbutton_Click"></asp:Button></td>
       </tr>

       <tr>
           <td></td>
           <td><asp:GridView ID="gvstates" runat="server" AutoGenerateColumns="false">
               <Columns>
                   <asp:TemplateField HeaderText="State_id">
                       <ItemTemplate>
                           <%#Eval("stateid") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="Country_name">
                       <ItemTemplate>
                           <%#Eval("cname") %>
                       </ItemTemplate>
                   </asp:TemplateField>

                   <asp:TemplateField HeaderText="State_Name">
                       <ItemTemplate>
                           <%#Eval("statename") %>
                       </ItemTemplate>
                   </asp:TemplateField>
               </Columns>
               </asp:GridView></td>
       </tr>
       
   </table>
</asp:Content>
