<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Manage_Country.aspx.cs" Inherits="websiteproject11.Admin.Manage_Country" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <table>
        <tr>
            <td>
                Country Name:
            </td>

            <td>
          <td><asp:TextBox ID="txtcountry" runat="server"></asp:TextBox></td></td>
        </tr>


        <tr>
            <td></td>
            <td><asp:Button ID="btnsave" runat="server" Text="Save" onClick="btnsave_Click" /></td>
        </tr>

           <tr>
            <td></td>
            <td><asp:GridView ID="gvcountry" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:TemplateField HeaderText="Country ID">
                    <ItemTemplate>
                        <%#Eval("cid") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="Country Name">
                    <ItemTemplate>
                        <%#Eval("cname") %>
                    </ItemTemplate>
                    
                </asp:TemplateField>
            </Columns>
                </asp:GridView></td>
            
        </tr>
    </table>
</asp:Content>
