<%@ Page Title="" Language="C#" MasterPageFile="~/Jobseeker/Jobseeker.Master" AutoEventWireup="true" CodeBehind="HomeJobSeeker.aspx.cs" Inherits="websiteproject11.Jobseeker.HomeJobSeeker" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table>
        <tr>
            <td>Name :</td>
           <td> <asp:Label ID="lblname" runat="server"></asp:Label></td>
        </tr>


                <tr>
            <td>Gender :</td>
              <td> <asp:Label ID="lblgender" runat="server"></asp:Label></td>

         
        </tr>


         <tr>
            <td>Qualification:</td>
            <td><asp:Label ID="lblqualification" runat="server"></asp:Label></td>
        </tr>

         <tr>
            <td>Job Profile:</td>
            <td><asp:Label ID="lbljobprofile" runat="server"></asp:Label></td>
        </tr>


         <tr>
            <td>Skills:</td>
            <td><asp:Label ID="lblskills" runat="server"></asp:Label></td>
        </tr>
        
         <tr>
            <td>Address:</td>
            <td><asp:Label ID="lbladdress" runat="server"></asp:Label></td>
        </tr>


        <tr>
            <td>JobSeeker Image: </td>
                <td> <asp:Image ID="imgjobseeker" runat="server"  Width="100px" Height="70px" /></td>
            
        </tr>

        <tr>
            <td>JobSeeker Resume</td>
            <td><asp:LinkButton ID="btnresume" runat="server" OnClick="btnresume_Click"></asp:LinkButton></td>
        </tr>


           <tr>
            <td>Email :</td>
              <td> <asp:Label ID="lblemail" runat="server"></asp:Label></td>
        </tr>

             <tr>
            <td>Password :</td>
            <td> <asp:Label ID="lblpassword" runat="server"></asp:Label></td>
        </tr>

        

    </table>

</asp:Content>
