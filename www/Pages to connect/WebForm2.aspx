<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication6.WebForm2" %>

<!DOCTYPE html>
<script runat="server">
    public void abc(Object o, EventArgs e)
    {
        if(TextBox5.Text ==TextBox6.Text)
        {
            Label1.Visible = false;
        }
        else
        {
            Label1.Visible = true;
        }
        if(TextBox3.Text==TextBox4.Text)
        {
            Label2.Visible = false;
        }
        else
        {
            Label2.Visible = true;
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Store</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Sign up</h1>
        <p>
             Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; <asp:TextBox id="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Runat="server" ForeColor="#ff0000"
                    ErrorMessage="Error: Please enter a valid Name" SetFocusOnError="true" Display="Dynamic"
                    ControlToValidate="TextBox1" ValidationGroup="MandatoryContent"
                    ValidationExpression="^[A-Za-z'\-\p{L}\p{Zs}\p{Lu}\p{Ll}\']+$"></asp:RegularExpressionValidator>
        </p>
        
        <p>
             Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox id="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator id="RegularExpressionValidator2" 
                runat="server" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" 
                ErrorMessage="Wrong format!!!" ControlToValidate="TextBox2" ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
             Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:TextBox id="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" 
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ErrorMessage="Wrong format!!!" ControlToValidate="TextBox3"  ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
             Confirm Email:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox id="TextBox4" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator id="RegularExpressionValidator4" runat="server" 
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ErrorMessage="Wrong format!!!" ControlToValidate="TextBox4"  ForeColor="Red"></asp:RegularExpressionValidator>
        </p>
        <p>
             Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox id="TextBox5" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
             Confirm Password:&nbsp;&nbsp; <asp:TextBox id="TextBox6" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TextBox6" ErrorMessage="required!!!" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
             <asp:Label ID="Label1" runat="server" Text="Label" Visible="False">Passwords do not match</asp:Label>
        </p>
        <p>
             <asp:Label ID="Label2" runat="server" Text="Label" Visible="False">Email id do not match</asp:Label>
        </p>
        <p>
             <asp:Button ID="Button1" runat="server" OnClick="abc" style="margin-left: 47px" Text="Sign up" Width="77px" />
        </p>
        <p>
             &nbsp;</p>

    </div>
    </form>
</body>
</html>
