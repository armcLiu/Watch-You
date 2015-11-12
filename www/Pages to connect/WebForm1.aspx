<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication6.WebForm1" %>

<!DOCTYPE html>
<script runat="server">
    public void signup(Object o,EventArgs e)
    {
        Response.Redirect("WebForm2.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Store</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login/Register</h1>
    <p>
            Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Runat="server" ForeColor="#ff0000"
                    ErrorMessage="Error: Please enter a valid Name" SetFocusOnError="true" Display="Dynamic"
                    ControlToValidate="TextBox1" ValidationGroup="MandatoryContent"
                    ValidationExpression="^[A-Za-z'\-\p{L}\p{Zs}\p{Lu}\p{Ll}\']+$"></asp:RegularExpressionValidator>
        </p>
        <p>
            Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox id="TextBox2" runat="server" style="margin-left: 1px"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Email id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox id="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" 
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ErrorMessage="Wrong format!!!" ControlToValidate="TextBox3"  ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
            Postal code:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="Enter Postal address!!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Phone Number:&nbsp;&nbsp; <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator id="RegularExpressionValidator2" 
                runat="server" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" 
                ErrorMessage="Wrong format!!!" ControlToValidate="TextBox5" ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Continue" Width="93px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="signup" Text="Sign up" Width="78px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
            
            
        </p>
    </div>
    </form>
</body>
</html>
