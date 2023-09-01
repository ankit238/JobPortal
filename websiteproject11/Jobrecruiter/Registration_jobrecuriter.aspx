<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="Registration_jobrecuriter.aspx.cs" Inherits="websiteproject11.Jobrecruiter.Registration_jobrecuriter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>Name :</td>
           <td> <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>


                <tr>
            <td>Company Url :</td>
          
         <td>  <asp:TextBox ID="txtcompanyurl" runat="server"></asp:TextBox></td>
        </tr>


           <tr>
            <td>Email :</td>
            <td><asp:TextBox ID="Txtemail" runat="server"></asp:TextBox></td>
        </tr>

             <tr>
            <td>Password :</td>
           <td> <asp:TextBox ID="Txtpassword" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
           <td>

           </td>
            <td><asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" /></td>
        </tr>

    </table>

</asp:Content>
