<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="websiteproject11.Admin.HomeAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table>
        <tr>
            <td>Name :</td>
           <td> <asp:Label ID="lblname" runat="server"></asp:Label></td>
        </tr>


              


           <tr>
            <td>Email :</td>
              <td> <asp:Label ID="lblemail" runat="server"></asp:Label></td>
        </tr>

             <tr>
            <td>Password :</td>
            <td> <asp:Label ID="lblpassword" runat="server"></asp:Label></td>
        </tr>
         </table>

</asp:Content>
