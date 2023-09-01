<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_Gender.aspx.cs" Inherits="websiteproject11.Admin.Manage_Gender" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <table>
        <tr>
            <td>
                Gender Name:
            </td>

            <td>
          <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td></td>
        </tr>


        <tr>
            <td></td>
            <td><asp:Button ID="btnsave" runat="server" Text="Save" onClick="btnsave_Click" /></td>
        </tr>

           <tr>
            <td></td>
            <td><asp:GridView ID="gvGender" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Gender ID">
                    <ItemTemplate>
                        <%#Eval("gid") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="Gender Name">
                    <ItemTemplate>
                        <%#Eval("gname") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
                </asp:GridView></td>
            
        </tr>
    </table>
</asp:Content>
