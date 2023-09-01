<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/Jobseeker.Master" AutoEventWireup="true" CodeBehind="ViewJobs.aspx.cs" Inherits="websiteproject11.Jobseeker.ViewJobs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>
 Job Location:
                <asp:DropDownList ID="ddljoblocation" runat="server"></asp:DropDownList>
                <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
            </td>
        </tr>

        <tr>
            <td>
                <asp:GridView ID="gvjobs" runat="server" AutoGenerateColumns="false">
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


    </Columns>
</asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>
