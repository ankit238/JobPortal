<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_JobProfile.aspx.cs" Inherits="websiteproject11.Admin.Manage_JobProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>Job Profile: </td>
            <td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
            <td></td>
            <td><asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" /></td>
        </tr>


        <tr>
            <td></td>
            <td><asp:GridView ID="gvjobprofile" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="JobProfile ID">
                    <ItemTemplate>
                        <%#Eval("jpr_id") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="JobProfile Name">
                    <ItemTemplate>
                        <%#Eval("jpr_name") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
                </asp:GridView></td>
            
        </tr>
    </table>

</asp:Content>
