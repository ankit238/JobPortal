<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_Qualification.aspx.cs" Inherits="websiteproject11.Admin.Manage_Qualification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>
                Qualification Name:
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
            <td><asp:GridView ID="gvqualification" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Qualification ID">
                    <ItemTemplate>
                        <%#Eval("qid") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="Qualification Name">
                    <ItemTemplate>
                        <%#Eval("qname") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
                </asp:GridView></td>
            
        </tr>
    </table>

</asp:Content>
