<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_NewDish.aspx.cs" Inherits="Add_NewDish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div align="center">
    <asp:Label ID="Label5" runat="server" Text="SELECT THE TABLE:" Font-Bold="True" Font-Names="Rockwell" Font-Size="X-Large" ForeColor="#000066" CssClass="Button" BorderColor="#FF9966"></asp:Label>
    &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="67px" Width="250px" BackColor="#FFFF99" Font-Names="Cambria" Font-Size="Large" ForeColor="#FF9900">
        <asp:ListItem>Chinease_Food</asp:ListItem>
        <asp:ListItem>French_Food</asp:ListItem>
        <asp:ListItem>Italian_Food</asp:ListItem>
        <asp:ListItem>Japanese_Food</asp:ListItem>
        <!-- Dropdoen -->
    </asp:DropDownList>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Enter the new Dish name : " Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#660066"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server" ForeColor="#660066" Height="48px" Width="202px"></asp:TextBox>
        <br />
    <br />
    &nbsp;<asp:Label ID="Label3" runat="server" Text="Enter the current stock : " Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#660066"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server" ForeColor="#660066" Height="48px" Width="202px"></asp:TextBox>
    &nbsp;
        <br />
        <br />
    <asp:Label ID="Label4" runat="server" Text="Enter the Price : " Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#660066"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" ForeColor="#660066" Height="48px" Width="202px"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#000066" Height="57px" Width="380px" />
</div>

</asp:Content>

