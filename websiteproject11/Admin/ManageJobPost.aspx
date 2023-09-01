<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobPost.aspx.cs" Inherits="websiteproject11.Admin.ManageJobPost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>
                <asp:GridView ID="gvjobs" runat="server" onRowCommand="gvjobs_RowCommand"  AutoGenerateColumns ="false">
    <Columns>
        <asp:TemplateField HeaderText="Job Id">
            <ItemTemplate>
                <%# Eval("jp_id") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobRecruiter Name">
            <ItemTemplate>
                <%# Eval("jr_name") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Job Profile">
            <ItemTemplate>
                <%# Eval("jpr_name") %> 
            </ItemTemplate>
        </asp:TemplateField>

           <asp:TemplateField HeaderText="Job Location">
            <ItemTemplate>
                <%# Eval("jl_name") %> 
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Required Exp">
            <ItemTemplate>
                <%# Eval("minexp") %> year - <%# Eval("maxexp") %> year
            </ItemTemplate>
        </asp:TemplateField>

        

         <asp:TemplateField HeaderText="offered Salary">
            <ItemTemplate>
               Rs <%# Eval("minsalary") %> -  Rs <%# Eval("maxsalary") %>
            </ItemTemplate>
        </asp:TemplateField>

       


         <asp:TemplateField HeaderText="No of vacancy">
            <ItemTemplate>
                <%# Eval("noofvacancy") %>
            </ItemTemplate>
        </asp:TemplateField>

         <asp:TemplateField HeaderText="Comments">
            <ItemTemplate>
                <%# Eval("comments") %>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="JobPost Date">
            <ItemTemplate>
                <%# Eval("inserted_date") %>
            </ItemTemplate>
        </asp:TemplateField>


        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnstatus" runat="server" Text='<%#Eval("status").ToString()=="0" ? "Active" : "InActive" %>' CommandName="B" CommandArgument='<%#Eval("jp_id") %>' />
            </ItemTemplate>
        </asp:TemplateField>


    </Columns>
</asp:GridView>
            </td>
        </tr>
    </table>


</asp:Content>
