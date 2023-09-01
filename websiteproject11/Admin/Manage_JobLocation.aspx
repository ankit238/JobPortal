<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_JobLocation.aspx.cs" Inherits="websiteproject11.Admin.Manage_JobLocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>Job Location: </td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" /></td>
        </tr>


        <tr>
            <td></td>
            <td><asp:GridView ID="gvjoblocation" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="JobLocation ID">
                    <ItemTemplate>
                        <%#Eval("jl_id") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="JobLocation Name">
                    <ItemTemplate>
                        <%#Eval("jl_name") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
                </asp:GridView></td>
            
        </tr>
    </table>
</asp:Content>
