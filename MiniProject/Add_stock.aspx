<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Add_stock.aspx.cs" Inherits="Add_stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div align="center">
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="512px" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" Font-Bold="True" Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">
            <asp:ListItem>Add new stock</asp:ListItem>
            <asp:ListItem>Sell stock</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Panel ID="Panel5" runat="server" CssClass="aln" ForeColor="#660033">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="60px" RepeatDirection="Horizontal" Width="762px" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" Font-Bold="True" Font-Names="Lucida Bright" Font-Size="Large" ForeColor="#660066" Style="margin-left: 67px">
                <asp:ListItem>Chinease_Food</asp:ListItem>
                <asp:ListItem>French_Food</asp:ListItem>
                <asp:ListItem>Italian_Food</asp:ListItem>
                <asp:ListItem>Japanese_Food</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="Panel1" runat="server">
                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="200px" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230725.png" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230830.png" OnClick="ImageButton2_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230851.png" OnClick="ImageButton3_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230904.png" OnClick="ImageButton4_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />

            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 231121.png" OnClick="ImageButton5_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 231108.png" OnClick="ImageButton6_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 230941.png" OnClick="ImageButton7_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 231037.png" OnClick="ImageButton8_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">
                <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223709.png" OnClick="ImageButton9_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223736.png" OnClick="ImageButton10_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223752.png" OnClick="ImageButton11_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223820.png" OnClick="ImageButton12_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
                <asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230347.png" OnClick="ImageButton13_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230459.png" OnClick="ImageButton14_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton15" runat="server" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230616.png" OnClick="ImageButton15_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton16" runat="server" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230553.png" OnClick="ImageButton16_Click" Height="200px" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
            </asp:Panel>
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" Height="43px" Text="ENTER NEW STOCK:" ForeColor="#660066"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="48px" Width="202px" BackColor="#FFFF99" ForeColor="#660066"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="#99FF66" Font-Size="Small"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" ForeColor="#000066" Height="57px" Width="380px" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" CssClass="Button btn" />
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server">
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" AutoPostBack="True" Height="60px" OnSelectedIndexChanged="RadioButtonList3_SelectedIndexChanged" RepeatDirection="Horizontal" Width="762px" Font-Bold="True" Font-Names="Lucida Bright" Font-Size="Large" ForeColor="#660066">
                <asp:ListItem>Chinease_Food</asp:ListItem>
                <asp:ListItem>French_Food</asp:ListItem>
                <asp:ListItem>Italian_Food</asp:ListItem>
                <asp:ListItem>Japanese_Food</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Panel ID="Panel7" runat="server">
                <asp:ImageButton ID="ImageButton17" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230725.png" OnClick="ImageButton1_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton18" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230830.png" OnClick="ImageButton2_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton19" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230851.png" OnClick="ImageButton3_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton20" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Chanese/Screenshot 2022-10-15 230904.png" OnClick="ImageButton4_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
            </asp:Panel>
            <asp:Panel ID="Panel8" runat="server">
                <asp:ImageButton ID="ImageButton21" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 231121.png" OnClick="ImageButton5_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton22" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 231108.png" OnClick="ImageButton6_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton23" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 230941.png" OnClick="ImageButton7_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton24" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/French/Screenshot 2022-10-15 231037.png" OnClick="ImageButton8_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
            </asp:Panel>
            <asp:Panel ID="Panel9" runat="server">
                <asp:ImageButton ID="ImageButton25" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223709.png" OnClick="ImageButton9_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton26" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223736.png" OnClick="ImageButton10_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton27" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223752.png" OnClick="ImageButton11_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton28" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Italian/Screenshot 2022-10-15 223820.png" OnClick="ImageButton12_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
            </asp:Panel>
            <asp:Panel ID="Panel10" runat="server">
                <asp:ImageButton ID="ImageButton29" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230347.png" OnClick="ImageButton13_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton30" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230459.png" OnClick="ImageButton14_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton31" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230616.png" OnClick="ImageButton15_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
                <asp:ImageButton ID="ImageButton32" runat="server" Height="200px" ImageUrl="~/App_Themes/Theme1/Japanese/Screenshot 2022-10-15 230553.png" OnClick="ImageButton16_Click" Width="220px" BorderColor="#000066" BorderStyle="Solid" CssClass="imgButt" />
            </asp:Panel>
            <br />
            <asp:Label ID="Label1" runat="server" Text="ENTER THE TODAY SELL: " Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#660066"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="48px" Width="202px" BackColor="#FF99FF" Font-Names="Times New Roman"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#33CC33" Font-Size="Small"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SELL" Font-Bold="True" Font-Names="Rockwell" Font-Size="Large" ForeColor="#000066" Height="57px" Width="380px" CssClass="Button btn" />
        </asp:Panel>
    </div>

</asp:Content>

