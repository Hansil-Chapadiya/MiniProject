<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Check_Stock.aspx.cs" Inherits="Check_Stock" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div align="center">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="60px" RepeatDirection="Horizontal" Width="762px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Bold="True" Font-Names="Lucida Bright" Font-Size="Large" ForeColor="#660066">
        <asp:ListItem>Chinease_Food</asp:ListItem>
        <asp:ListItem>French_Food</asp:ListItem>
        <asp:ListItem>Italian_Food</asp:ListItem>
        <asp:ListItem>Japanese_Food</asp:ListItem>
    </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <asp:Label ID="Label3" runat="server" Text="Chinease Food" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" ForeColor="#000066"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Search : " Font-Bold="True" Font-Names="Times New Roman" ForeColor="Maroon"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="184px" BackColor="#FFFF66" Font-Names="Times New Roman" ForeColor="Maroon"></asp:TextBox>
        &nbsp;<br />
        <br />
        <asp:Button ID="Button1" runat="server" Height="50px" OnClick="Button1_Click" Text="SEARCH" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066" Width="300px" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660033" GridLines="None" Height="222px" HorizontalAlign="Center" Width="359px">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView5" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660066" GridLines="None" Height="100px" HorizontalAlign="Center" Width="359px">
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:Label ID="Label4" runat="server" Text=" French Food" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" ForeColor="#000066"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Search : " Font-Bold="True" Font-Names="Times New Roman" ForeColor="Maroon"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="184px" BackColor="#FFFF66" Font-Names="Times New Roman" ForeColor="Maroon"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Height="50px" OnClick="Button2_Click" Text="SEARCH" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066" Width="300px" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660033" GridLines="None" Height="222px" Width="359px">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView6" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660066" GridLines="None" Height="100px" Width="359px">
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">
        <asp:Label ID="Label5" runat="server" Text="Italian Food" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" ForeColor="#000066"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Search : " Font-Bold="True" Font-Names="Times New Roman" ForeColor="Maroon"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" Height="27px" Width="184px" BackColor="#FFFF66" Font-Names="Times New Roman" ForeColor="Maroon"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Height="50px" OnClick="Button3_Click" Text="SEARCH" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066" Width="300px" />
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660033" GridLines="None" Height="222px" Width="359px">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView7" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660066" GridLines="None" Height="100px" Width="359px">
        </asp:GridView>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <asp:Label ID="Label6" runat="server" Text="Japanese Food" Font-Bold="True" Font-Names="Cambria" Font-Size="Large" ForeColor="#000066"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Search : " Font-Bold="True" Font-Names="Times New Roman" ForeColor="Maroon"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="184px" BackColor="#FFFF66" Font-Names="Times New Roman" ForeColor="Maroon"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" Height="50px" OnClick="Button4_Click" Text="SEARCH" CssClass="Button btn" Font-Bold="True" Font-Names="Times New Roman" Font-Size="Large" ForeColor="#000066" Width="300px" />
        <br />
        <br />
        <asp:GridView ID="GridView4" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660033" GridLines="None" Height="222px" Width="359px">
        </asp:GridView>
        <br />
        <asp:GridView ID="GridView8" runat="server" CssClass="Button btn" Font-Bold="True" Font-Names="Rockwell" ForeColor="#660066" GridLines="None" Height="100px" Width="359px">
        </asp:GridView>
    </asp:Panel>
</div>

</asp:Content>

