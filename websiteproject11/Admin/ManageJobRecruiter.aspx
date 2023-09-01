<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobRecruiter.aspx.cs" Inherits="websiteproject11.Admin.ManageJobRecruiter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <asp:GridView ID="gvjobrecruiter" runat="server"  AutoGenerateColumns="false">
    <Columns>
        <asp:TemplateField HeaderText="JobRecruiter Id">
            <ItemTemplate>
                <%# Eval("jr_id") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobRecruiter Name">
            <ItemTemplate>
                <%# Eval("jr_name") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobRecruiter Url">
            <ItemTemplate>
                <%# Eval("jr_url") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobRecruiter Email">
            <ItemTemplate>
                <%# Eval("jr_email") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobRecruiter password">
            <ItemTemplate>
                <%# Eval("jr_password") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobRecruiter Inserted Date">
            <ItemTemplate>
                <%# Eval("inserted_date") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobRecruiter Status">
            <ItemTemplate>
                <%# Eval("status") %>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>


</asp:Content>
