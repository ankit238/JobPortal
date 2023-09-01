<%@ Page Title="" Language="C#" MasterPageFile="~/Mainmaster.Master" AutoEventWireup="true" CodeBehind="Registration_jobseeker.aspx.cs" Inherits="websiteproject11.Jobseeker.Registration_jobseeker" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="mng" runat="server"></asp:ScriptManager>
    <table>
        <tr>
            <td>Name :</td>
           <td> <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
        </tr>


                <tr>
            <td>Gender :</td>
            <td><asp:RadioButtonList ID="rblgender" runat="server" RepeatColumns="3">
                
            </asp:RadioButtonList>

                </td>
        </tr>

         <tr>
            <td>Date of Birth :</td>
            <td><asp:TextBox ID="txtdob" runat="server">   </asp:TextBox>
               <ajax:CalendarExtender ID="caldob" runat="server" PopupButtonID="txtdob" PopupPosition="TopRight" TargetControlID="txtdob" /> 
         

                </td>
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
            <td>Qualification :</td>
            <td><asp:DropDownList ID="ddlqualification" runat="server" >
                
            </asp:DropDownList>

                </td>
        </tr>


         <tr>
            <td>Job Profile:</td>
            <td><asp:DropDownList ID="ddljobprofile" runat="server" OnSelectedIndexChanged="ddljobprofile_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
        </tr>

             <tr id="tr_skills" runat="server">
            <td>Job Profile Skills:</td>
            <td><asp:CheckBoxList ID="cblskills" runat="server" RepeatColumns="10"></asp:CheckBoxList></td>
        </tr>


        
            
        <tr>
            <td>Country:</td>
            <td><asp:DropDownList ID="ddlcountry" runat="server" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
        </tr>

        <tr>
            <td>State:</td>
            <td><asp:DropDownList ID="ddlstate" runat="server" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList></td>
        </tr>

         <tr>
            <td>City:</td>
            <td><asp:DropDownList ID="ddlcity" runat="server"></asp:DropDownList></td>
        </tr>

         <tr>
            <td>Image:</td>
            <td><asp:FileUpload ID="fuimage" runat="server"></asp:FileUpload></td>
        </tr>

        <tr>
            <td>Resume:</td>
            <td><asp:FileUpload ID="furesume" runat="server" /></td>
        </tr>

        <tr>
           <td>

           </td>
            <td><asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" /></td>
        </tr>

    </table>

</asp:Content>

