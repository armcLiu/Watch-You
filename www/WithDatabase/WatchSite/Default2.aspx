<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

             <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
            
            <asp:ImageButton ID="ImageButton1" runat="server" Height="450px" Width="350px" OnClick="ImageButton1_Click" />
            Nmae: <asp:Label ID="lblImageName" runat="server" ></asp:Label>
            Order: <asp:Label ID="lblImageOrder" runat="server" ></asp:Label>
        </ContentTemplate>

         
    
    </asp:UpdatePanel>

    
   


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Image Gallery Based on brand Name
</asp:Content>

