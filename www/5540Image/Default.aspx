﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #3366CC;
        }
    </style>
</head>
<body>
   



    <form id="form1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <h1><strong>Online Watch Store: Flash Sale Demo</strong></h1>
                </td>
            </tr>
        </table>

    <table class="auto-style1">
        <tr>
            <td>
                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                </asp:Timer>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageAlign="Middle" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>


</body>
</html>
