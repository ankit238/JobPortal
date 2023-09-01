<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageJobSeeker.aspx.cs" Inherits="websiteproject11.Admin.ManageJobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table>
    <tr>
        <td>
            <asp:GridView ID="gvjobseeker" runat="server" OnRowCommand="gvjobseeker_RowCommand" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="JobSeeker Id">
                        <ItemTemplate>
                            <%# Eval("js_id") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobSeeker Name">
                        <ItemTemplate>
                            <%# Eval("js_name") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobSeeker Gender">
                        <ItemTemplate>
                            <%# Eval("js_gender") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                         <asp:TemplateField HeaderText="Date of Birth">
                        <ItemTemplate>
                            <%# Eval("js_dob") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField  HeaderText="Jobseeker Qualification">
                          <ItemTemplate>
                              <%#Eval("qname") %>
                          </ItemTemplate>
                      </asp:TemplateField>

                        <asp:TemplateField  HeaderText="Jobseeker JobProfile">
                          <ItemTemplate>
                              <%#Eval("jpr_name") %>
                          </ItemTemplate>
                      </asp:TemplateField>

                    
                        <asp:TemplateField  HeaderText="Jobseeker JobProfile SKills">
                          <ItemTemplate>
                              <%#Eval("js_skills") %>
                          </ItemTemplate>
                      </asp:TemplateField>

                     <asp:TemplateField  HeaderText="Jobseeker Country">
                          <ItemTemplate>
                              <%#Eval("cname") %>, <%#Eval("statename") %>, <%#Eval("ciname") %>
                          </ItemTemplate>
                      </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobSeeker Email">
                        <ItemTemplate>
                            <%# Eval("js_email") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                  
                      <asp:TemplateField  HeaderText="Jobseeker Image">
                          <ItemTemplate>
                             <asp:Image ID="imgjs" runat="server" width="150px" height="130px" ImageUrl='<%#Eval("js_image","~/Jobseeker/JobSeeker_Image/{0}") %>'></asp:Image>
                          </ItemTemplate>
                      </asp:TemplateField>

                       <asp:TemplateField  HeaderText="Jobseeker Resume">
                          <ItemTemplate>
                           <asp:LinkButton ID="btnresume" runat="server" Text='<%#Eval("js_resume") %>' CommandName="R" CommandArgument='<%#Eval("js_resume") %>' ></asp:LinkButton>
                          </ItemTemplate>
                      </asp:TemplateField>

                    <asp:TemplateField HeaderText="JobSeeker Inserted Date">
                        <ItemTemplate>
                            <%# Eval("inserted_date") %>
                        </ItemTemplate>
                    </asp:TemplateField>

                    
                    


                 
                    <asp:TemplateField>
                        <ItemTemplate>
                          <asp:Button ID="btnstatus" runat="server" Text=' <%# Eval("status").ToString()=="0" ? "Active" : "InActive" %>'  CommandName="B" CommandArgument='<%#Eval("js_id") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>

                     
                </Columns>
            </asp:GridView>
        </td>
    </tr>
</table> 


</asp:Content>
