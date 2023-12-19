<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HolidayPlanForm1.aspx.cs" Inherits="Promotions.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            font-family: "Simplified Arabic";
            color: #FF0000;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 103px;
            font-weight: bold;
            font-family: "Simplified Arabic";
            font-size: medium;
        }
        .style4
        {
            width: 103px;
            height: 21px;
            font-weight: bold;
            font-family: "Simplified Arabic";
            font-size: medium;
        }
        .style5
        {
            height: 21px;
        }
        .style6
        {
        font-weight: bold;
        font-size: medium;
        color: #FF0000;
    }
    .style7
    {
        color: #FF0000;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style1">
        <strong>خطة الاجازات</strong></p>
    <table class="style2">
        <tr>
            <td class="style3">
                رقم الموظف</td>
            <td>
                <asp:TextBox ID="TxtEmpNo" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                اسم الموظف</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                تاريخ بداية الاجازة</td>
            <td class="style5">
                <asp:TextBox ID="TxtStartDate" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Segoe UI" 
                    Font-Size="Large" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <br />
                <asp:Button ID="CmdSave" runat="server" CssClass="style6" 
                    onclick="CmdSave_Click" Text="حفظ" Width="70px" />
                <asp:Button ID="CmdUpdate" runat="server" CssClass="style6" 
                    onclick="CmdUpdate_Click" Text="تعديل" Width="70px" />
                <asp:Button ID="CmdDelete" runat="server" CssClass="style6" 
                    onclick="CmdDelete_Click" Text="حذف" Width="70px" />
                <asp:Button ID="CmdSearch" runat="server" onclick="CmdSearch_Click1" 
                    Text="بحث" style="font-weight: 700; font-size: medium; " 
                    Width="70px" CssClass="style7" />
                <asp:Button ID="Button1" runat="server" CssClass="style7" 
                    onclick="Button1_Click" style="font-weight: 700; font-size: medium" 
                    Text="اضافة" Width="65px" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td style="font-family: 'Simplified Arabic'; font-size: medium">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="EmpNo" DataSourceID="SqlDataSource1" PageSize="5" 
                    Width="614px">
                    <Columns>
                        <asp:BoundField DataField="EmpNo" HeaderText="رقم الموظف" ReadOnly="True" 
                            SortExpression="EmpNo" />
                        <asp:BoundField DataField="HolidayStartDate" HeaderText="تاريخ بداية الاجازة" 
                            SortExpression="HolidayStartDate" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnDB %>" 
                    SelectCommand="SELECT * FROM [HolidayPlane]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
