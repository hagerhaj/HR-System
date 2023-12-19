<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="OverTimes._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 116px;
        font-size: medium;
        font-family: "Simplified Arabic";
        font-weight: bold;
    }
    .style3
    {
        font-weight: bold;
        font-size: medium;
    }
    .style4
    {
        font-size: x-large;
        font-family: "Simplified Arabic";
        text-decoration: underline;
        color: #000099;
    }
        .style5
        {
            width: 116px;
            font-size: medium;
            font-family: "Simplified Arabic";
            font-weight: bold;
            height: 37px;
        }
        .style6
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <p class="style4">
    <strong>الاجر الاضافى</strong></p>
<table class="style1">
    <tr>
        <td class="style2">
            رقم الاجر الاضافى</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            وصف الاجر الاضافى</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            الساعات العادية</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            ساعات العطلات</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style2">
            الساعات القصوى</td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style5">
            </td>
        <td class="style6">
            <asp:Button ID="Button1" runat="server" CssClass="style3" Text="حفظ" 
                Width="70px" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" CssClass="style3" Text="تعديل" 
                Width="70px" onclick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="style3" Text="حذف" 
                Width="70px" onclick="Button3_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button5" runat="server" 
                onclick="Button5_Click" Text="اضافة" />
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="بحث" />
            &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
                Font-Size="Medium"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="OvertimeNo" DataSourceID="SqlDataSource2" AllowPaging="True" 
                CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="4" 
                style="font-weight: 700; font-size: medium; font-family: 'Simplified Arabic'">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="OvertimeNo" HeaderText="رقم الاجر الاضافى" ReadOnly="True" 
                        SortExpression="OvertimeNo" />
                    <asp:BoundField DataField="OvertimeDesc" HeaderText="وصف الاجر الاضافى" 
                        SortExpression="OvertimeDesc" />
                    <asp:BoundField DataField="NormalRate" HeaderText="الساعات العادية" 
                        SortExpression="NormalRate" />
                    <asp:BoundField DataField="LeavesRate" HeaderText="الساعات العطلات" 
                        SortExpression="LeavesRate" />
                    <asp:BoundField DataField="MaxHours" HeaderText="الساعات القصوى" 
                        SortExpression="MaxHours" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:newpaysrcConnectionString %>" 
                SelectCommand="SELECT * FROM [Overtimes]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:newpaysrcConnectionString %>" 
                SelectCommand="SELECT * FROM [Overtimes]"></asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>
