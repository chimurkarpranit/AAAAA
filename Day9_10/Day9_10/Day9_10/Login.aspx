<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Day9_10.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>    
</head>
<body>
 <form id="form1" runat="server">
    <div style="text-align: center;margin-top:250px;margin-left:500px">
    <table width="90px" cellpadding="3" class="table">
    <caption><h2>Login Details</h2></caption>
        <tr><td><asp:Label runat="server" ID="LblUserName" Text="UserName" style="font-weight: 700"></asp:Label></td>                        
            <td><asp:TextBox runat="server" ID="TxtUserName" Width="180px"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" ID="RfvName" ControlToValidate="TxtUserName" ErrorMessage="Enter UserName" ForeColor="Red" Width="110px"></asp:RequiredFieldValidator></td>
        </tr>
        <tr><td><asp:Label runat="server" ID="LblPassword" Text="Password" style="font-weight: 700"></asp:Label></td>                        
            <td><asp:TextBox runat="server" ID="TxtPassword" Width="180px" TextMode="Password"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator runat="server" ID="RfvPassword" ControlToValidate="TxtPassword" ErrorMessage="Enter Password" ForeColor="Red" Width="100px"></asp:RequiredFieldValidator></td>
        </tr>        
        <tr><td colspan="4" align="left"><asp:Label ID="LabelInvalid" runat="server" Text="*Invalid UserName or Password" ForeColor="Red" Visible="false"></asp:Label></td></tr>              
        <tr><td colspan="4" align="center"><asp:Button runat="server" ID="BtnSubmit" Text="Submit" onclick="BtnSubmit_Click" style="font-weight: 700" Width="100px"/></td></tr> 
    </table>
    </div>
 </form>
</body>
</html>
