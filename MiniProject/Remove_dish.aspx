<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Remove_dish.aspx.cs" Inherits="Remove_dish" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div align="center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="60px" RepeatDirection="Horizontal" Width="762px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Bold="True" Font-Names="Lucida Bright" Font-Size="Large" ForeColor="#660066">
        <asp:ListItem>Chinease_Food</asp:ListItem>
        <asp:ListItem>French_Food</asp:ListItem>
        <asp:ListItem>Italian_Food</asp:ListItem>
        <asp:ListItem>Japanese_Food</asp:ListItem>
    </asp:RadioButtonList>

    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" Height="150px" Width="250px" DataSourceID="SqlDataSource1" DataTextField="Dish_name" DataValueField="Dish_name" BackColor="#FFFF99" Font-Names="Rockwell" Font-Size="Large" ForeColor="#000066">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MiniConnectionString %>" SelectCommand="SELECT [Dish_name] FROM [Chinease_Food]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button5" runat="server" Text="REMOVE" OnClick="Button5_Click" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#000066" Height="57px" Width="380px" />
        <br />
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DropDownList ID="DropDownList2" runat="server" Height="150px" Width="250px" DataSourceID="SqlDataSource2" DataTextField="Dish_name" DataValueField="Dish_name" BackColor="#FFFF99" Font-Names="Rockwell" Font-Size="Large" ForeColor="#000066">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MiniConnectionString %>" SelectCommand="SELECT [Dish_name] FROM [French_Food]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button6" runat="server" Text="REMOVE" OnClick="Button6_Click" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#000066" Height="57px" Width="380px" />
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:DropDownList ID="DropDownList3" runat="server" Height="150px" Width="250px" DataSourceID="SqlDataSource3" DataTextField="Dish_name" DataValueField="Dish_name" BackColor="#FFFF99" Font-Names="Rockwell" Font-Size="Large" ForeColor="#000066">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MiniConnectionString %>" SelectCommand="SELECT [Dish_name] FROM [Italian_Food]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button7" runat="server" Text="REMOVE" OnClick="Button7_Click" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#000066" Height="57px" Width="380px" />
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:DropDownList ID="DropDownList4" runat="server" Height="150px" Width="250px" DataSourceID="SqlDataSource4" DataTextField="Dish_name" DataValueField="Dish_name" BackColor="#FFFF99" Font-Names="Rockwell" Font-Size="Large" ForeColor="#000066">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:MiniConnectionString %>" SelectCommand="SELECT [Dish_name] FROM [Japanese_Food]"></asp:SqlDataSource>
        <br />
        <asp:Button ID="Button8" runat="server" Text="REMOVE" OnClick="Button8_Click" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="X-Large" ForeColor="#000066" Height="57px" Width="380px" />
    </asp:Panel>

        <br />

    <asp:Label ID="Label3" runat="server" Text="Label" Font-Names="Cambria" Font-Size="X-Large" ForeColor="Lime"></asp:Label>

    <br />
</div>
    
</asp:Content>

