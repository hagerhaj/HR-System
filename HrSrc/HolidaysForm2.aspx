<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HolidaysForm2.aspx.cs" Inherits="Promotions.HolidaysForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-family: "Simplified Arabic";
            color: #FF0066;
            text-decoration: underline;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 104px;
            font-weight: bold;
            font-size: medium;
            font-family: "Simplified Arabic";
            color: #0000FF;
        }
        .style4
        {
            font-weight: bold;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style1">
        <strong>شاشة الاجازات</strong></p>
    <table class="style2">
        <tr>
            <td class="style3">
                رقم الموظف</td>
            <td>
                <asp:TextBox ID="TxtNo" runat="server" Width="200px"></asp:TextBox>
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
            <td class="style3">
                نوع الاجازة</td>
            <td>
                <asp:TextBox ID="TxtHtype" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                تاريخ الاجازة</td>
            <td>
                <asp:TextBox ID="TxtholiDate" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                سنة الاجازة</td>
            <td>
                <asp:TextBox ID="TxtYear" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                تاريخ نهاية الاجازة</td>
            <td>
                <asp:TextBox ID="TxtEndDate" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                الايام المستحقة</td>
            <td>
                <asp:TextBox ID="TxtReal" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                الايام المطلوبة</td>
            <td>
                <asp:TextBox ID="TxtRequired" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                ايام الطريق</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                الايام المتبقية</td>
            <td>
                <asp:TextBox ID="TxtMod" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                الموظف البديل</td>
            <td>
                <asp:TextBox ID="TxtPerson" runat="server" Width="200px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Font-Names="Simplified Arabic" Font-Size="Medium" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <br />
                <asp:Button ID="CmdSave" runat="server" onclick="CmdSave_Click1" Text="حفظ" 
                    CssClass="style4" Width="70px" Height="35px" />
                <asp:Button ID="CmdUpdate" runat="server" CssClass="style4" 
                    onclick="CmdUpdate_Click" Text="تعديل" Width="70px" Height="35px" />
                <asp:Button ID="CmdDelete" runat="server" onclick="CmdDelete_Click" 
                    style="font-weight: 700; font-size: medium" Text="حذف" Width="70px" 
                    Height="35px" />
                <asp:Button ID="CmdSearch" runat="server" onclick="CmdSearch_Click" 
                    style="font-weight: 700; font-size: medium" Text="بحث" Width="70px" 
                    Height="35px" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="اضافة" 
                    Height="35px" style="font-weight: 700; font-size: medium" Width="70px" />
                <br />
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
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataKeyNames="EmpNo,HolydayDate" DataSourceID="SqlDataSource2" 
                    PageSize="4">
                    <Columns>
                        <asp:BoundField DataField="EmpNo" HeaderText="رقم الموظف" ReadOnly="True" 
                            SortExpression="EmpNo" />
                        <asp:BoundField DataField="HolydayDate" HeaderText="تاريخ الاجازة" 
                            ReadOnly="True" SortExpression="HolydayDate" />
                        <asp:BoundField DataField="HolidayType" HeaderText="نوع الاجازة" 
                            SortExpression="HolidayType" />
                        <asp:BoundField DataField="HolidayYear" HeaderText="سنة الاجازة" 
                            SortExpression="HolidayYear" />
                        <asp:BoundField DataField="DateEndholiday" HeaderText="تاريخ نهاية الاجازة" 
                            SortExpression="DateEndholiday" />
                        <asp:BoundField DataField="HolydayReal" HeaderText="الايام الفعلية" 
                            SortExpression="HolydayReal" />
                        <asp:BoundField DataField="RequiredDays" HeaderText="الايام المتبقية" 
                            SortExpression="RequiredDays" />
                        <asp:BoundField DataField="Moddays" HeaderText="متبقى الاجازة" 
                            SortExpression="Moddays" />
                        <asp:BoundField DataField="AlterPerson" HeaderText="الموظف البديل" 
                            SortExpression="AlterPerson" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnDB %>" 
                    SelectCommand="SELECT * FROM [Holiday]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" 
                    SelectCommand="SELECT * FROM [Holiday]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
